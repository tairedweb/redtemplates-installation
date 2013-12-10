<?php
/**
 * @package		Joomla.Cli
 *
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// Make sure we're being called from the command line, not a web interface
if (array_key_exists('REQUEST_METHOD', $_SERVER))
{
	die();
}

/**
 * This is a CRON script which should be called from the command-line, not the
 * web. For example something like:
 * /usr/bin/php /path/to/site/cli/update_cron.php
 */

// Set flag that this is a parent file.
define('_JEXEC', 1);
define('DS', DIRECTORY_SEPARATOR);

error_reporting(E_ERROR);
ini_set('display_errors', 1);

// Load system defines
if (file_exists(dirname(dirname(__FILE__)) . '/defines.php'))
{
	require_once dirname(dirname(__FILE__)) . '/defines.php';
}

if (!defined('_JDEFINES'))
{
	define('JPATH_BASE', dirname(dirname(__FILE__)));
	require_once JPATH_BASE . '/includes/defines.php';
}

require_once JPATH_BASE . '/includes/framework.php';

require_once JPATH_LIBRARIES . '/import.php';
require_once JPATH_LIBRARIES . '/cms.php';

// Force library to be in JError legacy mode
JError::$legacy = true;

// Load the configuration
require_once JPATH_CONFIGURATION . '/configuration.php';

define('JPATH_COMPONENT_ADMINISTRATOR', JPATH_ADMINISTRATOR . '/components/com_joomlaupdate');

JLoader::import('helpers.download', JPATH_ADMINISTRATOR . '/components/com_joomlaupdate');
JModelLegacy::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR . '/models', 'JoomlaupdateModel');

// Restore.php is loud, using ob_end_clean() to shut it up, we need it for decryption
ob_start();
require_once JPATH_COMPONENT_ADMINISTRATOR . '/restore.php';
ob_end_clean();

/**
 * This script will fetch the update information for all extensions and store
 * them in the database, speeding up your administrator.
 *
 * @package  Joomla.CLI
 * @since    2.5
 */
class Redtemplate_Upgrade extends JApplicationCli
{
	/**
	 * Used to talk to restore.php, since it only comunicates using Ajax.
	 *
	 * @param   string  $data  data
	 *
	 * @return  string
	 */
	public function curlCall($data)
	{
		$url = 'http://localhost/joomla14/administrator/components/com_joomlaupdate/restore.php';

		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$ret = curl_exec($ch);

		return $ret;
	}

	/**
	 * Decrypt the JSON return.php passes back to us, and make it a php array while we're at it.
	 *
	 * @param   string  $str       string
	 * @param   string  $password  password
	 *
	 * @return  string
	 */
	public function deCrypt($str, $password)
	{
		$result = AKEncryptionAES::AESDecryptCtr($str, $password, 128);

		return json_decode($result, true);
	}

	/**
	 * Entry point for the script
	 *
	 * @return  void
	 *
	 * @since   2.5
	 */
	public function doExecute()
	{
		$app = JFactory::getApplication('site');
		$app->initialise();

		// Make sure we're not in FTP mode
		$app->input->set('method', 'direct');

		$updater = JModelLegacy::getInstance('Default', 'JoomlaupdateModel', array('ignore_request' => true));

		$updater->applyUpdateSite();
		$updater->refreshUpdates(true);

		// Let's see if we're already on the latest version, the model always returns a null-object if this is the case
		$version_check = $updater->getUpdateInformation();

		if (is_null($version_check['object']))
		{
			echo 'No new updates available' . "\n";

			return 0;
		}

		$this->out('Fetching updates...');

		// Grab the update (ends up in /tmp)
		$basename = $updater->download();

		// Create restoration.php (ends up in /com_joomlaupdate)
		$updater->createRestorationFile($basename);

		// Grab the password that was generated and placed in restoration.php so we can decrypt later
		$password = $app->getUserState('com_joomlaupdate.password', null);

		// Ask restore.php to start
		$first_pass = array(
			"task" => "startRestore"
		);

		$result = $this->curlCall($first_pass);
		$result = $this->deCrypt($result, $password);

		// Now we can pass back the factory-object we got and let restore.php do its thing
		$second_pass = array(
			"task" => "stepRestore",
			"factory" => $result['factory']
		);

		$result = $this->curlCall($second_pass);
		$result = $this->deCrypt($result, $password);

		if ($result['done'] == 1)
		{
			echo "Success!" . "\n";
		}

		// Update SQL etc based on the manifest file we got with the update
		$updater->finaliseUpgrade();

		$updater->cleanUp();
	}
}

JApplicationCli::getInstance('Redtemplate_Upgrade')->execute();
