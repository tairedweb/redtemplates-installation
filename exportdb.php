<?php
/**
 * @package		Joomla.Cli
 *
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// Make sure we're being called from the command line, not a web interface
if (array_key_exists('REQUEST_METHOD', $_SERVER)) die();

/**
 * This is a CRON script which should be called from the command-line, not the
 * web. For example something like:
 * /usr/bin/php /path/to/site/cli/update_cron.php
 */

// Set flag that this is a parent file.
define('_JEXEC', 1);
define('DS', DIRECTORY_SEPARATOR);

error_reporting(E_ALL | E_NOTICE);
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

require_once JPATH_LIBRARIES . '/import.php';
require_once JPATH_LIBRARIES . '/cms.php';

// Force library to be in JError legacy mode
JError::$legacy = true;

// Load the configuration
require_once JPATH_CONFIGURATION . '/configuration.php';

/**
 * This script will fetch the update information for all extensions and store
 * them in the database, speeding up your administrator.
 *
 * @package  Joomla.CLI
 * @since    2.5
 */
class Exportdb extends JApplicationCli
{
	/**
	 * Entry point for the script
	 *
	 * @return  void
	 *
	 * @since   2.5
	 */
	public function doExecute()
	{
		$db = JFactory::getDBO();
		$prefix = $db->getPrefix();

		// Table Array is not dumped
		$exceptTables = array(
			'#__users', '#__user_usergroup_map',
			'#__session', '#__rwf_submitters',
			'#__redshop_siteviewer', '#__redshop_pageviewer',
			'#__redshop_quotation_item', '#__redshop_quotation_fields_data',
			'#__redshop_quotation_attribute_item',
			'#__redshop_quotation',
			'#__redshop_quotation_accessory_item',
			'#__redshop_orders',
			'#__redshop_ordernumber_track',
			'#__redshop_orderbarcode_log',
			'#__redshop_order_users_info',
			'#__redshop_order_status_log',
			'#__redshop_order_item',
			'#__redshop_order_attribute_item',
			'#__redshop_order_acc_item',
			'#__redshop_coupons',
			'#__bannertrack',
			'#__banner_tracks'
			);

		$db->setQuery("SHOW TABLES LIKE '" . $prefix . "%'");
		$tables = $db->loadRowList();

		$return = "";

		foreach ($tables as $table)
		{
			$tableName = str_replace($prefix, "#__", $table[0]);

			// Create table
			$db->setQuery('SHOW CREATE TABLE ' . $tableName);
			$createTable = $db->loadRow();
			$return .= "\n\n" . $createTable[1] . ";\n\n";

			if (!in_array($tableName, $exceptTables))
			{
				// Dump rows
				$db->setQuery('SELECT * FROM ' . $tableName);
				$rows = $db->loadRowList();

				if (count($rows) > 0)
				{
					foreach ($rows as $key => &$row)
					{
						if ($tableName == '#__schemas' && $row[0] == 700)
						{
							unset($rows[$key]);
						}

						foreach ($row as &$value)
						{
							$value = addslashes($value);
							$value = preg_replace("/\n/", "\\n", $value);
							$value = "'" . $value . "'";
						}

						$row = "(" . implode(",", $row) . ")";
					}

					if (count($rows) > 0)
					{
						$return .= "INSERT INTO " . $tableName . " VALUES\n";
						$return .= implode(",\n", $rows) . ";";
					}
				}
			}
			else
			{
				$return = preg_replace("/AUTO_INCREMENT=(\d+)/", "", $return);
			}
		}

		$return = str_replace("CREATE TABLE `" . $prefix, "CREATE TABLE `#__", $return);

		$handle = dirname(dirname(__FILE__)) . '/redtemplates-installation/installation/sql/mysql/joomla.sql';
		file_put_contents($handle, $return);
	}
}

JApplicationCli::getInstance('Exportdb')->execute();
