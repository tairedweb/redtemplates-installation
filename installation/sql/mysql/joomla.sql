

CREATE TABLE `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__assets VALUES
('1','0','1','436','0','root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
('2','1','1','2','1','com_admin','com_admin','{}'),
('3','1','3','6','1','com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('4','1','7','8','1','com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
('5','1','9','10','1','com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
('6','1','11','12','1','com_config','com_config','{}'),
('7','1','13','16','1','com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('8','1','17','36','1','com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
('9','1','37','38','1','com_cpanel','com_cpanel','{}'),
('10','1','39','40','1','com_installer','com_installer','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1},\"core.delete\":[],\"core.edit.state\":[]}'),
('11','1','41','42','1','com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('12','1','43','44','1','com_login','com_login','{}'),
('13','1','45','46','1','com_mailto','com_mailto','{}'),
('14','1','47','48','1','com_massmail','com_massmail','{}'),
('15','1','49','50','1','com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
('16','1','51','52','1','com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('17','1','53','54','1','com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
('18','1','55','56','1','com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('19','1','57','60','1','com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('20','1','61','62','1','com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('21','1','63','64','1','com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
('22','1','65','66','1','com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
('23','1','67','68','1','com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('24','1','69','70','1','com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('25','1','71','74','1','com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
('26','1','75','76','1','com_wrapper','com_wrapper','{}'),
('27','8','18','23','2','com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('28','3','4','5','2','com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('29','7','14','15','2','com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('30','19','58','59','2','com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('31','25','72','73','2','com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('51','1','432','433','1','com_redshop','redshop','{}'),
('36','8','24','25','2','com_content.category.7','slideshow','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('41','27','19','20','3','com_content.article.4','About','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('42','1','430','431','1','com_redform','redform','{}'),
('43','27','21','22','3','com_content.article.5','Contact','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('44','8','26','33','2','com_content.category.8','Blog','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
('45','44','27','28','3','com_content.article.6','Like Mother, Like Daughter','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('46','44','29','30','3','com_content.article.7','On the bright side of the Demin','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('47','44','31','32','3','com_content.article.8','Past It? Past What?: Age and Its Detractors','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
('49','8','34','35','2','com_content.category.9','sh404SEF custom content',''),
('53','1','434','435','1','com_redslider','com_redslider','{}');

CREATE TABLE `#__associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__categories VALUES
('1','0','0','0','17','0','','system','ROOT','root','','','1','0','0000-00-00 00:00:00','1','{}','','','','0','2009-10-18 16:07:09','0','0000-00-00 00:00:00','0','*'),
('2','27','1','1','2','1','uncategorised','com_content','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2010-06-28 13:26:37','0','0000-00-00 00:00:00','0','*'),
('3','28','1','3','4','1','uncategorised','com_banners','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2010-06-28 13:27:35','0','0000-00-00 00:00:00','0','*'),
('4','29','1','5','6','1','uncategorised','com_contact','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2010-06-28 13:27:57','0','0000-00-00 00:00:00','0','*'),
('5','30','1','7','8','1','uncategorised','com_newsfeeds','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2010-06-28 13:28:15','0','0000-00-00 00:00:00','0','*'),
('6','31','1','9','10','1','uncategorised','com_weblinks','Uncategorised','uncategorised','','','1','0','0000-00-00 00:00:00','1','{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}','42','2010-06-28 13:28:33','0','0000-00-00 00:00:00','0','*'),
('7','36','1','11','12','1','slideshow','com_content','slideshow','slideshow','','','1','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','62','2011-09-12 08:55:15','0','0000-00-00 00:00:00','0','*'),
('8','44','1','13','14','1','blog','com_content','Blog','blog','','<p>this is blog</p>','1','0','0000-00-00 00:00:00','1','{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}','62','2012-05-14 10:03:59','62','2012-05-14 10:04:01','0','*'),
('9','49','1','15','16','1','sh404sef-custom-content','com_content','sh404SEF custom content','sh404sef-custom-content','','Do not delete please!','-2','0','0000-00-00 00:00:00','1','','','','','63','2013-03-22 11:02:13','0','0000-00-00 00:00:00','0','*');

CREATE TABLE `#__components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__components VALUES
('1','Banners','','0','0','','Banner Management','com_banners','0','js/ThemeOffice/component.png','0','track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n','1'),
('2','Banners','','0','1','option=com_banners','Active Banners','com_banners','1','js/ThemeOffice/edit.png','0','','1'),
('3','Clients','','0','1','option=com_banners&c=client','Manage Clients','com_banners','2','js/ThemeOffice/categories.png','0','','1'),
('4','Web Links','option=com_weblinks','0','0','','Manage Weblinks','com_weblinks','0','js/ThemeOffice/component.png','0','show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n','1'),
('5','Links','','0','4','option=com_weblinks','View existing weblinks','com_weblinks','1','js/ThemeOffice/edit.png','0','','1'),
('6','Categories','','0','4','option=com_categories&section=com_weblinks','Manage weblink categories','','2','js/ThemeOffice/categories.png','0','','1'),
('7','Contacts','option=com_contact','0','0','','Edit contact details','com_contact','0','js/ThemeOffice/component.png','1','contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n','1'),
('8','Contacts','','0','7','option=com_contact','Edit contact details','com_contact','0','js/ThemeOffice/edit.png','1','','1'),
('9','Categories','','0','7','option=com_categories&section=com_contact_details','Manage contact categories','','2','js/ThemeOffice/categories.png','1','contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n','1'),
('10','Polls','option=com_poll','0','0','option=com_poll','Manage Polls','com_poll','0','js/ThemeOffice/component.png','0','','1'),
('11','News Feeds','option=com_newsfeeds','0','0','','News Feeds Management','com_newsfeeds','0','js/ThemeOffice/component.png','0','','1'),
('12','Feeds','','0','11','option=com_newsfeeds','Manage News Feeds','com_newsfeeds','1','js/ThemeOffice/edit.png','0','show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n','1'),
('13','Categories','','0','11','option=com_categories&section=com_newsfeeds','Manage Categories','','2','js/ThemeOffice/categories.png','0','','1'),
('14','User','option=com_user','0','0','','','com_user','0','','1','','1'),
('15','Search','option=com_search','0','0','option=com_search','Search Statistics','com_search','0','js/ThemeOffice/component.png','1','enabled=0\n\n','1'),
('16','Categories','','0','1','option=com_categories&section=com_banner','Categories','','3','','1','','1'),
('17','Wrapper','option=com_wrapper','0','0','','Wrapper','com_wrapper','0','','1','','1'),
('18','Mail To','','0','0','','','com_mailto','0','','1','','1'),
('19','Media Manager','','0','0','option=com_media','Media Manager','com_media','0','','1','upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html','1'),
('20','Articles','option=com_content','0','0','','','com_content','0','','1','show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n','1'),
('21','Configuration Manager','','0','0','','Configuration','com_config','0','','1','','1'),
('22','Installation Manager','','0','0','','Installer','com_installer','0','','1','','1'),
('23','Language Manager','','0','0','','Languages','com_languages','0','','1','','1'),
('24','Mass mail','','0','0','','Mass Mail','com_massmail','0','','1','mailSubjectPrefix=\nmailBodySuffix=\n\n','1'),
('25','Menu Editor','','0','0','','Menu Editor','com_menus','0','','1','','1'),
('27','Messaging','','0','0','','Messages','com_messages','0','','1','','1'),
('28','Modules Manager','','0','0','','Modules','com_modules','0','','1','','1'),
('29','Plugin Manager','','0','0','','Plugins','com_plugins','0','','1','','1'),
('30','Template Manager','','0','0','','Templates','com_templates','0','','1','','1'),
('31','User Manager','','0','0','','Users','com_users','0','','1','allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n','1'),
('32','Cache Manager','','0','0','','Cache','com_cache','0','','1','','1'),
('33','Control Panel','','0','0','','Control Panel','com_cpanel','0','','1','','1'),
('34','redEVENT','option=com_redevent','0','0','option=com_redevent','redEVENT','com_redevent','0','../administrator/components/com_redevent/assets/images/redevent.png','0','','1'),
('35','REDEVENT_MENU_EVENTS','','0','34','option=com_redevent&view=events','REDEVENT_MENU_EVENTS','com_redevent','0','../administrator/components/com_redevent/assets/images/icon-16-events.png','0','','1'),
('36','REDEVENT_MENU_VENUES','','0','34','option=com_redevent&view=venues','REDEVENT_MENU_VENUES','com_redevent','1','../administrator/components/com_redevent/assets/images/icon-16-venues.png','0','','1'),
('37','REDEVENT_MENU_CATEGORIES','','0','34','option=com_redevent&view=categories','REDEVENT_MENU_CATEGORIES','com_redevent','2','../administrator/components/com_redevent/assets/images/icon-16-categories.png','0','','1'),
('38','REDEVENT_MENU_VENUES_CATEGORIES','','0','34','option=com_redevent&view=venuescategories','REDEVENT_MENU_VENUES_CATEGORIES','com_redevent','3','../administrator/components/com_redevent/assets/images/icon-16-venuescategories.png','0','','1'),
('39','REDEVENT_MENU_GROUPS','','0','34','option=com_redevent&view=groups','REDEVENT_MENU_GROUPS','com_redevent','4','../administrator/components/com_redevent/assets/images/icon-16-groups.png','0','','1'),
('40','REDEVENT_MENU_TAGS_LIBRARY','','0','34','option=com_redevent&view=textlibrary','REDEVENT_MENU_TAGS_LIBRARY','com_redevent','5','../administrator/components/com_redevent/assets/images/icon-16-library.png','0','','1'),
('41','REDEVENT_MENU_CUSTOMFIELDS','','0','34','option=com_redevent&view=customfields','REDEVENT_MENU_CUSTOMFIELDS','com_redevent','6','../administrator/components/com_redevent/assets/images/icon-16-customfields.png','0','','1'),
('42','REDEVENT_MENU_SETTINGS','','0','34','option=com_redevent&view=settings','REDEVENT_MENU_SETTINGS','com_redevent','7','../administrator/components/com_redevent/assets/images/icon-16-settings.png','0','','1'),
('43','redSHOP','option=com_redshop','0','0','option=com_redshop','redSHOP','com_redshop','0','components/com_redshop/assets/images/redshopcart16.png','0','','1');

CREATE TABLE `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__content VALUES
('4','41','About','about','','<p>Fashion Store is a value-priced fashion retailer offering the latest trend setting styles.</p>\n<div>\n<div>\n<p>Check us out for the trendy looks you\'ll find in mall specialty stores at low prices every day.Our stores have the latest junior-inspired fashion apparel, outfits, shoes and accessories for juniors, junior plus, young men, boys\' sizes 8 to 20 and girls\' sizes 7 to 16.</p>\n<p>There are more than 100 It\'s Fashion stores in 14 states conveniently located throughout the Mid-Atlantic and Southeastern United States. To find the It\'s Fashion store nearest you, check our Store Locator.</p>\n<p>&nbsp;<img src=\"images/aboutuspic1.jpg\" alt=\"aboutuspic1\" width=\"289\" height=\"443\" style=\"display: block; margin-right: auto; margin-left: auto;\" /></p>\n</div>\n</div>','','1','0','0','2','2011-09-30 09:41:31','62','','2012-05-15 09:10:12','62','0','0000-00-00 00:00:00','2011-09-30 09:41:31','0000-00-00 00:00:00','','','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','25','0','1','','','1','386','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*',''),
('6','45','Like Mother, Like Daughter','like-mother-like-daughter','','<p>She borrows your clothes anyway, might as well buy something you’ll like too!</p>\n<p>Happy Mother’s day, moms!</p>\n<p><img src=\"images/like-mother-like-daughter1.jpg\" alt=\"like-mother-like-daughter1\" width=\"600\" style=\"display: block; margin-right: auto; margin-left: auto;\" height=\"435\" /></p>\n<p>&nbsp;</p>','','1','0','0','8','2012-05-14 10:29:03','62','','2012-05-15 09:11:08','62','0','0000-00-00 00:00:00','2012-05-14 10:29:03','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','10','0','3','','','1','9','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*',''),
('5','43','Contact','contact','','<div class=\"row-fluid\">\n<div class=\"span5\">\n<h3>Contact us</h3>\n<p>The Fashion Store</p>\n<p>Street 123</p>\n<p>01200 London</p>\n<p>Tel: 00 123 456 789</p>\n<p>Tel: 00 123 456 789</p>\n<p>Email: info@example.com</p>\n</div>\n<div class=\"span7\">{redform}1{/redform}</div>\n</div>','','1','0','0','2','2012-05-14 09:19:05','62','','2013-06-20 11:28:39','562','0','0000-00-00 00:00:00','2012-05-14 09:19:05','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','21','0','0','','','1','323','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*',''),
('7','46','On the bright side of the Demin','on-the-bright-side-of-the-demin','','<p>We’ve been&nbsp;obsessed&nbsp;with colored denim since it started to pop up on the runways. Looking for a new way to wear this trend? Try pairing it with a lightweight sweater for those not-yet-summer nights. Or even throw some cork heels on to give it a dressy, yet casual feel! How have you been wearing your colored denim?</p>\n<p><img src=\"images/how-to-wear-colored-denim.jpg\" alt=\"how-to-wear-colored-denim\" width=\"600\" style=\"display: block; margin-right: auto; margin-left: auto;\" height=\"367\" /></p>','','1','0','0','8','2012-05-14 10:35:09','62','','2012-05-15 09:12:02','62','0','0000-00-00 00:00:00','2012-05-14 10:35:09','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','8','0','2','','','1','10','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*',''),
('8','47','Past It? Past What?: Age and Its Detractors','past-it-past-what-age-and-its-detractors','','<p>WHO:&nbsp;Melanie Pangilinan<br /><br />WORE:&nbsp;Forever 21 colorblock cropped sweater, Urban Outfitters Zodiac necklace, vintage bag, Oasap crochet shorts, Kensie Girl heels<br /><br />WHY WE LOVE IT:&nbsp;The \'80s-inspired colorblock cropped sweater pairs perfectly with romantic lace shorts. The strappy wooden-heeled shoes also add a retro twist, while the stack of bracelets make it modern.</p>\n<p><img src=\"images/fashion-click-aetherlily-beach.jpg\" alt=\"fashion-click-aetherlily-beach\" width=\"233\" height=\"329\" style=\"display: block; margin-right: auto; margin-left: auto;\" /></p>','','1','0','0','8','2012-05-15 02:07:41','62','','2012-05-15 09:12:08','62','0','0000-00-00 00:00:00','2012-05-15 02:07:41','0000-00-00 00:00:00','','','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}','4','0','1','','','1','32','{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','0','*','');

CREATE TABLE `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `test_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__core_acl_aro VALUES
('10','users','62','0','Administrator','0');

CREATE TABLE `#__core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `test_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `test_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__core_acl_aro_groups VALUES
('17','0','ROOT','1','22','ROOT'),
('28','17','USERS','2','21','USERS'),
('29','28','Public Frontend','3','12','Public Frontend'),
('18','29','Registered','4','11','Registered'),
('19','18','Author','5','10','Author'),
('20','19','Editor','6','9','Editor'),
('21','20','Publisher','7','8','Publisher'),
('30','28','Public Backend','13','20','Public Backend'),
('23','30','Manager','14','19','Manager'),
('24','23','Administrator','15','18','Administrator'),
('25','24','Super Administrator','16','17','Super Administrator');

CREATE TABLE `#__core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `test_gacl_value_aro_sections` (`value`),
  KEY `test_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__core_acl_aro_sections VALUES
('10','users','1','Users','0');

CREATE TABLE `#__core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO #__core_acl_groups_aro_map VALUES
('25','','10');

CREATE TABLE `#__core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__extensions VALUES
('1','com_mailto','component','com_mailto','','0','1','1','1','{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('2','com_wrapper','component','com_wrapper','','0','1','1','1','{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('3','com_admin','component','com_admin','','1','1','1','1','{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('4','com_banners','component','com_banners','','1','1','1','0','{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('5','com_cache','component','com_cache','','1','1','1','1','{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('6','com_categories','component','com_categories','','1','1','1','1','{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('7','com_checkin','component','com_checkin','','1','1','1','1','{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('8','com_contact','component','com_contact','','1','1','1','0','{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('9','com_cpanel','component','com_cpanel','','1','1','1','1','{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('10','com_installer','component','com_installer','','1','1','1','1','{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('11','com_languages','component','com_languages','','1','1','1','1','{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','','0','0000-00-00 00:00:00','0','0'),
('12','com_login','component','com_login','','1','1','1','1','{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('13','com_media','component','com_media','','1','1','0','1','{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('14','com_menus','component','com_menus','','1','1','1','1','{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('15','com_messages','component','com_messages','','1','1','1','1','{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('16','com_modules','component','com_modules','','1','1','1','1','{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('17','com_newsfeeds','component','com_newsfeeds','','1','1','1','0','{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('18','com_plugins','component','com_plugins','','1','1','1','1','{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('19','com_search','component','com_search','','1','1','1','1','{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('20','com_templates','component','com_templates','','1','1','1','1','{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('21','com_weblinks','component','com_weblinks','','1','1','1','0','{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('22','com_content','component','com_content','','1','1','0','1','{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"0\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"right\",\"float_fulltext\":\"right\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('10077','System - Redlightbox Slideshow','plugin','redlightbox_slideshow','system','0','1','1','0','{\"legacy\":false,\"name\":\"System - Redlightbox Slideshow\",\"type\":\"plugin\",\"creationDate\":\"June 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.0\",\"description\":\"Image slideshow for all images.\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','11','0'),
('23','com_config','component','com_config','','1','1','0','1','{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','','0','0000-00-00 00:00:00','0','0'),
('24','com_redirect','component','com_redirect','','1','1','0','1','{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('25','com_users','component','com_users','','1','1','0','1','{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('100','PHPMailer','library','phpmailer','','0','1','1','1','{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('101','SimplePie','library','simplepie','','0','1','1','1','{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('102','phputf8','library','phputf8','','0','1','1','1','{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('103','Joomla! Platform','library','joomla','','0','1','1','1','{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('200','mod_articles_archive','module','mod_articles_archive','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('201','mod_articles_latest','module','mod_articles_latest','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('202','mod_articles_popular','module','mod_articles_popular','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('203','mod_banners','module','mod_banners','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('204','mod_breadcrumbs','module','mod_breadcrumbs','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('205','mod_custom','module','mod_custom','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('206','mod_feed','module','mod_feed','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('207','mod_footer','module','mod_footer','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('208','mod_login','module','mod_login','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('209','mod_menu','module','mod_menu','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('210','mod_articles_news','module','mod_articles_news','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('211','mod_random_image','module','mod_random_image','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('212','mod_related_items','module','mod_related_items','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('213','mod_search','module','mod_search','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('214','mod_stats','module','mod_stats','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('215','mod_syndicate','module','mod_syndicate','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('216','mod_users_latest','module','mod_users_latest','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('217','mod_weblinks','module','mod_weblinks','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('218','mod_whosonline','module','mod_whosonline','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('219','mod_wrapper','module','mod_wrapper','','0','1','1','0','{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('220','mod_articles_category','module','mod_articles_category','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('221','mod_articles_categories','module','mod_articles_categories','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('222','mod_languages','module','mod_languages','','0','1','1','1','{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('300','mod_custom','module','mod_custom','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('301','mod_feed','module','mod_feed','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('302','mod_latest','module','mod_latest','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('303','mod_logged','module','mod_logged','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('304','mod_login','module','mod_login','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('305','mod_menu','module','mod_menu','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('307','mod_popular','module','mod_popular','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('308','mod_quickicon','module','mod_quickicon','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('309','mod_status','module','mod_status','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('310','mod_submenu','module','mod_submenu','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('311','mod_title','module','mod_title','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('312','mod_toolbar','module','mod_toolbar','','1','1','1','1','{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('400','plg_authentication_gmail','plugin','gmail','authentication','0','0','1','0','{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','','0','0000-00-00 00:00:00','1','0'),
('401','plg_authentication_joomla','plugin','joomla','authentication','0','1','1','1','{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('402','plg_authentication_ldap','plugin','ldap','authentication','0','0','1','0','{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','','0','0000-00-00 00:00:00','3','0'),
('404','plg_content_emailcloak','plugin','emailcloak','content','0','1','1','0','{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','','0','0000-00-00 00:00:00','1','0'),
('405','plg_content_geshi','plugin','geshi','content','0','0','1','0','{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0'),
('406','plg_content_loadmodule','plugin','loadmodule','content','0','1','1','0','{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"none\"}','','','0','0000-00-00 00:00:00','0','0'),
('407','plg_content_pagebreak','plugin','pagebreak','content','0','1','1','1','{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','','0','0000-00-00 00:00:00','4','0'),
('408','plg_content_pagenavigation','plugin','pagenavigation','content','0','1','1','1','{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','','0','0000-00-00 00:00:00','5','0'),
('409','plg_content_vote','plugin','vote','content','0','1','1','1','{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','6','0'),
('410','plg_editors_codemirror','plugin','codemirror','editors','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','','0','0000-00-00 00:00:00','1','0'),
('411','plg_editors_none','plugin','none','editors','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0'),
('412','plg_editors_tinymce','plugin','tinymce','editors','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"compressed\":\"0\",\"cleanup_startup\":\"0\",\"cleanup_save\":\"2\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"safari\":\"0\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','','0','0000-00-00 00:00:00','3','0'),
('413','plg_editors-xtd_article','plugin','article','editors-xtd','0','1','1','1','{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0'),
('414','plg_editors-xtd_image','plugin','image','editors-xtd','0','1','1','0','{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0'),
('415','plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd','0','1','1','0','{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','3','0'),
('416','plg_editors-xtd_readmore','plugin','readmore','editors-xtd','0','1','1','0','{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','4','0'),
('417','plg_search_categories','plugin','categories','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('418','plg_search_contacts','plugin','contacts','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('419','plg_search_content','plugin','content','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('420','plg_search_newsfeeds','plugin','newsfeeds','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('421','plg_search_weblinks','plugin','weblinks','search','0','1','1','0','{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('422','plg_system_languagefilter','plugin','languagefilter','system','0','0','1','1','{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0'),
('423','plg_system_p3p','plugin','p3p','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','','0','0000-00-00 00:00:00','2','0'),
('424','plg_system_cache','plugin','cache','system','0','0','1','1','{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','','0','0000-00-00 00:00:00','9','0'),
('425','plg_system_debug','plugin','debug','system','0','1','1','0','{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','','0','0000-00-00 00:00:00','4','0'),
('426','plg_system_log','plugin','log','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','5','0'),
('427','plg_system_redirect','plugin','redirect','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','6','0'),
('428','plg_system_remember','plugin','remember','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','7','0'),
('429','plg_system_sef','plugin','sef','system','0','1','1','0','{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','8','0'),
('430','plg_system_logout','plugin','logout','system','0','1','1','1','{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','3','0'),
('431','plg_user_contactcreator','plugin','contactcreator','user','0','0','1','1','{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','','0','0000-00-00 00:00:00','1','0'),
('432','plg_user_joomla','plugin','joomla','user','0','1','1','0','{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','','0','0000-00-00 00:00:00','2','0'),
('433','plg_user_profile','plugin','profile','user','0','0','1','1','{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('434','plg_extension_joomla','plugin','joomla','extension','0','1','1','1','{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0'),
('435','plg_content_joomla','plugin','joomla','content','0','1','1','0','{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('500','atomic','template','atomic','','0','1','1','0','{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('502','bluestork','template','bluestork','','1','1','1','0','{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('503','beez_20','template','beez_20','','0','1','1','0','{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','','0','0000-00-00 00:00:00','0','0'),
('504','hathor','template','hathor','','1','1','1','0','{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('505','beez5','template','beez5','','0','1','1','0','{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('600','English (United Kingdom)','language','en-GB','','0','1','1','1','{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('601','English (United Kingdom)','language','en-GB','','1','1','1','1','{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('700','files_joomla','file','joomla','','0','1','1','1','{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.16\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('800','PKG_JOOMLA','package','pkg_joomla','','0','1','1','1','{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('10063','mod_redshop_search','module','mod_redshop_search','','0','1','0','0','{\"legacy\":false,\"name\":\"mod_redshop_search\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"\",\"version\":\"1.3.2\",\"description\":\"Redshop Search Module\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"templateid\":\"0\",\"productperpage\":\"\",\"enableAjaxsearch\":\"0\",\"modsearchitemid\":\"\",\"noofsearchresults\":\"10\",\"defaultSearchType\":\"\",\"showSearchTypeField\":\"yes\",\"showSearchField\":\"yes\",\"showCategory\":\"yes\",\"showManufacturer\":\"yes\",\"showProductsearchtitle\":\"yes\",\"showKeywordtitle\":\"yes\",\"stdsearchtext\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('10053','COM_REDSHOP','component','com_redshop','','1','1','0','0','{\"legacy\":false,\"name\":\"COM_REDSHOP\",\"type\":\"component\",\"creationDate\":\"October 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"(c) Redweb.dk\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"www.redweb.dk\",\"version\":\"1.3.3.1\",\"description\":\"COM_REDSHOP_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('10054','PLG_DEFAULT_SHIPPING','plugin','default_shipping','redshop_shipping','0','1','1','0','{\"legacy\":false,\"name\":\"PLG_DEFAULT_SHIPPING\",\"type\":\"plugin\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.3.2\",\"description\":\"PLG_DEFAULT_SHIPPING_DESC\",\"group\":\"\"}','{\"is_shipper\":\"1\"}','','','0','0000-00-00 00:00:00','1','0'),
('10055','MOD_REDSHOP_CART','module','mod_redshop_cart','','0','1','0','0','{\"legacy\":false,\"name\":\"MOD_REDSHOP_CART\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"\",\"version\":\"1.3.3\",\"description\":\"Redshop Cart Module\",\"group\":\"\"}','{\"cart_output\":\"0\",\"moduleclass_sfx\":\"\",\"show_with_shipping\":\"0\",\"show_with_discount\":\"0\",\"show_with_vat\":\"0\",\"show_shipping_line\":\"0\",\"use_cookies_value\":\"0\",\"checkout_empty\":\"1\",\"button_text\":\"\"}','','','0','0000-00-00 00:00:00','1','0'),
('10058','mod_multilangstatus','module','mod_multilangstatus','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('10035','PLG_RS_PAYMENT_BANKTRANSFER','plugin','rs_payment_banktransfer','redshop_payment','0','1','1','0','{\"legacy\":false,\"name\":\"PLG_RS_PAYMENT_BANKTRANSFER\",\"type\":\"plugin\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"http:\\/\\/www.redcomponent.com\",\"version\":\"1.2\",\"description\":\"This plugin enables standard Bank Transfer payments\",\"group\":\"\"}','{\"payment_oprand\":\"-\",\"payment_price\":\"\",\"payment_discount_is_percent\":\"1\",\"private_person\":\"1\",\"business\":\"1\",\"is_creditcard\":\"0\",\"economic_payment_terms_id\":\"\",\"economic_design_layout\":\"\",\"verify_status\":\"C\",\"shopper_group_id\":\"Your Company Name , 101 Company Street, city\",\"txtextra_info\":\"Please enter your Extra Info\"}','','','0','0000-00-00 00:00:00','1','0'),
('10036','PLG_RS_SHIPPING_SELF_PICKUP','plugin','self_pickup','redshop_shipping','0','1','1','0','{\"legacy\":false,\"name\":\"PLG_RS_SHIPPING_SELF_PICKUP\",\"type\":\"plugin\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.2\",\"description\":\"This plugin enables standard Shipping\",\"group\":\"\"}','{\"is_shipper\":\"0\",\"shipper_location\":\"1\"}','','','0','0000-00-00 00:00:00','0','0'),
('436','plg_system_languagecode','plugin','languagecode','system','0','0','1','0','{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','10','0'),
('437','plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon','0','1','1','1','{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('438','plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon','0','1','1','1','{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('27','com_finder','component','com_finder','','1','1','0','0','{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"porter_en\"}','','','0','0000-00-00 00:00:00','0','0'),
('439','plg_captcha_recaptcha','plugin','recaptcha','captcha','0','1','1','0','{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','','0','0000-00-00 00:00:00','0','0'),
('440','plg_system_highlight','plugin','highlight','system','0','1','1','0','{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','7','0'),
('441','plg_content_finder','plugin','finder','content','0','0','1','0','{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('442','plg_finder_categories','plugin','categories','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','1','0'),
('443','plg_finder_contacts','plugin','contacts','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','2','0'),
('444','plg_finder_content','plugin','content','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','3','0'),
('445','plg_finder_newsfeeds','plugin','newsfeeds','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','4','0'),
('446','plg_finder_weblinks','plugin','weblinks','finder','0','1','1','0','{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','5','0'),
('223','mod_finder','module','mod_finder','','0','1','0','0','{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','','0','0000-00-00 00:00:00','0','0'),
('314','mod_version','module','mod_version','','1','1','1','0','{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('28','com_joomlaupdate','component','com_joomlaupdate','','1','1','0','1','{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('10037','PLG_RS_PAYMENT_PAYPAL','plugin','rs_payment_paypal','redshop_payment','0','1','1','0','{\"legacy\":false,\"name\":\"PLG_RS_PAYMENT_PAYPAL\",\"type\":\"plugin\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"www.redweb.dk\",\"version\":\"1.3.3\",\"description\":\"This plugin enables standard Paypal payments\",\"group\":\"\"}','{\"payment_oprand\":\"-\",\"payment_price\":\"\",\"debug_mode\":\"1\",\"payment_discount_is_percent\":\"1\",\"merchant_email\":\"\",\"verify_status\":\"C\",\"invalid_status\":\"P\",\"currency\":\"0\",\"sandbox\":\"0\",\"auto_return\":\"0\",\"auto_return_url\":\"\",\"private_person\":\"1\",\"business\":\"1\",\"economic_payment_terms_id\":\"\",\"economic_design_layout\":\"\",\"is_creditcard\":\"0\"}','','','0','0000-00-00 00:00:00','1','0'),
('10041','PLG_CONTENT_REDFORM','plugin','redform','content','0','1','1','0','{\"legacy\":false,\"name\":\"PLG_CONTENT_REDFORM\",\"type\":\"plugin\",\"creationDate\":\"2013-08-12\",\"author\":\"redWEB Aps\",\"copyright\":\"(C) 2008 - 2012 redCOMPONENT.com\",\"authorEmail\":\"email@redweb.dk\",\"authorUrl\":\"www.redcomponent.com\",\"version\":\"2.5.b.5.8.1-1-g1d56063\",\"description\":\"PLG_CONTENT_REDFORM_XML_DESC\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('10042','redFORM','component','com_redform','','1','1','0','0','{\"legacy\":false,\"name\":\"redFORM\",\"type\":\"component\",\"creationDate\":\"2013-08-12\",\"author\":\"Redweb.dk\",\"copyright\":\"(c) 2008 - 2011 Redweb.dk\",\"authorEmail\":\"email@redweb.dk\",\"authorUrl\":\"www.redweb.dk\",\"version\":\"2.5.b.5.8.1-1-g1d56063\",\"description\":\"COM_REDFORM_XML_INSTALL_DESC\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('10075','com_redslider','component','com_redslider','','1','1','0','0','{\"legacy\":false,\"name\":\"com_redslider\",\"type\":\"component\",\"creationDate\":\"2013-01-30\",\"author\":\"Khai Vu Dinh\",\"copyright\":\"Copyright (C) 2012. All rights reserved.\",\"authorEmail\":\"khai@redweb.dk\",\"authorUrl\":\"http:\\/\\/www.redcomponent.com\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('10076','redSlider module','module','mod_redslider','','0','1','0','0','{\"legacy\":false,\"name\":\"redSlider module\",\"type\":\"module\",\"creationDate\":\"March 2013\",\"author\":\"redComponent\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"mail@redweb.dk\",\"authorUrl\":\"www.redcomponent.com\",\"version\":\"1.0\",\"description\":\"MOD_REDSLIDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"slider_id\":\"\",\"slider_ordering\":\"s.title\",\"alignment\":\"center\",\"slide_width\":\"auto\",\"slide_height\":\"auto\",\"navigate\":\"1\",\"paginate\":\"0\",\"thumbnail\":\"0\",\"thumbnail_width\":\"20\",\"thumbnail_height\":\"20\",\"display_time\":\"5000\",\"transition_duration\":\"1000\",\"animation_effect\":\"simpleFace\",\"auto_play\":\"1\",\"load_jquery\":\"1\",\"load_jquery_easing\":\"1\",\"load_jquery_mobile\":\"1\",\"module_sfx_class\":\"\",\"caching\":\"1\",\"cachetime\":\"900\"}','','','0','0000-00-00 00:00:00','0','0'),
('10062','System - jQuery Easy','plugin','jqueryeasy','system','0','1','1','0','{\"legacy\":false,\"name\":\"System - jQuery Easy\",\"type\":\"plugin\",\"creationDate\":\"2012-03-11\",\"author\":\"Olivier Buisard\",\"copyright\":\"Copyright (C) 2011 Simplify Your Web. All rights reserved.\",\"authorEmail\":\"olivier.buisard@simplifyyourweb.com\",\"authorUrl\":\"www.simplifyyourweb.com\",\"version\":\"1.5.3\",\"description\":\"PLG_SYSTEM_JQUERYEASY_XML_DESCRIPTION\",\"group\":\"\"}','{\"jqueryinfrontend\":\"1\",\"jqueryversionfrontend\":\"1.9\",\"jquerysubversionfrontend\":\"1\",\"localversionfrontend\":\"\",\"jqueryuiversionfrontend\":\"1.9\",\"jqueryuisubversionfrontend\":\"\",\"localuiversionfrontend\":\"\",\"jqueryuithemefrontend\":\"base\",\"jqueryuithemecustomfrontend\":\"\",\"whichhttpfrontend\":\"https\",\"compressionfrontend\":\"compressed\",\"templateid\":[\"none\"],\"enableonlyinfrontend\":\"\",\"disableinfrontend\":\"\",\"replacewhenuniquefrontend\":\"1\",\"addwhenmissingfrontend\":\"1\",\"ignorescriptsfrontend\":\"\",\"stripremainingscriptsfrontend\":\"\",\"stripremainingcssfrontend\":\"\",\"removenoconflictfrontend\":\"1\",\"addnoconflictfrontend\":\"1\",\"replacedocumentreadyfrontend\":\"1\",\"disablemootools\":\"0\",\"keepmootoolsin\":\"\",\"disablecaptions\":\"0\",\"removeblanklinesfrontend\":\"0\",\"addjavascriptfrontend\":\"\",\"addjavascriptdeclarationfrontend\":\"\",\"addcssfrontend\":\"\",\"addcssdeclarationfrontend\":\"\",\"jqueryinbackend\":\"0\",\"jqueryversionbackend\":\"1.8\",\"jquerysubversionbackend\":\"\",\"localversionbackend\":\"\",\"jqueryuiversionbackend\":\"1.9\",\"jqueryuisubversionbackend\":\"\",\"localuiversionbackend\":\"\",\"jqueryuithemebackend\":\"base\",\"jqueryuithemecustombackend\":\"\",\"whichhttpbackend\":\"https\",\"compressionbackend\":\"compressed\",\"enableonlyinbackend\":\"\",\"disableinbackend\":\"\",\"replacewhenuniquebackend\":\"1\",\"addwhenmissingbackend\":\"1\",\"ignorescriptsbackend\":\"\",\"stripremainingscriptsbackend\":\"\",\"stripremainingcssbackend\":\"\",\"removenoconflictbackend\":\"1\",\"addnoconflictbackend\":\"2\",\"replacedocumentreadybackend\":\"0\",\"removeblanklinesbackend\":\"0\",\"addjavascriptbackend\":\"\",\"addjavascriptdeclarationbackend\":\"\",\"addcssbackend\":\"\",\"addcssdeclarationbackend\":\"\",\"back_compat_paths\":\"1\",\"showreport\":\"0\"}','','','0','0000-00-00 00:00:00','0','0'),
('10067','MOD_REDSHOP_PRODUCTCOMPARE','module','mod_redshop_productcompare','','0','1','0','0','{\"legacy\":false,\"name\":\"MOD_REDSHOP_PRODUCTCOMPARE\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"\",\"version\":\"1.3.3\",\"description\":\"Redshop Products Compare Module\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('10068','redShop Social','module','mod_redshop_social','','0','1','0','0','{\"legacy\":false,\"name\":\"redShop Social\",\"type\":\"module\",\"creationDate\":\"Unknown\",\"author\":\"redweb.dk\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"mail@redcomponent.com\",\"authorUrl\":\"www.redcomponent.com\",\"version\":\"1.0\",\"description\":\"MOD_REDSHOP_SOCIAL_DESCRIPTION\",\"group\":\"\"}','{}','','','0','0000-00-00 00:00:00','0','0'),
('10066','MOD_REDSHOP_WISHLIST','module','mod_redshop_wishlist','','0','1','0','0','{\"legacy\":false,\"name\":\"MOD_REDSHOP_WISHLIST\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"\",\"version\":\"1.2\",\"description\":\"WishList Module for redSHOP\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('10081','redFASHIONSTORE','template','redfashionstore','','0','1','1','0','{\"legacy\":false,\"name\":\"redFASHIONSTORE\",\"type\":\"template\",\"creationDate\":\"Aug 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"Copyright redComponent 2013. All rights reserved\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"http:\\/\\/www.redcomponent.com\",\"version\":\"2.0\",\"description\":\"TPL_REDCOMPONENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"rebrand\":\"yes\",\"style\":\"generic\",\"mootools\":\"1\",\"jquery\":\"1\",\"javascriptBottom\":\"1\",\"logo\":\"template\",\"logowidth\":\"4\",\"body_font\":\"default\",\"header_font\":\"default\",\"columns\":\"sidebar1:2;main:7;sidebar2:3\",\"bs_rowmode\":\"row\",\"responsive\":\"1\",\"stickyFooter\":\"1\",\"wright_bootstrap_images\":\"\",\"hiddenmodule\":\"\"}','','','0','0000-00-00 00:00:00','0','0'),
('10080','redSHOP Category Module','module','mod_redshop_categories','','0','1','0','0','{\"legacy\":false,\"name\":\"redSHOP Category Module\",\"type\":\"module\",\"creationDate\":\"April 2013\",\"author\":\"redCOMPONENT.com\",\"copyright\":\"redCOMPONENT.com\",\"authorEmail\":\"email@redcomponent.com\",\"authorUrl\":\"\",\"version\":\"1.3\",\"description\":\"Product Category for redSHOP with different display style\",\"group\":\"\"}','{\"class_sfx\":\"\",\"moduleclass_sfx\":\"\",\"pretext\":\"\",\"show_noofproducts\":\"yes\",\"use_shoppergroup\":\"yes\",\"redshop_category\":\"\",\"redshop_category_remove\":\"\",\"menutype\":\"links\",\"categorysorttype\":\"links\",\"jscook_type\":\"menu\",\"jscookMenu_style\":\"ThemeOffice\",\"menu_orientation\":\"hbr\",\"jscookTree_style\":\"ThemeXP\",\"root_label\":\"Shop\",\"posttext\":\"\"}','','','0','0000-00-00 00:00:00','0','0');

CREATE TABLE `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__finder_taxonomy VALUES
('1','0','ROOT','0','0','0');

CREATE TABLE `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO #__finder_terms_common VALUES
('a','en'),
('about','en'),
('after','en'),
('ago','en'),
('all','en'),
('am','en'),
('an','en'),
('and','en'),
('ani','en'),
('any','en'),
('are','en'),
('aren\'t','en'),
('as','en'),
('at','en'),
('be','en'),
('but','en'),
('by','en'),
('for','en'),
('from','en'),
('get','en'),
('go','en'),
('how','en'),
('if','en'),
('in','en'),
('into','en'),
('is','en'),
('isn\'t','en'),
('it','en'),
('its','en'),
('me','en'),
('more','en'),
('most','en'),
('must','en'),
('my','en'),
('new','en'),
('no','en'),
('none','en'),
('not','en'),
('noth','en'),
('nothing','en'),
('of','en'),
('off','en'),
('often','en'),
('old','en'),
('on','en'),
('onc','en'),
('once','en'),
('onli','en'),
('only','en'),
('or','en'),
('other','en'),
('our','en'),
('ours','en'),
('out','en'),
('over','en'),
('page','en'),
('she','en'),
('should','en'),
('small','en'),
('so','en'),
('some','en'),
('than','en'),
('thank','en'),
('that','en'),
('the','en'),
('their','en'),
('theirs','en'),
('them','en'),
('then','en'),
('there','en'),
('these','en'),
('they','en'),
('this','en'),
('those','en'),
('thus','en'),
('time','en'),
('times','en'),
('to','en'),
('too','en'),
('true','en'),
('under','en'),
('until','en'),
('up','en'),
('upon','en'),
('use','en'),
('user','en'),
('users','en'),
('veri','en'),
('version','en'),
('very','en'),
('via','en'),
('want','en'),
('was','en'),
('way','en'),
('were','en'),
('what','en'),
('when','en'),
('where','en'),
('whi','en'),
('which','en'),
('who','en'),
('whom','en'),
('whose','en'),
('why','en'),
('wide','en'),
('will','en'),
('with','en'),
('within','en'),
('without','en'),
('would','en'),
('yes','en'),
('yet','en'),
('you','en'),
('your','en'),
('yours','en');

CREATE TABLE `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;



CREATE TABLE `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO #__groups VALUES
('0','Public'),
('1','Registered'),
('2','Special');

CREATE TABLE `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__languages VALUES
('1','en-GB','English (UK)','English (UK)','en','en','','','','','1','0','1');

CREATE TABLE `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__menu VALUES
('1','','Menu_Item_Root','root','','','','','1','0','0','0','0','0','0000-00-00 00:00:00','0','0','','0','','0','147','0','*','0'),
('2','menu','com_banners','Banners','','Banners','index.php?option=com_banners','component','0','1','1','4','0','0','0000-00-00 00:00:00','0','0','class:banners','0','','1','10','0','*','1'),
('3','menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component','0','2','2','4','0','0','0000-00-00 00:00:00','0','0','class:banners','0','','2','3','0','*','1'),
('4','menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component','0','2','2','6','0','0','0000-00-00 00:00:00','0','0','class:banners-cat','0','','4','5','0','*','1'),
('5','menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component','0','2','2','4','0','0','0000-00-00 00:00:00','0','0','class:banners-clients','0','','6','7','0','*','1'),
('6','menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component','0','2','2','4','0','0','0000-00-00 00:00:00','0','0','class:banners-tracks','0','','8','9','0','*','1'),
('7','menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component','0','1','1','8','0','0','0000-00-00 00:00:00','0','0','class:contact','0','','27','32','0','*','1'),
('8','menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component','0','7','2','8','0','0','0000-00-00 00:00:00','0','0','class:contact','0','','28','29','0','*','1'),
('9','menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component','0','7','2','6','0','0','0000-00-00 00:00:00','0','0','class:contact-cat','0','','30','31','0','*','1'),
('10','menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component','0','1','1','15','0','0','0000-00-00 00:00:00','0','0','class:messages','0','','33','38','0','*','1'),
('11','menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component','0','10','2','15','0','0','0000-00-00 00:00:00','0','0','class:messages-add','0','','34','35','0','*','1'),
('12','menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component','0','10','2','15','0','0','0000-00-00 00:00:00','0','0','class:messages-read','0','','36','37','0','*','1'),
('13','menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component','0','1','1','17','0','0','0000-00-00 00:00:00','0','0','class:newsfeeds','0','','39','44','0','*','1'),
('14','menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component','0','13','2','17','0','0','0000-00-00 00:00:00','0','0','class:newsfeeds','0','','40','41','0','*','1'),
('15','menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component','0','13','2','6','0','0','0000-00-00 00:00:00','0','0','class:newsfeeds-cat','0','','42','43','0','*','1'),
('16','menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component','0','1','1','24','0','0','0000-00-00 00:00:00','0','0','class:redirect','0','','53','54','0','*','1'),
('17','menu','com_search','Search','','Search','index.php?option=com_search','component','0','1','1','19','0','0','0000-00-00 00:00:00','0','0','class:search','0','','45','46','0','*','1'),
('18','menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component','0','1','1','21','0','0','0000-00-00 00:00:00','0','0','class:weblinks','0','','47','52','0','*','1'),
('19','menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component','0','18','2','21','0','0','0000-00-00 00:00:00','0','0','class:weblinks','0','','48','49','0','*','1'),
('20','menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component','0','18','2','6','0','0','0000-00-00 00:00:00','0','0','class:weblinks-cat','0','','50','51','0','*','1'),
('101','mainmenu','Home','home','','home','index.php?option=com_redshop&view=category&layout=detail','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"20\",\"order_by\":\"p.product_name ASC\",\"maxproduct\":\"12\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"home\",\"menu_image\":\"images\\/home.png\",\"menu_text\":0,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','11','12','1','*','0'),
('127','category-menu','Jeans','jeans','','jeans','index.php?option=com_redshop&view=category&layout=detail&cid=4&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"4\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Jeans\",\"show_page_heading\":1,\"page_heading\":\"Jeans\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','65','66','0','*','0'),
('128','follow-us','Facebook','2011-09-29-09-12-01','','2011-09-29-09-12-01','#','url','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','71','72','0','*','0'),
('129','follow-us','Twitter','2011-09-29-09-12-2','','2011-09-29-09-12-2','#','url','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','73','74','0','*','0'),
('117','mainmenu','What\'s new?','what-s-new','','what-s-new','index.php?option=com_redshop&view=category&layout=detail','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"21\",\"order_by\":\"p.product_name ASC\",\"maxproduct\":\"12\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"WHAT\\u2019S NEW?\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','13','14','0','*','0'),
('118','mainmenu','Special','specials','','specials','index.php?option=com_redshop&view=search&layout=featuredproduct','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"template_id\":\"551\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"SPECIALS\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','15','16','0','*','0'),
('119','category-menu','Tops','tops','','tops','index.php?option=com_redshop&view=category&layout=detail&cid=5&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"5\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Tops\",\"show_page_heading\":1,\"page_heading\":\"Tops\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','59','60','0','*','0'),
('120','category-menu','Jersey tops','jersey-tops','','jersey-tops','index.php?option=com_redshop&view=category&layout=detail&cid=6&order_by=p.product_id DESC&maxproduct=0&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"6\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"0\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Jersey Tops\",\"show_page_heading\":1,\"page_heading\":\"Jersey Tops\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','61','62','0','*','0'),
('121','category-menu','Trousers','trousers','','trousers','index.php?option=com_redshop&view=category&layout=detail&cid=7&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"7\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Trousers\",\"show_page_heading\":1,\"page_heading\":\"Trousers\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','63','64','0','*','0'),
('123','category-menu','Skirts','skirts','','skirts','index.php?option=com_redshop&view=category&layout=detail&cid=10&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"10\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Skirts\",\"show_page_heading\":1,\"page_heading\":\"Skirts\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','69','70','0','*','0'),
('124','category-menu','Dresses','dresses','','dresses','index.php?option=com_redshop&view=category&layout=detail&cid=9&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"9\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Dresses\",\"show_page_heading\":1,\"page_heading\":\"Dresses\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','67','68','0','*','0'),
('220','main','COM_REDSHOP','com-redshop','','com-redshop','index.php?option=com_redshop','component','0','1','1','10053','0','0','0000-00-00 00:00:00','0','1','components/com_redshop/assets/images/redshopcart16.png','0','','145','146','0','','1'),
('130','follow-us','Google+','2011-09-29-09-12-3','','2011-09-29-09-12-3','#','url','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','75','76','0','*','0'),
('131','follow-us','Linkedin','2011-09-29-09-12-4','','2011-09-29-09-12-4','#','url','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','77','78','0','*','0'),
('132','follow-us','StumbleUpon','2011-09-29-09-12-5','','2011-09-29-09-12-5','#','url','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','79','80','0','*','0'),
('133','follow-us','RSS','2011-09-29-09-12-6','','2011-09-29-09-12-6','#','url','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','81','82','0','*','0'),
('194','mainmenu','Categories','categories','','categories','index.php?option=com_redshop&view=category','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','17','20','0','*','0'),
('135','mainmenu','Blog','blog','','blog','index.php?option=com_content&view=category&layout=blog&id=8','component','1','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','21','22','0','*','0'),
('138','mainmenu','About','about','','about','index.php?option=com_content&view=article&id=4','component','1','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','23','24','0','*','0'),
('139','mainmenu','Contact','contact','','contact','index.php?option=com_content&view=article&id=5','component','1','1','1','22','0','0','0000-00-00 00:00:00','0','1','','0','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','25','26','0','*','0'),
('140','navigation-menu','What’s new?','2011-09-14-13-24-17','','2011-09-14-13-24-17','index.php?Itemid=','alias','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"117\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','83','84','0','*','0'),
('141','navigation-menu','Specials','2011-09-14-13-24-52','','2011-09-14-13-24-52','index.php?Itemid=','alias','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"118\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','85','86','0','*','0'),
('142','navigation-menu','Categories','2012-05-14-11-03-46','','2012-05-14-11-03-46','index.php?Itemid=','alias','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"194\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','87','88','0','*','0'),
('143','navigation-menu','Blog','2011-09-14-13-24-53','','2011-09-14-13-24-53','index.php?Itemid=','alias','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"135\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','89','90','0','*','0'),
('144','navigation-menu','About','2011-09-14-13-24-19','','2011-09-14-13-24-19','index.php?Itemid=','alias','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"138\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','91','92','0','*','0'),
('145','navigation-menu','Contact','2011-09-14-13-24-54','','2011-09-14-13-24-54','index.php?Itemid=','alias','1','1','1','0','0','0','0000-00-00 00:00:00','0','1','','0','{\"aliasoptions\":\"139\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}','93','94','0','*','0'),
('21','menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component','0','1','1','27','0','0','0000-00-00 00:00:00','0','0','class:finder','0','','55','56','0','*','1'),
('22','menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component','0','1','1','28','0','0','0000-00-00 00:00:00','0','0','class:joomlaupdate','0','','57','58','0','*','1'),
('153','category-menu','Jackets & Coats','jackets-coats','','jackets-coats','index.php?option=com_redshop&view=category&layout=detail&cid=11&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"11\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Jackets & Coats\",\"show_page_heading\":1,\"page_heading\":\"Jackets & Coats\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','95','96','0','*','0'),
('154','category-menu','Blazers & waistcoats','blazers-waistcoats','','blazers-waistcoats','index.php?option=com_redshop&view=category&layout=detail&cid=12&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"12\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Blazers & Waistcoats\",\"show_page_heading\":1,\"page_heading\":\"Blazers & Waistcoats\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','97','98','0','*','0'),
('155','category-menu','Sportswear','sportswear','','sportswear','index.php?option=com_redshop&view=category&layout=detail&cid=13&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"13\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Sportswear\",\"show_page_heading\":1,\"page_heading\":\"Sportswear\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','99','100','0','*','0'),
('156','category-menu','Swimwear','swimwear','','swimwear','index.php?option=com_redshop&view=category&layout=detail&cid=14&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"0\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Swimwear\",\"show_page_heading\":1,\"page_heading\":\"Swimwear\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','101','102','0','*','0'),
('157','category-menu','Lingerie & nighrwear','lingerie-nighrwear','','lingerie-nighrwear','index.php?option=com_redshop&view=category&layout=detail&cid=15&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"15\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Lingerie & Nighrwear\",\"show_page_heading\":1,\"page_heading\":\"Lingerie & Nighrwear\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','103','104','0','*','0'),
('158','category-menu','Socks & tights','socks-tights','','socks-tights','index.php?option=com_redshop&view=category&layout=detail&cid=16&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"16\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Socks & Tights\",\"show_page_heading\":1,\"page_heading\":\"Socks & Tights\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','105','106','0','*','0'),
('159','category-menu','Accessoties','accessoties','','accessoties','index.php?option=com_redshop&view=category&layout=detail&cid=17&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"17\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Accessoties\",\"show_page_heading\":1,\"page_heading\":\"Accessoties\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','107','108','0','*','0'),
('160','category-menu','Shoes','shoes','','shoes','index.php?option=com_redshop&view=category&layout=detail&cid=18&order_by=p.product_id DESC&maxproduct=8&manufacturer_id=0','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"cid\":\"18\",\"order_by\":\"p.product_id DESC\",\"maxproduct\":\"8\",\"manufacturer_id\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Shoes\",\"show_page_heading\":1,\"page_heading\":\"Shoes\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','109','110','0','*','0'),
('215','main','COM_redFORM_Submitters','com-redform-submitters','','com-redform/com-redform-submitters','index.php?option=com_redform&view=submitters','component','0','212','2','10042','0','0','0000-00-00 00:00:00','0','1','../media/com_redform/redform_contes_16.png','0','','142','143','0','','1'),
('214','main','COM_redFORM_Fields','com-redform-fields','','com-redform/com-redform-fields','index.php?option=com_redform&view=fields','component','0','212','2','10042','0','0','0000-00-00 00:00:00','0','1','../media/com_redform/redform_quest_16.png','0','','140','141','0','','1'),
('212','main','COM_redFORM','com-redform','','com-redform','index.php?option=com_redform','component','0','1','1','10042','0','0','0000-00-00 00:00:00','0','1','../media/com_redform/redform_red_16.png','0','','137','144','0','','1'),
('213','main','COM_redFORM_FORMS','com-redform-forms','','com-redform/com-redform-forms','index.php?option=com_redform&view=forms','component','0','212','2','10042','0','0','0000-00-00 00:00:00','0','1','../media/com_redform/redform_red_16.png','0','','138','139','0','','1'),
('167','invisible','Brand Masion','brand-masion','','brand-masion','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=6&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"1\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','111','112','0','*','0'),
('170','invisible','GesTur','gestur','','gestur','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=4&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"0\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','113','114','0','*','0'),
('206','invisible','My Account','my-account','','my-account','index.php?option=com_redshop&view=account&logout=101','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','135','136','0','*','0'),
('171','invisible','Amand Basi','amand-basi','','amand-basi','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=5&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"0\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','115','116','0','*','0'),
('172','invisible','Reiss','reiss','','reiss','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=7&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"5\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','117','118','0','*','0'),
('173','invisible','Juicy','juicy','','juicy','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=8&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"2\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','119','120','0','*','0'),
('174','invisible','JBrand','jbrand','','jbrand','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=9&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"9\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','121','122','0','*','0'),
('175','invisible','MiuMiu','miu-miu','','miu-miu','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=10&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"3\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','123','124','0','*','0'),
('176','invisible','Fendi','fendi','','fendi','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=11&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"0\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','125','126','0','*','0'),
('177','invisible','Pentite','pentite','','pentite','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=12&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"4\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','127','128','0','*','0'),
('178','invisible','Morrision','morrision','','morrision','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=13&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"7\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','129','130','0','*','0'),
('179','invisible','London','london','','london','index.php?option=com_redshop&view=manufacturers&layout=products&manufacturerid=14&maxproduct=','component','1','1','1','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"manufacturerid\":\"8\",\"maxproduct\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','131','132','0','*','0'),
('203','main','COM_REDSLIDER','com-redslider','','com-redslider','index.php?option=com_redslider','component','0','1','1','10075','0','0','0000-00-00 00:00:00','0','1','components/com_redslider/assets/images/redslider-16.png','0','','133','134','0','','1'),
('217','mainmenu','Cart','cart','','categories/cart','index.php?option=com_redshop&view=cart','component','1','194','2','10053','0','0','0000-00-00 00:00:00','0','1','','0','{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}','18','19','0','*','0');

CREATE TABLE `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__menu_types VALUES
('1','mainmenu','Main Menu','The main menu for the site'),
('2','category-menu','Category menu','Category menu'),
('3','follow-us','Follow us','Follow us'),
('4','navigation-menu','Navigation-menu','Navigation-menu'),
('5','invisible','Invisible','');

CREATE TABLE `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__modules VALUES
('1','Main Menu','','','1','menu','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','0','{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*'),
('2','Login','','','1','login','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_login','1','1','','1','*'),
('3','Popular Articles','','','3','cpanel','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_popular','3','1','{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}','1','*'),
('4','Recently Added Articles','','','4','cpanel','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_latest','3','1','{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}','1','*'),
('8','Toolbar','','','1','toolbar','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_toolbar','3','1','','1','*'),
('9','Quick Icons','','','1','icon','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_quickicon','3','1','','1','*'),
('10','Logged-in Users','','','2','cpanel','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_logged','3','1','{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}','1','*'),
('12','Admin Menu','','','1','menu','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','3','1','{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}','1','*'),
('13','Admin Submenu','','','1','submenu','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_submenu','3','1','','1','*'),
('14','User Status','','','1','status','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_status','3','1','','1','*'),
('15','Title','','','1','title','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_title','3','1','','1','*'),
('16','Log in','','','1','top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_login','4','1','{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"101\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*'),
('17','Breadcrumbs','','','1','position-2','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_breadcrumbs','1','1','{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*'),
('18','Book Store','','','1','position-10','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_banners','1','0','{\"target\":\"1\",\"count\":\"1\",\"cid\":\"3\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"Books!\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}','0','*'),
('30','Logo','','<p><img src=\"images/logo.png\" alt=\"logo\" width=\"380\" height=\"62\" /></p>','1','logo','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','0','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('59','Your cart','','','1','sidebar1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_redshop_cart','1','1','{\"cart_output\":\"extended\",\"moduleclass_sfx\":\"\",\"show_with_shipping\":\"0\",\"show_with_discount\":\"0\",\"show_with_vat\":\"0\",\"show_shipping_line\":\"0\",\"use_cookies_value\":\"0\",\"checkout_empty\":\"1\",\"button_text\":\"Checkout\"}','0','*'),
('33','Categories','','','2','sidebar1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','1','{\"menutype\":\"category-menu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*'),
('61','Copyright','','<p><a target=\"_blank\" href=\"http://www.redcomponent.com\">redSHOP template created by: redCOMPONENT</a></p>','1','footer-bottom','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','0','{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('71','redSlider module','','','1','slideshow','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_redslider','1','0','{\"slider_id\":\"5\",\"slider_ordering\":\"s.title\",\"alignment\":\"center\",\"slide_width\":\"auto\",\"slide_height\":\"250\",\"navigate\":\"1\",\"paginate\":\"0\",\"thumbnail\":\"0\",\"thumbnail_width\":\"20\",\"thumbnail_height\":\"20\",\"display_time\":\"5000\",\"transition_duration\":\"1000\",\"auto_play\":\"1\",\"load_jquery\":\"1\",\"load_jquery_easing\":\"1\",\"load_jquery_mobile\":\"1\",\"moduleclass_sfx\":\"\",\"caching\":\"1\",\"cachetime\":\"900\"}','0','*'),
('74','My Account','','','1','top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_login','2','0','{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"101\",\"greeting\":\"0\",\"name\":\"0\",\"usesecure\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','0','*'),
('44','THINKING about Gifting?','','<p><a href=\"#\">Presenting the store gift Vouchers</a></p>','1','below-content-1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','1','{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_thinking\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('45','SAVE AN EXTRA 10%','','<p><a href=\"#\">When you use your credit card</a></p>','1','below-content-1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','1','{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_save\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('46','Manufacturer','','<p><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=4&amp;maxproduct=&amp;Itemid=170\"><img alt=\"1336710276 gestuz\" src=\"images/manufacturer/1336710276_gestuz.png\" height=\"20\" width=\"70\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=5&amp;maxproduct=&amp;Itemid=171\"><img alt=\"1364798398 1356509158 1336710288 armand-basi\" src=\"images/manufacturer/1364798398_1356509158_1336710288_armand-basi.png\" height=\"16\" width=\"162\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=6&amp;maxproduct=&amp;Itemid=167\"><img alt=\"1356415919 1336710299 brandmansion\" src=\"images/manufacturer/1356415919_1336710299_brandmansion.png\" height=\"74\" width=\"128\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=7&amp;maxproduct=&amp;Itemid=172\"><img alt=\"1356508957 1336710319 reiss\" src=\"images/manufacturer/1356508957_1336710319_reiss.png\" height=\"20\" width=\"97\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=8&amp;maxproduct=&amp;Itemid=173\"><img alt=\"1356415864 1336710329 juicy\" src=\"images/manufacturer/1356415864_1336710329_juicy.png\" height=\"70\" width=\"125\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=9&amp;maxproduct=&amp;Itemid=174\"><img alt=\"1356509093 1336710337 jbrand\" src=\"images/manufacturer/1356509093_1336710337_jbrand.png\" height=\"17\" width=\"108\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=10&amp;maxproduct=&amp;Itemid=175\"><img alt=\"1356415882 1336710347 nivmiv\" src=\"images/manufacturer/1356415882_1336710347_nivmiv.png\" height=\"21\" width=\"120\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=11&amp;maxproduct=&amp;Itemid=176\"><img alt=\"1356416009 1336710358 fendi\" src=\"images/manufacturer/1356416009_1336710358_fendi.png\" height=\"72\" width=\"116\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=12&amp;maxproduct=&amp;Itemid=177\"><img alt=\"1364798472 1356415965 1336710369 petite\" src=\"images/manufacturer/1364798472_1356415965_1336710369_petite.png\" height=\"28\" width=\"175\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=13&amp;maxproduct=&amp;Itemid=178\"><img alt=\"1356509002 1336710380 morriso\" src=\"images/manufacturer/1356509002_1336710380_morriso.png\" height=\"38\" width=\"107\" /></a><a href=\"index.php?option=com_redshop&amp;view=manufacturers&amp;layout=products&amp;manufacturerid=14&amp;maxproduct=&amp;Itemid=179\"><img alt=\"1364798444 1356509051 1336711430 london\" src=\"images/manufacturer/1364798444_1356509051_1336711430_london.png\" height=\"43\" width=\"200\" /></a></p>','1','below-content-2','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','0','{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_manufacturer\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('48','Navigation','','','1','footer-left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','1','{\"menutype\":\"navigation-menu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*'),
('49','Follow us','','','1','footer-left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_menu','1','1','{\"menutype\":\"follow-us\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','0','*'),
('50','Contact us','','<p>The Fashion Store</p>\n<p>Street 123</p>\n<p>01200 London</p>\n<p>Tel: 00 123 456 789</p>\n<p>Tel: 00 123 456 789</p>\n<p>Email: info@example.com</p>','1','footer-left','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','1','{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('51','Payment','','<p>We accept the following payment cards:</p>\n<p><img src=\"images/payment.png\" border=\"0\" alt=\"payment\" width=\"163\" height=\"40\" /></p>','1','footer-right','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_custom','1','1','{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" pull-right\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('52','Joomla Version','','','1','footer','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_version','3','1','{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}','1','*'),
('66','Compare','','','3','sidebar1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_redshop_productcompare','1','1','{\"moduleclass_sfx\":\"\"}','0','*'),
('67','Follow us','','','5','sidebar1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_redshop_social','1','1','{\"facebook_link\":\"https:\\/\\/www.facebook.com\\/redCOMPONENT\",\"twitter_link\":\"https:\\/\\/twitter.com\\/redCOMPONENT\",\"googleplus_link\":\"https:\\/\\/plus.google.com\",\"linkedin_link\":\"http:\\/\\/www.linkedin.com\\/\",\"youtube_link\":\"http:\\/\\/www.youtube.com\\/\",\"tumblr_link\":\"http:\\/\\/www.tumblr.com\\/\",\"vimeo_link\":\"http:\\/\\/www.vimeo.com\\/\",\"rss_link\":\"\",\"facebook_show\":\"1\",\"facebook_order\":\"1\",\"facebook_image\":\"\",\"twitter_show\":\"1\",\"twitter_order\":\"2\",\"twitter_image\":\"\",\"googleplus_show\":\"1\",\"googleplus_order\":\"3\",\"googleplus_image\":\"\",\"linkedin_show\":\"1\",\"linkedin_order\":\"4\",\"linkedin_image\":\"\",\"youtube_show\":\"1\",\"youtube_order\":\"5\",\"youtube_image\":\"\",\"tumblr_show\":\"1\",\"tumblr_order\":\"6\",\"tumblr_image\":\"\",\"vimeo_show\":\"1\",\"vimeo_order\":\"7\",\"vimeo_image\":\"\",\"rss_show\":\"1\",\"rss_order\":\"8\",\"rss_image\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','0','*'),
('65','WishList','','','4','sidebar1','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_redshop_wishlist','1','1','{\"moduleclass_sfx\":\"\"}','0','*'),
('70','Search product','','','1','top','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1','mod_redshop_search','1','1','{\"moduleclass_sfx\":\"\",\"templateid\":\"551\",\"productperpage\":\"8\",\"enableAjaxsearch\":\"1\",\"modsearchitemid\":\"\",\"noofsearchresults\":\"8\",\"defaultSearchType\":\"product_name\",\"showSearchTypeField\":\"no\",\"showSearchField\":\"yes\",\"showCategory\":\"no\",\"showManufacturer\":\"no\",\"showProductsearchtitle\":\"no\",\"showKeywordtitle\":\"no\",\"stdsearchtext\":\"Search the whole site...\"}','0','*'),
('76','redSHOP Category Module','','','0','','0','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0','mod_redshop_categories','1','1','','0','*');

CREATE TABLE `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO #__modules_menu VALUES
('1','0'),
('2','0'),
('3','0'),
('4','0'),
('6','0'),
('7','0'),
('8','0'),
('9','0'),
('10','0'),
('12','0'),
('13','0'),
('14','0'),
('15','0'),
('16','0'),
('17','0'),
('18','0'),
('30','0'),
('33','0'),
('44','0'),
('45','0'),
('46','0'),
('48','0'),
('49','0'),
('50','0'),
('51','0'),
('52','0'),
('59','0'),
('61','0'),
('65','0'),
('66','0'),
('67','0'),
('70','0'),
('71','0'),
('74','0');

CREATE TABLE `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__plugins VALUES
('1','Authentication - Joomla','joomla','authentication','0','1','1','1','0','0','0000-00-00 00:00:00',''),
('2','Authentication - LDAP','ldap','authentication','0','2','0','1','0','0','0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
('3','Authentication - GMail','gmail','authentication','0','4','0','0','0','0','0000-00-00 00:00:00',''),
('4','Authentication - OpenID','openid','authentication','0','3','0','0','0','0','0000-00-00 00:00:00',''),
('5','User - Joomla!','joomla','user','0','0','1','0','0','0','0000-00-00 00:00:00','autoregister=1\n\n'),
('6','Search - Content','content','search','0','1','1','1','0','0','0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
('7','Search - Contacts','contacts','search','0','3','1','1','0','0','0000-00-00 00:00:00','search_limit=50\n\n'),
('8','Search - Categories','categories','search','0','4','1','0','0','0','0000-00-00 00:00:00','search_limit=50\n\n'),
('9','Search - Sections','sections','search','0','5','1','0','0','0','0000-00-00 00:00:00','search_limit=50\n\n'),
('10','Search - Newsfeeds','newsfeeds','search','0','6','1','0','0','0','0000-00-00 00:00:00','search_limit=50\n\n'),
('11','Search - Weblinks','weblinks','search','0','2','1','1','0','0','0000-00-00 00:00:00','search_limit=50\n\n'),
('12','Content - Pagebreak','pagebreak','content','0','10000','1','1','0','0','0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
('13','Content - Rating','vote','content','0','4','1','1','0','0','0000-00-00 00:00:00',''),
('14','Content - Email Cloaking','emailcloak','content','0','5','1','0','0','0','0000-00-00 00:00:00','mode=1\n\n'),
('15','Content - Code Hightlighter (GeSHi)','geshi','content','0','5','0','0','0','0','0000-00-00 00:00:00',''),
('16','Content - Load Module','loadmodule','content','0','6','1','0','0','0','0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),
('17','Content - Page Navigation','pagenavigation','content','0','2','1','1','0','0','0000-00-00 00:00:00','position=1\n\n'),
('18','Editor - No Editor','none','editors','0','0','1','1','0','0','0000-00-00 00:00:00',''),
('19','Editor - TinyMCE','tinymce','editors','0','0','1','1','0','0','0000-00-00 00:00:00','mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
('20','Editor - XStandard Lite 2.0','xstandard','editors','0','0','0','1','0','0','0000-00-00 00:00:00',''),
('21','Editor Button - Image','image','editors-xtd','0','0','1','0','0','0','0000-00-00 00:00:00',''),
('22','Editor Button - Pagebreak','pagebreak','editors-xtd','0','0','1','0','0','0','0000-00-00 00:00:00',''),
('23','Editor Button - Readmore','readmore','editors-xtd','0','0','1','0','0','0','0000-00-00 00:00:00',''),
('24','XML-RPC - Joomla','joomla','xmlrpc','0','7','0','1','0','0','0000-00-00 00:00:00',''),
('25','XML-RPC - Blogger API','blogger','xmlrpc','0','7','0','1','0','0','0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),
('27','System - SEF','sef','system','0','1','1','0','0','0','0000-00-00 00:00:00',''),
('28','System - Debug','debug','system','0','2','1','0','0','0','0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),
('29','System - Legacy','legacy','system','0','0','1','1','0','0','0000-00-00 00:00:00','route=1\n\n'),
('30','System - Cache','cache','system','0','4','0','1','0','0','0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),
('31','System - Log','log','system','0','5','0','1','0','0','0000-00-00 00:00:00',''),
('32','System - Remember Me','remember','system','0','6','1','1','0','0','0000-00-00 00:00:00',''),
('33','System - Backlink','backlink','system','0','7','0','1','0','0','0000-00-00 00:00:00',''),
('34','System - Mootools Upgrade','mtupgrade','system','0','8','0','1','0','0','0000-00-00 00:00:00',''),
('35','Redform redevent integration plugin','redevent','redform_integration','0','0','1','0','0','0','0000-00-00 00:00:00',''),
('36','Paypal Payments','rs_payment_paypal','redshop_payment','0','0','1','0','0','0','0000-00-00 00:00:00','payment_oprand=-\npayment_discount_is_percent=1\nverify_status=C\ninvalid_status=P\n'),
('37','Bank Transfer Payments','rs_payment_banktransfer','redshop_payment','0','0','1','0','0','0','0000-00-00 00:00:00','payment_oprand=-\npayment_discount_is_percent=1\nprivate_person=1\nbusiness=1\nverify_status=C\nshopper_group_id=Your Company Name , 101 Company Street, city\ntxtextra_info=Please enter your Extra Info\n'),
('38','Redshop - Shipping','default_shipping','redshop_shipping','0','0','0','0','0','0','0000-00-00 00:00:00','is_shipper=1\n');

CREATE TABLE `#__poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__redshop_accessmanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(256) NOT NULL,
  `gid` int(11) NOT NULL,
  `view` enum('1','0') DEFAULT NULL,
  `add` enum('1','0') DEFAULT NULL,
  `edit` enum('1','0') DEFAULT NULL,
  `delete` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Access Manager';



CREATE TABLE `#__redshop_attribute_set` (
  `attribute_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_set_name` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Attribute set detail';



CREATE TABLE `#__redshop_cart` (
  `session_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `time` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Cart';



CREATE TABLE `#__redshop_catalog` (
  `catalog_id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(250) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`catalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog';



CREATE TABLE `#__redshop_catalog_colour` (
  `colour_id` int(11) NOT NULL AUTO_INCREMENT,
  `sample_id` int(11) NOT NULL,
  `code_image` varchar(250) NOT NULL,
  `is_image` tinyint(4) NOT NULL,
  PRIMARY KEY (`colour_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog Colour';



CREATE TABLE `#__redshop_catalog_request` (
  `catalog_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `registerDate` int(11) NOT NULL,
  `block` tinyint(4) NOT NULL,
  `reminder_1` tinyint(4) NOT NULL,
  `reminder_2` tinyint(4) NOT NULL,
  `reminder_3` tinyint(4) NOT NULL,
  PRIMARY KEY (`catalog_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog Request';



CREATE TABLE `#__redshop_catalog_sample` (
  `sample_id` int(11) NOT NULL AUTO_INCREMENT,
  `sample_name` varchar(100) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`sample_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Catalog Sample';



CREATE TABLE `#__redshop_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) NOT NULL,
  `category_short_description` longtext NOT NULL,
  `category_description` longtext NOT NULL,
  `category_template` int(11) NOT NULL,
  `category_more_template` varchar(255) NOT NULL,
  `products_per_page` int(11) NOT NULL,
  `category_thumb_image` varchar(250) NOT NULL,
  `category_full_image` varchar(250) NOT NULL,
  `metakey` varchar(250) NOT NULL,
  `metadesc` longtext NOT NULL,
  `metalanguage_setting` text NOT NULL,
  `metarobot_info` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pageheading` longtext NOT NULL,
  `sef_url` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `category_pdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ordering` int(11) NOT NULL,
  `canonical_url` text NOT NULL,
  `category_back_full_image` varchar(250) NOT NULL,
  `compare_template_id` varchar(255) NOT NULL,
  `append_to_global_seo` enum('append','prepend','replace') NOT NULL DEFAULT 'append',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Category';

INSERT INTO #__redshop_category VALUES
('4','Jeans','','','551','551','12','1317370557_diesel-slimfit.jpg','1317370557_diesel-slimfit.jpg','','','','','','','','1','2011-09-20 05:12:38','0','','','558','append'),
('5','Tops','','','551','0','6','1319533787_white-top.png','1319533787_white-top.png','','','','','','','','1','2011-10-25 02:09:47','0','','','558','append'),
('6','Jersry Tops','','','551','551','8','1337052140_1319533310_104831643.png','1337052140_1319533310_104831643.png','','','','','','','','1','2012-05-14 21:21:53','0','','','558','append'),
('7','Trousers','','','551','5','8','1337052181_1319533310_104831640.png','1337052181_1319533310_104831640.png','','','','','','','','1','2012-05-14 21:22:34','0','','','0','append'),
('9','Dresses','','','551','5','8','1337054190_1319533893_white-top.png','1337054190_1319533893_white-top.png','','','','','','','','1','2012-05-14 21:56:03','0','','','0','append'),
('10','Skirts','','','551','5','8','1337054208_1319540453_jeans1.jpg','1337054208_1319540453_jeans1.jpg','','','','','','','','1','2012-05-14 21:56:21','0','','','0','append'),
('11','Jackets & Coats','','','551','5','8','1337054234_1319533893_white-top.png','1337054234_1319533893_white-top.png','','','','','','','','1','2012-05-14 21:56:47','0','','','0','append'),
('12','Blazers & waistcoats','','','551','5','8','1337054255_1319540389_jeans2.jpg','1337054255_1319540389_jeans2.jpg','','','','','','','','1','2012-05-14 21:57:08','0','','','0','append'),
('13','Sportswear','','','551','5','8','1337054278_1334818715_104831643.png','1337054278_1334818715_104831643.png','','','','','','','','1','2012-05-14 21:57:31','0','','','0','append'),
('15','Lingerie & nighrwear','','','551','5','8','1337054319_1334818791_104831642.png','1337054319_1334818791_104831642.png','','','','','','','','1','2012-05-14 21:58:12','0','','','0','append'),
('16','Socks & tights','','','551','5','8','1337054341_1319533310_104831641.png','1337054341_1319533310_104831641.png','','','','','','','','1','2012-05-14 21:58:34','0','','','0','append'),
('17','Accessoties','','','551','5','8','1337054364_1334819105_jeans2.jpg','1337054364_1334819105_jeans2.jpg','','','','','','','','1','2012-05-14 21:58:57','0','','','0','append'),
('18','Shoes','','','551','5','8','1337054398_1319540389_jeans2.jpg','1337054398_1319540389_jeans2.jpg','','','','','','','','1','2012-05-14 21:59:31','0','','','0','append'),
('20','Recommended products','','','551','551','8','','','','','','','','','','1','2012-05-15 18:28:34','0','','','0','append'),
('21','New Products','','','551','5','8','','','','','','','','','','1','2012-05-15 18:29:01','0','','','0','append');

CREATE TABLE `#__redshop_category_xref` (
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `category_child_id` int(11) NOT NULL DEFAULT '0',
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `category_xref_category_child_id` (`category_child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Category relation';

INSERT INTO #__redshop_category_xref VALUES
('0','4'),
('0','5'),
('0','6'),
('0','7'),
('0','9'),
('0','10'),
('0','11'),
('0','12'),
('0','13'),
('0','15'),
('0','16'),
('0','17'),
('0','18'),
('0','20'),
('0','21');

CREATE TABLE `#__redshop_container` (
  `container_id` int(11) NOT NULL AUTO_INCREMENT,
  `container_name` varchar(250) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `container_desc` longtext NOT NULL,
  `creation_date` double NOT NULL,
  `min_del_time` int(11) NOT NULL,
  `max_del_time` int(11) NOT NULL,
  `container_volume` double NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Container';



CREATE TABLE `#__redshop_container_product_xref` (
  `container_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  UNIQUE KEY `container_id` (`container_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Container Product Relation';



CREATE TABLE `#__redshop_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `country_jtext` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Country records';

INSERT INTO #__redshop_country VALUES
('1','Afghanistan','AFG','AF',''),
('2','Albania','ALB','AL',''),
('3','Algeria','DZA','DZ',''),
('4','American Samoa','ASM','AS',''),
('5','Andorra','AND','AD',''),
('6','Angola','AGO','AO',''),
('7','Anguilla','AIA','AI',''),
('8','Antarctica','ATA','AQ',''),
('9','Antigua and Barbuda','ATG','AG',''),
('10','Argentina','ARG','AR',''),
('11','Armenia','ARM','AM',''),
('12','Aruba','ABW','AW',''),
('13','Australia','AUS','AU',''),
('14','Austria','AUT','AT',''),
('15','Azerbaijan','AZE','AZ',''),
('16','Bahamas','BHS','BS',''),
('17','Bahrain','BHR','BH',''),
('18','Bangladesh','BGD','BD',''),
('19','Barbados','BRB','BB',''),
('20','Belarus','BLR','BY',''),
('21','Belgium','BEL','BE',''),
('22','Belize','BLZ','BZ',''),
('23','Benin','BEN','BJ',''),
('24','Bermuda','BMU','BM',''),
('25','Bhutan','BTN','BT',''),
('26','Bolivia','BOL','BO',''),
('27','Bosnia and Herzegowina','BIH','BA',''),
('28','Botswana','BWA','BW',''),
('29','Bouvet Island','BVT','BV',''),
('30','Brazil','BRA','BR',''),
('31','British Indian Ocean Territory','IOT','IO',''),
('32','Brunei Darussalam','BRN','BN',''),
('33','Bulgaria','BGR','BG',''),
('34','Burkina Faso','BFA','BF',''),
('35','Burundi','BDI','BI',''),
('36','Cambodia','KHM','KH',''),
('37','Cameroon','CMR','CM',''),
('38','Canada','CAN','CA',''),
('39','Cape Verde','CPV','CV',''),
('40','Cayman Islands','CYM','KY',''),
('41','Central African Republic','CAF','CF',''),
('42','Chad','TCD','TD',''),
('43','Chile','CHL','CL',''),
('44','China','CHN','CN',''),
('45','Christmas Island','CXR','CX',''),
('46','Cocos (Keeling) Islands','CCK','CC',''),
('47','Colombia','COL','CO',''),
('48','Comoros','COM','KM',''),
('49','Congo','COG','CG',''),
('50','Cook Islands','COK','CK',''),
('51','Costa Rica','CRI','CR',''),
('52','Cote D\'Ivoire','CIV','CI',''),
('53','Croatia','HRV','HR',''),
('54','Cuba','CUB','CU',''),
('55','Cyprus','CYP','CY',''),
('56','Czech Republic','CZE','CZ',''),
('57','Denmark','DNK','DK',''),
('58','Djibouti','DJI','DJ',''),
('59','Dominica','DMA','DM',''),
('60','Dominican Republic','DOM','DO',''),
('62','Ecuador','ECU','EC',''),
('63','Egypt','EGY','EG',''),
('64','El Salvador','SLV','SV',''),
('65','Equatorial Guinea','GNQ','GQ',''),
('66','Eritrea','ERI','ER',''),
('67','Estonia','EST','EE',''),
('68','Ethiopia','ETH','ET',''),
('69','Falkland Islands (Malvinas)','FLK','FK',''),
('70','Faroe Islands','FRO','FO',''),
('71','Fiji','FJI','FJ',''),
('72','Finland','FIN','FI',''),
('73','France','FRA','FR',''),
('75','French Guiana','GUF','GF',''),
('76','French Polynesia','PYF','PF',''),
('77','French Southern Territories','ATF','TF',''),
('78','Gabon','GAB','GA',''),
('79','Gambia','GMB','GM',''),
('80','Georgia','GEO','GE',''),
('81','Germany','DEU','DE',''),
('82','Ghana','GHA','GH',''),
('83','Gibraltar','GIB','GI',''),
('84','Greece','GRC','GR',''),
('85','Greenland','GRL','GL',''),
('86','Grenada','GRD','GD',''),
('87','Guadeloupe','GLP','GP',''),
('88','Guam','GUM','GU',''),
('89','Guatemala','GTM','GT',''),
('90','Guinea','GIN','GN',''),
('91','Guinea-bissau','GNB','GW',''),
('92','Guyana','GUY','GY',''),
('93','Haiti','HTI','HT',''),
('94','Heard and Mc Donald Islands','HMD','HM',''),
('95','Honduras','HND','HN',''),
('96','Hong Kong','HKG','HK',''),
('97','Hungary','HUN','HU',''),
('98','Iceland','ISL','IS',''),
('99','India','IND','IN',''),
('100','Indonesia','IDN','ID',''),
('101','Iran (Islamic Republic of)','IRN','IR',''),
('102','Iraq','IRQ','IQ',''),
('103','Ireland','IRL','IE',''),
('104','Israel','ISR','IL',''),
('105','Italy','ITA','IT',''),
('106','Jamaica','JAM','JM',''),
('107','Japan','JPN','JP',''),
('108','Jordan','JOR','JO',''),
('109','Kazakhstan','KAZ','KZ',''),
('110','Kenya','KEN','KE',''),
('111','Kiribati','KIR','KI',''),
('112','Korea, Democratic People\'s Republic of','PRK','KP',''),
('113','Korea, Republic of','KOR','KR',''),
('114','Kuwait','KWT','KW',''),
('115','Kyrgyzstan','KGZ','KG',''),
('116','Lao People\'s Democratic Republic','LAO','LA',''),
('117','Latvia','LVA','LV',''),
('118','Lebanon','LBN','LB',''),
('119','Lesotho','LSO','LS',''),
('120','Liberia','LBR','LR',''),
('121','Libyan Arab Jamahiriya','LBY','LY',''),
('122','Liechtenstein','LIE','LI',''),
('123','Lithuania','LTU','LT',''),
('124','Luxembourg','LUX','LU',''),
('125','Macau','MAC','MO',''),
('126','Macedonia, The Former Yugoslav Republic of','MKD','MK',''),
('127','Madagascar','MDG','MG',''),
('128','Malawi','MWI','MW',''),
('129','Malaysia','MYS','MY',''),
('130','Maldives','MDV','MV',''),
('131','Mali','MLI','ML',''),
('132','Malta','MLT','MT',''),
('133','Marshall Islands','MHL','MH',''),
('134','Martinique','MTQ','MQ',''),
('135','Mauritania','MRT','MR',''),
('136','Mauritius','MUS','MU',''),
('137','Mayotte','MYT','YT',''),
('138','Mexico','MEX','MX',''),
('139','Micronesia, Federated States of','FSM','FM',''),
('140','Moldova, Republic of','MDA','MD',''),
('141','Monaco','MCO','MC',''),
('142','Mongolia','MNG','MN',''),
('143','Montserrat','MSR','MS',''),
('144','Morocco','MAR','MA',''),
('145','Mozambique','MOZ','MZ',''),
('146','Myanmar','MMR','MM',''),
('147','Namibia','NAM','NA',''),
('148','Nauru','NRU','NR',''),
('149','Nepal','NPL','NP',''),
('150','Netherlands','NLD','NL',''),
('151','Netherlands Antilles','ANT','AN',''),
('152','New Caledonia','NCL','NC',''),
('153','New Zealand','NZL','NZ',''),
('154','Nicaragua','NIC','NI',''),
('155','Niger','NER','NE',''),
('156','Nigeria','NGA','NG',''),
('157','Niue','NIU','NU',''),
('158','Norfolk Island','NFK','NF',''),
('159','Northern Mariana Islands','MNP','MP',''),
('160','Norway','NOR','NO',''),
('161','Oman','OMN','OM',''),
('162','Pakistan','PAK','PK',''),
('163','Palau','PLW','PW',''),
('164','Panama','PAN','PA',''),
('165','Papua New Guinea','PNG','PG',''),
('166','Paraguay','PRY','PY',''),
('167','Peru','PER','PE',''),
('168','Philippines','PHL','PH',''),
('169','Pitcairn','PCN','PN',''),
('170','Poland','POL','PL',''),
('171','Portugal','PRT','PT',''),
('172','Puerto Rico','PRI','PR',''),
('173','Qatar','QAT','QA',''),
('174','Reunion','REU','RE',''),
('175','Romania','ROM','RO',''),
('176','Russian Federation','RUS','RU',''),
('177','Rwanda','RWA','RW',''),
('178','Saint Kitts and Nevis','KNA','KN',''),
('179','Saint Lucia','LCA','LC',''),
('180','Saint Vincent and the Grenadines','VCT','VC',''),
('181','Samoa','WSM','WS',''),
('182','San Marino','SMR','SM',''),
('183','Sao Tome and Principe','STP','ST',''),
('184','Saudi Arabia','SAU','SA',''),
('185','Senegal','SEN','SN',''),
('186','Seychelles','SYC','SC',''),
('187','Sierra Leone','SLE','SL',''),
('188','Singapore','SGP','SG',''),
('189','Slovakia (Slovak Republic)','SVK','SK',''),
('190','Slovenia','SVN','SI',''),
('191','Solomon Islands','SLB','SB',''),
('192','Somalia','SOM','SO',''),
('193','South Africa','ZAF','ZA',''),
('194','South Georgia and the South Sandwich Islands','SGS','GS',''),
('195','Spain','ESP','ES',''),
('196','Sri Lanka','LKA','LK',''),
('197','St. Helena','SHN','SH',''),
('198','St. Pierre and Miquelon','SPM','PM',''),
('199','Sudan','SDN','SD',''),
('200','Suriname','SUR','SR',''),
('201','Svalbard and Jan Mayen Islands','SJM','SJ',''),
('202','Swaziland','SWZ','SZ',''),
('203','Sweden','SWE','SE',''),
('204','Switzerland','CHE','CH',''),
('205','Syrian Arab Republic','SYR','SY',''),
('206','Taiwan','TWN','TW',''),
('207','Tajikistan','TJK','TJ',''),
('208','Tanzania, United Republic of','TZA','TZ',''),
('209','Thailand','THA','TH',''),
('210','Togo','TGO','TG',''),
('211','Tokelau','TKL','TK',''),
('212','Tonga','TON','TO',''),
('213','Trinidad and Tobago','TTO','TT',''),
('214','Tunisia','TUN','TN',''),
('215','Turkey','TUR','TR',''),
('216','Turkmenistan','TKM','TM',''),
('217','Turks and Caicos Islands','TCA','TC',''),
('218','Tuvalu','TUV','TV',''),
('219','Uganda','UGA','UG',''),
('220','Ukraine','UKR','UA',''),
('221','United Arab Emirates','ARE','AE',''),
('222','United Kingdom','GBR','GB',''),
('223','United States','USA','US',''),
('224','United States Minor Outlying Islands','UMI','UM',''),
('225','Uruguay','URY','UY',''),
('226','Uzbekistan','UZB','UZ',''),
('227','Vanuatu','VUT','VU',''),
('228','Vatican City State (Holy See)','VAT','VA',''),
('229','Venezuela','VEN','VE',''),
('230','Viet Nam','VNM','VN',''),
('231','Virgin Islands (British)','VGB','VG',''),
('232','Virgin Islands (U.S.)','VIR','VI',''),
('233','Wallis and Futuna Islands','WLF','WF',''),
('234','Western Sahara','ESH','EH',''),
('235','Yemen','YEM','YE',''),
('237','The Democratic Republic of Congo','DRC','DC',''),
('238','Zambia','ZMB','ZM',''),
('239','Zimbabwe','ZWE','ZW',''),
('241','Jersey','XJE','XJ',''),
('242','St. Barthelemy','XSB','XB',''),
('245','Aland Islands','ALA','AX',''),
('246','Guernsey','GGY','GG',''),
('247','Saint Martin (French part)','MAF','MF',''),
('248','Timor-Leste','TLS','TL',''),
('249','Serbia','SRB','RS',''),
('250','Isle of Man','IMN','IM',''),
('251','Montenegro','MNE','ME',''),
('252','Palestinian Territory, Occupied','PSE','PS','');

CREATE TABLE `#__redshop_coupons` (
  `coupon_id` int(16) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` tinyint(4) NOT NULL,
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT '0 - Global, 1 - User Specific',
  `userid` int(11) NOT NULL,
  `coupon_left` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `free_shipping` tinyint(4) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Coupons';



CREATE TABLE `#__redshop_coupons_transaction` (
  `transaction_coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_value` decimal(10,3) NOT NULL,
  `userid` int(11) NOT NULL,
  `trancation_date` int(11) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY (`transaction_coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Coupons Transaction';



CREATE TABLE `#__redshop_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Cron Job';

INSERT INTO #__redshop_cron VALUES
('1','2013-12-09','1');

CREATE TABLE `#__redshop_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Currency Detail';

INSERT INTO #__redshop_currency VALUES
('1','Andorran Peseta','ADP'),
('2','United Arab Emirates Dirham','AED'),
('3','Afghanistan Afghani','AFA'),
('4','Albanian Lek','ALL'),
('5','Netherlands Antillian Guilder','ANG'),
('6','Angolan Kwanza','AOK'),
('7','Argentine Peso','ARS'),
('9','Australian Dollar','AUD'),
('10','Aruban Florin','AWG'),
('11','Barbados Dollar','BBD'),
('12','Bangladeshi Taka','BDT'),
('14','Bulgarian Lev','BGL'),
('15','Bahraini Dinar','BHD'),
('16','Burundi Franc','BIF'),
('17','Bermudian Dollar','BMD'),
('18','Brunei Dollar','BND'),
('19','Bolivian Boliviano','BOB'),
('20','Brazilian Real','BRL'),
('21','Bahamian Dollar','BSD'),
('22','Bhutan Ngultrum','BTN'),
('23','Burma Kyat','BUK'),
('24','Botswanian Pula','BWP'),
('25','Belize Dollar','BZD'),
('26','Canadian Dollar','CAD'),
('27','Swiss Franc','CHF'),
('28','Chilean Unidades de Fomento','CLF'),
('29','Chilean Peso','CLP'),
('30','Yuan (Chinese) Renminbi','CNY'),
('31','Colombian Peso','COP'),
('32','Costa Rican Colon','CRC'),
('33','Czech Koruna','CZK'),
('34','Cuban Peso','CUP'),
('35','Cape Verde Escudo','CVE'),
('36','Cyprus Pound','CYP'),
('40','Danish Krone','DKK'),
('41','Dominican Peso','DOP'),
('42','Algerian Dinar','DZD'),
('43','Ecuador Sucre','ECS'),
('44','Egyptian Pound','EGP'),
('46','Ethiopian Birr','ETB'),
('47','Euro','EUR'),
('49','Fiji Dollar','FJD'),
('50','Falkland Islands Pound','FKP'),
('52','British Pound','GBP'),
('53','Ghanaian Cedi','GHC'),
('54','Gibraltar Pound','GIP'),
('55','Gambian Dalasi','GMD'),
('56','Guinea Franc','GNF'),
('58','Guatemalan Quetzal','GTQ'),
('59','Guinea-Bissau Peso','GWP'),
('60','Guyanan Dollar','GYD'),
('61','Hong Kong Dollar','HKD'),
('62','Honduran Lempira','HNL'),
('63','Haitian Gourde','HTG'),
('64','Hungarian Forint','HUF'),
('65','Indonesian Rupiah','IDR'),
('66','Irish Punt','IEP'),
('67','Israeli Shekel','ILS'),
('68','Indian Rupee','INR'),
('69','Iraqi Dinar','IQD'),
('70','Iranian Rial','IRR'),
('73','Jamaican Dollar','JMD'),
('74','Jordanian Dinar','JOD'),
('75','Japanese Yen','JPY'),
('76','Kenyan Schilling','KES'),
('77','Kampuchean (Cambodian) Riel','KHR'),
('78','Comoros Franc','KMF'),
('79','North Korean Won','KPW'),
('80','(South) Korean Won','KRW'),
('81','Kuwaiti Dinar','KWD'),
('82','Cayman Islands Dollar','KYD'),
('83','Lao Kip','LAK'),
('84','Lebanese Pound','LBP'),
('85','Sri Lanka Rupee','LKR'),
('86','Liberian Dollar','LRD'),
('87','Lesotho Loti','LSL'),
('89','Libyan Dinar','LYD'),
('90','Moroccan Dirham','MAD'),
('91','Malagasy Franc','MGF'),
('92','Mongolian Tugrik','MNT'),
('93','Macau Pataca','MOP'),
('94','Mauritanian Ouguiya','MRO'),
('95','Maltese Lira','MTL'),
('96','Mauritius Rupee','MUR'),
('97','Maldive Rufiyaa','MVR'),
('98','Malawi Kwacha','MWK'),
('99','Mexican Peso','MXP'),
('100','Malaysian Ringgit','MYR'),
('101','Mozambique Metical','MZM'),
('102','Nigerian Naira','NGN'),
('103','Nicaraguan Cordoba','NIC'),
('105','Norwegian Kroner','NOK'),
('106','Nepalese Rupee','NPR'),
('107','New Zealand Dollar','NZD'),
('108','Omani Rial','OMR'),
('109','Panamanian Balboa','PAB'),
('110','Peruvian Nuevo Sol','PEN'),
('111','Papua New Guinea Kina','PGK'),
('112','Philippine Peso','PHP'),
('113','Pakistan Rupee','PKR'),
('114','Polish Złoty','PLN'),
('116','Paraguay Guarani','PYG'),
('117','Qatari Rial','QAR'),
('118','Romanian Leu','RON'),
('119','Rwanda Franc','RWF'),
('120','Saudi Arabian Riyal','SAR'),
('121','Solomon Islands Dollar','SBD'),
('122','Seychelles Rupee','SCR'),
('123','Sudanese Pound','SDP'),
('124','Swedish Krona','SEK'),
('125','Singapore Dollar','SGD'),
('126','St. Helena Pound','SHP'),
('127','Sierra Leone Leone','SLL'),
('128','Somali Schilling','SOS'),
('129','Suriname Guilder','SRG'),
('130','Sao Tome and Principe Dobra','STD'),
('131','Russian Ruble','RUB'),
('132','El Salvador Colon','SVC'),
('133','Syrian Potmd','SYP'),
('134','Swaziland Lilangeni','SZL'),
('135','Thai Bath','THB'),
('136','Tunisian Dinar','TND'),
('137','Tongan Pa\'anga','TOP'),
('138','East Timor Escudo','TPE'),
('139','Turkish Lira','TRY'),
('140','Trinidad and Tobago Dollar','TTD'),
('141','Taiwan Dollar','TWD'),
('142','Tanzanian Schilling','TZS'),
('143','Uganda Shilling','UGS'),
('144','US Dollar','USD'),
('145','Uruguayan Peso','UYP'),
('146','Venezualan Bolivar','VEB'),
('147','Vietnamese Dong','VND'),
('148','Vanuatu Vatu','VUV'),
('149','Samoan Tala','WST'),
('150','Democratic Yemeni Dinar','YDD'),
('151','Yemeni Rial','YER'),
('152','New Yugoslavia Dinar','YUD'),
('153','South African Rand','ZAR'),
('154','Zambian Kwacha','ZMK'),
('155','Zaire Zaire','ZRZ'),
('156','Zimbabwe Dollar','ZWD'),
('157','Slovak Koruna','SKK'),
('158','Armenian Dram','AMD');

CREATE TABLE `#__redshop_customer_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `question_date` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Customer Question';



CREATE TABLE `#__redshop_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `condition` tinyint(1) NOT NULL DEFAULT '1',
  `discount_amount` decimal(10,4) NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Discount';



CREATE TABLE `#__redshop_discount_product` (
  `discount_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `condition` tinyint(1) NOT NULL DEFAULT '1',
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `published` tinyint(4) NOT NULL,
  `category_ids` text NOT NULL,
  PRIMARY KEY (`discount_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `#__redshop_discount_product_shoppers` (
  `discount_product_id` int(11) NOT NULL,
  `shopper_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `#__redshop_discount_shoppers` (
  `discount_id` int(11) NOT NULL,
  `shopper_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `#__redshop_economic_accountgroup` (
  `accountgroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `accountgroup_name` varchar(255) NOT NULL,
  `economic_vat_account` varchar(255) NOT NULL,
  `economic_nonvat_account` varchar(255) NOT NULL,
  `economic_discount_nonvat_account` varchar(255) NOT NULL,
  `economic_shipping_vat_account` varchar(255) NOT NULL,
  `economic_shipping_nonvat_account` varchar(255) NOT NULL,
  `economic_discount_product_number` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `economic_service_nonvat_account` varchar(255) NOT NULL,
  `economic_discount_vat_account` varchar(255) NOT NULL,
  PRIMARY KEY (`accountgroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Economic Account Group';

INSERT INTO #__redshop_economic_accountgroup VALUES
('1','default account group','4001','4000','4000','4001','4000','191919','1','','4001');

CREATE TABLE `#__redshop_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_title` varchar(250) NOT NULL,
  `field_name` varchar(20) NOT NULL,
  `field_type` varchar(20) NOT NULL,
  `field_desc` longtext NOT NULL,
  `field_class` varchar(20) NOT NULL,
  `field_section` varchar(20) NOT NULL,
  `field_maxlength` int(11) NOT NULL,
  `field_cols` int(11) NOT NULL,
  `field_rows` int(11) NOT NULL,
  `field_size` tinyint(4) NOT NULL,
  `field_show_in_front` tinyint(4) NOT NULL,
  `required` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `display_in_product` tinyint(4) NOT NULL,
  `display_in_checkout` tinyint(4) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Fields';



CREATE TABLE `#__redshop_fields_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) DEFAULT NULL,
  `data_txt` longtext,
  `itemid` int(11) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `alt_text` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  PRIMARY KEY (`data_id`),
  KEY `itemid` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Fields Data';



CREATE TABLE `#__redshop_fields_value` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `field_value` varchar(250) NOT NULL,
  `field_name` varchar(250) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `image_link` text NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Fields Value';

INSERT INTO #__redshop_fields_value VALUES
('2','2','Yes','field_temp_opt_1','','');

CREATE TABLE `#__redshop_giftcard` (
  `giftcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcard_name` varchar(255) NOT NULL,
  `giftcard_price` decimal(10,3) NOT NULL,
  `giftcard_value` decimal(10,3) NOT NULL,
  `giftcard_validity` int(11) NOT NULL,
  `giftcard_date` int(11) NOT NULL,
  `giftcard_bgimage` varchar(255) NOT NULL,
  `giftcard_image` varchar(255) NOT NULL,
  `published` int(11) NOT NULL,
  `giftcard_desc` longtext NOT NULL,
  `customer_amount` int(11) NOT NULL,
  `accountgroup_id` int(11) NOT NULL,
  PRIMARY KEY (`giftcard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Giftcard';



CREATE TABLE `#__redshop_mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_name` varchar(255) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_section` varchar(255) NOT NULL,
  `mail_order_status` varchar(11) NOT NULL,
  `mail_body` longtext NOT NULL,
  `published` tinyint(4) NOT NULL,
  `mail_bcc` varchar(255) NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Mail Center';

INSERT INTO #__redshop_mail VALUES
('1','Ask Question','Ask Question About Product','ask_question_mail','0','<p>To Admin,</p>\n<p>Product  : {product_name}</p>\n<p>Please check this link : {product_link}</p>\n<p> </p>\n<p>{user_question}</p>\n<p>{answer}</p>\n<p> </p>','1',''),
('10','Reset Password Mail','Reset Password','status_of_password_reset','0','<p>Hello, request has been made to reset your {username} account password. To reset your password, you will need to submit this token in order to verify that the request was legitimate.</p>\n<p>The token is {reset_token}</p>\n<p>Click on the URL below to enter the token and proceed with resetting your password.</p>\n<p><a href=\"{password_complete_url}\">Reset Password</a></p>\n<p> </p>\n<p>Thank you.</p>','1',''),
('11','Send to friend','Send to friend','product','0','<p>Hi {friend_name} ,</p>\n<p>New Product  : {product_name}</p>\n<p>{product_desc} Please check this link : {product_url}</p>\n<p> </p>\n<p> </p>','1',''),
('12','Tax exempt approval mail','Tax exempt approval mail subject','tax_exempt_approval_mail','0','<p>Hello,</p>\n<p>Tax exempt has been approved</p>','1',''),
('13','Tax exempt disapproval mail','Tax exempt disapproval mail subject','tax_exempt_disapproval_mail','0','<p>Hello,</p>\n<p>Tax exempt  has been disapproved.</p>','1',''),
('14','Tax exempt waiting approval mail','Tax exempt waiting approval mail subject','tax_exempt_waiting_approval_mail','0','<p>Tax exempt waiting approval mail contents...</p>\n<p>Thanks.</p>','1',''),
('15','Registration mail','Registration mail','register','0','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table style=\"width: 100%;\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<p style=\"font-size: 24px; font-family: verdana; color: #616161; text-align: justify;\">Thank you for your registration!</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">You are now a registered user at redFASHIONSTORE.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify; line-height: 20px;\">To go to your account where you can make all necessary adjustments, such as change your address book, view old orders, download your purchased products, or sign up for our newsletter please click <a href=\"http://www.redcomponent.com/account\" target=\"_blank\">here</a>.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\"> </p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('16','Catlog First Reminder','Catlog First Reminder','catalog_first_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\">Dear {name}. <br /></span></span></strong></p>\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span> My name is xyz, in charge of customer support here at abc. We sent you our catalogue the other day, and I would just like to know if you had a chance to look at it...? In any case, I am ready by the phone / e-mail if you need any assistance whatsoever. </span></span></span></p>\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Kind regards,</span></span></span></strong></p>\n<p style=\"margin-left: 0.5in; margin-bottom: 0in; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Name<br /></span></span></span></strong></p>\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"> </p>','1',''),
('17','Catlog Second Reminder','Catlog Second Reminder','catalog_second_reminder','0','<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><strong><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}, </span></span></span></strong></p>\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span> I just wish to inform you that we are currently running a campaign for all the clients who received our catalogue earlier. This means that in the next 4 days, you get </span></span></span><span style=\"color: #ff0000;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>5% </span></span></span></span><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>off everything you buy, and since our products are already competitively priced, it is a really good offer. You can use the code: XXX when you order to get the discount, but remember you have 4 days from now to decide!</span></span></span></p>\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"> </p>\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><strong>Regards,</strong></p>\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\"><strong>xyz. </strong></p>','1',''),
('18','Catlog Sample First Reminder','Catlog Sample First Reminder','colour_sample_first_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. My name is xyz, in charge of customer support here at xyz. You have requested some colour samples, and I will send them to you as soon as possible. If you have any questions, please do not hesitate to contact me. </span></span></span><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\">Kind regards, xyz</span></span></p>','1',''),
('19','Catlog Sample Second Reminder','Catlog Sample Second Reminder','colour_sample_second_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. I sent you some sample colour material the other day, and I would just like to know if you had a chance to look at it...? In any case, I am ready by the phone / e-mail if you need any assistance whatsoever. Kind regards, xyz</span></span></span></p>','1',''),
('20','Catlog Sample Third Reminder','Catlog Sample Third Reminder','colour_sample_third_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\n<p style=\"margin-left: 0.5in; margin-bottom: 0in;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. I just wish to inform you that we are currently running a campaign for all the clients who received sample colour material from us earlier. This means that in the next 4 days, you get 5% off everything you buy, and since our products are already competitively priced, it is a really good offer. You can use the code: XXX when you order to get the discount, but remember you have 4 days from now to decide!</span></span></span></p>','1',''),
('21','Order Mail','Order Mail for {order_id}','order','0','<table style=\"border: 1px solid #ccc; background: #fff; width: 700px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"line-height: 25px;\">\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 10px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td style=\"line-height: 25px;\">\n<table style=\"width: 100%;\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td style=\"line-height: 25px;\">\n<p style=\"font-size: 24px; font-family: verdana; color: #666666; text-align: justify;\"><strong>Thank you for your order!</strong></p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">Thank you for ordering from redFASHIONSTORE!<br />To download your purchased products please follow the link in the bottom of this mail.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 0 !important;\"> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 5px !important;\"><strong>Products ordered:</strong></p>\n<table style=\"width: 100%; line-height: 25px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody><!--{product_loop_start}-->\n<tr style=\"border-bottom: 1px solid #F1F1F1;\">\n<td colspan=\"3\">\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 32px;\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\"> {product_quantity} x </span></td>\n<td><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">{product_name}{without_vat}</span> <span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">{product_accessory}</span></td>\n</tr>\n</tbody>\n</table>\n</td>\n<td align=\"right\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: right;\">{product_total_price}</span></td>\n</tr>\n<!--{product_loop_end}--> <!--{if discount}-->\n<tr>\n<td colspan=\"3\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">Discount</span></td>\n<td align=\"right\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">{discount_excl_vat}</span></td>\n</tr>\n<!--{discount end if}-->\n<tr>\n<td style=\"padding-top: 10px;\" colspan=\"3\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">VAT</span></td>\n<td align=\"right\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">{sub_total_vat}</span></td>\n</tr>\n<tr>\n<td colspan=\"3\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\"><strong>Total</strong></span></td>\n<td align=\"right\"><span style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\"><strong>{order_total}</strong></span></td>\n</tr>\n</tbody>\n</table>\n<p style=\"text-align: justify;\"> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 5px !important;\"><strong>Billing information: </strong></p>\n<div style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">{billing_address}</div>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 5px !important;\"><strong>Additional information:</strong></p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 5px !important;\">{customer_note}</p>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 5px !important;\"><strong>Order details:</strong></p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">The text must be modified to: To see the details of your order and download your products please {order_detail_link}.</p>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify; margin-bottom: 5px !important;\"><strong>Please Note!</strong></p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">Single sales items are available for immediate download, and until 7 days after purchase. Please ensure that you download your product within this timeframe.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">When ordering one or more service products:</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">As this is a manual process, please allow 2-4 business days for a redCOMPONENT employee to get back to You.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">Customizations Services is offered to Templates Customers only.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">If you require any further assistance with customization of non-redFASHIONSTORE templates, or if You would prefer a quote on a uniquely designed website, template, component or plug-in - Please fill out our contact form to initiate dialogue.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\"> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\">Regards,<br />redFASHIONSTORE</p>\n</td>\n<td style=\"width: 20px; padding-bottom: 30px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('22','Order Status Change Shipped','Order Status Change Shipped','order_status','S','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<p style=\"font-size: 24px; font-family: verdana; color: #616161; text-align: justify;\">Order status</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Your order status has changed.</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Regards,<br />redFASHIONSTORE</p>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 30px;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('23','Order Status Change Refunded','Order Status Change Refunded','order_status','R','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<p style=\"font-size: 24px; font-family: verdana; color: #616161; text-align: justify;\">Order status</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Your order status has changed.</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Regards,<br />redFASHIONSTORE</p>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 30px;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('24','Order Status Change Pending','Order Status Change Pending','order_status','P','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<p style=\"font-size: 24px; font-family: verdana; color: #616161; text-align: justify;\">Order status</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Your order status has changed.</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Regards,<br />redFASHIONSTORE</p>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 30px;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('25','Order Status Change Confirmed','Order Status Change Confirmed','order_status','C','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<p style=\"font-size: 24px; font-family: verdana; color: #616161; text-align: justify;\">Order status</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Your order status has changed.</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Regards,<br />redFASHIONSTORE</p>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 30px;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('26','Order Status Change Cancelled','Order Status Change Cancelled','order_status','X','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<p style=\"font-size: 24px; font-family: verdana; color: #616161; text-align: justify;\">Order status</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Your order status has changed.</p>\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('27','catalog coupon reminder','catalog coupon reminder','catalog_coupon_reminder','0','<!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	-->\n<p style=\"background: #ffffff none repeat scroll 0% 0%; margin-left: 0.5in; margin-bottom: 0in; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>Dear {name}. I just wish to inform you that we are currently running a campaign for all the clients who received our catalogue earlier. This means that in the next 4 days, you get </span></span></span><span style=\"color: #ff0000;\"><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>{discount} </span></span></span></span><span style=\"font-family: Verdana,sans-serif;\"><span style=\"font-size: x-small;\"><span>off everything you buy, and since our products are already competitively priced, it is a really good offer. You can use the code: {coupon_code} when you order to get the discount, but remember you have 4 days from now to decide!</span></span></span></p>','1',''),
('30','First Mail After Order Purchased','Mail After Order Purchased','first_mail_after_order_purchased','0','<p>Hi {name}, <br />You made an order with us 7 days ago and to show our appreciation of you as a customer we send you discount code to use the next time you visit our store</p>\n<p>{url}</p>\n<p>discount amount : {coupon_amount}</p>\n<p>discount coupon code : {coupon_code}</p>\n<p>valid upto : {coupon_duration}</p>\n<p>Thank you.</p>','1',''),
('32','Second Mail After Order Purchased','Second Mail After Order Purchased','second_mail_after_order_purchased','0','<p>Hi {name}, <br />You made an order with us 10 days ago and to show our appreciation of you as a customer we send you discount code to use the next time you visit our store</p>\n<p>{url}</p>\n<p>discount amount : {coupon_amount}</p>\n<p>discount coupon code : {coupon_code}</p>\n<p>valid upto : {coupon_duration}</p>\n<p>Thank you.</p>','1',''),
('33','Third Mail After Order Purchased','Third Mail After Order Purchased','third_mail_after_order_purchased','0','<p>Hi {name}, <br />You made an order with us 21 days ago and to show our appreciation of you as a customer we send you discount code to use the next time you visit our store</p>\n<p>{url}</p>\n<p>discount amount : {coupon_amount}</p>\n<p>discount coupon code : {coupon_code}</p>\n<p>valid upto : {coupon_duration}</p>\n<p>Thank you.</p>','1',''),
('34','Catalog Send Mail','Catalog Request','catalog','0','<p>Dear, <strong>{name}</strong></p>\n<p>We get your request for catalog. Here, you can found attached catalogs.</p>\n<p> </p>\n<p>Thank you.</p>','1',''),
('50','Economic Invoice','Invoice','economic_inoice','0','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td style=\"line-height: 25px;\">\n<table style=\"width: 100%; padding-top: 10px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 94px;\" width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #666666; float: right; text-align: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td style=\"padding-bottom: 30px;\">\n<p style=\"font-size: 14px; font-family: verdana; color: #666666; text-align: justify;\"><strong>Hi {name}</strong><br /><br />Attached is your invoice.<br /><br />Regards,<br />redFASHIONSTORE</p>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('54','My wishlist mail','My wishlist','mywishlist_mail','0','hi,{name}<!--{product_loop_start}--><table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr valign=\"top\"><td width=\"40%\"><div style=\"float: left; width: 195px; height: 230px; text-align: center;\">{product_thumb_image}<div>{product_name}</div><div>{product_price}</div></div></td></tr></tbody></table><!--{product_loop_end}-->Regards,{from_name}','1',''),
('64','Order Special Discount Mail','Admin applied discount (special offer)','order_special_discount','0','You got {special_discount} that is {special_discount_amount}.<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr><td><br /></td><td><table style=\"width: 100%;\" align=\"right\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr><td align=\"right\">ABC Company -- abc.com</td></tr><tr><td align=\"right\">abccompany.com</td></tr><tr><td align=\"right\">Street Address</td></tr><tr><td align=\"right\">Address line 2</td></tr><tr><td align=\"right\">County</td></tr><tr><td align=\"right\">Country</td></tr><tr><td></td></tr><tr><td align=\"right\">Telephone Number : 11325-3251</td></tr><tr><td></td></tr><tr><td align=\"right\">E-mail : abccompany@abc.om</td></tr></tbody></table></td></tr><tr><td style=\"font-weight: bold\" colspan=\"2\">Some Title</td></tr><tr><td colspan=\"2\">Some Intro text...Lorem Ipsum is simply dummy 			text of the printing and typesetting industry. Lorem Ipsum has been 			the industrys standard dummy text ever since the 1500s, when an 			unknown printer took a galley of type and scrambled it to make a type 			specimen book. It has survived not only five centuries...</td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Order Information</th></tr><tr></tr><tr><td>Order id : {order_id}</td></tr><tr><td>Order Number : {order_number}</td></tr><tr><td>Order Date : {order_date}</td></tr><tr><td>Order Status : {order_status}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Billing Address Information</th></tr><tr></tr><tr><td>{billing_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Shipping Address Information</th></tr><tr></tr><tr><td>{shipping_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Order Details</th></tr><tr></tr><tr><td><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\"><tbody><tr><td>Product Name</td><td>Note</td><td>Price</td><td>Quantity</td><td align=\"right\">Total Price</td></tr><!--{product_loop_start}--><tr><td>{product_name}        {product_sku}</td><td>{product_wrapper}</td><td>{product_price}</td><td>{product_quantity}</td><td align=\"right\">{product_total_price}</td></tr><!--{product_loop_end}--></tbody></table></td></tr><tr><td></td></tr><tr><td><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\"><tbody><tr align=\"left\"><td align=\"left\"><strong>Order Subtotal : </strong></td><td align=\"right\">{product_subtotal}</td></tr><tr align=\"left\"><td align=\"left\"><strong>TAX : </strong></td><td align=\"right\">{order_tax}</td></tr><tr align=\"left\"><td align=\"left\"><strong>Discount : </strong></td><td align=\"right\">{order_discount}</td></tr><tr align=\"left\"><td align=\"left\"><strong>{special_discount_lbl} </strong></td><td align=\"right\">{special_discount_amount}</td></tr><tr align=\"left\"><td align=\"left\"><strong>Shipping : </strong></td><td align=\"right\">{order_shipping}</td></tr><tr align=\"left\"><td colspan=\"2\" align=\"left\"><hr /></td></tr><tr align=\"left\"><td align=\"left\"><strong>Total :</strong></td><td align=\"right\">{order_total}</td></tr><tr align=\"left\"><td colspan=\"2\" align=\"left\"><hr /></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>','1',''),
('74','News letter ','News Letter confirmation','newsletter_confirmation','0','<p>hi {name},</p>\n<p>Confirm your News letter {link}.</p>','1',''),
('84','NewsLetter cancellation ','NewsLetter cancellation ','newsletter_cancellation','0','NewsLetter cancellationNewsLetter cancellation NewsLetter cancellation NewsLetter cancellationNewsLetter cancellation NewsLetter cancellation','1',''),
('85','Invoice Mail','Invoice Mail','invoice_mail','0','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\">\n<tbody>\n<tr>\n<td>\n<div style=\"padding: 10px 20px;\">\n<table width=\"100%\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</div>\n<table width=\"100%\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<div style=\"padding: 10px 20px;\">\n<p style=\"font-size: 24px; font-face: verdana; color: #616161; text-align: justify;\">Thank you for your order!</p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">Thank you for ordering from redFASHIONSTORE!<br />To download your purchased products please follow the link in the bottom of this mail.</p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"> </p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>Products ordered:</strong></p>\n<table style=\"width: 100%;\" border=\"0\">\n<tbody><!--{product_loop_start}-->\n<tr style=\"border-bottom: 1px solid #F1F1F1;\">\n<td><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>{product_name}{without_vat}</strong></span></td>\n<td><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">{product_price}</span></td>\n<td><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">{product_quantity}</span></td>\n<td align=\"right\"><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: right;\">{product_total_price}</span></td>\n</tr>\n<!--{product_loop_end}-->\n<tr>\n<td colspan=\"3\"><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>VAT</strong></span></td>\n<td align=\"right\"><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">{sub_total_vat}</span></td>\n</tr>\n<tr>\n<td colspan=\"3\"><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>Total</strong></span></td>\n<td align=\"right\"><span style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">{order_total}</span></td>\n</tr>\n</tbody>\n</table>\n<p style=\"text-align: justify;\"> </p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>Billing information: </strong></p>\n<div style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">{billing_address}</div>\n<p> </p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>Additional information:</strong></p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">{customer_note}</p>\n<p> </p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"><strong>Order details:</strong></p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">To see the details of your order and to download the products please click {order_detail_link}</p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\"> </p>\n<p style=\"font-size: 14px; font-face: verdana; color: #616161; text-align: justify;\">Regards,<br />redFASHIONSTORE</p>\n</div>\n<table style=\"margin-top: 30px;\" width=\"100%\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544; display: block !important;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('86','Product Subscription Mail','Mail for product Subscription ','subscription_renewal_mail','0','<h1>Product Subscription Renew</h1>\n<h3>Dear,</h3>\n<p><span>{firstname} {lastname}</span></p>\n<p>Your Subscription for <strong>{product_name}</strong> is going to expired on <span>{subsciption_enddate}</span></p>\n<h2>Your Subscription Detail is as below</h2>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>Subscribe Product :</td>\n<td>{product_name}</td>\n</tr>\n<tr>\n<td>Subscription Period :</td>\n<td>{subscription_period}</td>\n</tr>\n<tr>\n<td>Subscription Price : </td>\n<td>{subscription_price}</td>\n</tr>\n</tbody>\n</table>\n<p>Click here <em>{product_link}</em> and renew it</p>','1',''),
('94','Giftcard Mail','Giftcard Mail','giftcard_mail','0','<table><tr><td ><span>{giftcard_price_lbl}</span></td><td>{giftcard_price}</td></tr><tr><td ><span>{giftcard_reciver_name_lbl}</span></td><td>{giftcard_reciver_name}</td></tr><tr><td>{giftcard_reciver_email_lbl}</td><td>{giftcard_reciver_email}</td></tr><tr><td></td><td>{giftcard_desc}</td></tr><tr><td></td><td>{giftcard_price}</td></tr><tr><td>{giftcard_validity_from}{giftcard_validity_to}</td></tr><tr><td>{giftcard_image}</td></tr><tr><td>{giftcard_validity}</td></tr></table>','1',''),
('105','Quotation Mail','Quotation Mail for {quotation_id} - {quotation_status} - {quotation_total}','quotation_mail','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{quotation_information_lbl}</th>\n</tr>\n<tr>\n<td>{quotation_id_lbl} : {quotation_id}</td>\n</tr>\n<tr>\n<td>{quotation_number_lbl} : {quotation_number}</td>\n</tr>\n<tr>\n<td>{quotation_date_lbl} : {quotation_date}</td>\n</tr>\n<tr>\n<td>{quotation_status_lbl} : {quotation_status}</td>\n</tr>\n<tr>\n<td>{quotation_note_lbl} : {quotation_note}</td>\n</tr>\n<tr>\n<td>{quotation_detail_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{quotation_detail_lbl}</th>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!--{product_loop_start}-->\n<tr>\n<td>{product_name}{product_s_desc}({product_number})<br />{product_userfields}<br />{product_attribute}<br />{product_accessory}</td>\n<td>{product_wrapper}<br />{product_thumb_image}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!--{product_loop_end}-->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_subtotal_lbl} : </strong></td>\n<td align=\"right\">{quotation_subtotal}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\n<td align=\"right\">{quotation_total}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n<br /> \n<hr />\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('150','Catalogue Order Mail','Catalogue Order Mail:','catalogue_order','0','<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr><td><br /></td><td><table style=\"width: 100%;\" align=\"right\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr><td align=\"right\">ABC Company -- abc.com</td></tr><tr><td align=\"right\">abccompany.com</td></tr><tr><td align=\"right\">Street Address</td></tr><tr><td align=\"right\">Address line 2</td></tr><tr><td align=\"right\">County</td></tr><tr><td align=\"right\">Country</td></tr><tr><td></td></tr><tr><td align=\"right\">Telephone Number : 11325-3251</td></tr><tr><td></td></tr><tr><td align=\"right\">E-mail : abccompany@abc.om</td></tr></tbody></table></td></tr><tr><td style=\"font-weight: bold\" colspan=\"2\">Some Title</td></tr><tr><td colspan=\"2\">Some Intro text...Lorem Ipsum is simply dummy    text of the printing and typesetting industry. Lorem Ipsum has been    the industry\'s standard dummy text ever since the 1500s, when an    unknown printer took a galley of type and scrambled it to make a type    specimen book. It has survived not only five centuries...</td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{order_information_lbl}</th></tr><tr></tr><tr><td>{order_id_lbl} : {order_id}</td></tr><tr><td>{order_number_lbl} : {order_number}</td></tr><tr><td>{order_date_lbl} : {order_date}</td></tr><tr><td>{order_status_lbl} : {order_status}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{billing_address_information_lbl}</th></tr><tr></tr><tr><td>{billing_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{shipping_address_information_lbl}</th></tr><tr></tr><tr><td>{shipping_address}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{order_detail_lbl}</th></tr><tr></tr><tr><td><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"2\"><tbody><tr><td>{product_name_lbl}</td><td>{note_lbl}</td><td>{quantity_lbl}</td></tr><!--{product_loop_start}--><tr><td>{pro_name}<br /> {product_userfields}</td><td>{pro_note}</td><td>{pro_quantity}</td></tr><!--{product_loop_end}--></tbody></table></td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Payment Status</th></tr><tr></tr><tr><td>{order_payment_status}{shipping_method_lbl}{shipping_method}</td></tr></tbody></table></td></tr><tr><td colspan=\"2\"><table style=\"width: 100%;\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">Order url</th></tr><tr></tr><tr><td>{order_detail_link}</td></tr></tbody></table></td></tr></tbody></table>','1',''),
('160','Quotation User Register Mail','Quotation User Register Mail:','quotation_user_register','0','<table><tr><td>Username</td><td> : </td><td>{username}</td></tr><tr><td>Password</td><td> : </td><td>{password}</td></tr><tr><td>Click here</td><td> : </td><td>{link}</td></tr></table>','1',''),
('175','RequestTaxExemptMail','RequestTaxExemptMail:','request_tax_exempt_mail','0','<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tbody><tr><td>Vat Number</td><td>{vat_number}</td></tr><tr><td>User Name</td><td>{username}</td></tr><tr><td>Company Name</td><td>{company_name}</td></tr><tr><td>Country</td><td>{country}</td></tr><tr><td>State</td><td>{state}</td></tr><tr><td>Phone</td><td>{phone}</td></tr><tr><td>Zipcode</td><td>{zipcode}</td></tr><tr><td>Address</td><td>{address}</td></tr><tr><td>City</td><td>{city}</td></tr></tbody></table>','1',''),
('185','Downloadable Email','Link to download your newly purchased product(s)','downloadable_product_mail','0','<table style=\"border: 1px solid #ccc; background: #fff; width: 600px;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"line-height: 25px;\">\n<table style=\"width: 100%; background: #f7f7f7;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 10px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"400px\"><a href=\"http://redcomponent.com\" target=\"_blank\">  <img src=\"images/logo.png\" border=\"0\" alt=\"\" /></a></td>\n<td style=\"font-size: 12px; color: #878787; float: right; font-family: verdana; vertical-align: top;\">{order_date}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 20px;\" colspan=\"3\"> </td>\n</tr>\n<tr>\n<td style=\"width: 20px;\"> </td>\n<td style=\"line-height: 25px;\">\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\"><strong>Dear {fullname}</strong></p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Thanks for your recent purchase at our store. Here are the link(s) where you can download file/product that you have purchased.</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Order Date : {order_date}<br />Order # : {order_number}<br />Download Links :</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">{product_serial_loop_start} {product_name} - {token} <br /> {product_serial_loop_end}</p>\n<p style=\"font-size: 14px; font-family: verdana; color: #616161; text-align: justify;\">Once again, thank you for shopping!</p>\n</td>\n<td style=\"width: 20px;\"> </td>\n</tr>\n<tr style=\"height: 160px;\">\n<td colspan=\"3\"> </td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 30px; width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"height: 45px; background-color: #444544;\"> </td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','1',''),
('186','Review','Review About Product','review_mail','0','<p>To Admin,</p><p>Username: {username}</p><p>Product : {product_name}</p><p>Please check this link : {product_link}</p><p>Title : {title}</p><p>Comment : {comment}</p>','1',''),
('187','Notify Stock','Stock Update Notification for {product_name}','notify_stock_mail','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\"><tbody><tr><td><table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\"><tbody><tr style=\"background-color: #cccccc\"><th align=\"left\">{stocknotify_intro_text}</th></tr><tr><td>{product_detail}</td></tr></tbody></table></td></tr></tbody></table>','1','');

CREATE TABLE `#__redshop_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(250) NOT NULL,
  `manufacturer_desc` longtext NOT NULL,
  `manufacturer_email` varchar(250) NOT NULL,
  `product_per_page` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metalanguage_setting` text NOT NULL,
  `metarobot_info` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pageheading` text NOT NULL,
  `sef_url` text NOT NULL,
  `published` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `manufacturer_url` varchar(255) NOT NULL,
  `excluding_category_list` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Manufacturer';

INSERT INTO #__redshop_manufacturer VALUES
('1','Brand Masion','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','27','',''),
('2','Juicy','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','32','',''),
('3','Miumiu','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','24','',''),
('4','Petite','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','31','',''),
('5','Fendi','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','33','',''),
('6','Reiss','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','29','',''),
('7','Morrison','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','30','',''),
('8','London','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','28','',''),
('9','Jbrand','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','26','',''),
('10','Armand','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed. Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','','0','561','','','','','','','','1','25','','');

CREATE TABLE `#__redshop_mass_discount` (
  `mass_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_product` longtext NOT NULL,
  `category_id` longtext NOT NULL,
  `manufacturer_id` longtext NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `discount_amount` double(10,2) NOT NULL,
  `discount_startdate` int(11) NOT NULL,
  `discount_enddate` int(11) NOT NULL,
  `discount_name` longtext NOT NULL,
  PRIMARY KEY (`mass_discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Page Viewer';



CREATE TABLE `#__redshop_media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_name` varchar(250) NOT NULL,
  `media_alternate_text` varchar(255) NOT NULL,
  `media_section` varchar(20) NOT NULL,
  `section_id` int(11) NOT NULL,
  `media_type` varchar(250) NOT NULL,
  `media_mimetype` varchar(20) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Media';

INSERT INTO #__redshop_media VALUES
('2','1319533310_104831643.png','','product','15','images','','1','0'),
('3','1319533310_104831641.png','','product','15','images','','1','0'),
('4','1319533310_104831642.png','','product','15','images','','1','0'),
('5','1319533310_104831640.png','','product','15','images','','1','0'),
('7','1319540389_1319540389andjeans2.jpg','','product','17','images','','1','0'),
('9','1319540453_1319540453andjeans1.jpg','','product','18','images','','1','0'),
('11','1334747844_1334747844andmodel1.png','','product','19','images','','1','0'),
('12','1334748264_1334748264andmodel1.png','','product','19','images','','1','0'),
('15','1334818791_104831643.png','','product','22','images','','1','0'),
('16','1334818791_104831641.png','','product','22','images','','1','0'),
('17','1334818791_104831642.png','','product','22','images','','1','0'),
('18','1334818791_104831640.png','','product','22','images','','1','0'),
('20','1334819105_1319540389andjeans2.jpg','','product','24','images','','1','0'),
('22','1334819105_1319540453andjeans1.jpg','','product','25','images','','1','0'),
('24','1337054300_104831643.png','','product','26','images','','1','0'),
('25','1337054300_104831641.png','','product','26','images','','1','0'),
('26','1337054300_104831642.png','','product','26','images','','1','0'),
('27','1337054300_104831640.png','','product','26','images','','1','0'),
('29','1337054645_104831643.png','','product','28','images','','1','0'),
('30','1337054645_104831641.png','','product','28','images','','1','0'),
('31','1337054645_104831642.png','','product','28','images','','1','0'),
('32','1337054645_104831640.png','','product','28','images','','1','0'),
('34','1337054838_104831643.png','','product','30','images','','1','0'),
('35','1337054838_104831641.png','','product','30','images','','1','0'),
('36','1337054838_104831642.png','','product','30','images','','1','0'),
('37','1337054838_104831640.png','','product','30','images','','1','0'),
('39','1337054920_104831643.png','','product','32','images','','1','0'),
('40','1337054920_104831641.png','','product','32','images','','1','0'),
('41','1337054920_104831642.png','','product','32','images','','1','0'),
('42','1337054920_104831640.png','','product','32','images','','1','0'),
('44','1337055032_104831643.png','','product','34','images','','1','0'),
('45','1337055032_104831641.png','','product','34','images','','1','0'),
('46','1337055032_104831642.png','','product','34','images','','1','0'),
('47','1337055032_104831640.png','','product','34','images','','1','0'),
('48','1364798337_1356416009_1336710358_fendi.png','','manufacturer','5','images','image/png','1','0'),
('49','1364798382_1356415882_1336710347_nivmiv.png','','manufacturer','3','images','image/png','1','0'),
('50','1364798398_1356509158_1336710288_armand-basi.png','','manufacturer','10','images','image/png','1','0'),
('51','1364798410_1356509093_1336710337_jbrand.png','','manufacturer','9','images','image/png','1','0'),
('53','1364798444_1356509051_1336711430_london.png','','manufacturer','8','images','image/png','1','0'),
('54','1364798452_1356508957_1336710319_reiss.png','','manufacturer','6','images','image/png','1','0'),
('55','1364798462_1356509002_1336710380_morriso.png','','manufacturer','7','images','image/png','1','0'),
('56','1364798472_1356415965_1336710369_petite.png','','manufacturer','4','images','image/png','1','0'),
('57','1364798485_1356415864_1336710329_juicy.png','','manufacturer','2','images','image/png','1','0'),
('58','1364875946_1356415919_1336710299_brandmansion.png','','manufacturer','1','images','image/png','1','0'),
('61','1364882912_templateand03-05.png','','product','17','images','image/png','1','0'),
('62','1364882957_templateand03-05.png','','product','24','images','image/png','1','0'),
('63','1364883026_templateand03-09.png','','product','20','images','image/png','1','0'),
('64','1364883044_templateand03-07.png','','product','18','images','image/png','1','0'),
('66','1364883081_templateand03.png','','product','32','images','image/png','1','0'),
('67','1364883101_templateand03-09.png','','product','34','images','image/png','1','0'),
('68','1364883129_templateand03-07.png','','product','25','images','image/png','1','0'),
('69','1364883157_templateand03.png','','product','28','images','image/png','1','0'),
('70','1364883223_templateand03-05.png','','product','30','images','image/png','1','0'),
('76','1364892576_Untitled-3and03.png','','product','26','images','image/png','1','0'),
('77','1364893234_Untitled-3and03.png','','product','22','images','image/png','1','0'),
('78','1364960466_templateand03-08.png','','product','19','images','image/png','1','0'),
('79','1370838344_thumb.php.png','','product','15','images','image/png','1','0');

CREATE TABLE `#__redshop_media_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `media_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Media Additional Downloadable Files';



CREATE TABLE `#__redshop_newsletter` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `template_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Newsletter';

INSERT INTO #__redshop_newsletter VALUES
('1','News Letter Demo','News Letter Demo','User Name : {username} Email : {email}','29','1');

CREATE TABLE `#__redshop_newsletter_subscription` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `checkout` tinyint(4) NOT NULL,
  `published` int(11) NOT NULL,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Newsletter subscribers';



CREATE TABLE `#__redshop_newsletter_tracker` (
  `tracker_id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscriber_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read` tinyint(4) NOT NULL,
  `date` double NOT NULL,
  PRIMARY KEY (`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Newsletter Tracker';



CREATE TABLE `#__redshop_order_acc_item` (
  `order_item_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_acc_item_sku` varchar(255) NOT NULL,
  `order_acc_item_name` varchar(255) NOT NULL,
  `order_acc_price` decimal(15,4) NOT NULL,
  `order_acc_vat` decimal(15,4) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_acc_item_price` decimal(15,4) NOT NULL,
  `product_acc_final_price` decimal(15,4) NOT NULL,
  `product_attribute` text NOT NULL,
  PRIMARY KEY (`order_item_acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Accessory Item Detail';



CREATE TABLE `#__redshop_order_attribute_item` (
  `order_att_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `parent_section_id` int(11) NOT NULL,
  `section_name` varchar(250) NOT NULL,
  `section_price` decimal(15,4) NOT NULL,
  `section_vat` decimal(15,4) NOT NULL,
  `section_oprand` char(1) NOT NULL,
  `is_accessory_att` tinyint(4) NOT NULL,
  `stockroom_id` varchar(255) NOT NULL,
  `stockroom_quantity` varchar(255) NOT NULL,
  PRIMARY KEY (`order_att_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP order Attribute item';



CREATE TABLE `#__redshop_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_item_sku` varchar(64) NOT NULL DEFAULT '',
  `order_item_name` varchar(255) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,4) DEFAULT NULL,
  `product_item_price_excl_vat` decimal(15,4) DEFAULT NULL,
  `product_final_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `order_item_currency` varchar(16) DEFAULT NULL,
  `order_status` varchar(250) DEFAULT NULL,
  `customer_note` text NOT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_attribute` text,
  `product_accessory` text NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `container_id` int(11) NOT NULL,
  `stockroom_id` varchar(255) NOT NULL,
  `stockroom_quantity` varchar(255) NOT NULL,
  `is_split` tinyint(1) NOT NULL,
  `attribute_image` text NOT NULL,
  `wrapper_id` int(11) NOT NULL,
  `wrapper_price` decimal(10,2) NOT NULL,
  `is_giftcard` tinyint(4) NOT NULL,
  `giftcard_user_name` varchar(255) NOT NULL,
  `giftcard_user_email` varchar(255) NOT NULL,
  `product_item_old_price` decimal(10,4) NOT NULL,
  `product_purchase_price` decimal(10,4) NOT NULL,
  `discount_calc_data` text NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Item Detail';



CREATE TABLE `#__redshop_order_payment` (
  `payment_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_id` int(11) DEFAULT NULL,
  `order_payment_code` varchar(30) NOT NULL DEFAULT '',
  `order_payment_cardname` blob NOT NULL,
  `order_payment_number` blob,
  `order_payment_ccv` blob NOT NULL,
  `order_payment_amount` double(10,2) NOT NULL,
  `order_payment_expire` int(11) DEFAULT NULL,
  `order_payment_name` varchar(255) DEFAULT NULL,
  `payment_method_class` varchar(256) DEFAULT NULL,
  `order_payment_trans_id` text NOT NULL,
  `authorize_status` varchar(255) DEFAULT NULL,
  `order_transfee` double(10,2) NOT NULL,
  PRIMARY KEY (`payment_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Payment Detail';



CREATE TABLE `#__redshop_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_code` varchar(64) NOT NULL,
  `order_status_name` varchar(64) DEFAULT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `order_status_code` (`order_status_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Orders Status';

INSERT INTO #__redshop_order_status VALUES
('1','P','Pending','1'),
('2','C','Confirmed','1'),
('3','X','Cancelled','1'),
('4','R','Refunded','1'),
('5','S','Shipped','1'),
('6','RD','Ready for delivery','1'),
('7','RD1','Ready for 1st delivery','1'),
('8','RD2','Ready for 2nd delivery','1'),
('9','ACCP','Awaiting credit card payment','1'),
('10','APP','Awaiting paypal payment','1'),
('11','ABT','Awaiting bank transfer','1'),
('12','PR','Payment received','1'),
('13','RC','Reclamation','1'),
('14','PS','Partially shipped','1'),
('15','RT','Returned','1'),
('16','PRT','Partially Returned','1'),
('17','PRC','Partially Reclamation','1');

CREATE TABLE `#__redshop_order_status_log` (
  `order_status_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status` varchar(5) NOT NULL,
  `order_payment_status` varchar(25) NOT NULL,
  `date_changed` int(11) NOT NULL,
  `customer_note` text NOT NULL,
  PRIMARY KEY (`order_status_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Orders Status history';



CREATE TABLE `#__redshop_order_users_info` (
  `order_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `users_info_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `vat_number` varchar(250) NOT NULL,
  `tax_exempt` tinyint(4) NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_code` varchar(11) NOT NULL,
  `state_code` varchar(11) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `tax_exempt_approved` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `is_company` tinyint(4) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `ean_number` varchar(250) NOT NULL,
  `requesting_tax_exempt` tinyint(4) NOT NULL,
  `thirdparty_email` varchar(255) NOT NULL,
  PRIMARY KEY (`order_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Order User Information';



CREATE TABLE `#__redshop_orderbarcode_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__redshop_ordernumber_track` (
  `trackdatetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Order number track';



CREATE TABLE `#__redshop_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(32) DEFAULT NULL,
  `barcode` varchar(13) NOT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) DEFAULT NULL,
  `order_shipping_tax` decimal(10,2) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `special_discount_amount` decimal(12,2) NOT NULL,
  `payment_dicount` decimal(12,2) NOT NULL,
  `order_status` varchar(5) DEFAULT NULL,
  `order_payment_status` varchar(25) NOT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `ship_method_id` varchar(255) DEFAULT NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `encr_key` varchar(255) NOT NULL,
  `split_payment` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `mail1_status` tinyint(1) NOT NULL,
  `mail2_status` tinyint(1) NOT NULL,
  `mail3_status` tinyint(1) NOT NULL,
  `special_discount` decimal(10,2) NOT NULL,
  `payment_discount` decimal(10,2) NOT NULL,
  `is_booked` tinyint(1) NOT NULL,
  `order_label_create` tinyint(1) NOT NULL,
  `vm_order_number` varchar(32) NOT NULL,
  `requisition_number` varchar(255) NOT NULL,
  `bookinvoice_number` int(11) NOT NULL,
  `bookinvoice_date` int(11) NOT NULL,
  `referral_code` varchar(50) NOT NULL,
  `customer_message` varchar(255) NOT NULL,
  `shop_id` varchar(255) NOT NULL,
  `order_discount_vat` decimal(10,3) NOT NULL,
  `track_no` varchar(250) NOT NULL,
  `payment_oprand` varchar(50) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `analytics_status` int(1) NOT NULL,
  `tax_after_discount` decimal(10,3) NOT NULL,
  `recuuring_subcription_id` varchar(500) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`),
  KEY `vm_order_number` (`vm_order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Order Detail';



CREATE TABLE `#__redshop_pageviewer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(250) NOT NULL,
  `section` varchar(250) NOT NULL,
  `section_id` int(11) NOT NULL,
  `hit` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Page Viewer';



CREATE TABLE `#__redshop_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL,
  `payment_method_name` varchar(255) DEFAULT NULL,
  `payment_class` varchar(50) NOT NULL DEFAULT '',
  `payment_method_code` varchar(8) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `is_creditcard` tinyint(1) NOT NULL DEFAULT '0',
  `payment_discount_is_percent` tinyint(4) NOT NULL,
  `payment_price` float(10,2) NOT NULL,
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `shopper_group` varchar(250) NOT NULL,
  `accepted_credict_card` varchar(255) NOT NULL,
  `payment_oprand` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Payment Method';



CREATE TABLE `#__redshop_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_parent_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_on_sale` tinyint(4) NOT NULL,
  `product_special` tinyint(4) NOT NULL,
  `product_download` tinyint(4) NOT NULL,
  `product_template` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` double NOT NULL,
  `discount_price` double NOT NULL,
  `discount_stratdate` int(11) NOT NULL,
  `discount_enddate` int(11) NOT NULL,
  `product_number` varchar(250) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `product_s_desc` longtext NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_volume` double NOT NULL,
  `product_tax_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `product_thumb_image` varchar(250) NOT NULL,
  `product_full_image` varchar(250) NOT NULL,
  `publish_date` datetime NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `visited` int(11) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metalanguage_setting` text NOT NULL,
  `metarobot_info` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pageheading` text NOT NULL,
  `sef_url` text NOT NULL,
  `cat_in_sefurl` int(11) NOT NULL,
  `weight` float(10,3) NOT NULL,
  `expired` tinyint(4) NOT NULL,
  `not_for_sale` tinyint(4) NOT NULL,
  `use_discount_calc` tinyint(4) NOT NULL,
  `discount_calc_method` varchar(255) NOT NULL,
  `min_order_product_quantity` int(11) NOT NULL,
  `minimum_per_product_total` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `product_length` decimal(10,2) NOT NULL,
  `product_height` decimal(10,2) NOT NULL,
  `product_width` decimal(10,2) NOT NULL,
  `product_diameter` decimal(10,2) NOT NULL,
  `product_availability_date` int(11) NOT NULL,
  `use_range` tinyint(4) NOT NULL,
  `product_tax_group_id` int(11) NOT NULL,
  `product_download_days` int(11) NOT NULL,
  `product_download_limit` int(11) NOT NULL,
  `product_download_clock` int(11) NOT NULL,
  `product_download_clock_min` int(11) NOT NULL,
  `accountgroup_id` int(11) NOT NULL,
  `canonical_url` text NOT NULL,
  `quantity_selectbox_value` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `max_order_product_quantity` int(11) NOT NULL,
  `product_download_infinite` tinyint(4) NOT NULL,
  `product_back_full_image` varchar(250) NOT NULL,
  `product_back_thumb_image` varchar(250) NOT NULL,
  `product_preview_image` varchar(250) NOT NULL,
  `product_preview_back_image` varchar(250) NOT NULL,
  `preorder` varchar(255) NOT NULL,
  `append_to_global_seo` enum('append','prepend','replace') NOT NULL DEFAULT 'append',
  PRIMARY KEY (`product_id`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Products';

INSERT INTO #__redshop_product VALUES
('15','0','0','0','1','1','0','553','Slimfit Street','125','95','1284829200','1664723663','123456654321','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1370838344_thumb.php.png','2011-09-20 15:32:21','2013-10-24 04:21:41','149','','','','','','','','4','100.000','0','0','0','area','0','0','0','0.00','0.00','0.00','0.00','0','0','1','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('17','0','4','0','0','0','0','553','Extra Slimfit','88','0','1319407200','1319660063','987654321','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','','0','0','1','','1364882912_templateand03-05.png','2011-10-25 12:59:49','2013-08-27 08:46:02','9','','','','','','','','4','0.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('18','0','6','0','0','0','0','553','Normal Fit','55','0','1319407200','1319660063','654','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','','0','0','1','','1364883044_templateand03-07.png','2011-10-25 13:00:53','2013-10-23 07:26:45','12','','','','','','','','4','0.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('19','0','0','0','0','0','0','553','Blue Jeans','95','0','1334700000','1334780063','12312312312','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','0','0','1','','1364960466_templateand03-08.png','2012-04-18 13:14:34','2013-10-24 03:58:14','6','','','','','','','','4','0.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('20','0','0','0','0','0','0','553','Jeans 2','125','95','1334700000','1334952863','jean-2','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p><span class=\"xml-punctuation\"></span><span class=\"xml-tagname\"></span><span class=\"xml-punctuation\"></span><span class=\"xml-text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><span class=\"xml-punctuation\"></span><span class=\"xml-tagname\"></span><span class=\"xml-punctuation\"></span></p>\n<p><span class=\"xml-punctuation\"></span><span class=\"xml-tagname\"></span><span class=\"xml-punctuation\"></span><span class=\"xml-text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><span class=\"xml-punctuation\"></span><span class=\"xml-tagname\"></span><span class=\"xml-punctuation\"></span></p>','0','0','1','','1364883026_templateand03-09.png','2012-04-19 08:58:12','2013-09-16 02:58:49','27','','','','','','','','4','0.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('22','0','4','0','1','0','0','553','Slimfit Street 3','125','95','1284847200','1664655263','slimfit-street-3','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1364893234_Untitled-3and03.png','2012-04-19 08:59:51','2013-06-13 00:04:52','86','','','','','','','','4','100.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('24','0','0','0','0','1','0','553','Extra Slimfit 2','88','0','-90000','76463','9876543214','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','','0','0','1','','1364882957_templateand03-05.png','2012-04-19 09:05:05','2013-10-24 06:14:18','38','','','','','','','','4','0.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('25','0','6','0','0','0','0','553','Normal Fit','55','0','1319407200','1319660063','65467','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','0','0','1','','1364883129_templateand03-07.png','2012-04-19 09:05:05','2013-10-24 06:14:26','15','','','','','','','','4','0.000','0','0','0','0','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('26','0','4','0','1','0','0','553','Slimfit Street 4','125','95','1284847200','1664655263','1234566543212','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1364892576_Untitled-3and03.png','2012-05-15 11:58:20','2013-06-09 21:51:53','90','','','','','','','','4','100.000','0','0','0','area','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('28','0','0','0','1','1','0','553',' Slimfit Street R','125','95','1284847200','1664655263','12345665432122','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1364883157_templateand03.png','2012-05-15 12:04:05','2013-10-24 06:29:44','141','','','','','','','','4','100.000','0','0','0','area','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('30','0','4','0','1','1','0','553','Slimfit Street R4','125','95','1284847200','1664655263','12345665432124','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1364883223_templateand03-05.png','2012-05-15 12:07:18','2013-06-09 22:48:46','87','','','','','','','','4','100.000','0','0','0','area','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('32','0','4','0','1','1','0','553','Slimfit Street R6','125','95','1284847200','1664655263','12345665432126','product','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1364883081_templateand03.png','2012-05-15 12:08:40','2013-10-24 06:15:07','97','','','','','','','','4','100.000','0','0','0','area','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append'),
('34','0','4','0','1','1','0','553','Slimfit Street R8','125','95','1284760800','1664655263','12345665432128','product','<p>Lorém ipsum dolor sit amet, consectetur adipisicing elit, sed.</p>','<p>Diesel. Slim-fit jeans in washed denim with a regular waist, flared legs, welt pockets at the front, and back pockets. Zip fly and raw-edge hems.</p>','0','0','1','','1364883101_templateand03-09.png','2012-05-15 12:10:32','2013-10-24 06:35:47','151','','','','','','','','4','100.000','0','0','0','area','0','0','0','0.00','0.00','0.00','0.00','0','0','0','0','0','0','0','0','','','0','0000-00-00 00:00:00','0','0','','','','','global','append');

CREATE TABLE `#__redshop_product_accessory` (
  `accessory_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `child_product_id` int(11) NOT NULL,
  `accessory_price` double NOT NULL,
  `oprand` char(1) NOT NULL,
  `setdefault_selected` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Accessory';

INSERT INTO #__redshop_product_accessory VALUES
('1','15','0','1','','0','0','0'),
('2','22','0','1','','0','0','0'),
('3','26','0','1','','0','0','0'),
('4','28','0','1','','0','0','0'),
('5','30','0','1','','0','0','0'),
('6','32','0','1','','0','0','0'),
('7','34','0','1','','0','0','0'),
('9','15','18','1','+','0','0','0');

CREATE TABLE `#__redshop_product_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(250) NOT NULL,
  `attribute_required` tinyint(4) NOT NULL,
  `allow_multiple_selection` tinyint(1) NOT NULL,
  `hide_attribute_price` tinyint(1) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `attribute_set_id` int(11) NOT NULL,
  `display_type` varchar(255) NOT NULL,
  `attribute_published` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Attribute';

INSERT INTO #__redshop_product_attribute VALUES
('1','Size','1','0','0','15','1','0','dropdown','1'),
('2','Size','1','0','0','0','1','0','dropdown','1'),
('3','Size','0','0','0','0','0','0','','1'),
('4','Size','0','0','0','0','0','0','','1'),
('5','Size','0','0','0','0','0','0','','1'),
('6','Size','0','0','0','0','0','0','','1'),
('7','Size','1','0','0','22','1','0','dropdown','1'),
('8','Size','1','0','0','26','1','0','dropdown','1'),
('9','Size','1','0','0','0','1','0','dropdown','1'),
('10','Size','0','0','0','0','0','0','','1'),
('11','Size','0','0','0','0','0','0','','1'),
('12','Size','0','0','0','0','0','0','','1'),
('13','Size','0','0','0','0','0','0','','1'),
('14','Size','1','0','0','28','1','0','dropdown','1'),
('15','Size','1','0','0','0','1','0','dropdown','1'),
('16','Size','0','0','0','0','0','0','','1'),
('17','Size','0','0','0','0','0','0','','1'),
('18','Size','0','0','0','0','0','0','','1'),
('19','Size','0','0','0','0','0','0','','1'),
('20','Size','1','0','0','30','1','0','dropdown','1'),
('21','Size','1','0','0','0','1','0','dropdown','1'),
('22','Size','0','0','0','0','0','0','','1'),
('23','Size','0','0','0','0','0','0','','1'),
('24','Size','0','0','0','0','0','0','','1'),
('25','Size','0','0','0','0','0','0','','1'),
('26','Size','1','0','0','32','1','0','dropdown','1'),
('27','Size','1','0','0','0','1','0','dropdown','1'),
('28','Size','0','0','0','0','0','0','','1'),
('29','Size','0','0','0','0','0','0','','1'),
('30','Size','0','0','0','0','0','0','','1'),
('31','Size','0','0','0','0','0','0','','1'),
('32','Size','1','0','0','34','1','0','dropdown','1');

CREATE TABLE `#__redshop_product_attribute_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_currency` varchar(10) NOT NULL,
  `cdate` int(11) NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `price_quantity_start` int(11) NOT NULL,
  `price_quantity_end` bigint(20) NOT NULL,
  `discount_price` double NOT NULL,
  `discount_start_date` int(11) NOT NULL,
  `discount_end_date` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Attribute Price';



CREATE TABLE `#__redshop_product_attribute_property` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_price` double NOT NULL,
  `oprand` char(1) NOT NULL DEFAULT '+',
  `property_image` varchar(255) NOT NULL,
  `property_main_image` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `setdefault_selected` tinyint(4) NOT NULL,
  `setrequire_selected` tinyint(3) NOT NULL,
  `setmulti_selected` tinyint(4) NOT NULL,
  `setdisplay_type` varchar(255) NOT NULL,
  `property_published` int(11) NOT NULL DEFAULT '1',
  `property_number` varchar(255) NOT NULL,
  `extra_field` varchar(250) NOT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Attribute Property';

INSERT INTO #__redshop_product_attribute_property VALUES
('1','1','S','0','+','','','0','0','0','0','dropdown','1','',''),
('2','1','M','0','+','','','1','0','0','0','dropdown','1','',''),
('3','1','L','0','+','','','2','0','0','0','dropdown','1','',''),
('4','1','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('5','3','S','0','+','','','0','0','0','0','dropdown','1','',''),
('6','4','M','0','+','','','1','0','0','0','dropdown','1','',''),
('7','5','L','0','+','','','2','0','0','0','dropdown','1','',''),
('8','6','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('9','7','S','0','+','','','0','0','0','0','dropdown','1','',''),
('10','7','M','0','+','','','1','0','0','0','dropdown','1','',''),
('11','7','L','0','+','','','2','0','0','0','dropdown','1','',''),
('12','7','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('13','8','S','0','+','','','0','0','0','0','dropdown','1','',''),
('14','8','M','0','+','','','1','0','0','0','dropdown','1','',''),
('15','8','L','0','+','','','2','0','0','0','dropdown','1','',''),
('16','8','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('17','10','S','0','+','','','0','0','0','0','dropdown','1','',''),
('18','11','M','0','+','','','1','0','0','0','dropdown','1','',''),
('19','12','L','0','+','','','2','0','0','0','dropdown','1','',''),
('20','13','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('21','14','S','0','+','','','0','0','0','0','dropdown','1','',''),
('22','14','M','0','+','','','1','0','0','0','dropdown','1','',''),
('23','14','L','0','+','','','2','0','0','0','dropdown','1','',''),
('24','14','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('25','16','S','0','+','','','0','0','0','0','dropdown','1','',''),
('26','17','M','0','+','','','1','0','0','0','dropdown','1','',''),
('27','18','L','0','+','','','2','0','0','0','dropdown','1','',''),
('28','19','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('29','20','S','0','+','','','0','0','0','0','dropdown','1','',''),
('30','20','M','0','+','','','1','0','0','0','dropdown','1','',''),
('31','20','L','0','+','','','2','0','0','0','dropdown','1','',''),
('32','20','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('33','22','S','0','+','','','0','0','0','0','dropdown','1','',''),
('34','23','M','0','+','','','1','0','0','0','dropdown','1','',''),
('35','24','L','0','+','','','2','0','0','0','dropdown','1','',''),
('36','25','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('37','26','S','0','+','','','0','0','0','0','dropdown','1','',''),
('38','26','M','0','+','','','1','0','0','0','dropdown','1','',''),
('39','26','L','0','+','','','2','0','0','0','dropdown','1','',''),
('40','26','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('41','28','S','0','+','','','0','0','0','0','dropdown','1','',''),
('42','29','M','0','+','','','1','0','0','0','dropdown','1','',''),
('43','30','L','0','+','','','2','0','0','0','dropdown','1','',''),
('44','31','XL','0','+','','','3','0','0','0','dropdown','1','',''),
('45','32','S','0','+','','','0','0','0','0','dropdown','1','',''),
('46','32','M','0','+','','','1','0','0','0','dropdown','1','',''),
('47','32','L','0','+','','','2','0','0','0','dropdown','1','',''),
('48','32','XL','0','+','','','3','0','0','0','dropdown','1','','');

CREATE TABLE `#__redshop_product_attribute_stockroom_xref` (
  `section_id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `preorder_stock` int(11) NOT NULL,
  `ordered_preorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Attribute Stockroom relation';

INSERT INTO #__redshop_product_attribute_stockroom_xref VALUES
('1','property','1','0','100','12'),
('21','property','1','18','0','0'),
('13','property','1','8','0','0'),
('22','property','1','27','0','0'),
('23','property','1','30','0','0'),
('24','property','1','30','0','0');

CREATE TABLE `#__redshop_product_category_xref` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  KEY `ref_category` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Category Relation';

INSERT INTO #__redshop_product_category_xref VALUES
('4','24','0'),
('20','24','0'),
('4','20','0'),
('21','20','0'),
('20','20','0'),
('4','18','0'),
('20','18','2'),
('4','32','0'),
('20','32','4'),
('17','34','0'),
('12','34','0'),
('9','34','0'),
('11','34','0'),
('4','34','0'),
('6','34','0'),
('15','34','0'),
('20','34','3'),
('18','34','0'),
('10','34','0'),
('16','34','0'),
('13','34','0'),
('5','34','0'),
('7','34','0'),
('4','25','0'),
('20','25','5'),
('4','28','0'),
('20','28','1'),
('4','30','0'),
('20','30','6'),
('4','26','0'),
('4','22','0'),
('4','19','0'),
('4','17','0'),
('4','15','0'),
('21','15','0');

CREATE TABLE `#__redshop_product_compare` (
  `compare_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`compare_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Comparision';



CREATE TABLE `#__redshop_product_discount_calc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `area_start` float(10,2) NOT NULL,
  `area_end` float(10,2) NOT NULL,
  `area_price` double NOT NULL,
  `discount_calc_unit` varchar(255) NOT NULL,
  `area_start_converted` float(20,8) NOT NULL,
  `area_end_converted` float(20,8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Discount Calculator';



CREATE TABLE `#__redshop_product_discount_calc_extra` (
  `pdcextra_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) NOT NULL,
  `oprand` char(1) NOT NULL,
  `price` float(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`pdcextra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Discount Calculator Extra Value';



CREATE TABLE `#__redshop_product_download` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `download_max` int(11) NOT NULL DEFAULT '0',
  `download_id` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `product_serial_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Downloadable Products';



CREATE TABLE `#__redshop_product_download_log` (
  `user_id` int(11) NOT NULL,
  `download_id` varchar(32) NOT NULL,
  `download_time` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Downloadable Products Logs';



CREATE TABLE `#__redshop_product_navigator` (
  `navigator_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `child_product_id` int(11) NOT NULL,
  `navigator_name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`navigator_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Navigator';



CREATE TABLE `#__redshop_product_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_price` decimal(12,4) NOT NULL,
  `product_currency` varchar(10) NOT NULL,
  `cdate` date NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `price_quantity_start` int(11) NOT NULL,
  `price_quantity_end` bigint(20) NOT NULL,
  `discount_price` decimal(12,4) NOT NULL,
  `discount_start_date` int(11) NOT NULL,
  `discount_end_date` int(11) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='redSHOP Product Price';



CREATE TABLE `#__redshop_product_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_rating` tinyint(1) NOT NULL DEFAULT '0',
  `favoured` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `#__redshop_product_related` (
  `related_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Related Products';

INSERT INTO #__redshop_product_related VALUES
('0','0','0'),
('0','0','0'),
('0','0','0'),
('0','0','0'),
('0','0','0'),
('20','0','0'),
('20','0','0'),
('20','0','0'),
('20','0','0'),
('0','0','0'),
('0','0','0'),
('0','0','0'),
('0','0','0'),
('22','0','0'),
('22','0','0'),
('22','0','0'),
('22','0','0'),
('0','0','0'),
('0','0','0'),
('0','0','0'),
('0','0','0'),
('24','0','0'),
('24','0','0'),
('24','0','0'),
('24','0','0'),
('25','0','0'),
('25','0','0'),
('25','0','0'),
('25','0','0'),
('20','32','1'),
('22','32','2'),
('24','32','3'),
('25','32','4'),
('20','34','1'),
('22','34','2'),
('24','34','3'),
('25','34','4'),
('20','28','1'),
('22','28','2'),
('24','28','3'),
('25','28','4'),
('20','30','1'),
('22','30','2'),
('24','30','3'),
('25','30','4'),
('20','26','1'),
('22','26','2'),
('24','26','3'),
('25','26','4'),
('20','15','1'),
('22','15','2'),
('24','15','3'),
('25','15','4'),
('26','15','5'),
('32','15','6'),
('34','15','7'),
('30','15','8'),
('17','15','9');

CREATE TABLE `#__redshop_product_serial_number` (
  `serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP downloadable product serial numbers';



CREATE TABLE `#__redshop_product_stockroom_xref` (
  `product_id` int(11) NOT NULL,
  `stockroom_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `preorder_stock` int(11) NOT NULL,
  `ordered_preorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Stockroom Relation';

INSERT INTO #__redshop_product_stockroom_xref VALUES
('17','1','7','10','0'),
('19','1','50','0','0'),
('25','1','8','0','0'),
('26','1','48','0','0'),
('28','1','28','0','0'),
('30','1','50','0','0'),
('32','1','50','0','0'),
('15','1','0','100','12');

CREATE TABLE `#__redshop_product_subattribute_color` (
  `subattribute_color_id` int(11) NOT NULL AUTO_INCREMENT,
  `subattribute_color_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subattribute_color_price` double NOT NULL,
  `oprand` char(1) NOT NULL,
  `subattribute_color_image` varchar(255) NOT NULL,
  `subattribute_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `setdefault_selected` tinyint(4) NOT NULL,
  `subattribute_published` int(11) NOT NULL DEFAULT '1',
  `subattribute_color_number` varchar(255) NOT NULL,
  `subattribute_color_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subattribute_color_main_image` varchar(255) NOT NULL,
  `extra_field` varchar(250) NOT NULL,
  PRIMARY KEY (`subattribute_color_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Product Subattribute Color';



CREATE TABLE `#__redshop_product_subscribe_detail` (
  `product_subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `renewal_reminder` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_subscribe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP User product Subscribe detail';



CREATE TABLE `#__redshop_product_subscription` (
  `subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `subscription_period` int(11) NOT NULL,
  `period_type` varchar(10) NOT NULL,
  `subscription_price` double NOT NULL,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Subscription';



CREATE TABLE `#__redshop_product_tags` (
  `tags_id` int(11) NOT NULL AUTO_INCREMENT,
  `tags_name` varchar(255) NOT NULL,
  `tags_counter` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Tags';



CREATE TABLE `#__redshop_product_tags_xref` (
  `tags_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Tags Relation With product and user';



CREATE TABLE `#__redshop_product_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_code` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `voucher_type` varchar(250) CHARACTER SET latin1 NOT NULL,
  `start_date` double NOT NULL,
  `end_date` double NOT NULL,
  `free_shipping` tinyint(4) NOT NULL,
  `voucher_left` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Voucher';



CREATE TABLE `#__redshop_product_voucher_transaction` (
  `transaction_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `voucher_code` varchar(255) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `trancation_date` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  PRIMARY KEY (`transaction_voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Product Voucher Transaction';



CREATE TABLE `#__redshop_product_voucher_xref` (
  `voucher_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Products Voucher Relation';



CREATE TABLE `#__redshop_quotation` (
  `quotation_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_info_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quotation_total` decimal(15,2) NOT NULL,
  `quotation_subtotal` decimal(15,2) NOT NULL,
  `quotation_tax` decimal(15,2) NOT NULL,
  `quotation_discount` decimal(15,4) NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `quotation_cdate` int(11) NOT NULL,
  `quotation_mdate` int(11) NOT NULL,
  `quotation_note` text NOT NULL,
  `quotation_ipaddress` varchar(20) NOT NULL,
  `quotation_encrkey` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `quotation_special_discount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`quotation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation';



CREATE TABLE `#__redshop_quotation_accessory_item` (
  `quotation_item_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_item_id` int(11) NOT NULL,
  `accessory_id` int(11) NOT NULL,
  `accessory_item_sku` varchar(255) NOT NULL,
  `accessory_item_name` varchar(255) NOT NULL,
  `accessory_price` decimal(15,4) NOT NULL,
  `accessory_vat` decimal(15,4) NOT NULL,
  `accessory_quantity` int(11) NOT NULL,
  `accessory_item_price` decimal(15,2) NOT NULL,
  `accessory_final_price` decimal(15,2) NOT NULL,
  `accessory_attribute` text NOT NULL,
  PRIMARY KEY (`quotation_item_acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation Accessory item';



CREATE TABLE `#__redshop_quotation_attribute_item` (
  `quotation_att_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_item_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `parent_section_id` int(11) NOT NULL,
  `section_name` varchar(250) NOT NULL,
  `section_price` decimal(15,4) NOT NULL,
  `section_vat` decimal(15,4) NOT NULL,
  `section_oprand` char(1) NOT NULL,
  `is_accessory_att` tinyint(4) NOT NULL,
  PRIMARY KEY (`quotation_att_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation Attribute item';



CREATE TABLE `#__redshop_quotation_fields_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) DEFAULT NULL,
  `data_txt` longtext,
  `quotation_item_id` int(11) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`data_id`),
  KEY `quotation_item_id` (`quotation_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation USer field';



CREATE TABLE `#__redshop_quotation_item` (
  `quotation_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(15,4) NOT NULL,
  `product_excl_price` decimal(15,4) NOT NULL,
  `product_final_price` decimal(15,4) NOT NULL,
  `actualitem_price` decimal(15,4) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_attribute` text NOT NULL,
  `product_accessory` text NOT NULL,
  `mycart_accessory` text NOT NULL,
  `product_wrapperid` int(11) NOT NULL,
  `wrapper_price` decimal(15,2) NOT NULL,
  `is_giftcard` tinyint(4) NOT NULL,
  PRIMARY KEY (`quotation_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Quotation Item';



CREATE TABLE `#__redshop_sample_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `colour_id` varchar(250) NOT NULL,
  `block` tinyint(4) NOT NULL,
  `reminder_1` tinyint(1) NOT NULL,
  `reminder_2` tinyint(1) NOT NULL,
  `reminder_3` tinyint(1) NOT NULL,
  `reminder_coupon` tinyint(1) NOT NULL,
  `registerdate` int(11) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Sample Request';



CREATE TABLE `#__redshop_shipping_boxes` (
  `shipping_box_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_box_name` varchar(255) NOT NULL,
  `shipping_box_length` decimal(10,2) NOT NULL,
  `shipping_box_width` decimal(10,2) NOT NULL,
  `shipping_box_height` decimal(10,2) NOT NULL,
  `shipping_box_priority` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`shipping_box_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Shipping Boxes';

INSERT INTO #__redshop_shipping_boxes VALUES
('1','Box1','1.00','1.00','1.00','1','1');

CREATE TABLE `#__redshop_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_rate_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_class` varchar(255) NOT NULL DEFAULT '',
  `shipping_rate_country` longtext NOT NULL,
  `shipping_rate_zip_start` varchar(20) NOT NULL,
  `shipping_rate_zip_end` varchar(20) NOT NULL,
  `shipping_rate_weight_start` decimal(10,2) NOT NULL,
  `company_only` tinyint(4) NOT NULL,
  `apply_vat` tinyint(4) NOT NULL,
  `shipping_rate_weight_end` decimal(10,2) NOT NULL,
  `shipping_rate_volume_start` decimal(10,2) NOT NULL,
  `shipping_rate_volume_end` decimal(10,2) NOT NULL,
  `shipping_rate_ordertotal_start` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_ordertotal_end` decimal(10,3) NOT NULL,
  `shipping_rate_priority` tinyint(4) NOT NULL DEFAULT '0',
  `shipping_rate_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_location_info` longtext NOT NULL,
  `shipping_rate_length_start` decimal(10,2) NOT NULL,
  `shipping_rate_length_end` decimal(10,2) NOT NULL,
  `shipping_rate_width_start` decimal(10,2) NOT NULL,
  `shipping_rate_width_end` decimal(10,2) NOT NULL,
  `shipping_rate_height_start` decimal(10,2) NOT NULL,
  `shipping_rate_height_end` decimal(10,2) NOT NULL,
  `shipping_rate_on_shopper_group` longtext NOT NULL,
  `consignor_carrier_code` varchar(255) NOT NULL,
  `economic_displaynumber` varchar(255) NOT NULL,
  `shipping_rate_on_product` longtext NOT NULL,
  `shipping_rate_on_category` longtext NOT NULL,
  `shipping_tax_group_id` int(11) NOT NULL,
  `shipping_rate_state` longtext NOT NULL,
  `deliver_type` int(11) NOT NULL,
  PRIMARY KEY (`shipping_rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Shipping Rates';

INSERT INTO #__redshop_shipping_rate VALUES
('1','Free delivery for purchages  above $300','default_shipping','','','','0.00','0','0','0.00','0.00','0.00','300.000','9999999.999','0','0.00','0.00','','0.00','0.00','0.00','0.00','0.00','0.00','','','','','','0','','0'),
('2','Express delivery (3-7 days)','default_shipping','','','','0.00','0','0','0.00','0.00','0.00','0.000','0.000','0','40.00','0.00','','0.00','0.00','0.00','0.00','0.00','0.00','','','','','','0','','0');

CREATE TABLE `#__redshop_shopper_group` (
  `shopper_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `shopper_group_name` varchar(32) DEFAULT NULL,
  `shopper_group_customer_type` tinyint(4) NOT NULL,
  `shopper_group_portal` tinyint(4) NOT NULL,
  `shopper_group_categories` longtext NOT NULL,
  `shopper_group_url` varchar(255) NOT NULL,
  `shopper_group_logo` varchar(255) NOT NULL,
  `shopper_group_introtext` longtext NOT NULL,
  `shopper_group_desc` text,
  `parent_id` int(11) NOT NULL,
  `default_shipping` tinyint(4) NOT NULL,
  `default_shipping_rate` float(10,2) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `shopper_group_cart_checkout_itemid` int(11) NOT NULL,
  `shopper_group_cart_itemid` int(11) NOT NULL,
  `shopper_group_quotation_mode` tinyint(4) NOT NULL,
  `show_price_without_vat` tinyint(4) NOT NULL,
  `tax_group_id` int(11) NOT NULL,
  `apply_product_price_vat` int(11) NOT NULL,
  `show_price` varchar(255) NOT NULL DEFAULT 'global',
  `use_as_catalog` varchar(255) NOT NULL DEFAULT 'global',
  `shopper_group_manufactures` text NOT NULL,
  `is_logged_in` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shopper_group_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

INSERT INTO #__redshop_shopper_group VALUES
('1','Default Private','1','0','','','','This is the default private shopper group.','This is the default private shopper group.','0','0','0.00','1','0','0','0','0','0','0','global','global','','1'),
('2','Default Company','0','0','','','','This is the default Company shopper group.','This is the default Company shopper group.','0','0','0.00','1','0','0','0','0','0','0','global','global','','1'),
('3','Default Tax Exempt','0','0','','','','This is the Default Tax Exempt shopper group.','This is the Default Tax Exempt shopper group.','0','0','0.00','1','0','0','0','0','0','0','global','global','','1');

CREATE TABLE `#__redshop_siteviewer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(250) NOT NULL,
  `created_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Site Viewer';



CREATE TABLE `#__redshop_state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `show_state` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

INSERT INTO #__redshop_state VALUES
('1','223','Alabama','ALA','AL','0','0000-00-00 00:00:00','2'),
('2','223','Alaska','ALK','AK','0','0000-00-00 00:00:00','2'),
('3','223','Arizona','ARZ','AZ','0','0000-00-00 00:00:00','2'),
('4','223','Arkansas','ARK','AR','0','0000-00-00 00:00:00','2'),
('5','223','California','CAL','CA','0','0000-00-00 00:00:00','2'),
('6','223','Colorado','COL','CO','0','0000-00-00 00:00:00','2'),
('7','223','Connecticut','CCT','CT','0','0000-00-00 00:00:00','2'),
('8','223','Delaware','DEL','DE','0','0000-00-00 00:00:00','2'),
('9','223','District Of Columbia','DOC','DC','0','0000-00-00 00:00:00','2'),
('10','223','Florida','FLO','FL','0','0000-00-00 00:00:00','2'),
('11','223','Georgia','GEA','GA','0','0000-00-00 00:00:00','2'),
('12','223','Hawaii','HWI','HI','0','0000-00-00 00:00:00','2'),
('13','223','Idaho','IDA','ID','0','0000-00-00 00:00:00','2'),
('14','223','Illinois','ILL','IL','0','0000-00-00 00:00:00','2'),
('15','223','Indiana','IND','IN','0','0000-00-00 00:00:00','2'),
('16','223','Iowa','IOA','IA','0','0000-00-00 00:00:00','2'),
('17','223','Kansas','KAS','KS','0','0000-00-00 00:00:00','2'),
('18','223','Kentucky','KTY','KY','0','0000-00-00 00:00:00','2'),
('19','223','Louisiana','LOA','LA','0','0000-00-00 00:00:00','2'),
('20','223','Maine','MAI','ME','0','0000-00-00 00:00:00','2'),
('21','223','Maryland','MLD','MD','0','0000-00-00 00:00:00','2'),
('22','223','Massachusetts','MSA','MA','0','0000-00-00 00:00:00','2'),
('23','223','Michigan','MIC','MI','0','0000-00-00 00:00:00','2'),
('24','223','Minnesota','MIN','MN','0','0000-00-00 00:00:00','2'),
('25','223','Mississippi','MIS','MS','0','0000-00-00 00:00:00','2'),
('26','223','Missouri','MIO','MO','0','0000-00-00 00:00:00','2'),
('27','223','Montana','MOT','MT','0','0000-00-00 00:00:00','2'),
('28','223','Nebraska','NEB','NE','0','0000-00-00 00:00:00','2'),
('29','223','Nevada','NEV','NV','0','0000-00-00 00:00:00','2'),
('30','223','New Hampshire','NEH','NH','0','0000-00-00 00:00:00','2'),
('31','223','New Jersey','NEJ','NJ','0','0000-00-00 00:00:00','2'),
('32','223','New Mexico','NEM','NM','0','0000-00-00 00:00:00','2'),
('33','223','New York','NEY','NY','0','0000-00-00 00:00:00','2'),
('34','223','North Carolina','NOC','NC','0','0000-00-00 00:00:00','2'),
('35','223','North Dakota','NOD','ND','0','0000-00-00 00:00:00','2'),
('36','223','Ohio','OHI','OH','0','0000-00-00 00:00:00','2'),
('37','223','Oklahoma','OKL','OK','0','0000-00-00 00:00:00','2'),
('38','223','Oregon','ORN','OR','0','0000-00-00 00:00:00','2'),
('39','223','Pennsylvania','PEA','PA','0','0000-00-00 00:00:00','2'),
('40','223','Rhode Island','RHI','RI','0','0000-00-00 00:00:00','2'),
('41','223','South Carolina','SOC','SC','0','0000-00-00 00:00:00','2'),
('42','223','South Dakota','SOD','SD','0','0000-00-00 00:00:00','2'),
('43','223','Tennessee','TEN','TN','0','0000-00-00 00:00:00','2'),
('44','223','Texas','TXS','TX','0','0000-00-00 00:00:00','2'),
('45','223','Utah','UTA','UT','0','0000-00-00 00:00:00','2'),
('46','223','Vermont','VMT','VT','0','0000-00-00 00:00:00','2'),
('47','223','Virginia','VIA','VA','0','0000-00-00 00:00:00','2'),
('48','223','Washington','WAS','WA','0','0000-00-00 00:00:00','2'),
('49','223','West Virginia','WEV','WV','0','0000-00-00 00:00:00','2'),
('50','223','Wisconsin','WIS','WI','0','0000-00-00 00:00:00','2'),
('51','223','Wyoming','WYO','WY','0','0000-00-00 00:00:00','2'),
('52','38','Alberta','ALB','AB','0','0000-00-00 00:00:00','2'),
('53','38','British Columbia','BRC','BC','0','0000-00-00 00:00:00','2'),
('54','38','Manitoba','MAB','MB','0','0000-00-00 00:00:00','2'),
('55','38','New Brunswick','NEB','NB','0','0000-00-00 00:00:00','2'),
('56','38','Newfoundland and Labrador','NFL','NL','0','0000-00-00 00:00:00','2'),
('57','38','Northwest Territories','NWT','NT','0','0000-00-00 00:00:00','2'),
('58','38','Nova Scotia','NOS','NS','0','0000-00-00 00:00:00','2'),
('59','38','Nunavut','NUT','NU','0','0000-00-00 00:00:00','2'),
('60','38','Ontario','ONT','ON','0','0000-00-00 00:00:00','2'),
('61','38','Prince Edward Island','PEI','PE','0','0000-00-00 00:00:00','2'),
('62','38','Quebec','QEC','QC','0','0000-00-00 00:00:00','2'),
('63','38','Saskatchewan','SAK','SK','0','0000-00-00 00:00:00','2'),
('64','38','Yukon','YUT','YT','0','0000-00-00 00:00:00','2'),
('65','222','England','ENG','EN','0','0000-00-00 00:00:00','2'),
('66','222','Northern Ireland','NOI','NI','0','0000-00-00 00:00:00','2'),
('67','222','Scotland','SCO','SD','0','0000-00-00 00:00:00','2'),
('68','222','Wales','WLS','WS','0','0000-00-00 00:00:00','2'),
('69','13','Australian Capital Territory','ACT','AT','0','0000-00-00 00:00:00','2'),
('70','13','New South Wales','NSW','NW','0','0000-00-00 00:00:00','2'),
('71','13','Northern Territory','NOT','NT','0','0000-00-00 00:00:00','2'),
('72','13','Queensland','QLD','QL','0','0000-00-00 00:00:00','2'),
('73','13','South Australia','SOA','SA','0','0000-00-00 00:00:00','2'),
('74','13','Tasmania','TAS','TA','0','0000-00-00 00:00:00','2'),
('75','13','Victoria','VIC','VI','0','0000-00-00 00:00:00','2'),
('76','13','Western Australia','WEA','WA','0','0000-00-00 00:00:00','2'),
('77','138','Aguascalientes','AGS','AG','0','0000-00-00 00:00:00','2'),
('78','138','Baja California Norte','BCN','BN','0','0000-00-00 00:00:00','2'),
('79','138','Baja California Sur','BCS','BS','0','0000-00-00 00:00:00','2'),
('80','138','Campeche','CAM','CA','0','0000-00-00 00:00:00','2'),
('81','138','Chiapas','CHI','CS','0','0000-00-00 00:00:00','2'),
('82','138','Chihuahua','CHA','CH','0','0000-00-00 00:00:00','2'),
('83','138','Coahuila','COA','CO','0','0000-00-00 00:00:00','2'),
('84','138','Colima','COL','CM','0','0000-00-00 00:00:00','2'),
('85','138','Distrito Federal','DFM','DF','0','0000-00-00 00:00:00','2'),
('86','138','Durango','DGO','DO','0','0000-00-00 00:00:00','2'),
('87','138','Guanajuato','GTO','GO','0','0000-00-00 00:00:00','2'),
('88','138','Guerrero','GRO','GU','0','0000-00-00 00:00:00','2'),
('89','138','Hidalgo','HGO','HI','0','0000-00-00 00:00:00','2'),
('90','138','Jalisco','JAL','JA','0','0000-00-00 00:00:00','2'),
('91','138','México (Estado de)','EDM','EM','0','0000-00-00 00:00:00','2'),
('92','138','Michoacán','MCN','MI','0','0000-00-00 00:00:00','2'),
('93','138','Morelos','MOR','MO','0','0000-00-00 00:00:00','2'),
('94','138','Nayarit','NAY','NY','0','0000-00-00 00:00:00','2'),
('95','138','Nuevo León','NUL','NL','0','0000-00-00 00:00:00','2'),
('96','138','Oaxaca','OAX','OA','0','0000-00-00 00:00:00','2'),
('97','138','Puebla','PUE','PU','0','0000-00-00 00:00:00','2'),
('98','138','Querétaro','QRO','QU','0','0000-00-00 00:00:00','2'),
('99','138','Quintana Roo','QUR','QR','0','0000-00-00 00:00:00','2'),
('100','138','San Luis Potosí','SLP','SP','0','0000-00-00 00:00:00','2'),
('101','138','Sinaloa','SIN','SI','0','0000-00-00 00:00:00','2'),
('102','138','Sonora','SON','SO','0','0000-00-00 00:00:00','2'),
('103','138','Tabasco','TAB','TA','0','0000-00-00 00:00:00','2'),
('104','138','Tamaulipas','TAM','TM','0','0000-00-00 00:00:00','2'),
('105','138','Tlaxcala','TLX','TX','0','0000-00-00 00:00:00','2'),
('106','138','Veracruz','VER','VZ','0','0000-00-00 00:00:00','2'),
('107','138','Yucatán','YUC','YU','0','0000-00-00 00:00:00','2'),
('108','138','Zacatecas','ZAC','ZA','0','0000-00-00 00:00:00','2'),
('109','30','Acre','ACR','AC','0','0000-00-00 00:00:00','2'),
('110','30','Alagoas','ALG','AL','0','0000-00-00 00:00:00','2'),
('111','30','Amapá','AMP','AP','0','0000-00-00 00:00:00','2'),
('112','30','Amazonas','AMZ','AM','0','0000-00-00 00:00:00','2'),
('113','30','Bahía','BAH','BA','0','0000-00-00 00:00:00','2'),
('114','30','Ceará','CEA','CE','0','0000-00-00 00:00:00','2'),
('115','30','Distrito Federal','DFB','DF','0','0000-00-00 00:00:00','2'),
('116','30','Espirito Santo','ESS','ES','0','0000-00-00 00:00:00','2'),
('117','30','Goiás','GOI','GO','0','0000-00-00 00:00:00','2'),
('118','30','Maranhão','MAR','MA','0','0000-00-00 00:00:00','2'),
('119','30','Mato Grosso','MAT','MT','0','0000-00-00 00:00:00','2'),
('120','30','Mato Grosso do Sul','MGS','MS','0','0000-00-00 00:00:00','2'),
('121','30','Minas Geraís','MIG','MG','0','0000-00-00 00:00:00','2'),
('122','30','Paraná','PAR','PR','0','0000-00-00 00:00:00','2'),
('123','30','Paraíba','PRB','PB','0','0000-00-00 00:00:00','2'),
('124','30','Pará','PAB','PA','0','0000-00-00 00:00:00','2'),
('125','30','Pernambuco','PER','PE','0','0000-00-00 00:00:00','2'),
('126','30','Piauí','PIA','PI','0','0000-00-00 00:00:00','2'),
('127','30','Rio Grande do Norte','RGN','RN','0','0000-00-00 00:00:00','2'),
('128','30','Rio Grande do Sul','RGS','RS','0','0000-00-00 00:00:00','2'),
('129','30','Rio de Janeiro','RDJ','RJ','0','0000-00-00 00:00:00','2'),
('130','30','Rondônia','RON','RO','0','0000-00-00 00:00:00','2'),
('131','30','Roraima','ROR','RR','0','0000-00-00 00:00:00','2'),
('132','30','Santa Catarina','SAC','SC','0','0000-00-00 00:00:00','2'),
('133','30','Sergipe','SER','SE','0','0000-00-00 00:00:00','2'),
('134','30','São Paulo','SAP','SP','0','0000-00-00 00:00:00','2'),
('135','30','Tocantins','TOC','TO','0','0000-00-00 00:00:00','2'),
('136','44','Anhui','ANH','34','0','0000-00-00 00:00:00','2'),
('137','44','Beijing','BEI','11','0','0000-00-00 00:00:00','2'),
('138','44','Chongqing','CHO','50','0','0000-00-00 00:00:00','2'),
('139','44','Fujian','FUJ','35','0','0000-00-00 00:00:00','2'),
('140','44','Gansu','GAN','62','0','0000-00-00 00:00:00','2'),
('141','44','Guangdong','GUA','44','0','0000-00-00 00:00:00','2'),
('142','44','Guangxi Zhuang','GUZ','45','0','0000-00-00 00:00:00','2'),
('143','44','Guizhou','GUI','52','0','0000-00-00 00:00:00','2'),
('144','44','Hainan','HAI','46','0','0000-00-00 00:00:00','2'),
('145','44','Hebei','HEB','13','0','0000-00-00 00:00:00','2'),
('146','44','Heilongjiang','HEI','23','0','0000-00-00 00:00:00','2'),
('147','44','Henan','HEN','41','0','0000-00-00 00:00:00','2'),
('148','44','Hubei','HUB','42','0','0000-00-00 00:00:00','2'),
('149','44','Hunan','HUN','43','0','0000-00-00 00:00:00','2'),
('150','44','Jiangsu','JIA','32','0','0000-00-00 00:00:00','2'),
('151','44','Jiangxi','JIX','36','0','0000-00-00 00:00:00','2'),
('152','44','Jilin','JIL','22','0','0000-00-00 00:00:00','2'),
('153','44','Liaoning','LIA','21','0','0000-00-00 00:00:00','2'),
('154','44','Nei Mongol','NML','15','0','0000-00-00 00:00:00','2'),
('155','44','Ningxia Hui','NIH','64','0','0000-00-00 00:00:00','2'),
('156','44','Qinghai','QIN','63','0','0000-00-00 00:00:00','2'),
('157','44','Shandong','SNG','37','0','0000-00-00 00:00:00','2'),
('158','44','Shanghai','SHH','31','0','0000-00-00 00:00:00','2'),
('159','44','Shaanxi','SHX','61','0','0000-00-00 00:00:00','2'),
('160','44','Sichuan','SIC','51','0','0000-00-00 00:00:00','2'),
('161','44','Tianjin','TIA','12','0','0000-00-00 00:00:00','2'),
('162','44','Xinjiang Uygur','XIU','65','0','0000-00-00 00:00:00','2'),
('163','44','Xizang','XIZ','54','0','0000-00-00 00:00:00','2'),
('164','44','Yunnan','YUN','53','0','0000-00-00 00:00:00','2'),
('165','44','Zhejiang','ZHE','33','0','0000-00-00 00:00:00','2'),
('166','104','Gaza Strip','GZS','GZ','0','0000-00-00 00:00:00','2'),
('167','104','West Bank','WBK','WB','0','0000-00-00 00:00:00','2'),
('168','104','Other','OTH','OT','0','0000-00-00 00:00:00','2'),
('169','151','St. Maarten','STM','SM','0','0000-00-00 00:00:00','2'),
('170','151','Bonaire','BNR','BN','0','0000-00-00 00:00:00','2'),
('171','151','Curacao','CUR','CR','0','0000-00-00 00:00:00','2'),
('172','175','Alba','ABA','AB','0','0000-00-00 00:00:00','2'),
('173','175','Arad','ARD','AR','0','0000-00-00 00:00:00','2'),
('174','175','Arges','ARG','AG','0','0000-00-00 00:00:00','2'),
('175','175','Bacau','BAC','BC','0','0000-00-00 00:00:00','2'),
('176','175','Bihor','BIH','BH','0','0000-00-00 00:00:00','2'),
('177','175','Bistrita-Nasaud','BIS','BN','0','0000-00-00 00:00:00','2'),
('178','175','Botosani','BOT','BT','0','0000-00-00 00:00:00','2'),
('179','175','Braila','BRL','BR','0','0000-00-00 00:00:00','2'),
('180','175','Brasov','BRA','BV','0','0000-00-00 00:00:00','2'),
('181','175','Bucuresti','BUC','B','0','0000-00-00 00:00:00','2'),
('182','175','Buzau','BUZ','BZ','0','0000-00-00 00:00:00','2'),
('183','175','Calarasi','CAL','CL','0','0000-00-00 00:00:00','2'),
('184','175','Caras Severin','CRS','CS','0','0000-00-00 00:00:00','2'),
('185','175','Cluj','CLJ','CJ','0','0000-00-00 00:00:00','2'),
('186','175','Constanta','CST','CT','0','0000-00-00 00:00:00','2'),
('187','175','Covasna','COV','CV','0','0000-00-00 00:00:00','2'),
('188','175','Dambovita','DAM','DB','0','0000-00-00 00:00:00','2'),
('189','175','Dolj','DLJ','DJ','0','0000-00-00 00:00:00','2'),
('190','175','Galati','GAL','GL','0','0000-00-00 00:00:00','2'),
('191','175','Giurgiu','GIU','GR','0','0000-00-00 00:00:00','2'),
('192','175','Gorj','GOR','GJ','0','0000-00-00 00:00:00','2'),
('193','175','Hargita','HRG','HR','0','0000-00-00 00:00:00','2'),
('194','175','Hunedoara','HUN','HD','0','0000-00-00 00:00:00','2'),
('195','175','Ialomita','IAL','IL','0','0000-00-00 00:00:00','2'),
('196','175','Iasi','IAS','IS','0','0000-00-00 00:00:00','2'),
('197','175','Ilfov','ILF','IF','0','0000-00-00 00:00:00','2'),
('198','175','Maramures','MAR','MM','0','0000-00-00 00:00:00','2'),
('199','175','Mehedinti','MEH','MH','0','0000-00-00 00:00:00','2'),
('200','175','Mures','MUR','MS','0','0000-00-00 00:00:00','2'),
('201','175','Neamt','NEM','NT','0','0000-00-00 00:00:00','2'),
('202','175','Olt','OLT','OT','0','0000-00-00 00:00:00','2'),
('203','175','Prahova','PRA','PH','0','0000-00-00 00:00:00','2'),
('204','175','Salaj','SAL','SJ','0','0000-00-00 00:00:00','2'),
('205','175','Satu Mare','SAT','SM','0','0000-00-00 00:00:00','2'),
('206','175','Sibiu','SIB','SB','0','0000-00-00 00:00:00','2'),
('207','175','Suceava','SUC','SV','0','0000-00-00 00:00:00','2'),
('208','175','Teleorman','TEL','TR','0','0000-00-00 00:00:00','2'),
('209','175','Timis','TIM','TM','0','0000-00-00 00:00:00','2'),
('210','175','Tulcea','TUL','TL','0','0000-00-00 00:00:00','2'),
('211','175','Valcea','VAL','VL','0','0000-00-00 00:00:00','2'),
('212','175','Vaslui','VAS','VS','0','0000-00-00 00:00:00','2'),
('213','175','Vrancea','VRA','VN','0','0000-00-00 00:00:00','2'),
('214','105','Agrigento','AGR','AG','0','0000-00-00 00:00:00','2'),
('215','105','Alessandria','ALE','AL','0','0000-00-00 00:00:00','2'),
('216','105','Ancona','ANC','AN','0','0000-00-00 00:00:00','2'),
('217','105','Aosta','AOS','AO','0','0000-00-00 00:00:00','2'),
('218','105','Arezzo','ARE','AR','0','0000-00-00 00:00:00','2'),
('219','105','Ascoli Piceno','API','AP','0','0000-00-00 00:00:00','2'),
('220','105','Asti','AST','AT','0','0000-00-00 00:00:00','2'),
('221','105','Avellino','AVE','AV','0','0000-00-00 00:00:00','2'),
('222','105','Bari','BAR','BA','0','0000-00-00 00:00:00','2'),
('223','105','Belluno','BEL','BL','0','0000-00-00 00:00:00','2'),
('224','105','Benevento','BEN','BN','0','0000-00-00 00:00:00','2'),
('225','105','Bergamo','BEG','BG','0','0000-00-00 00:00:00','2'),
('226','105','Biella','BIE','BI','0','0000-00-00 00:00:00','2'),
('227','105','Bologna','BOL','BO','0','0000-00-00 00:00:00','2'),
('228','105','Bolzano','BOZ','BZ','0','0000-00-00 00:00:00','2'),
('229','105','Brescia','BRE','BS','0','0000-00-00 00:00:00','2'),
('230','105','Brindisi','BRI','BR','0','0000-00-00 00:00:00','2'),
('231','105','Cagliari','CAG','CA','0','0000-00-00 00:00:00','2'),
('232','105','Caltanissetta','CAL','CL','0','0000-00-00 00:00:00','2'),
('233','105','Campobasso','CBO','CB','0','0000-00-00 00:00:00','2'),
('234','105','Carbonia-Iglesias','CAR','CI','0','0000-00-00 00:00:00','2'),
('235','105','Caserta','CAS','CE','0','0000-00-00 00:00:00','2'),
('236','105','Catania','CAT','CT','0','0000-00-00 00:00:00','2'),
('237','105','Catanzaro','CTZ','CZ','0','0000-00-00 00:00:00','2'),
('238','105','Chieti','CHI','CH','0','0000-00-00 00:00:00','2'),
('239','105','Como','COM','CO','0','0000-00-00 00:00:00','2'),
('240','105','Cosenza','COS','CS','0','0000-00-00 00:00:00','2'),
('241','105','Cremona','CRE','CR','0','0000-00-00 00:00:00','2'),
('242','105','Crotone','CRO','KR','0','0000-00-00 00:00:00','2'),
('243','105','Cuneo','CUN','CN','0','0000-00-00 00:00:00','2'),
('244','105','Enna','ENN','EN','0','0000-00-00 00:00:00','2'),
('245','105','Ferrara','FER','FE','0','0000-00-00 00:00:00','2'),
('246','105','Firenze','FIR','FI','0','0000-00-00 00:00:00','2'),
('247','105','Foggia','FOG','FG','0','0000-00-00 00:00:00','2'),
('248','105','Forli-Cesena','FOC','FC','0','0000-00-00 00:00:00','2'),
('249','105','Frosinone','FRO','FR','0','0000-00-00 00:00:00','2'),
('250','105','Genova','GEN','GE','0','0000-00-00 00:00:00','2'),
('251','105','Gorizia','GOR','GO','0','0000-00-00 00:00:00','2'),
('252','105','Grosseto','GRO','GR','0','0000-00-00 00:00:00','2'),
('253','105','Imperia','IMP','IM','0','0000-00-00 00:00:00','2'),
('254','105','Isernia','ISE','IS','0','0000-00-00 00:00:00','2'),
('255','105','L\'Aquila','AQU','AQ','0','0000-00-00 00:00:00','2'),
('256','105','La Spezia','LAS','SP','0','0000-00-00 00:00:00','2'),
('257','105','Latina','LAT','LT','0','0000-00-00 00:00:00','2'),
('258','105','Lecce','LEC','LE','0','0000-00-00 00:00:00','2'),
('259','105','Lecco','LCC','LC','0','0000-00-00 00:00:00','2'),
('260','105','Livorno','LIV','LI','0','0000-00-00 00:00:00','2'),
('261','105','Lodi','LOD','LO','0','0000-00-00 00:00:00','2'),
('262','105','Lucca','LUC','LU','0','0000-00-00 00:00:00','2'),
('263','105','Macerata','MAC','MC','0','0000-00-00 00:00:00','2'),
('264','105','Mantova','MAN','MN','0','0000-00-00 00:00:00','2'),
('265','105','Massa-Carrara','MAS','MS','0','0000-00-00 00:00:00','2'),
('266','105','Matera','MAA','MT','0','0000-00-00 00:00:00','2'),
('267','105','Medio Campidano','MED','VS','0','0000-00-00 00:00:00','2'),
('268','105','Messina','MES','ME','0','0000-00-00 00:00:00','2'),
('269','105','Milano','MIL','MI','0','0000-00-00 00:00:00','2'),
('270','105','Modena','MOD','MO','0','0000-00-00 00:00:00','2'),
('271','105','Napoli','NAP','NA','0','0000-00-00 00:00:00','2'),
('272','105','Novara','NOV','NO','0','0000-00-00 00:00:00','2'),
('273','105','Nuoro','NUR','NU','0','0000-00-00 00:00:00','2'),
('274','105','Ogliastra','OGL','OG','0','0000-00-00 00:00:00','2'),
('275','105','Olbia-Tempio','OLB','OT','0','0000-00-00 00:00:00','2'),
('276','105','Oristano','ORI','OR','0','0000-00-00 00:00:00','2'),
('277','105','Padova','PDA','PD','0','0000-00-00 00:00:00','2'),
('278','105','Palermo','PAL','PA','0','0000-00-00 00:00:00','2'),
('279','105','Parma','PAA','PR','0','0000-00-00 00:00:00','2'),
('280','105','Pavia','PAV','PV','0','0000-00-00 00:00:00','2'),
('281','105','Perugia','PER','PG','0','0000-00-00 00:00:00','2'),
('282','105','Pesaro e Urbino','PES','PU','0','0000-00-00 00:00:00','2'),
('283','105','Pescara','PSC','PE','0','0000-00-00 00:00:00','2'),
('284','105','Piacenza','PIA','PC','0','0000-00-00 00:00:00','2'),
('285','105','Pisa','PIS','PI','0','0000-00-00 00:00:00','2'),
('286','105','Pistoia','PIT','PT','0','0000-00-00 00:00:00','2'),
('287','105','Pordenone','POR','PN','0','0000-00-00 00:00:00','2'),
('288','105','Potenza','PTZ','PZ','0','0000-00-00 00:00:00','2'),
('289','105','Prato','PRA','PO','0','0000-00-00 00:00:00','2'),
('290','105','Ragusa','RAG','RG','0','0000-00-00 00:00:00','2'),
('291','105','Ravenna','RAV','RA','0','0000-00-00 00:00:00','2'),
('292','105','Reggio Calabria','REG','RC','0','0000-00-00 00:00:00','2'),
('293','105','Reggio Emilia','REE','RE','0','0000-00-00 00:00:00','2'),
('294','105','Rieti','RIE','RI','0','0000-00-00 00:00:00','2'),
('295','105','Rimini','RIM','RN','0','0000-00-00 00:00:00','2'),
('296','105','Roma','ROM','RM','0','0000-00-00 00:00:00','2'),
('297','105','Rovigo','ROV','RO','0','0000-00-00 00:00:00','2'),
('298','105','Salerno','SAL','SA','0','0000-00-00 00:00:00','2'),
('299','105','Sassari','SAS','SS','0','0000-00-00 00:00:00','2'),
('300','105','Savona','SAV','SV','0','0000-00-00 00:00:00','2'),
('301','105','Siena','SIE','SI','0','0000-00-00 00:00:00','2'),
('302','105','Siracusa','SIR','SR','0','0000-00-00 00:00:00','2'),
('303','105','Sondrio','SOO','SO','0','0000-00-00 00:00:00','2'),
('304','105','Taranto','TAR','TA','0','0000-00-00 00:00:00','2'),
('305','105','Teramo','TER','TE','0','0000-00-00 00:00:00','2'),
('306','105','Terni','TRN','TR','0','0000-00-00 00:00:00','2'),
('307','105','Torino','TOR','TO','0','0000-00-00 00:00:00','2'),
('308','105','Trapani','TRA','TP','0','0000-00-00 00:00:00','2'),
('309','105','Trento','TRE','TN','0','0000-00-00 00:00:00','2'),
('310','105','Treviso','TRV','TV','0','0000-00-00 00:00:00','2'),
('311','105','Trieste','TRI','TS','0','0000-00-00 00:00:00','2'),
('312','105','Udine','UDI','UD','0','0000-00-00 00:00:00','2'),
('313','105','Varese','VAR','VA','0','0000-00-00 00:00:00','2'),
('314','105','Venezia','VEN','VE','0','0000-00-00 00:00:00','2'),
('315','105','Verbano Cusio Ossola','VCO','VB','0','0000-00-00 00:00:00','2'),
('316','105','Vercelli','VER','VC','0','0000-00-00 00:00:00','2'),
('317','105','Verona','VRN','VR','0','0000-00-00 00:00:00','2'),
('318','105','Vibo Valenzia','VIV','VV','0','0000-00-00 00:00:00','2'),
('319','105','Vicenza','VII','VI','0','0000-00-00 00:00:00','2'),
('320','105','Viterbo','VIT','VT','0','0000-00-00 00:00:00','2'),
('321','195','A Coruña','ACO','15','0','0000-00-00 00:00:00','2'),
('322','195','Alava','ALA','01','0','0000-00-00 00:00:00','2'),
('323','195','Albacete','ALB','02','0','0000-00-00 00:00:00','2'),
('324','195','Alicante','ALI','03','0','0000-00-00 00:00:00','2'),
('325','195','Almeria','ALM','04','0','0000-00-00 00:00:00','2'),
('326','195','Asturias','AST','33','0','0000-00-00 00:00:00','2'),
('327','195','Avila','AVI','05','0','0000-00-00 00:00:00','2'),
('328','195','Badajoz','BAD','06','0','0000-00-00 00:00:00','2'),
('329','195','Baleares','BAL','07','0','0000-00-00 00:00:00','2'),
('330','195','Barcelona','BAR','08','0','0000-00-00 00:00:00','2'),
('331','195','Burgos','BUR','09','0','0000-00-00 00:00:00','2'),
('332','195','Caceres','CAC','10','0','0000-00-00 00:00:00','2'),
('333','195','Cadiz','CAD','11','0','0000-00-00 00:00:00','2'),
('334','195','Cantabria','CAN','39','0','0000-00-00 00:00:00','2'),
('335','195','Castellon','CAS','12','0','0000-00-00 00:00:00','2'),
('336','195','Ceuta','CEU','51','0','0000-00-00 00:00:00','2'),
('337','195','Ciudad Real','CIU','13','0','0000-00-00 00:00:00','2'),
('338','195','Cordoba','COR','14','0','0000-00-00 00:00:00','2'),
('339','195','Cuenca','CUE','16','0','0000-00-00 00:00:00','2'),
('340','195','Girona','GIR','17','0','0000-00-00 00:00:00','2'),
('341','195','Granada','GRA','18','0','0000-00-00 00:00:00','2'),
('342','195','Guadalajara','GUA','19','0','0000-00-00 00:00:00','2'),
('343','195','Guipuzcoa','GUI','20','0','0000-00-00 00:00:00','2'),
('344','195','Huelva','HUL','21','0','0000-00-00 00:00:00','2'),
('345','195','Huesca','HUS','22','0','0000-00-00 00:00:00','2'),
('346','195','Jaen','JAE','23','0','0000-00-00 00:00:00','2'),
('347','195','La Rioja','LRI','26','0','0000-00-00 00:00:00','2'),
('348','195','Las Palmas','LPA','35','0','0000-00-00 00:00:00','2'),
('349','195','Leon','LEO','24','0','0000-00-00 00:00:00','2'),
('350','195','Lleida','LLE','25','0','0000-00-00 00:00:00','2'),
('351','195','Lugo','LUG','27','0','0000-00-00 00:00:00','2'),
('352','195','Madrid','MAD','28','0','0000-00-00 00:00:00','2'),
('353','195','Malaga','MAL','29','0','0000-00-00 00:00:00','2'),
('354','195','Melilla','MEL','52','0','0000-00-00 00:00:00','2'),
('355','195','Murcia','MUR','30','0','0000-00-00 00:00:00','2'),
('356','195','Navarra','NAV','31','0','0000-00-00 00:00:00','2'),
('357','195','Ourense','OUR','32','0','0000-00-00 00:00:00','2'),
('358','195','Palencia','PAL','34','0','0000-00-00 00:00:00','2'),
('359','195','Pontevedra','PON','36','0','0000-00-00 00:00:00','2'),
('360','195','Salamanca','SAL','37','0','0000-00-00 00:00:00','2'),
('361','195','Santa Cruz de Tenerife','SCT','38','0','0000-00-00 00:00:00','2'),
('362','195','Segovia','SEG','40','0','0000-00-00 00:00:00','2'),
('363','195','Sevilla','SEV','41','0','0000-00-00 00:00:00','2'),
('364','195','Soria','SOR','42','0','0000-00-00 00:00:00','2'),
('365','195','Tarragona','TAR','43','0','0000-00-00 00:00:00','2'),
('366','195','Teruel','TER','44','0','0000-00-00 00:00:00','2'),
('367','195','Toledo','TOL','45','0','0000-00-00 00:00:00','2'),
('368','195','Valencia','VAL','46','0','0000-00-00 00:00:00','2'),
('369','195','Valladolid','VLL','47','0','0000-00-00 00:00:00','2'),
('370','195','Vizcaya','VIZ','48','0','0000-00-00 00:00:00','2'),
('371','195','Zamora','ZAM','49','0','0000-00-00 00:00:00','2'),
('372','195','Zaragoza','ZAR','50','0','0000-00-00 00:00:00','2'),
('373','11','Aragatsotn','ARG','AG','0','0000-00-00 00:00:00','2'),
('374','11','Ararat','ARR','AR','0','0000-00-00 00:00:00','2'),
('375','11','Armavir','ARM','AV','0','0000-00-00 00:00:00','2'),
('376','11','Gegharkunik','GEG','GR','0','0000-00-00 00:00:00','2'),
('377','11','Kotayk','KOT','KT','0','0000-00-00 00:00:00','2'),
('378','11','Lori','LOR','LO','0','0000-00-00 00:00:00','2'),
('379','11','Shirak','SHI','SH','0','0000-00-00 00:00:00','2'),
('380','11','Syunik','SYU','SU','0','0000-00-00 00:00:00','2'),
('381','11','Tavush','TAV','TV','0','0000-00-00 00:00:00','2'),
('382','11','Vayots-Dzor','VAD','VD','0','0000-00-00 00:00:00','2'),
('383','11','Yerevan','YER','ER','0','0000-00-00 00:00:00','2'),
('384','99','Andaman & Nicobar Islands','ANI','AI','0','0000-00-00 00:00:00','2'),
('385','99','Andhra Pradesh','AND','AN','0','0000-00-00 00:00:00','2'),
('386','99','Arunachal Pradesh','ARU','AR','0','0000-00-00 00:00:00','2'),
('387','99','Assam','ASS','AS','0','0000-00-00 00:00:00','2'),
('388','99','Bihar','BIH','BI','0','0000-00-00 00:00:00','2'),
('389','99','Chandigarh','CHA','CA','0','0000-00-00 00:00:00','2'),
('390','99','Chhatisgarh','CHH','CH','0','0000-00-00 00:00:00','2'),
('391','99','Dadra & Nagar Haveli','DAD','DD','0','0000-00-00 00:00:00','2'),
('392','99','Daman & Diu','DAM','DA','0','0000-00-00 00:00:00','2'),
('393','99','Delhi','DEL','DE','0','0000-00-00 00:00:00','2'),
('394','99','Goa','GOA','GO','0','0000-00-00 00:00:00','2'),
('395','99','Gujarat','GUJ','GU','0','0000-00-00 00:00:00','2'),
('396','99','Haryana','HAR','HA','0','0000-00-00 00:00:00','2'),
('397','99','Himachal Pradesh','HIM','HI','0','0000-00-00 00:00:00','2'),
('398','99','Jammu & Kashmir','JAM','JA','0','0000-00-00 00:00:00','2'),
('399','99','Jharkhand','JHA','JH','0','0000-00-00 00:00:00','2'),
('400','99','Karnataka','KAR','KA','0','0000-00-00 00:00:00','2'),
('401','99','Kerala','KER','KE','0','0000-00-00 00:00:00','2'),
('402','99','Lakshadweep','LAK','LA','0','0000-00-00 00:00:00','2'),
('403','99','Madhya Pradesh','MAD','MD','0','0000-00-00 00:00:00','2'),
('404','99','Maharashtra','MAH','MH','0','0000-00-00 00:00:00','2'),
('405','99','Manipur','MAN','MN','0','0000-00-00 00:00:00','2'),
('406','99','Meghalaya','MEG','ME','0','0000-00-00 00:00:00','2'),
('407','99','Mizoram','MIZ','MI','0','0000-00-00 00:00:00','2'),
('408','99','Nagaland','NAG','NA','0','0000-00-00 00:00:00','2'),
('409','99','Orissa','ORI','OR','0','0000-00-00 00:00:00','2'),
('410','99','Pondicherry','PON','PO','0','0000-00-00 00:00:00','2'),
('411','99','Punjab','PUN','PU','0','0000-00-00 00:00:00','2'),
('412','99','Rajasthan','RAJ','RA','0','0000-00-00 00:00:00','2'),
('413','99','Sikkim','SIK','SI','0','0000-00-00 00:00:00','2'),
('414','99','Tamil Nadu','TAM','TA','0','0000-00-00 00:00:00','2'),
('415','99','Tripura','TRI','TR','0','0000-00-00 00:00:00','2'),
('416','99','Uttaranchal','UAR','UA','0','0000-00-00 00:00:00','2'),
('417','99','Uttar Pradesh','UTT','UT','0','0000-00-00 00:00:00','2'),
('418','99','West Bengal','WES','WE','0','0000-00-00 00:00:00','2'),
('419','101','Ahmadi va Kohkiluyeh','BOK','BO','0','0000-00-00 00:00:00','2'),
('420','101','Ardabil','ARD','AR','0','0000-00-00 00:00:00','2'),
('421','101','Azarbayjan-e Gharbi','AZG','AG','0','0000-00-00 00:00:00','2'),
('422','101','Azarbayjan-e Sharqi','AZS','AS','0','0000-00-00 00:00:00','2'),
('423','101','Bushehr','BUS','BU','0','0000-00-00 00:00:00','2'),
('424','101','Chaharmahal va Bakhtiari','CMB','CM','0','0000-00-00 00:00:00','2'),
('425','101','Esfahan','ESF','ES','0','0000-00-00 00:00:00','2'),
('426','101','Fars','FAR','FA','0','0000-00-00 00:00:00','2'),
('427','101','Gilan','GIL','GI','0','0000-00-00 00:00:00','2'),
('428','101','Gorgan','GOR','GO','0','0000-00-00 00:00:00','2'),
('429','101','Hamadan','HAM','HA','0','0000-00-00 00:00:00','2'),
('430','101','Hormozgan','HOR','HO','0','0000-00-00 00:00:00','2'),
('431','101','Ilam','ILA','IL','0','0000-00-00 00:00:00','2'),
('432','101','Kerman','KER','KE','0','0000-00-00 00:00:00','2'),
('433','101','Kermanshah','BAK','BA','0','0000-00-00 00:00:00','2'),
('434','101','Khorasan-e Junoubi','KHJ','KJ','0','0000-00-00 00:00:00','2'),
('435','101','Khorasan-e Razavi','KHR','KR','0','0000-00-00 00:00:00','2'),
('436','101','Khorasan-e Shomali','KHS','KS','0','0000-00-00 00:00:00','2'),
('437','101','Khuzestan','KHU','KH','0','0000-00-00 00:00:00','2'),
('438','101','Kordestan','KOR','KO','0','0000-00-00 00:00:00','2'),
('439','101','Lorestan','LOR','LO','0','0000-00-00 00:00:00','2'),
('440','101','Markazi','MAR','MR','0','0000-00-00 00:00:00','2'),
('441','101','Mazandaran','MAZ','MZ','0','0000-00-00 00:00:00','2'),
('442','101','Qazvin','QAS','QA','0','0000-00-00 00:00:00','2'),
('443','101','Qom','QOM','QO','0','0000-00-00 00:00:00','2'),
('444','101','Semnan','SEM','SE','0','0000-00-00 00:00:00','2'),
('445','101','Sistan va Baluchestan','SBA','SB','0','0000-00-00 00:00:00','2'),
('446','101','Tehran','TEH','TE','0','0000-00-00 00:00:00','2'),
('447','101','Yazd','YAZ','YA','0','0000-00-00 00:00:00','2'),
('448','101','Zanjan','ZAN','ZA','0','0000-00-00 00:00:00','2'),
('449','170','Dolnośląskie','DOL','DO','0','0000-00-00 00:00:00','2'),
('450','170','Kujawsko-Pomorskie','KUJ','KU','0','0000-00-00 00:00:00','2'),
('451','170','Lubelskie','LUB','LU','0','0000-00-00 00:00:00','2'),
('452','170','Lubuskie','LBU','LB','0','0000-00-00 00:00:00','2'),
('453','170','Łódzkie','LOD','LO','0','0000-00-00 00:00:00','2'),
('454','170','Małopolskie','MAL','MP','0','0000-00-00 00:00:00','2'),
('455','170','Mazowieckie','MAZ','MZ','0','0000-00-00 00:00:00','2'),
('456','170','Opolskie','OPO','OP','0','0000-00-00 00:00:00','2'),
('457','170','Podkarpackie','PDK','PK','0','0000-00-00 00:00:00','2'),
('458','170','Podlaskie','PDL','PL','0','0000-00-00 00:00:00','2'),
('459','170','Pomorskie','POM','PO','0','0000-00-00 00:00:00','2'),
('460','170','Śląskie','SLA','SL','0','0000-00-00 00:00:00','2'),
('461','170','Świętokrzyskie','SWI','SW','0','0000-00-00 00:00:00','2'),
('462','170','Warmińsko-Mazurskie','WAR','WA','0','0000-00-00 00:00:00','2'),
('463','170','Wielkopolskie','WIE','WI','0','0000-00-00 00:00:00','2'),
('464','170','Zachodniopomorskie','ZAC','ZA','0','0000-00-00 00:00:00','2');

CREATE TABLE `#__redshop_stockroom` (
  `stockroom_id` int(11) NOT NULL AUTO_INCREMENT,
  `stockroom_name` varchar(250) NOT NULL,
  `min_stock_amount` int(11) NOT NULL,
  `stockroom_desc` longtext CHARACTER SET latin1 NOT NULL,
  `creation_date` double NOT NULL,
  `min_del_time` int(11) NOT NULL,
  `max_del_time` int(11) NOT NULL,
  `show_in_front` tinyint(1) NOT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`stockroom_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Stockroom';

INSERT INTO #__redshop_stockroom VALUES
('1','default','0','This is redshop default stockroom','0','0','0','0','','1');

CREATE TABLE `#__redshop_stockroom_amount_image` (
  `stock_amount_id` int(11) NOT NULL AUTO_INCREMENT,
  `stockroom_id` int(11) NOT NULL,
  `stock_option` tinyint(4) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_amount_image` varchar(255) NOT NULL,
  `stock_amount_image_tooltip` text NOT NULL,
  PRIMARY KEY (`stock_amount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP stockroom amount image';



CREATE TABLE `#__redshop_stockroom_container_xref` (
  `stockroom_id` int(11) NOT NULL,
  `container_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Stockroom Container Relation';



CREATE TABLE `#__redshop_subscription_renewal` (
  `renewal_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `before_no_days` int(11) NOT NULL,
  PRIMARY KEY (`renewal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Subscription Renewal';

INSERT INTO #__redshop_subscription_renewal VALUES
('1','28','1'),
('2','15','1'),
('3','24','1'),
('4','18','1'),
('5','34','1'),
('6','32','1'),
('7','26','1'),
('8','17','1'),
('9','20','1'),
('10','25','1'),
('11','30','1'),
('12','22','1'),
('13','19','1');

CREATE TABLE `#__redshop_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(250) NOT NULL,
  `supplier_desc` longtext NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Supplier';



CREATE TABLE `#__redshop_tax_group` (
  `tax_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_group_name` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`tax_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Tax Group';

INSERT INTO #__redshop_tax_group VALUES
('1','Default','1');

CREATE TABLE `#__redshop_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_state` varchar(64) DEFAULT NULL,
  `tax_country` varchar(64) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,4) DEFAULT NULL,
  `tax_group_id` int(11) NOT NULL,
  `is_eu_country` tinyint(4) NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Tax Rates';

INSERT INTO #__redshop_tax_rate VALUES
('1','','DNK','','0.2500','1','1');

CREATE TABLE `#__redshop_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(250) NOT NULL,
  `template_section` varchar(250) NOT NULL,
  `template_desc` longtext NOT NULL,
  `order_status` varchar(250) NOT NULL,
  `payment_methods` varchar(250) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `shipping_methods` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP Templates Detail';

INSERT INTO #__redshop_template VALUES
('5','list','category','<div>\n<div class=\"category_main_toolbar\">\n<div class=\"category_main_title\">{category_main_name}</div>\n<!-- <div>{filter_by_lbl}{filter_by}</div>-->\n<div>{order_by_lbl}{order_by}</div>\n<div>{template_selector_category_lbl}{template_selector_category}</div>\n</div>\n<div class=\"clear\"> </div>\n<div class=\"category_box_wrapper\">{product_loop_start}\n<div class=\"category_box_outside_row\">\n<div class=\"category_product_image\">{product_thumb_image}</div>\n<div class=\"category_product_name\">\n<h3>{product_name}</h3>\n<p>{product_rating_summary}</p>\n<p>{product_s_desc}</p>\n</div>\n<div class=\"category_product_container\">\n<table>\n<tbody>\n<tr>\n<td>\n<div class=\"category_product_price\">{product_price}</div>\n</td>\n<td>\n<div id=\"add_to_cart_all\">{form_addtocart:add_to_cart1}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n{product_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('8','grid','category','<div>\n<div class=\"category_main_toolbar\">\n<div class=\"category_main_title\">{category_main_name}</div>\n<!-- <div>{filter_by_lbl}{filter_by}</div>-->\n<div>{order_by_lbl}{order_by}</div>\n<div>{template_selector_category_lbl}{template_selector_category}</div>\n</div>\n{if subcats}\n<div>\n<div>{category_loop_start}\n<div id=\"categories\">\n<div style=\"float: left; width: 200px;\">\n<div class=\"category_image\">{category_thumb_image}</div>\n<div class=\"category_description\">\n<h2 class=\"category_title\">{category_name}</h2>\n</div>\n<div class=\"category_description\">{category_readmore}</div>\n<div class=\"category_description\">{category_description}</div>\n</div>\n</div>\n{category_loop_end}</div>\n</div>\n{subcats end if}\n<div class=\"category_box_wrapper\">{product_loop_start}\n<div class=\"category_box_outside\">\n<div class=\"category_box_inside\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<div class=\"category_product_image\">{product_thumb_image}</div>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<div class=\"category_product_title\">\n<h3>{product_name}</h3>\n</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"category_product_price\">{product_price}</div>\n</td>\n<td>\n<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n{product_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('9','product','product','<div class=\"product\">\n<div class=\"gd_navigation\"><span class=\"gd_nav_left\">{navigation_link_left}</span><span class=\"gd_nav_right\">{navigation_link_right}</span></div>\n<div class=\"redSHOP_product_box clearfix\">\n<div class=\"redSHOP_product_box_left\">\n<div class=\"product_image\">{product_thumb_image}</div>\n<div class=\"product_more_images\">{more_images}</div>\n<div class=\"redSHOP_links\"><span>{ask_question_about_product}</span>\n<div>{manufacturer_link}</div>\n</div>\n</div>\n<div class=\"redSHOP_product_box_right\">\n<div class=\"redSHOP_product_detail_box\">\n<div class=\"product_title clearfix\">\n<h3>{product_name}</h3>\n</div>\n<div class=\"product_desc_short\">{product_s_desc}<span style=\"margin-left: 10px;\">{rs_new_product}</span></div>\n<div class=\"addtocart_box\">\n<div class=\"addtocart_area\">\n<div class=\"cardiv1\">{attribute_template:attributes} {accessory_template:accessory}</div>\n<div class=\"cardiv2\">\n<div class=\"clearfix pricebox\">\n<div class=\"stockholder\">{stock_status:instock:outofstock}</div>\n<div class=\"areacart\">\n<div id=\"product_price\"><span class=\"product_price_val\">{product_price}</span> <span class=\"eks_vat\">{vat_info}</span></div>\n<div class=\"product_addtocart\">\n<div id=\"add_to_cart_all\">{form_addtocart:add_to_cart2}</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div>&nbsp;</div>\n<div class=\"product_box_outside\">\n<div style=\"border-bottom: 1px solid #eee;\">\n<h4>Description</h4>\n</div>\n<div class=\"product_desc\">\n<div class=\"product_desc_full\">{product_desc}</div>\n</div>\n</div>\n<div class=\"gd_header\">\n<h4>Customer Reviews</h4>\n</div>\n<div class=\"gd_content clearfix\">\n<div>{product_rating_summary}</div>\n<div>{form_rating}</div>\n</div>\n<div>&nbsp;</div>\n<p>{related_product:related_products}</p>\n<p>&nbsp;</p>\n<p>{wishlist_button} , Wishlist Button to add product in Wishlist <br />{wishlist_link} , Wishlist Link to add product in Wishlist</p>\n</div>\n<p>{ajaxwishlist_icon}</p>\n<p>&nbsp;</p>\n<p>{compare_products_button} , Compare Product button to compare product<br />{compare_product_div},Display Product in Compare list</p>','','','1','','0','0000-00-00 00:00:00'),
('10','cart','cart','<h1>{cart_lbl}</h1>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th>{product_name_lbl}</th> <th> <br /></th><th>{product_price_excl_lbl}</th><th>{quantity_lbl}</th><th>{total_price_exe_lbl}</th>\n</tr>\n</thead>\n<tbody>\n<!-- {product_loop_start} -->\n<div class=\"category_print\">{attribute_price_with_vat}</div>\n<tr class=\"tdborder\">\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n<div>{attribute_change}</div>\n</td>\n<td>{product_thumb_image}</td>\n<td>{product_price_excl_vat}</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update_cart}</td>\n<td>{remove_product}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>{product_total_price_excl_vat}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n<p><strong class=\"discount_text\"><br /></strong></p>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" valign=\"top\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update}</td>\n<td>{empty_cart}</td>\n</tr>\n<tr>\n<td class=\"cart_discount_form\" colspan=\"2\">{discount_form_lbl}{coupon_code_lbl}<br />{discount_form}</td>\n</tr>\n</tbody>\n</table>\n<br /></td>\n<td width=\"50%\" align=\"right\" valign=\"top\"><br /><br />\n<table class=\"cart_calculations\" border=\"0\" width=\"100%\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>{product_subtotal_excl_vat_lbl}:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount}-->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if} -->\n<tr>\n<td><b>{shipping_with_vat_lbl}:</b></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<!-- {if vat} -->\n<tr>\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} -->\n <!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n\n{checkout_button}<br /><br /> {shop_more}</td>\n</tr>\n</tbody>\n</table>','','','0','','0','0000-00-00 00:00:00'),
('11','review','review','<div>{product_loop_start}\n<p><strong>{product_title}</strong></p>\n<div>{review_loop_start}\n<div id=\"reviews_wrapper\">\n<div id=\"reviews_rightside\">\n<div id=\"reviews_fullname\">{fullname}</div>\n<div id=\"reviews_title\">{title}</div>\n<div id=\"reviews_comment\">{comment}</div>\n<div id=\"reviews_date\">{reviewdate}</div>\n</div>\n<div id=\"reviews_leftside\">\n<div id=\"reviews_stars\">{stars}</div>\n</div>\n</div>\n{review_loop_end}\n</div>{product_loop_end}</div>\n','','','1','','0','0000-00-00 00:00:00'),
('13','manufacturer_listings','manufacturer','<div class=\"category_print\">{print}</div>\n<div id=\"category_header\">\n<div class=\"category_order_by\">{order_by}</div>\n</div>\n<div class=\"manufacturer_box_wrapper\">{manufacturer_loop_start}\n<div class=\"manufacturer_box_outside\">\n<div class=\"manufacturer_box_inside\">\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_title\">\n<h3>{manufacturer_name}</h3>\n</div>\n<div class=\"manufacturer_desc\">{manufacturer_description}</div>\n<div class=\"manufacturer_link\"><a href=\"{manufacturer_link}\">{manufacturer_link_lbl}</a></div>\n<div class=\"manufacturer_product_link\"><a href=\"{manufacturer_allproductslink}\">{manufacturer_allproductslink_lbl}</a></div>\n</div>\n</div>\n{manufacturer_loop_end}</div>\n','','','1','','0','0000-00-00 00:00:00'),
('14','manufacturer_products','manufacturer_products','<div class=\"manufacturer_name\">a{manufacturer_name}</div>\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_description\">{manufacturer_description}</div>\n<div id=\"category_header\">\n<div class=\"category_order_by\">{order_by}</div>\n</div>\n<div class=\"category_box_wrapper\">{product_loop_start}\n<div class=\"category_box_outside\">\n<div class=\"category_box_inside\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<div class=\"category_product_image\">{product_thumb_image}</div>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<div class=\"category_product_title\">\n<h3>{product_name}</h3>\n</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"category_product_price\">{product_price}</div>\n</td>\n<td>\n<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n{product_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>','','','0','','0','0000-00-00 00:00:00'),
('15','order_list','order_list','<table border=\"0\" cellspacing=\"5\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr>\n<th>{order_id_lbl}</th> <th>{product_name_lbl}</th> <th>{total_price_lbl}</th> <th>{order_date_lbl}</th> <th>{order_status_lbl}</th> <th>{order_detail_lbl}</th>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td style=\"background-color: #d7d7d4\">{order_id}</td>\n<td style=\"background-color: #d7d7d4\">{order_products}</td>\n<td style=\"background-color: #d7d7d4\">{order_total}</td>\n<td style=\"background-color: #d7d7d4\">{order_date}</td>\n<td style=\"background-color: #d7d7d4\">{order_status}</td>\n<td style=\"background-color: #d7d7d4\">{order_detail_link}{reorder_link}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n{pagination}\n','','','1','','0','0000-00-00 00:00:00'),
('16','order_detail','order_detail','<div class=\"product_print\">{print}</div>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{discount_type_lbl}</th>\n</tr>\n<tr>\n<td>{discount_type}</td>\n</tr>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{shipping_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_detail_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{copy_orderitem_lbl}</td>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!-- {product_loop_start} -->\n<tr>\n<td>{copy_orderitem}</td>\n<td>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}</td>\n<td>{product_wrapper}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{customer_note_lbl}: {customer_note}</td>\n</tr>\n<tr>\n<td>{requisition_number_lbl}: {requisition_number}</td>\n</tr>\n<tr>\n<td >\n<table class=\"cart_calculations\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>Product Subtotal excl vat:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n\n<!-- {if discount} -->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if} -->\n\n<tr>\n<td><b>Shipping with vat:</b></td>\n<td width=\"100\">{shipping}</td>\n</tr>\n<!-- {if vat}-->\n<tr class=\"tdborder\">\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} -->  \n<!-- {if payment_discount} -->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if} -->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{order_total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td align=\"left\">{reorder_button}\n</td></tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','','0','','0','0000-00-00 00:00:00'),
('17','order_receipt','order_receipt','<div class=\"product_print\">{print}</div>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<th>{product_name_lbl}</th> <th> </th> <th>{price_lbl}</th> <th>{quantity_lbl}</th> <th>{total_price_lbl}</th>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}{product_wrapper}</td>\n<td>{product_thumb_image}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td>{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n<p><br /><br /></p>\n<table class=\"cart_calculations\" border=\"1\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>Product Subtotal:</b></td>\n<td width=\"100\">{product_subtotal}</td>\n<td><b>Product Subtotal excl vat:</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<tr>\n<td><b>Shipping with vat:</b></td>\n<td width=\"100\">{shipping}</td>\n<td><b>Shipping excl vat:</b></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<!-- {if discount} -->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount_excl_vat}</td>\n</tr>\n\n<!-- {discount end if} -->\n<tr>\n<td><b>{totalpurchase_lbl}:</b></td>\n<td width=\"100\">{order_subtotal}</td>\n<td><b>{subtotal_excl_vat_lbl} :</b></td>\n<td width=\"100\">{order_subtotal_excl_vat}</td>\n</tr>\n\n<!-- {if vat} -->\n<tr class=\"tdborder\">\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n<td>{vat_lbl}</td>\n<td width=\"100\">{sub_total_vat}</td>\n</tr>\n<!-- {vat end if} -->  \n<!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr class=\"tdborder\">\n<td><b>{shipping_lbl}</b></td>\n<td width=\"100\">{shipping}</td>\n<td><b>{shipping_lbl}</b></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{order_total}</div>\n</td>\n<td>\n<div class=\"singleline\"><b>{total_lbl}:</b></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total_excl_vat}</div>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">\n<p>{shipping_method_lbl} <strong>{shipping_method}</strong></p>\n<p>{payment_status}</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">{billing_address}</td>\n</tr>\n<tr>\n<td colspan=\"4\">{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n','','','0','','0','0000-00-00 00:00:00'),
('18','manufacturer_detail','manufacturer_detail','<div class=\"manufacturer_name\">{manufacturer_name}</div>\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_description\">{manufacturer_description}</div>\n<div class=\"manufacturer_product_link\"><a href=\"{manufacturer_allproductslink}\">{manufacturer_allproductslink_lbl}</a></div>\n','','','1','','0','0000-00-00 00:00:00'),
('22','frontpage_category','frontpage_category','<div class=\"category_front_introtext\">\n <p>{category_frontpage_introtext}</p>\n</div>\n<div class=\"category_front_wrapper\">\n{category_frontpage_loop_start}\n<div class=\"category_front\">\n <div class=\"category_front_image\">{category_thumb_image}</div>\n <div class=\"category_front_title\">\n  <h3>{category_name}</h3>\n </div>\n</div>\n{category_frontpage_loop_end}\n</div>','','','1','','0','0000-00-00 00:00:00'),
('23','related_products','related_product','<div class=\"gd_header\"><h4>You may also interested in this/these product(s)</h4></div>\n<div class=\"gd_content clearfix\">\n<div class=\"related_product_wrapper\">\n\n{related_product_start}\n<div class=\"related_product_inside\">\n<div class=\"related_product_left\">\n<div class=\"related_product_image\">\n<div class=\"related_product_image_inside\">{relproduct_image}</div>\n</div>\n</div>\n<div class=\"related_product_right\">\n<div class=\"related_product_name\"><a href=\"{read_more_link}\">{relproduct_name}</a></div>\n\n\n</div>\n<div class=\"related_product_bottom\">\n<div class=\"related_product_price\">{relproduct_price}</div>\n<div class=\"related_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n</div>\n</div>\n{related_product_end}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('24','add_to_cart1','add_to_cart','<div>\n<div class=\"cart-link\">{addtocart_link}\n</div>\n</div>\n','','','1','','0','0000-00-00 00:00:00'),
('25','add_to_cart2','add_to_cart','<div class=\"cart-quantity\">{addtocart_quantity}</div>\n<div class=\"product-cart-link\">{addtocart_link}</div>','','','1','','0','0000-00-00 00:00:00'),
('26','product2','product','<div class=\"product\">\n<div class=\"next-prev\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 33%; height: 20px;\" align=\"left\" valign=\"middle\">{navigation_link_left}</td>\n<td style=\"width: 33%; height: 20px;\" align=\"center\" valign=\"middle\">{returntocategory}</td>\n<td style=\"width: 33%; height: 20px;\" align=\"right\" valign=\"middle\">{navigation_link_right}</td>\n</tr>\n</tbody>\n</table>\n</div>\n<div class=\"product_rating_summary\">{product_rating_summary}</div>\n<div class=\"product_writereview\">{form_rating}</div>\n<div class=\"product_box\">\n<div class=\"product_box_inside\">\n<div class=\"product_box_left\">\n<div class=\"product_image\">{product_thumb_image}<br />{view_full_size_image_lbl}</div>\n<div class=\"product_more_images\">{more_images}</div>\n</div>\n<div class=\"product_box_right\">\n<div id=\"product_price\" class=\"product_price\">{product_price}</div>\n<div class=\"product_attributter\">{attribute_template:attributes}</div>\n{if product_userfield}\n<div class=\"product_userfield\">{userfield-test}</div>\n{product_userfield end if}\n<div class=\"product_accessory\">{accessory_template:accessory}</div>\n<div class=\"product_addtocart\">{form_addtocart:add_to_cart2}</div>\n<div class=\"product_manufacturer_link\">{manufacturer_link}</div>\n<div class=\"product_question_link\">{ask_question_about_product}</div>\n</div>\n</div>\n<div class=\"product_desc_wrapper\">\n<div class=\"product_title\">\n<h2>{product_name}</h2>\n</div>\n<div class=\"product_desc_short\">{product_s_desc}</div>\n<div class=\"product_desc_full\">{product_desc}</div>\n</div>\n<div class=\"product_related_products\">{related_product:related_products}</div>\n</div>\n</div>\n<p>{question_loop_start}{question} - {question_owner} - {question_date}{answer_loop_start}{answer} - {answer_owner} - {answer_date}{answer_loop_end}{question_loop_end}</p>\n','','','1','','0','0000-00-00 00:00:00'),
('27','accessory','accessory_template','<div class=\"accessory_box\">\n<div class=\"accessory_product_wrapper\">\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"accessory_product\" align=\"center\">\n<!-- {accessory_product_start}  -->\n<tr>\n    <td>{accessory_image}</td>\n    <td>{accessory_add_chkbox}</td>\n    <td>{accessory_title}</td>\n    <td style=\"padding-left:10px;\">{accessory_price}</td>\n</tr>\n<!-- {accessory_product_end} -->\n</table>\n</div> \n</div>','','','1','','0','0000-00-00 00:00:00'),
('28','attributes','attribute_template','<div class=\"attributes_box clearfix\">\n<div class=\"attribute_wrapper\">\n<lable>{attribute_title}</lable>{property_dropdown}<br />{subproperty_start}<lable>{property_title}</lable>{subproperty_dropdown}{subproperty_end}</p>\n</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('29','newsletter1','newsletter','<p>Newsletter redSHOPdemo2</p>\n<p>{data}</p>\n<p>{username}</p>\n<p>{email}</p>\n<p>{unsubscribe_link}</p>\n','','','1','','0','0000-00-00 00:00:00'),
('100','my_account_template','account_template','<table border=\"0\">\n<tbody>\n<tr>\n<td>{welcome_introtext}</td>\n</tr>\n<tr>\n<td class=\"account_billinginfo\">\n<table border=\"0\" cellspacing=\"10\" cellpadding=\"10\" width=\"100%\">\n<tbody>\n<tr valign=\"top\">\n<td width=\"40%\">{account_image}<strong>{account_title}</strong><br /><br />\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td class=\"account_label\">{fullname_lbl}</td>\n<td class=\"account_field\">{fullname}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{state_lbl}</td>\n<td class=\"account_field\">{state}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{country_lbl}</td>\n<td class=\"account_field\">{country}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{vatnumber_lbl}</td>\n<td class=\"account_field\">{vatnumber}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{ean_number_lbl}</td>\n<td class=\"account_field\">{ean_number}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{email_lbl}</td>\n<td class=\"account_field\">{email}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{company_name_lbl}</td>\n<td class=\"account_field\">{company_name}</td>\n</tr>\n<tr>\n<td colspan=\"2\">{edit_account_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{order_image}<strong>{order_title}</strong></td>\n</tr>\n <!-- {order_loop_start} -->\n<tr>\n<td>{order_index} {order_id} {order_detail_link}</td>\n</tr>\n <!-- {order_loop_end} -->\n<tr>\n<td>{more_orders}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"account_shippinginfo\">{shipping_image}<strong>{shipping_title}</strong> <br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_shipping_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{quotation_image}<strong>{quotation_title}</strong></td>\n</tr>\n <!-- {quotation_loop_start} -->\n<tr>\n<td>{quotation_index} {quotation_id} {quotation_detail_link}</td>\n</tr>\n<!-- {quotation_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{product_serial_image}<strong>{product_serial_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<!-- {product_serial_loop_start} -->\n<tr>\n<td>{product_name} {product_serial_number}</td>\n</tr>\n<!-- {product_serial_loop_end} -->\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{coupon_image}<strong>{coupon_title}</strong></td>\n</tr>\n<!--  {coupon_loop_start} -->\n<tr>\n<td>{coupon_code_lbl} {coupon_code}</td>\n</tr>\n<tr>\n<td>{coupon_value_lbl} {coupon_value}</td>\n</tr>\n<!-- {coupon_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{wishlist_image}<strong>{wishlist_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_wishlist_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>{compare_image}<strong>{compare_title}</strong> <br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_compare_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{logout_link}</td>\n<td>{tag_image}<strong>{tag_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_tag_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','','0','','0','0000-00-00 00:00:00'),
('101','catalog','catalog','<div id=\"katalog_wrapper\">\n<div id=\"bestil_katalog_wrapper\">\n<div id=\"katalog_overskrift\">\n<h1>Order Catalog</h1>\n</div>\n<div id=\"katalog_venstre_wrapper\">\n<div id=\"katalog_tekst\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget nisi orci, vel vehicula massa. Phasellus ipsum est, egestas a consequat eget, placerat vitae ipsum. Proin ac purus risus. Quisque nec nisi lacus, vitae iaculis eros. Donec ipsum diam, dictum ac euismod molestie, ultrices eget arcu. Vestibulum lacinia nisl et odio sagittis fermentum. Aliquam tristique volutpat faucibus. Sed id orci ut metus condimentum bibendum. Ut gravida scelerisque magna et pharetra. Ut vel turpis in orci molestie scelerisque. Proin nisl elit, ullamcorper id blandit nec, congue eget augue. Nullam gravida ligula nisi.</p>\n</div>\n<div>Catalog:{catalog_select}</div>\n<div id=\"katalog_navn_email\">{name_lbl} {name} <br /><br />{email_lbl} {email_address} <br /><br />{submit_button_catalog}</div>\n</div>\n<div id=\"katalog_hojre_wrapper\"></div>\n</div>\n</div>\n','','','1','','0','0000-00-00 00:00:00'),
('102','catalog_sample','product_sample','<div id=\"katalog_wrapper\">\n<div id=\"bestil_katalog_wrapper\">\n<div id=\"katalog_hojre_wrapper\"></div>\n</div>\n<div id=\"bestil_farveproeve_wrapper\">\n<div id=\"farveproeve_overskrift\">\n<h2>Bestil Farvepr�ver</h2>\n</div>\n<div id=\"farveproeve_venstre\">\n<div id=\"farveproever_tekst\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget nisi orci, vel vehicula massa. Phasellus ipsum est, egestas a consequat eget, placerat vitae ipsum. Proin ac purus risus. Quisque nec nisi lacus, vitae iaculis eros. Donec ipsum diam, dictum ac euismod molestie, ultrices eget arcu. Vestibulum lacinia nisl et odio sagittis fermentum. Aliquam tristique volutpat faucibus. Sed id orci ut metus condimentum bibendum. Ut gravida scelerisque magna et pharetra. Ut vel turpis in orci molestie scelerisque. Proin nisl elit, ullamcorper id blandit nec, congue eget augue. Nullam gravida ligula nisi.</div>\n<div id=\"farveproever\">\n<p style=\"text-align: left;\">{product_samples}</p>\n</div>\n</div>\n<div id=\"farveproeve_hojre_wrapper\">\n<div id=\"farveproeve_addressefelt\">\n<p style=\"text-align: left;\">{address_fields}</p>\n</div>\n<div id=\"farveproeve_sendknap\">\n<p style=\"text-align: left;\">{submit_button_sample}</p>\n</div>\n</div>\n</div>\n</div>\n','','','1','','0','0000-00-00 00:00:00'),
('103','wishlist_list','wishlist_template','<div style=\"float: right;\">{mail_link}</div>\n<p>{product_loop_start}</p>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr valign=\"top\">\n<td width=\"40%\">\n<div style=\"float: left; width: 195px; height: 230px; text-align: center;\">{product_thumb_image}\n<div>{product_name}</div>\n<div>{product_price}</div>\n<div>{form_addtocart:add_to_cart1}</div>\n<div></div>\n<div>{remove_product_link}</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div></div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tbody>\n<tr>\n<td></td>\n<td align=\"center\" valign=\"top\"><br /><br /></td>\n</tr>\n</tbody>\n</table>\n<p>{product_loop_end}</p>\n<div style=\"float: right;\">{back_link}</div>\n','','','0','','0','0000-00-00 00:00:00'),
('105','wishlist_mail','wishlist_mail_template','<table border=\"0\" cellspacing=\"10\" cellpadding=\"10\">\n<tbody>\n<tr>\n<th colspan=\"2\">{email_to_friend}</th>\n</tr>\n<tr>\n<td>{emailto_lbl}</td>\n<td>{emailto}</td>\n</tr>\n<tr>\n<td>{sender_lbl}</td>\n<td>{sender}</td>\n</tr>\n<tr>\n<td>{mail_lbl}</td>\n<td>{mail}</td>\n</tr>\n<tr>\n<td>{subject_lbl}</td>\n<td>{subject}</td>\n</tr>\n<tr>\n<td>{cancel_button}</td>\n<td>{send_button}</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('110','ask_question','ask_question_template','<table border=\"0\">\n<tbody>\n<tr>\n<td>{user_name_lbl}</td>\n<td>{user_name}</td>\n</tr>\n<tr>\n<td>{user_email_lbl}</td>\n<td>{user_email}</td>\n</tr>\n<tr>\n<td>{user_question_lbl}</td>\n<td>{user_question}</td>\n</tr>\n<tr>\n<td></td>\n<td>{send_button}</td>\n</tr>\n<tr>\n<td>{captcha_lbl}</td>\n<td>{captcha}</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('111','ajax_cart_box','ajax_cart_box','<div id=\"ajax_cart_wrapper\">\n<div id=\"ajax_cart_text\">{ajax_cart_box_title}<br /><br /></div>\n<div id=\"ajax_cart_button_wrapper\">\n<div id=\"ajax_cart_button_inside\">\n<div id=\"ajax_cart_continue_button\">{continue_shopping_button}</div>\n<div id=\"ajax_cart_show_button\">{show_cart_button}</div>\n</div>\n</div>\n</div>\n','','','0','','0','0000-00-00 00:00:00'),
('112','ajax_cart_detail_box','ajax_cart_detail_box','<div id=\"ajax-cart\">\n<div id=\"ajax-cart-label\">\n<h3>Add to Cart</h3>\n</div>\n<div id=\"ajax-cart-attr\">{attribute_template:attributes}</div>\n<div id=\"ajax-cart-access\">{accessory_template:accessory}</div>\n{if product_userfield}\n<div id=\"ajax-cart-user\">{userfield-test}</div>\n{product_userfield end if}\n<div id=\"ajax-cart-label\">{form_addtocart:add_to_cart2}</div>\n</div>\n','','','1','','0','0000-00-00 00:00:00'),
('115','wrapper','wrapper_template','<div class=\"accessory\">\n<div class=\"accessory_info\">\n<h2>Product Wrapper</h2>\nSelect Wrapper by clicking in the box.</div>\n<div class=\"wrapper_box\">\n<div class=\"wrapper_left\">\n<div class=\"wrapper_image\">{wrapper_dropdown}</div>\n</div>\n<div class=\"wrapper_left\">\n<div class=\"wrapper_image\">{wrapper_image}</div>\n<div class=\"wrapper_price\">{wrapper_price}</div>\n</div>\n<div class=\"wrapper_left\">\n<div class=\"wrapper_image\">{wrapper_add_checkbox}</div>\n</div>\n</div>\n</div>\n','','','1','','0','0000-00-00 00:00:00'),
('125','giftcard_listing','giftcard_list','<div>{giftcard_loop_start}\n<div><h3>{giftcard_name}</h3></div>\n<div>{giftcard_desc}</div>\n<div>{giftcard_validity}</div>{giftcard_loop_end}</div>\n','','','1','','0','0000-00-00 00:00:00'),
('135','giftcard','giftcard','<div>{giftcard_image}</div>\n<div>{giftcard_name}</div>\n<div>{giftcard_desc}</div>\n<div>{giftcard_price_lbl}{giftcard_price}</div>\n<div>{giftcard_validity}</div>\n<div>{giftcard_reciver_name_lbl}{giftcard_reciver_name}</div>\n<div>{giftcard_reciver_email_lbl}{giftcard_reciver_email}</div>\n<div>{form_addtocart:add_to_cart2}</div>\n','','','1','','0','0000-00-00 00:00:00'),
('200','shipping_pdf','shipping_pdf','<div style=\"background-color:#CCCCCC;color:white;\">{order_information_lbl}</div>\n<table border=\"0\">\n<tbody>\n<tr>\n<td class=\"caption\">{order_id_lbl}</td>\n<td>{order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl}</td>\n<td>{order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl}</td>\n<td>{order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl}</td>\n<td>{order_status}</td>\n</tr>\n</tbody>\n</table>\n<div style=\"background-color:#CCCCCC;color:white;\">{shipping_address_info_lbl}</div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td>{shipping_firstname_lbl} : {shipping_firstname}</td>\n</tr>\n<tr>\n<td>{shipping_lastname_lbl} : {shipping_lastname}</td>\n</tr>\n<tr>\n<td>{shipping_address_lbl}: {shipping_address}</td>\n</tr>\n<tr>\n<td>{shipping_zip_lbl}  : {shipping_zip}</td>\n</tr>\n<tr>\n<td>{shipping_city_lbl} :{shipping_city}</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('251','order_print','order_print','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_information_lbl}{print}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{shipping_address_information_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\">\n<th align=\"left\">{order_detail_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>\n<p>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}</p>\n</td>\n<td>{product_wrapper}{product_thumb_image}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr align=\"left\">\n<td align=\"left\"><strong>{order_subtotal_lbl} : </strong></td>\n<td align=\"right\">{order_subtotal}</td>\n</tr>\n<!-- {if vat} -->\n<tr align=\"left\">\n<td align=\"left\"><strong>{vat_lbl} : </strong></td>\n<td align=\"right\">{order_tax}</td>\n</tr>\n<!-- {vat end if} -->\n<!-- {if discount}-->\n<tr align=\"left\">\n<td align=\"left\"><strong>{discount_lbl} : </strong></td>\n<td align=\"right\">{order_discount}</td>\n</tr>\n<!-- {discount end if}-->\n<tr align=\"left\">\n<td align=\"left\"><strong>{shipping_lbl} : </strong></td>\n<td align=\"right\">{order_shipping}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\n<td align=\"right\">{order_total}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n<br />\n<hr />\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('252','clicktell_sms_message','clicktell_sms_message','<p>{order_id}{order_status}<br />{customer_name}<br />{payment_status}</p>\n','','','1','','0','0000-00-00 00:00:00'),
('260','redproductfinder','redproductfinder','<div class=\"redproductfinder_result_header\">\n{order_by} {pagination} {perpagelimit:5} {product_display_limit}\n{product_loop_start}<br />\n{product_id_lbl} :: {product_id} <br />\n{product_name}<br />{product_price}<br />\n{product_thumb_image}<br />\n{attribute_template:attributes}<br/>\n{product_s_desc}<br />\n{product_number_lbl} :: {product_number} <br />\n{manufacturer_link}<br />{manufacturer_name}<br />\n{read_more}<br />{form_addtocart:add_to_cart1}<br />\n{product_loop_end}</div>\n','','','1','','0','0000-00-00 00:00:00'),
('265','quotation_detail','quotation_detail','<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{quotation_information_lbl}{print}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>{quotation_id_lbl} : {quotation_id}</td>\n</tr>\n<tr>\n<td>{quotation_number_lbl} : {quotation_number}</td>\n</tr>\n<tr>\n<td>{quotation_date_lbl} : {quotation_date}</td>\n</tr>\n<tr>\n<td>{quotation_status_lbl} : {quotation_status}</td>\n</tr>\n<tr>\n<td>{quotation_note_lbl} : {quotation_note}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{account_information_lbl}</th>\n</tr>\n<tr>\n<td>{account_information}{quotation_custom_field_list}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{quotation_detail_lbl}</th>\n</tr>\n<tr>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}({product_number_lbl} - {product_number})<br />{product_accessory}{product_attribute}{product_userfields}</td>\n<td>{product_wrapper}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_subtotal_lbl} : </strong></td>\n<td align=\"right\">{quotation_subtotal}</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_tax_lbl} : </strong></td>\n<td align=\"right\">{quotation_tax}</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{quotation_discount_lbl} : </strong></td>\n<td align=\"right\">{quotation_discount}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n</td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\n<td align=\"right\">{quotation_total}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\">\n<hr />\n<br />\n<hr />\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('280','catalogue_cart','catalogue_cart','<h1>Indkøbskurv</h1>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th>{product_name_lbl}</th> <th> <br /></th><th>{quantity_lbl}</th>\n</tr>\n</thead>\n<tbody>\n{print} <!--  {product_loop_start} -->\n<tr class=\"tdborder\">\n<td>\n<p>{product_name}  <span class=\"attribut\">{product_attribute} {product_accessory}</span> {product_wrapper}{product_userfields}</p>\n<p> </p>\n</td>\n<td>{product_thumb_image}</td>\n<td>\n<table style=\"width: 172px; height: 46px;\" border=\"0\">\n<tbody>\n<tr>\n<td>{update_cart}{remove_product}</td>\n<td><br /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" valign=\"top\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update}</td>\n<td>{empty_cart}</td>\n</tr>\n</tbody>\n</table>\n<br /><br /> {coupon_code_lbl}   {discount_form}</td>\n<td width=\"50%\" align=\"right\" valign=\"top\"><br /><br />\n<table class=\"cart_regnestykke\" border=\"0\">\n<tbody>\n</tbody>\n</table>\n\n<p>{checkout_button}<br /><br /> {shop_more}</p>\n</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('281','catalogue_order_detail','catalogue_order_detail','<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{discount_type_lbl}</th>\n</tr>\n<tr>\n<td>{discount_type}</td>\n</tr>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{order_information_lbl}{print}</th>\n</tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{billing_address_information_lbl}</th>\n</tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{shipping_address_info_lbl}</th>\n</tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc\">\n<th align=\"left\">{order_detail_lbl}</th>\n</tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{quantity_lbl}</td>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}{product_userfields}</td>\n<td>{customer_note}</td>\n<td>{product_quantity}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('282','catalogue_order_receipt','catalogue_order_receipt','<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<th>{product_name_lbl} {print}</th> <th> </th> <th>{quantity_lbl}</th>\n</tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}<br />{product_userfields}</td>\n<td>{product_thumb_image}</td>\n<td>{product_quantity}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n<table class=\"order_details\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" align=\"left\" valign=\"top\">\n<p>{order_number_lbl}{order_number}<strong>{delivery_time_lbl} {delivery_time}</strong></p>\n<p>{order_id}{order_id_lbl}</p>\n<p>{print} Print denne side</p>\n</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('289','empty_cart','empty_cart','<p>The Cart is empty.</p>\n','','','0','','0','0000-00-00 00:00:00'),
('320','compare_product','compare_product','<div><span>{compare_product_heading}</span></div>\n<div><a href=\"{returntocategory_link}\">{returntocategory_name}</a></div>\n<table border=\"1\">\n<tbody>\n<tr>\n<th> </th>\n<td align=\"center\">{expand_collapse}</td>\n</tr>\n<tr>\n<th>Product Name</th>\n<td>{product_name}</td>\n</tr>\n<tr>\n<th>Image</th>\n<td>{product_image}</td>\n</tr>\n<tr>\n<th>Manufacturer</th>\n<td>{manufacturer_name}</td>\n</tr>\n<tr>\n<th>Discount Start <br /></th>\n<td>{discount_start_date}</td>\n</tr>\n<tr>\n<th>Discount End<br /></th>\n<td>{discount_end_date}</td>\n</tr>\n<tr>\n<th>Price</th>\n<td>{product_price}</td>\n</tr>\n<tr>\n<th>Short Desc<br /></th>\n<td>{product_s_desc}</td>\n</tr>\n<tr>\n<th>Desc</th>\n<td>{product_desc}</td>\n</tr>\n<tr>\n<th>Rating</th>\n<td>{product_rating_summary}</td>\n</tr>\n<tr>\n<th>Delivery Time</th>\n<td>{product_delivery_time}</td>\n</tr>\n<tr>\n<th>Product Number<br /></th>\n<td>{product_number}</td>\n</tr>\n<tr>\n<th>Stock<br /></th>\n<td>{products_in_stock}</td>\n</tr>\n<tr>\n<th>Stock<br /></th>\n<td>{product_stock_amount_image}</td>\n</tr>\n<tr>\n<th>Weight<br /></th>\n<td>{product_weight}</td>\n</tr>\n<tr>\n<th>Length<br /></th>\n<td>{product_length}</td>\n</tr>\n<tr>\n<th>Height<br /></th>\n<td>{product_height}</td>\n</tr>\n<tr>\n<th>Width<br /></th>\n<td>{product_width}</td>\n</tr>\n<tr>\n<th>Availability Date<br /></th>\n<td>{product_availability_date}</td>\n</tr>\n<tr>\n<th>Volume<br /></th>\n<td>{product_volume}</td>\n</tr>\n<tr>\n<th>Category<br /></th>\n<td>{product_category}</td>\n</tr>\n<tr>\n<th> </th>\n<td>{remove}</td>\n</tr>\n<tr>\n<th> </th>\n<td>{add_to_cart}</td>\n</tr>\n</tbody>\n</table>\n','','','0','','0','0000-00-00 00:00:00'),
('334','newsletter_products','newsletter_product','	<p>{product_name}</p>\n<p>{product_price}</p>\n<p>{product_thumb_image}</p>\n<p>{product_s_desc}</p>\n<p>{product_desc}</p>\n<p>{unsubscribe_link}</p>\n','','','1','','0','0000-00-00 00:00:00'),
('353','payment_method','redshop_payment','<fieldset class=\"adminform\"><legend><strong>{payment_heading}</strong></legend>\n<div>{split_payment}</div>\n<div>{payment_loop_start}\n<div>{payment_method_name}</div>\n<div>{creditcard_information}</div>\n{payment_loop_end}</div>\n</fieldset>\n','','','1','','0','0000-00-00 00:00:00'),
('354','shipping_method','redshop_shipping','<fieldset><legend><strong>{shipping_heading}</strong></legend>\n<div>{shipping_method_loop_start}\n<h3>{shipping_method_title}</h3>\n<div>{shipping_rate_loop_start}\n<div>{shipping_rate_name}{shipping_rate}</div>\n{shipping_rate_loop_end}</div>\n{shipping_method_loop_end}</div>\n</fieldset>\n','','','1','','0','0000-00-00 00:00:00'),
('355','shipping_box','shippingbox','<fieldset class=\"adminform\"> <legend><strong>{shipping_box_heading}</strong></legend>\n<div>{shipping_box_list}</div>\n</fieldset>\n','','','1','','0','0000-00-00 00:00:00'),
('356','category_product_template','categoryproduct','<div>\n{category_loop_start}\n	<div id=\"categories\">\n		<div style=\"clear:both; width: 200px;\">\n		<div class=\"category_image\">{category_thumb_image}</div>\n		<div class=\"category_description\">\n		<h2 class=\"category_title\">{category_name}</h2>\n		{category_description}</div>\n		</div>\n	</div>\n	<div class=\"category_box_wrapper\">{product_loop_start}\n	<div class=\"category_box_outside\">\n	<div class=\"category_box_inside\">\n	<table border=\"0\">\n	<tbody>\n	<tr>\n	<td colspan=\"2\">\n	<div class=\"category_product_image\">{product_thumb_image}</div>\n	</td>\n	</tr>\n	<tr>\n	<td colspan=\"2\">\n	<div class=\"category_product_title\">\n	<h3>{product_name}</h3>\n	</div>\n	</td>\n	</tr>\n	<tr>\n	<td>\n	<div class=\"category_product_price\">{product_price}</div>\n	</td>\n	<td>\n	<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n	</td>\n	</tr>\n	</tbody>\n	</table>\n	</div>\n	</div>\n	{product_loop_end}</div>\n{category_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>\n','','','1','','0','0000-00-00 00:00:00'),
('357','change_cart_attribute_template','change_cart_attribute','<table border=\"0\">\n<tbody>\n<tr>\n<th>Change Attribute</th>\n</tr>\n<tr>\n<td>{attribute_template:attributes}</td>\n</tr>\n<tr>\n<td>{apply_button} {cancel_button}</td>\n</tr>\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('358','onestep_checkout','onestep_checkout','<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tbody>\n<tr>\n<td><fieldset class=\"adminform\"><legend>{billing_address_information_lbl}</legend> {edit_billing_address} <br />{billing_address} </fieldset></td>\n</tr>\n<tr>\n<td><fieldset class=\"adminform\"><legend>{shipping_address_information_lbl}</legend> {shipping_address} </fieldset></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{shippingbox_template:shipping_box}</td>\n</tr>\n<tr>\n<td>{shipping_template:shipping_method}</td>\n</tr>\n<tr>\n<td>{payment_template:payment_method}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{checkout_template:checkout}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n','','','0','','0','0000-00-00 00:00:00'),
('359','attributes_listing1','attributewithcart_template','','','','1','','0','0000-00-00 00:00:00'),
('360','checkout','checkout','<h1>{cart_lbl}</h1>\n<div class=\"category_print\">{print}</div>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th>{product_name_lbl}</th> <th> </th><th>{product_price_excl_lbl}</th><th>{quantity_lbl}</th><th>{total_price_exe_lbl}</th>\n</tr>\n</thead>\n<tbody>\n<!-- {product_loop_start} -->\n<div class=\"category_print\">{attribute_price_without_vat}</div>\n<tr class=\"tdborder\">\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartproducttitle\">{product_old_price}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n</td>\n<td>{product_thumb_image}</td>\n<td>{product_price_excl_vat}</td>\n<td>{update_cart}</td>\n<td>{product_total_price_excl_vat}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"50%\" valign=\"top\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td class=\"cart_customer_note\" colspan=\"2\">{customer_note_lbl}<br />{customer_note}</td></tr>\n<tr><td class=\"cart_requisition_number\" colspan=\"2\">{requisition_number_lbl}<br />{requisition_number}</td>\n</tr>\n</tbody>\n</table>\n<br /></td>\n<td width=\"50%\" align=\"right\" valign=\"top\"><br /><br />\n<table class=\"cart_calculations\" border=\"0\" width=\"100%\">\n<tbody>\n<tr class=\"tdborder\">\n<td><b>{product_subtotal_excl_vat_lbl}</b></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount}-->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if}-->\n<tr>\n<td><b>{shipping_with_vat_lbl}</b></td>\n<td width=\"100\">{shipping}</td>\n</tr>\n<!-- {if vat}-->\n<tr>\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} --> \n<!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div>{newsletter_signup_lbl} {newsletter_signup_chk}</div>\n<div>{terms_and_conditions:width=500 height=450}</div>\n<div>{checkout_button}{shop_more}</div></td>\n</tr>\n</tbody>\n</table>','','','0','','0','0000-00-00 00:00:00'),
('370','quotation_request_template','quotation_request','<fieldset class=\"adminform\"><legend>{order_detail_lbl}</legend>\n<table class=\"admintable\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<th width=\"40%\" align=\"left\">{product_name_lbl}</th> <th width=\"35%\"> </th><th width=\"25%\">{quantity_lbl}</th>\n</tr>\n</thead>\n<tbody>\n<!--  {product_loop_start} -->\n<tr>\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n</td>\n<td align=\"center\">{product_thumb_image}</td>\n<td align=\"center\">{update_cart}</td>\n</tr>\n<!--  {product_loop_end} -->\n</tbody>\n</table>\n</fieldset>\n<p>{customer_note_lbl}:{customer_note}</p>\n<fieldset class=\"adminform\"><legend>{billing_address_information_lbl}</legend> {billing_address} {quotation_custom_field_list}</fieldset>\n<table border=\"0\">\n<tbody>\n<tr>\n<td align=\"center\">{cancel_btn}</td>\n<td align=\"center\">{request_quotation_btn}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('371','product_content','product_content_template','<div class=\"mod_redshop_products\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>\n<div class=\"mod_redshop_products_image\">{product_thumb_image}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"mod_redshop_products_title\">\n{product_name}\n</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"mod_redshop_products_price\">{product_price}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"mod_redshop_products_readmore\">{read_more}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div>{attribute_template:attributes}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('372','quotation_cart_template','quotation_cart','','','','1','','0','0000-00-00 00:00:00'),
('450','billing_template','billing_template','<table class=\"admintable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr valign=\"top\">\n<td>{private_billing_template:private_billing_template}{company_billing_template:company_billing_template}</td>\n<td>{account_creation_start}    \n<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"100\" align=\"right\">{username_lbl}</td>\n<td>{username}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{password_lbl}</td>\n<td>{password}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{confirm_password_lbl}</td>\n<td>{confirm_password}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{newsletter_signup_chk}</td>\n<td colspan=\"2\">{newsletter_signup_lbl}</td>\n</tr>\n</tbody>\n</table>\n{account_creation_end}</td>\n</tr>\n<tr>\n<td colspan=\"2\" align=\"right\"><span class=\"required\">*</span>{required_lbl}</td>\n</tr>\n<tr class=\"trshipping_add\">\n<td class=\"tdshipping_add\" colspan=\"2\">{sipping_same_as_billing_lbl} {sipping_same_as_billing}</td>\n</tr>\n</tbody>\n</table>','','','0','','0','0000-00-00 00:00:00'),
('451','shipping_template','shipping_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"100\" align=\"right\">{firstname_st_lbl}</td>\n<td>{firstname_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{lastname_st_lbl}</td>\n<td>{lastname_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{address_st_lbl}</td>\n<td>{address_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{zipcode_st_lbl}</td>\n<td>{zipcode_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{city_st_lbl}</td>\n<td>{city_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_st_txtid}\" style=\"{country_st_style}\">\n<td width=\"100\" align=\"right\">{country_st_lbl}</td>\n<td>{country_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_st_txtid}\" style=\"{state_st_style}\">\n<td width=\"100\" align=\"right\">{state_st_lbl}</td>\n<td>{state_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{phone_st_lbl}</td>\n<td>{phone_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td colspan=\"3\">{extra_field_st_start}\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{extra_field_st}</td>\n</tr>\n</tbody>\n</table>\n{extra_field_st_end}</td>\n</tr>\n</tbody>\n</table>','','','0','','0','0000-00-00 00:00:00'),
('452','shippment_invoice_template','shippment_invoice_template','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{order_information_lbl}</th></tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n<tr>\n<td>{customer_note_lbl} : {customer_note}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{billing_address_information_lbl}</th></tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{shipping_address_information_lbl}</th></tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{order_detail_lbl}</th></tr>\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!--   {product_loop_start} -->\n<tr>\n<td>{product_name}({product_number})<br />{product_userfields}<br />{product_attribute}<br />{product_accessory}</td>\n<td>{product_wrapper}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} --></tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td> </td>\n</tr>\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr align=\"left\">\n<td align=\"left\"><strong>{order_subtotal_lbl} : </strong></td>\n<td align=\"right\">{product_subtotal}</td>\n</tr>\n<!--   {if vat} -->\n<tr align=\"left\">\n<td align=\"left\"><strong>{vat_lbl} : </strong></td>\n<td align=\"right\">{order_tax}</td>\n</tr>\n<!--  {vat end if}--> \n<!--  {if discount} -->\n<tr align=\"left\">\n<td align=\"left\"><strong>{discount_lbl} : </strong></td>\n<td align=\"right\">{order_discount}</td>\n</tr>\n<!--  {discount end if} -->\n<tr align=\"left\">\n<td align=\"left\"><strong>{shipping_lbl} : </strong></td>\n<td align=\"right\">{shipping_excl_vat}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\"><hr /></td>\n</tr>\n<tr align=\"left\">\n<td align=\"left\"><strong>{total_lbl} :</strong></td>\n<td align=\"right\">{order_total}</td>\n</tr>\n<tr align=\"left\">\n<td colspan=\"2\" align=\"left\"><hr /><br /><hr /></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">Payment Status</th></tr>\n<tr>\n<td>{order_payment_status}<br />{shipping_method_lbl}: {shipping_method}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">Order url</th></tr>\n<tr>\n<td>{order_detail_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('460','private_billing_template','private_billing_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"100\" align=\"right\">{email_lbl}:</td>\n<td>{email}</td>\n<td><span class=\"required\">*</span></td>\n</tr><!-- {retype_email_start} -->\n<tr>\n<td width=\"100\" align=\"right\">{retype_email_lbl}</td>\n<td>{retype_email}</td>\n<td><span class=\"required\">*</span></td>\n</tr><!-- {retype_email_end} -->\n<tr>\n<td width=\"100\" align=\"right\">{firstname_lbl}</td>\n<td>{firstname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{lastname_lbl}</td>\n<td>{lastname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{address_lbl}</td>\n<td>{address}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{zipcode_lbl}</td>\n<td>{zipcode}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{city_lbl}</td>\n<td>{city}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_txtid}\" style=\"{country_style}\">\n<td width=\"100\" align=\"right\">{country_lbl}</td>\n<td>{country}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_txtid}\" style=\"{state_style}\">\n<td width=\"100\" align=\"right\">{state_lbl}</td>\n<td>{state}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{phone_lbl}</td>\n<td>{phone}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td colspan=\"3\">{private_extrafield}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('461','company_billing_template','company_billing_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td width=\"100\" align=\"right\">{email_lbl}:</td>\n<td>{email}</td>\n<td><span class=\"required\">*</span></td>\n</tr><!-- {retype_email_start} -->\n<tr>\n<td width=\"100\" align=\"right\">{retype_email_lbl}</td>\n<td>{retype_email}</td>\n<td><span class=\"required\">*</span></td>\n</tr><!-- {retype_email_end} -->\n<tr>\n<td width=\"100\" align=\"right\">{company_name_lbl}</td>\n<td>{company_name}</td>\n<td><span class=\"required\">*</span></td>\n</tr><!-- {vat_number_start} -->\n<tr>\n<td width=\"100\" align=\"right\">{vat_number_lbl}</td>\n<td>{vat_number}</td>\n<td><span class=\"required\">*</span></td>\n</tr><!-- {vat_number_end} -->\n<tr>\n<td width=\"100\" align=\"right\">{firstname_lbl}</td>\n<td>{firstname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{lastname_lbl}</td>\n<td>{lastname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{address_lbl}</td>\n<td>{address}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{zipcode_lbl}</td>\n<td>{zipcode}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{city_lbl}</td>\n<td>{city}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_txtid}\" style=\"{country_style}\">\n<td width=\"100\" align=\"right\">{country_lbl}</td>\n<td>{country}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_txtid}\" style=\"{state_style}\">\n<td width=\"100\" align=\"right\">{state_lbl}</td>\n<td>{state}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{phone_lbl}</td>\n<td>{phone}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{ean_number_lbl}</td>\n<td>{ean_number}</td>\n<td></td>\n</tr>\n<tr>\n<td width=\"100\" align=\"right\">{tax_exempt_lbl}</td>\n<td>{tax_exempt}</td>\n</tr>\n<tr>\n<td colspan=\"3\">{company_extrafield}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('550','stock_note','stock_note','<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"100%\">\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n<td> {order_date_lbl} : {order_date}</td>\n</tr>\n</table>\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tbody>\n<tr style=\"background-color: #d7d7d4\">\n<th align=\"center\">{product_name_lbl}</th>\n<th align=\"center\">{product_number_lbl}</th>\n<th align=\"center\">{product_quantity_lbl}</th>\n</tr>\n<!-- {product_loop_start} -->\n<tr>\n<td  align=\"center\">\n<table>\n<tr><td>{product_name}</td></tr>\n<tr><td>{product_attribute}</td></tr>\n</table>\n</td>\n<td  align=\"center\">{product_number}</td>\n<td  align=\"center\">{product_quantity}</td>\n</tr>\n<!-- {product_loop_end} -->\n</tbody>\n</table>\n','','','1','','0','0000-00-00 00:00:00'),
('551','fs_grid','category','<div>{if subcats}\n<div>\n<div>{category_loop_start}\n<div id=\"categories\">\n<div style=\"float: left; width: 200px;\">\n<div class=\"category_image\">{category_thumb_image}</div>\n<div class=\"category_description\">\n<h2 class=\"category_title\">{category_name}</h2>\n</div>\n<div class=\"category_description\">{category_readmore}</div>\n<div class=\"category_description\">{category_description}</div>\n</div>\n</div>\n{category_loop_end}</div>\n</div>\n{subcats end if}\n<div class=\"category_box_wrapper\">{product_loop_start}\n<div class=\"category_box_outside\">\n<div class=\"category_box_inside\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>\n<div class=\"category_product_image\">{product_thumb_image}</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"category_product_title\">\n<h3>{product_name}</h3>\n</div>\n</td>\n</tr>\n<tr>\n<td>\n<div class=\"category_product_price\">{product_price}</div>\n</td>\n<td>\n<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n</td>\n</tr>\n</tbody>\n</table>{producttag:rs_new_product}\n</div>\n</div>\n{product_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('553','fs_product','product','<div class=\"product\">\n<div class=\"gd_navigation\"><span class=\"gd_nav_left\">{navigation_link_left}</span><span class=\"gd_nav_right\">{navigation_link_right}</span></div>\n<div class=\"redSHOP_product_box clearfix\">\n<div class=\"redSHOP_product_box_left\">\n<div class=\"product_image\">{product_thumb_image}</div>\n<div class=\"product_more_images\">{more_images}</div>\n<div class=\"redSHOP_links\"><span>{ask_question_about_product}</span>\n<div>{manufacturer_link}</div>\n</div>\n</div>\n<div class=\"redSHOP_product_box_right\">\n<div class=\"redSHOP_product_detail_box\">\n<div class=\"product_title clearfix\">\n<h3>{product_name}</h3>\n</div>\n<div class=\"product_desc_short\">{product_s_desc}<span style=\"margin-left: 10px;\">{rs_new_product}</span></div>\n<div class=\"addtocart_box\">\n<div class=\"addtocart_area\">\n<div class=\"cardiv1\">{attribute_template:attributes} {accessory_template:accessory}</div>\n<div class=\"cardiv2\">\n<div class=\"clearfix pricebox\">\n<div class=\"stockholder\">{stock_status:instock:outofstock}</div>\n<div class=\"areacart\">\n<div id=\"product_price\"><span class=\"product_price_val\">{product_price}</span> <span class=\"eks_vat\">{vat_info}</span></div>\n<div class=\"product_addtocart\">\n<div id=\"add_to_cart_all\">{form_addtocart:add_to_cart2}</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div>&nbsp;</div>\n<div class=\"product_box_outside\">\n<div style=\"border-bottom: 1px solid #eee;\">\n<h4>Description</h4>\n</div>\n<div class=\"product_desc\">\n<div class=\"product_desc_full\">{product_desc}</div>\n</div>\n</div>\n<div class=\"gd_header\">\n<h4>Customer Reviews</h4>\n</div>\n<div class=\"gd_content clearfix\">\n<div>{product_rating_summary}</div>\n<div>{form_rating}</div>\n</div>\n<div>&nbsp;</div>\n<p>{related_product:related_products}</p>\n<p>&nbsp;</p>\n<p>{wishlist_button} , Wishlist Button to add product in Wishlist <br />{wishlist_link} , Wishlist Link to add product in Wishlist</p>\n</div>\n<p>{ajaxwishlist_icon}</p>\n<p>&nbsp;</p>\n<p>{compare_products_button} , Compare Product button to compare product<br />{compare_product_div},Display Product in Compare list</p>','','','1','','0','0000-00-00 00:00:00'),
('554','fs_attributes','attribute_template','<div class=\"attributes_box clearfix\">\n<div class=\"attribute_wrapper\">{property_dropdown}{property_image_without_scroller}<br />{subproperty_start}{property_title}{subproperty_dropdown}{subproperty_end}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('555','fs_add_to_cart','add_to_cart','<div class=\"cart-quantity\">{addtocart_quantity}</div>\n<div class=\"product-cart-link\">{addtocart_link}</div>','','','1','','0','0000-00-00 00:00:00'),
('557','fs_related_products','related_product','<div class=\"gd_header\">\n<h4>You may also interested in this/these product(s)</h4>\n</div>\n<div class=\"gd_content clearfix\">\n<div class=\"related_product_wrapper\">{related_product_start}\n<div class=\"related_product_inside\">\n<div class=\"related_product_left\">\n<div class=\"related_product_image\">\n<div class=\"related_product_image_inside\">{relproduct_image}</div>\n</div>\n</div>\n<div class=\"related_product_right\">\n<div class=\"related_product_name\"><a href=\"{read_more_link}\">{relproduct_name}</a></div>\n</div>\n<div class=\"related_product_bottom\">\n<div class=\"related_product_price\">{relproduct_price}</div>\n<div class=\"related_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n</div>\n</div>\n{related_product_end}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('558','fs_compare_product','compare_product','<div><span>{compare_product_heading}</span></div>\n<div><a href=\"{returntocategory_link}\">{returntocategory_name}</a></div>\n<table border=\"1\">\n<tbody>\n<tr><th>&nbsp;</th>\n<td align=\"center\">{expand_collapse}</td>\n</tr>\n<tr><th>Product Name</th>\n<td>{product_name}</td>\n</tr>\n<tr><th>Image</th>\n<td>{product_image}</td>\n</tr>\n<tr><th>Manufacturer</th>\n<td>{manufacturer_name}</td>\n</tr>\n<tr><th>Discount Start </th>\n<td>{discount_start_date}</td>\n</tr>\n<tr><th>Discount End</th>\n<td>{discount_end_date}</td>\n</tr>\n<tr><th>Price</th>\n<td>{product_price}</td>\n</tr>\n<tr><th>Short Desc</th>\n<td>{product_s_desc}</td>\n</tr>\n<tr><th>Desc</th>\n<td>{product_desc}</td>\n</tr>\n<tr><th>Rating</th>\n<td>{product_rating_summary}</td>\n</tr>\n<tr><th>Delivery Time</th>\n<td>{product_delivery_time}</td>\n</tr>\n<tr><th>Product Number</th>\n<td>{product_number}</td>\n</tr>\n<tr><th>Stock</th>\n<td>{products_in_stock}</td>\n</tr>\n<tr><th>Stock</th>\n<td>{product_stock_amount_image}</td>\n</tr>\n<tr><th>Weight</th>\n<td>{product_weight}</td>\n</tr>\n<tr><th>Length</th>\n<td>{product_length}</td>\n</tr>\n<tr><th>Height</th>\n<td>{product_height}</td>\n</tr>\n<tr><th>Width</th>\n<td>{product_width}</td>\n</tr>\n<tr><th>Availability Date</th>\n<td>{product_availability_date}</td>\n</tr>\n<tr><th>Volume</th>\n<td>{product_volume}</td>\n</tr>\n<tr><th>Category</th>\n<td>{product_category}</td>\n</tr>\n<tr><th>&nbsp;</th>\n<td>{remove}</td>\n</tr>\n<tr><th>&nbsp;</th>\n<td>{add_to_cart}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('559','fs_wishlist_list','wishlist_template','<div style=\"float: right;\">{mail_link}</div>\n<p>{product_loop_start}</p>\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\">\n<tbody>\n<tr valign=\"top\">\n<td width=\"40%\">\n<div style=\"float: left; width: 195px; height: 230px; text-align: center;\">{product_thumb_image}\n<div>{product_name}</div>\n<div>{product_price}</div>\n<div>{form_addtocart:add_to_cart1}</div>\n<div>&nbsp;</div>\n<div>{remove_product_link}</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div>&nbsp;</div>\n<table style=\"width: 100%;\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tbody>\n<tr>\n<td></td>\n<td align=\"center\" valign=\"top\"><br /><br /></td>\n</tr>\n</tbody>\n</table>\n<p>{product_loop_end}</p>\n<div style=\"float: right;\">{back_link}</div>','','','1','','0','0000-00-00 00:00:00'),
('560','fs_my_account_template','account_template','<table width=\"100%\" border=\"0\">\n<tbody>\n<tr>\n<td>{welcome_introtext}</td>\n</tr>\n<tr>\n<td class=\"account_billinginfo\">\n<table width=\"100%\" border=\"0\" cellspacing=\"10\" cellpadding=\"10\">\n<tbody>\n<tr valign=\"top\">\n<td width=\"40%\">{account_image}<strong>{account_title}</strong><br /><br />\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td class=\"account_label\">{fullname_lbl}</td>\n<td class=\"account_field\">{fullname}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{state_lbl}</td>\n<td class=\"account_field\">{state}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{country_lbl}</td>\n<td class=\"account_field\">{country}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{vatnumber_lbl}</td>\n<td class=\"account_field\">{vatnumber}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{ean_number_lbl}</td>\n<td class=\"account_field\">{ean_number}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{email_lbl}</td>\n<td class=\"account_field\">{email}</td>\n</tr>\n<tr>\n<td class=\"account_label\">{company_name_lbl}</td>\n<td class=\"account_field\">{company_name}</td>\n</tr>\n<tr>\n<td colspan=\"2\">{edit_account_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{order_image}<strong>{order_title}</strong></td>\n</tr>\n<!-- {order_loop_start} -->\n<tr>\n<td>{order_index} {order_id} {order_detail_link}</td>\n</tr>\n<!-- {order_loop_end} -->\n<tr>\n<td>{more_orders}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"account_shippinginfo\">{shipping_image}<strong>{shipping_title}</strong> <br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_shipping_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{quotation_image}<strong>{quotation_title}</strong></td>\n</tr>\n<!-- {quotation_loop_start} -->\n<tr>\n<td>{quotation_index} {quotation_id} {quotation_detail_link}</td>\n</tr>\n<!-- {quotation_loop_end} --></tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{product_serial_image}<strong>{product_serial_title}</strong><br /><br />\n<table border=\"0\">\n<tbody><!-- {product_serial_loop_start} -->\n<tr>\n<td>{product_name} {product_serial_number}</td>\n</tr>\n<!-- {product_serial_loop_end} --></tbody>\n</table>\n</td>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{coupon_image}<strong>{coupon_title}</strong></td>\n</tr>\n<!--  {coupon_loop_start} -->\n<tr>\n<td>{coupon_code_lbl} {coupon_code}</td>\n</tr>\n<tr>\n<td>{coupon_value_lbl} {coupon_value}</td>\n</tr>\n<!-- {coupon_loop_end} --></tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{wishlist_image}<strong>{wishlist_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_wishlist_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>{compare_image}<strong>{compare_title}</strong> <br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_compare_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{logout_link}</td>\n<td>{tag_image}<strong>{tag_title}</strong><br /><br />\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{edit_tag_link}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','','1','','361','2013-10-24 04:21:53'),
('561','fs_manufacturer_products','manufacturer_products','<h1 class=\"manufacturer_name\">{manufacturer_name}</h1>\n<div class=\"manufacturer_image\">{manufacturer_image}</div>\n<div class=\"manufacturer_description\">{manufacturer_description}</div>\n<div class=\"category_box_wrapper\">{product_loop_start}\n<div class=\"category_box_outside\">\n<div class=\"category_box_inside\">\n<div class=\"category_product_image\">{product_thumb_image}</div>\n<div class=\"category_product_name\">{product_name}</div>\n<div class=\"category_product_desc\">{product_s_desc}</div>\n<div class=\"category_product_price\">{product_price_lbl}: {product_price}</div>\n<div class=\"category_product_addtocart\">{form_addtocart:add_to_cart1}</div>\n<div class=\"category_product_readmore\">{read_more}</div>\n</div>\n</div>\n{product_loop_end}</div>\n<div class=\"category_pagination\">{pagination}</div>','','','1','','0','0000-00-00 00:00:00'),
('562','fs_accessory','accessory_template','<div class=\"accessory_box\"><strong>Accessories</strong>\n<div class=\"accessory_product_wrapper\">\n<table class=\"accessory_product\" cellspacing=\"0\" cellpadding=\"0\"><!-- {accessory_product_start}  -->\n<tbody>\n<tr>\n<td>{accessory_image}</td>\n<td>{accessory_add_chkbox}</td>\n<td>{accessory_title}</td>\n<td align=\"right\">{accessory_price}</td>\n</tr>\n<!-- {accessory_product_end} --></tbody>\n</table>\n</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('563','fs_cart','cart','<h1>{cart_lbl}</h1>\n<table class=\"cartproducts\">\n<thead>\n<tr><th class=\"cart_product_thumb_image\"> </th><th class=\"cart_product_name\">{product_name_lbl}</th><th class=\"cart_product_price\">\n<table width=\"100%\">\n<tbody>\n<tr><th class=\"tdproduct_price\">{product_price_excl_lbl}</th><th class=\"tdupdatecart\">{quantity_lbl}</th><th class=\"tdproduct_total\">{total_price_exe_lbl}</th><th class=\"tdremove_product\"> </th></tr>\n</tbody>\n</table>\n</th></tr>\n</thead>\n<tbody><!-- {product_loop_start} -->\n<tr>\n<td class=\"cart_product_thumb_image\">{product_thumb_image}</td>\n<td class=\"cart_product_name\">{attribute_price_with_vat}\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n<div>{attribute_change}</div>\n</td>\n<td class=\"cart_product_price\">\n<table width=\"100%\">\n<tbody>\n<tr>\n<td class=\"tdproduct_price\">{product_price_excl_vat}</td>\n<td class=\"tdupdatecart\">{update_cart}</td>\n<td class=\"tdproduct_total\">{product_total_price_excl_vat}</td>\n<td class=\"tdremove_product\">{remove_product}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<!-- {product_loop_end} --></tbody>\n</table>\n<table class=\"carttotal\">\n<tbody>\n<tr>\n<td class=\"carttotal_left\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{update}</td>\n<td>{empty_cart}</td>\n</tr>\n<tr>\n<td class=\"cart_discount_form\" colspan=\"2\">{discount_form_lbl}{coupon_code_lbl}{discount_form}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"carttotal_right\">\n<table class=\"cart_calculations\" width=\"100%\" border=\"0\">\n<tbody>\n<tr>\n<td><strong>{product_subtotal_excl_vat_lbl}:</strong></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount}-->\n<tr>\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if} -->\n<tr>\n<td><strong>{shipping_with_vat_lbl}:</strong></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<!-- {if vat} -->\n<tr>\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} --> <!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr class=\"totalall\">\n<td><strong>{total_lbl}:</strong></td>\n<td>{total}</td>\n</tr>\n<tr>\n<td colspan=\"2\">{checkout_button}\n<div class=\"shop_more\">{shop_more}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('564','fs_checkout','checkout','<h1>{cart_lbl}</h1>\n<div class=\"category_print\">{print}</div>\n<p>{attribute_price_without_vat}</p>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr><th>{product_name_lbl}</th><th> </th><th>{product_price_excl_lbl}</th><th>{quantity_lbl}</th><th>{total_price_exe_lbl}</th></tr>\n</thead>\n<tbody><!-- {product_loop_start} -->\n<tr class=\"tdborder\">\n<td>\n<div class=\"cartproducttitle\">{product_name}</div>\n<div class=\"cartproducttitle\">{product_old_price}</div>\n<div class=\"cartattribut\">{product_attribute}</div>\n<div class=\"cartaccessory\">{product_accessory}</div>\n<div class=\"cartwrapper\">{product_wrapper}</div>\n<div class=\"cartuserfields\">{product_userfields}</div>\n</td>\n<td>{product_thumb_image}</td>\n<td>{product_price_excl_vat}</td>\n<td>{update_cart}</td>\n<td>{product_total_price_excl_vat}</td>\n</tr>\n<!-- {product_loop_end} --></tbody>\n</table>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"top\" width=\"50%\">\n<table border=\"0\">\n<tbody>\n<tr>\n<td class=\"cart_customer_note\" colspan=\"2\">{customer_note_lbl}<br />{customer_note}</td>\n</tr>\n<tr>\n<td class=\"cart_requisition_number\" colspan=\"2\">{requisition_number_lbl}<br />{requisition_number}</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td align=\"right\" valign=\"top\" width=\"50%\"><br /><br />\n<table class=\"cart_calculations\" width=\"100%\" border=\"0\">\n<tbody>\n<tr class=\"tdborder\">\n<td><strong>{product_subtotal_excl_vat_lbl}</strong></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount}-->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if}-->\n<tr>\n<td><strong>{shipping_with_vat_lbl}</strong></td>\n<td width=\"100\">{shipping}</td>\n</tr>\n<!-- {if vat}-->\n<tr>\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} --> <!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div>{newsletter_signup_lbl} {newsletter_signup_chk}</div>\n<div>{terms_and_conditions:width=500 height=450}</div>\n<div>{checkout_button}{shop_more}</div>\n</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('565','fs_onestep_checkout','onestep_checkout','<table width=\"100%\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td><fieldset class=\"adminform\"><legend>{billing_address_information_lbl}</legend> {edit_billing_address} <br />{billing_address}</fieldset></td>\n</tr>\n<tr>\n<td><fieldset class=\"adminform\"><legend>{shipping_address_information_lbl}</legend> {shipping_address}</fieldset></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{shippingbox_template:shipping_box}</td>\n</tr>\n<tr>\n<td>{shipping_template:shipping_method}</td>\n</tr>\n<tr>\n<td>{payment_template:payment_method}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{checkout_template:checkout}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('567','fs_empty_cart','empty_cart','<p>The Cart is empty.</p>','','','1','','0','0000-00-00 00:00:00'),
('568','fs_order_receipt','order_receipt','<div class=\"product_print\">{print}</div>\n<table class=\"tdborder\" style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr><th>{product_name_lbl}</th><th> </th><th>{price_lbl}</th><th>{quantity_lbl}</th><th>{total_price_lbl}</th></tr>\n<!--  {product_loop_start} -->\n<tr>\n<td>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}{product_wrapper}</td>\n<td>{product_thumb_image}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td>{product_total_price}</td>\n</tr>\n<!--  {product_loop_end} --></tbody>\n</table>\n<p><br /><br /></p>\n<table class=\"cart_calculations\" border=\"1\">\n<tbody>\n<tr class=\"tdborder\">\n<td><strong>Product Subtotal:</strong></td>\n<td width=\"100\">{product_subtotal}</td>\n<td><strong>Product Subtotal excl vat:</strong></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<tr>\n<td><strong>Shipping with vat:</strong></td>\n<td width=\"100\">{shipping}</td>\n<td><strong>Shipping excl vat:</strong></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<!-- {if discount} -->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount_excl_vat}</td>\n</tr>\n<!-- {discount end if} -->\n<tr>\n<td><strong>{totalpurchase_lbl}:</strong></td>\n<td width=\"100\">{order_subtotal}</td>\n<td><strong>{subtotal_excl_vat_lbl} :</strong></td>\n<td width=\"100\">{order_subtotal_excl_vat}</td>\n</tr>\n<!-- {if vat} -->\n<tr class=\"tdborder\">\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n<td>{vat_lbl}</td>\n<td width=\"100\">{sub_total_vat}</td>\n</tr>\n<!-- {vat end if} --> <!-- {if payment_discount}-->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if}-->\n<tr class=\"tdborder\">\n<td><strong>{shipping_lbl}</strong></td>\n<td width=\"100\">{shipping}</td>\n<td><strong>{shipping_lbl}</strong></td>\n<td width=\"100\">{shipping_excl_vat}</td>\n</tr>\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{order_total}</div>\n</td>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{total_excl_vat}</div>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">\n<p>{shipping_method_lbl} <strong>{shipping_method}</strong></p>\n<p>{payment_status}</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\">{billing_address}</td>\n</tr>\n<tr>\n<td colspan=\"4\">{shipping_address}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('569','fs_order_detail','order_detail','<div class=\"product_print\">{print}</div>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\n<tbody>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{discount_type_lbl}</th></tr>\n<tr>\n<td>{discount_type}</td>\n</tr>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{order_information_lbl}</th></tr>\n<tr>\n<td>{order_id_lbl} : {order_id}</td>\n</tr>\n<tr>\n<td>{order_number_lbl} : {order_number}</td>\n</tr>\n<tr>\n<td>{order_date_lbl} : {order_date}</td>\n</tr>\n<tr>\n<td>{order_status_lbl} : {order_status}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{billing_address_information_lbl}</th></tr>\n<tr>\n<td>{billing_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{shipping_address_information_lbl}</th></tr>\n<tr>\n<td>{shipping_address}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\n<tbody>\n<tr style=\"background-color: #cccccc;\"><th align=\"left\">{order_detail_lbl}</th></tr>\n<tr>\n<td>\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"2\" cellpadding=\"2\">\n<tbody>\n<tr>\n<td>{copy_orderitem_lbl}</td>\n<td>{product_name_lbl}</td>\n<td>{note_lbl}</td>\n<td>{price_lbl}</td>\n<td>{quantity_lbl}</td>\n<td align=\"right\">{total_price_lbl}</td>\n</tr>\n<!-- {product_loop_start} -->\n<tr>\n<td>{copy_orderitem}</td>\n<td>{product_name}<br />{product_attribute}{product_accessory}{product_userfields}</td>\n<td>{product_wrapper}</td>\n<td>{product_price}</td>\n<td>{product_quantity}</td>\n<td align=\"right\">{product_total_price}</td>\n</tr>\n<!-- {product_loop_end} --></tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td>{customer_note_lbl}: {customer_note}</td>\n</tr>\n<tr>\n<td>{requisition_number_lbl}: {requisition_number}</td>\n</tr>\n<tr>\n<td>\n<table class=\"cart_calculations\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr class=\"tdborder\">\n<td><strong>Product Subtotal excl vat:</strong></td>\n<td width=\"100\">{product_subtotal_excl_vat}</td>\n</tr>\n<!-- {if discount} -->\n<tr class=\"tdborder\">\n<td>{discount_lbl}</td>\n<td width=\"100\">{discount}</td>\n</tr>\n<!-- {discount end if} -->\n<tr>\n<td><strong>Shipping with vat:</strong></td>\n<td width=\"100\">{shipping}</td>\n</tr>\n<!-- {if vat}-->\n<tr class=\"tdborder\">\n<td>{vat_lbl}</td>\n<td width=\"100\">{tax}</td>\n</tr>\n<!-- {vat end if} --> <!-- {if payment_discount} -->\n<tr>\n<td>{payment_discount_lbl}</td>\n<td width=\"100\">{payment_order_discount}</td>\n</tr>\n<!-- {payment_discount end if} -->\n<tr>\n<td>\n<div class=\"singleline\"><strong>{total_lbl}:</strong></div>\n</td>\n<td width=\"100\">\n<div class=\"singleline\">{order_total}</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td align=\"left\">{reorder_button}</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('570','fs_billing_template','billing_template','<table class=\"admintable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr valign=\"top\">\n<td>{private_billing_template:private_billing_template}{company_billing_template:company_billing_template}</td>\n<td>{account_creation_start}\n<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td align=\"right\" width=\"100\">{username_lbl}</td>\n<td>{username}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{password_lbl}</td>\n<td>{password}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{confirm_password_lbl}</td>\n<td>{confirm_password}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{newsletter_signup_chk}</td>\n<td colspan=\"2\">{newsletter_signup_lbl}</td>\n</tr>\n</tbody>\n</table>\n{account_creation_end}</td>\n</tr>\n<tr>\n<td colspan=\"2\" align=\"right\"><span class=\"required\">*</span>{required_lbl}</td>\n</tr>\n<tr class=\"trshipping_add\">\n<td class=\"tdshipping_add\" colspan=\"2\">{sipping_same_as_billing_lbl} {sipping_same_as_billing}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('571','fs_private_billing_template','private_billing_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td align=\"right\" width=\"100\">{email_lbl}:</td>\n<td>{email}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<!-- {retype_email_start} -->\n<tr>\n<td align=\"right\" width=\"100\">{retype_email_lbl}</td>\n<td>{retype_email}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<!-- {retype_email_end} -->\n<tr>\n<td align=\"right\" width=\"100\">{firstname_lbl}</td>\n<td>{firstname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{lastname_lbl}</td>\n<td>{lastname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{address_lbl}</td>\n<td>{address}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{zipcode_lbl}</td>\n<td>{zipcode}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{city_lbl}</td>\n<td>{city}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_txtid}\">\n<td align=\"right\" width=\"100\">{country_lbl}</td>\n<td>{country}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_txtid}\">\n<td align=\"right\" width=\"100\">{state_lbl}</td>\n<td>{state}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{phone_lbl}</td>\n<td>{phone}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td colspan=\"3\">{private_extrafield}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('572','fs_company_billing_template','company_billing_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td align=\"right\" width=\"100\">{email_lbl}:</td>\n<td>{email}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<!-- {retype_email_start} -->\n<tr>\n<td align=\"right\" width=\"100\">{retype_email_lbl}</td>\n<td>{retype_email}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<!-- {retype_email_end} -->\n<tr>\n<td align=\"right\" width=\"100\">{company_name_lbl}</td>\n<td>{company_name}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<!-- {vat_number_start} -->\n<tr>\n<td align=\"right\" width=\"100\">{vat_number_lbl}</td>\n<td>{vat_number}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<!-- {vat_number_end} -->\n<tr>\n<td align=\"right\" width=\"100\">{firstname_lbl}</td>\n<td>{firstname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{lastname_lbl}</td>\n<td>{lastname}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{address_lbl}</td>\n<td>{address}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{zipcode_lbl}</td>\n<td>{zipcode}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{city_lbl}</td>\n<td>{city}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_txtid}\">\n<td align=\"right\" width=\"100\">{country_lbl}</td>\n<td>{country}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_txtid}\">\n<td align=\"right\" width=\"100\">{state_lbl}</td>\n<td>{state}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{phone_lbl}</td>\n<td>{phone}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{ean_number_lbl}</td>\n<td>{ean_number}</td>\n<td> </td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{tax_exempt_lbl}</td>\n<td>{tax_exempt}</td>\n</tr>\n<tr>\n<td colspan=\"3\">{company_extrafield}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('573','fs_shipping_template','shipping_template','<table class=\"admintable\" border=\"0\">\n<tbody>\n<tr>\n<td align=\"right\" width=\"100\">{firstname_st_lbl}</td>\n<td>{firstname_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{lastname_st_lbl}</td>\n<td>{lastname_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{address_st_lbl}</td>\n<td>{address_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{zipcode_st_lbl}</td>\n<td>{zipcode_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{city_st_lbl}</td>\n<td>{city_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{country_st_txtid}\">\n<td align=\"right\" width=\"100\">{country_st_lbl}</td>\n<td>{country_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr id=\"{state_st_txtid}\">\n<td align=\"right\" width=\"100\">{state_st_lbl}</td>\n<td>{state_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td align=\"right\" width=\"100\">{phone_st_lbl}</td>\n<td>{phone_st}</td>\n<td><span class=\"required\">*</span></td>\n</tr>\n<tr>\n<td colspan=\"3\">{extra_field_st_start}\n<table border=\"0\">\n<tbody>\n<tr>\n<td>{extra_field_st}</td>\n</tr>\n</tbody>\n</table>\n{extra_field_st_end}</td>\n</tr>\n</tbody>\n</table>','','','1','','0','0000-00-00 00:00:00'),
('574','fs_ajax_cart_detail_box','ajax_cart_detail_box','<div id=\"ajax-cart\">\n<div id=\"ajax-cart-label\">\n<h3>Add to Cart</h3>\n</div>\n<div id=\"ajax-cart-attr\">{attribute_template:fs_attributes}</div>\n<div id=\"ajax-cart-access\">{accessory_template:fs_accessory}</div>\n{if product_userfield}\n<div id=\"ajax-cart-user\">{userfield-test}</div>\n{product_userfield end if}\n<div id=\"ajax-cart-label\">{form_addtocart:add_to_cart2}</div>\n</div>','','','1','','0','0000-00-00 00:00:00'),
('575','fs_ajax_cart_box','ajax_cart_box','<div id=\"ajax_cart_wrapper\">\n<div id=\"ajax_cart_text\">{show_cart_text}</div>\n<div id=\"ajax_cart_button_wrapper\">\n<div id=\"ajax_cart_button_inside\">\n<div id=\"ajax_cart_continue_button\">{continue_shopping_button}</div>\n<div id=\"ajax_cart_show_button\">{show_cart_button}</div>\n</div>\n</div>\n</div>','','','1','','0','0000-00-00 00:00:00');

CREATE TABLE `#__redshop_textlibrary` (
  `textlibrary_id` int(11) NOT NULL AUTO_INCREMENT,
  `text_name` varchar(255) DEFAULT NULL,
  `text_desc` varchar(255) DEFAULT NULL,
  `text_field` text,
  `section` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`textlibrary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP TextLibrary';



CREATE TABLE `#__redshop_usercart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  `mdate` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP User Cart Item';



CREATE TABLE `#__redshop_usercart_accessory_item` (
  `cart_acc_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_item_id` int(11) NOT NULL,
  `accessory_id` int(11) NOT NULL,
  `accessory_quantity` int(11) NOT NULL,
  PRIMARY KEY (`cart_acc_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP User Cart Accessory Item';



CREATE TABLE `#__redshop_usercart_attribute_item` (
  `cart_att_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_item_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section` varchar(25) NOT NULL,
  `parent_section_id` int(11) NOT NULL,
  `is_accessory_att` tinyint(4) NOT NULL,
  PRIMARY KEY (`cart_att_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='redSHOP User cart Attribute Item';

INSERT INTO #__redshop_usercart_attribute_item VALUES
('1','0','14','attribute','28','0'),
('2','0','22','property','14','0'),
('3','0','14','attribute','28','0'),
('4','0','22','property','14','0');

CREATE TABLE `#__redshop_usercart_item` (
  `cart_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_idx` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_wrapper_id` int(11) NOT NULL,
  `product_subscription_id` int(11) NOT NULL,
  `giftcard_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP User Cart Item';



CREATE TABLE `#__redshop_users_info` (
  `users_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `address_type` varchar(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `vat_number` varchar(250) NOT NULL,
  `tax_exempt` tinyint(4) NOT NULL,
  `shopper_group_id` int(11) NOT NULL,
  `country_code` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state_code` varchar(11) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `tax_exempt_approved` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `is_company` tinyint(4) NOT NULL,
  `ean_number` varchar(250) NOT NULL,
  `braintree_vault_number` varchar(255) NOT NULL,
  `veis_vat_number` varchar(255) NOT NULL,
  `veis_status` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `requesting_tax_exempt` tinyint(4) NOT NULL,
  `accept_terms_conditions` tinyint(4) NOT NULL,
  PRIMARY KEY (`users_info_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Users Information';



CREATE TABLE `#__redshop_wishlist` (
  `wishlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `cdate` double NOT NULL,
  PRIMARY KEY (`wishlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP wishlist';



CREATE TABLE `#__redshop_wishlist_product` (
  `wishlist_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cdate` int(11) NOT NULL,
  PRIMARY KEY (`wishlist_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Wishlist Product';



CREATE TABLE `#__redshop_wishlist_userfielddata` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `userfielddata` text NOT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Wishlist Product userfielddata';



CREATE TABLE `#__redshop_wrapper` (
  `wrapper_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `wrapper_name` varchar(255) NOT NULL,
  `wrapper_price` double NOT NULL,
  `wrapper_image` varchar(255) NOT NULL,
  `createdate` int(11) NOT NULL,
  `wrapper_use_to_all` tinyint(4) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`wrapper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP Wrapper';



CREATE TABLE `#__redshop_xml_export` (
  `xmlexport_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `display_filename` varchar(255) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `section_type` varchar(255) NOT NULL,
  `auto_sync` tinyint(4) NOT NULL,
  `sync_on_request` tinyint(4) NOT NULL,
  `auto_sync_interval` int(11) NOT NULL,
  `xmlexport_date` int(11) NOT NULL,
  `xmlexport_filetag` text NOT NULL,
  `element_name` varchar(255) DEFAULT NULL,
  `published` tinyint(4) NOT NULL,
  `use_to_all_users` tinyint(4) NOT NULL,
  `xmlexport_billingtag` text NOT NULL,
  `billing_element_name` varchar(255) NOT NULL,
  `xmlexport_shippingtag` text NOT NULL,
  `shipping_element_name` varchar(255) NOT NULL,
  `xmlexport_orderitemtag` text NOT NULL,
  `orderitem_element_name` varchar(255) NOT NULL,
  `xmlexport_stocktag` text NOT NULL,
  `stock_element_name` varchar(255) NOT NULL,
  `xmlexport_prdextrafieldtag` text NOT NULL,
  `prdextrafield_element_name` varchar(255) NOT NULL,
  `xmlexport_on_category` text NOT NULL,
  PRIMARY KEY (`xmlexport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Export';



CREATE TABLE `#__redshop_xml_export_ipaddress` (
  `xmlexport_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `xmlexport_id` int(11) NOT NULL,
  `access_ipaddress` varchar(255) NOT NULL,
  PRIMARY KEY (`xmlexport_ip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Export Ip Address';



CREATE TABLE `#__redshop_xml_export_log` (
  `xmlexport_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `xmlexport_id` int(11) NOT NULL,
  `xmlexport_filename` varchar(255) NOT NULL,
  `xmlexport_date` int(11) NOT NULL,
  PRIMARY KEY (`xmlexport_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Export log';



CREATE TABLE `#__redshop_xml_import` (
  `xmlimport_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `display_filename` varchar(255) NOT NULL,
  `xmlimport_url` varchar(255) NOT NULL,
  `section_type` varchar(255) NOT NULL,
  `auto_sync` tinyint(4) NOT NULL,
  `sync_on_request` tinyint(4) NOT NULL,
  `auto_sync_interval` int(11) NOT NULL,
  `override_existing` tinyint(4) NOT NULL,
  `add_prefix_for_existing` varchar(50) NOT NULL,
  `xmlimport_date` int(11) NOT NULL,
  `xmlimport_filetag` text NOT NULL,
  `xmlimport_billingtag` text NOT NULL,
  `xmlimport_shippingtag` text NOT NULL,
  `xmlimport_orderitemtag` text NOT NULL,
  `xmlimport_stocktag` text NOT NULL,
  `xmlimport_prdextrafieldtag` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `element_name` varchar(255) NOT NULL,
  `billing_element_name` varchar(255) NOT NULL,
  `shipping_element_name` varchar(255) NOT NULL,
  `orderitem_element_name` varchar(255) NOT NULL,
  `stock_element_name` varchar(255) NOT NULL,
  `prdextrafield_element_name` varchar(255) NOT NULL,
  `xmlexport_billingtag` text NOT NULL,
  `xmlexport_shippingtag` text NOT NULL,
  `xmlexport_orderitemtag` text NOT NULL,
  PRIMARY KEY (`xmlimport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Import';



CREATE TABLE `#__redshop_xml_import_log` (
  `xmlimport_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `xmlimport_id` int(11) NOT NULL,
  `xmlimport_filename` varchar(255) NOT NULL,
  `xmlimport_date` int(11) NOT NULL,
  PRIMARY KEY (`xmlimport_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='redSHOP XML Import log';



CREATE TABLE `#__redshop_zipcode` (
  `zipcode_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(10) NOT NULL DEFAULT '',
  `state_code` varchar(10) NOT NULL DEFAULT '',
  `city_name` varchar(64) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `zipcodeto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zipcode_id`),
  KEY `zipcode` (`zipcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;



CREATE TABLE `#__redslider_sliders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '1',
  `language` char(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foreignkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO #__redslider_sliders VALUES
('5','Slider','slider','1','1','1','0','0000-00-00 00:00:00','1','*','0','','');

CREATE TABLE `#__redslider_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sliderid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `template_type` varchar(255) NOT NULL,
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `foreignkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`sliderid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`sliderid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO #__redslider_slides VALUES
('37','5','0','Slide 1','slide-1','','0000-00-00 00:00:00','0','1','0','0000-00-00 00:00:00','1','0','1','1','standard_template','Standard Template','{\"background_image\":\"images\\/slideshow-bg\\/banner-bg1.jpg\",\"caption\":\"\",\"description\":\"\",\"link\":\"http:\\/\\/#\",\"link_text\":\"\",\"class_sfx\":\"\"}','*','0000-00-00 00:00:00','0','','0000-00-00 00:00:00','0','','','','0','','0000-00-00 00:00:00','0000-00-00 00:00:00',''),
('38','5','0','Slide 2','slide-2','','0000-00-00 00:00:00','0','1','0','0000-00-00 00:00:00','2','0','1','1','standard_template','Standard Template','{\"background_image\":\"images\\/slideshow-bg\\/banner-bg2.jpg\",\"caption\":\"\",\"description\":\"\",\"link\":\"http:\\/\\/http:\\/\\/#\",\"link_text\":\"\",\"class_sfx\":\"\"}','*','0000-00-00 00:00:00','0','','0000-00-00 00:00:00','0','','','','0','','0000-00-00 00:00:00','0000-00-00 00:00:00',''),
('39','5','0','Slide 3','slide-3','','0000-00-00 00:00:00','0','1','0','0000-00-00 00:00:00','3','0','1','1','standard_template','Standard Template','{\"background_image\":\"images\\/slideshow-bg\\/banner-bg3.jpg\",\"caption\":\"\",\"description\":\"\",\"link\":\"http:\\/\\/http:\\/\\/#\",\"link_text\":\"\",\"class_sfx\":\"\"}','*','0000-00-00 00:00:00','0','','0000-00-00 00:00:00','0','','','','0','','0000-00-00 00:00:00','0000-00-00 00:00:00','');

CREATE TABLE `#__rwf_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Configuration for redFORM';

INSERT INTO #__rwf_configuration VALUES
('1','phplist_path','lists');

CREATE TABLE `#__rwf_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL DEFAULT '',
  `field_header` varchar(255) NOT NULL DEFAULT '',
  `fieldtype` varchar(30) NOT NULL DEFAULT 'textfield',
  `published` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_id` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `redmember_field` varchar(20) DEFAULT NULL,
  `validate` tinyint(1) NOT NULL DEFAULT '0',
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `default` varchar(255) DEFAULT NULL,
  `tooltip` varchar(255) DEFAULT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Fields for redFORM';

INSERT INTO #__rwf_fields VALUES
('1','Name','Name','textfield','1','0','0000-00-00 00:00:00','1','1','','1','0','0','','','{\"class\":\"\",\"size\":\"25\",\"maxlength\":\"250\"}'),
('2','Company Name','Company Name','textfield','1','0','0000-00-00 00:00:00','1','2','','1','0','0','','','{\"class\":\"\",\"size\":\"25\",\"maxlength\":\"250\"}'),
('3','Phone number','Phone number','textfield','1','0','0000-00-00 00:00:00','1','3','','1','0','0','','','{\"class\":\"\",\"size\":\"25\",\"maxlength\":\"250\"}'),
('4','Email','Email','textfield','1','0','0000-00-00 00:00:00','1','4','','1','0','0','','','{\"class\":\"\",\"size\":\"25\",\"maxlength\":\"250\"}'),
('5','Message','Message','textarea','1','0','0000-00-00 00:00:00','1','5','','1','0','0','','','{\"class\":\"\",\"cols\":\"25\",\"rows\":\"6\"}');

CREATE TABLE `#__rwf_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formname` varchar(100) NOT NULL DEFAULT 'NoName',
  `startdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` int(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT '0000-00-00 00:00:00',
  `submissionsubject` varchar(255) NOT NULL DEFAULT '',
  `submissionbody` text NOT NULL,
  `showname` int(1) NOT NULL DEFAULT '0',
  `classname` varchar(45) DEFAULT NULL,
  `contactpersoninform` tinyint(1) NOT NULL DEFAULT '0',
  `contactpersonemail` varchar(255) DEFAULT NULL,
  `contactpersonfullpost` int(11) NOT NULL DEFAULT '0',
  `submitterinform` tinyint(1) NOT NULL DEFAULT '0',
  `submitnotification` tinyint(1) NOT NULL DEFAULT '0',
  `redirect` varchar(300) DEFAULT NULL,
  `notificationtext` text NOT NULL,
  `formexpires` tinyint(1) NOT NULL DEFAULT '1',
  `virtuemartactive` tinyint(1) NOT NULL DEFAULT '0',
  `vmproductid` int(11) DEFAULT NULL,
  `vmitemid` int(4) NOT NULL DEFAULT '1',
  `captchaactive` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `activatepayment` tinyint(2) NOT NULL DEFAULT '0',
  `show_js_price` tinyint(2) NOT NULL DEFAULT '1',
  `currency` varchar(3) DEFAULT NULL,
  `paymentprocessing` text,
  `paymentaccepted` text,
  `contactpaymentnotificationsubject` text,
  `contactpaymentnotificationbody` text,
  `submitterpaymentnotificationsubject` text,
  `submitterpaymentnotificationbody` text,
  `cond_recipients` text,
  PRIMARY KEY (`id`),
  KEY `vmproductid` (`vmproductid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Forms for redFORM';

INSERT INTO #__rwf_forms VALUES
('1','Contact','2012-05-14 09:15:56','2012-05-14 09:15:56','1','0','0000-00-00 00:00:00','','','0','','0','','0','0','0','','','0','0','','0','0','1','0','0','','','','A new payment was received for form %s','<p>A new payment was received for form %s<br />See the list of submitters here : %s</p>','Your payment was received for %s.','<p>Your payment for %s is confirmed.</p>','');

CREATE TABLE `#__rwf_forms_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_1` text,
  `field_2` text,
  `field_3` text,
  `field_4` text,
  `field_5` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='redFORMS Form 1';



CREATE TABLE `#__rwf_mailinglists` (
  `field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `mailinglist` varchar(100) NOT NULL,
  `listnames` text NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Mailinglists for redFORM';



CREATE TABLE `#__rwf_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submit_key` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `gateway` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `paid` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `submit_key` (`submit_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='logging gateway notifications';



CREATE TABLE `#__rwf_submitters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `submission_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `integration` varchar(30) DEFAULT NULL,
  `xref` int(11) NOT NULL DEFAULT '0',
  `answer_id` int(11) NOT NULL DEFAULT '0',
  `submitternewsletter` int(11) NOT NULL DEFAULT '0',
  `rawformdata` text NOT NULL,
  `submit_key` varchar(45) NOT NULL,
  `uniqueid` varchar(50) DEFAULT NULL,
  `waitinglist` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmdate` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `event_id` (`xref`),
  KEY `answer_id` (`answer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Submitters for redFORM';



CREATE TABLE `#__rwf_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `label` varchar(255) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `field_id` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Answers for redFORM';



CREATE TABLE `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO #__schemas VALUES
('10042','2.0.b.4.0'),
('10053','1.4');

CREATE TABLE `#__sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__sections VALUES
('1','sd','','sd','','content','left','','1','0','0000-00-00 00:00:00','1','0','1','');

CREATE TABLE `#__session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__template_styles VALUES
('2','bluestork','1','1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),
('3','atomic','0','0','Atomic - Default','{}'),
('4','beez_20','0','0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
('5','hathor','1','0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
('6','beez5','0','0','Beez5 - Default-Fruit Shop','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Matuna Market \",\"sitedescription\":\"Fruit Shop Sample Site\",\"navposition\":\"left\",\"html5\":\"0\"}'),
('12','redfashionstore','0','1','redFASHIONSTORE - Default','{\"rebrand\":\"yes\",\"style\":\"generic\",\"mootools\":\"1\",\"jquery\":\"1\",\"javascriptBottom\":\"1\",\"logo\":\"template\",\"logowidth\":\"8\",\"body_font\":\"jdefault\",\"header_font\":\"jdefault\",\"columns\":\"sidebar1:2;main:7;sidebar2:3\",\"bs_rowmode\":\"row\",\"responsive\":\"1\",\"stickyFooter\":\"1\",\"wright_bootstrap_images\":\"\"}');

CREATE TABLE `#__templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO #__templates_menu VALUES
('rhuk_milkyway','0','0'),
('khepri','0','1');

CREATE TABLE `#__update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories';



CREATE TABLE `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites';

INSERT INTO #__update_sites VALUES
('1','Joomla Core','collection','http://update.joomla.org/core/list.xml','1','1386318737'),
('2','Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml','1','1386318737'),
('5','Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml','1','1386318737'),
('6','jQuery Easy auto updater','extension','http://www.barejoomlatemplates.com/autoupdates/jqueryeasy/jqueryeasy-update.xml','1','1386318737');

CREATE TABLE `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

INSERT INTO #__update_sites_extensions VALUES
('1','700'),
('2','700'),
('5','600'),
('6','10062');

CREATE TABLE `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates';

INSERT INTO #__updates VALUES
('1','5','0','0','Armenian','','pkg_hy-AM','package','','0','2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),
('2','5','0','0','Bahasa Indonesia','','pkg_id-ID','package','','0','2.5.13.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),
('3','5','0','0','Danish','','pkg_da-DK','package','','0','2.5.14.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),
('4','5','0','0','Khmer','','pkg_km-KH','package','','0','2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),
('5','5','0','0','Swedish','','pkg_sv-SE','package','','0','2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),
('6','5','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.8.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
('7','5','0','0','Bulgarian','','pkg_bg-BG','package','','0','2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),
('8','5','0','0','French','','pkg_fr-FR','package','','0','2.5.13.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),
('9','5','0','0','Italian','','pkg_it-IT','package','','0','2.5.14.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),
('10','5','0','0','Spanish','','pkg_es-ES','package','','0','2.5.14.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),
('11','5','0','0','Dutch','','pkg_nl-NL','package','','0','2.5.14.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),
('12','5','0','0','Turkish','','pkg_tr-TR','package','','0','2.5.13.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),
('13','5','0','0','Ukrainian','','pkg_uk-UA','package','','0','2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),
('14','5','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.14.2','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
('15','5','0','0','Belarusian','','pkg_be-BY','package','','0','2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),
('16','5','0','0','Latvian','','pkg_lv-LV','package','','0','2.5.13.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),
('17','5','0','0','Estonian','','pkg_et-EE','package','','0','2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),
('18','5','0','0','Romanian','','pkg_ro-RO','package','','0','2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),
('19','5','0','0','Flemish','','pkg_nl-BE','package','','0','2.5.14.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),
('20','5','0','0','Macedonian','','pkg_mk-MK','package','','0','2.5.13.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),
('21','5','0','0','Japanese','','pkg_ja-JP','package','','0','2.5.14.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),
('22','5','0','0','Serbian Latin','','pkg_sr-YU','package','','0','2.5.13.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),
('23','5','0','0','Arabic Unitag','','pkg_ar-AA','package','','0','2.5.13.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),
('24','5','0','0','German','','pkg_de-DE','package','','0','2.5.14.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),
('25','5','0','0','Norwegian Bokmal','','pkg_nb-NO','package','','0','2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),
('26','5','0','0','English AU','','pkg_en-AU','package','','0','2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),
('27','5','0','0','English US','','pkg_en-US','package','','0','2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),
('28','5','0','0','Serbian Cyrillic','','pkg_sr-RS','package','','0','2.5.13.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),
('29','5','0','0','Lithuanian','','pkg_lt-LT','package','','0','2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),
('30','5','0','0','Albanian','','pkg_sq-AL','package','','0','2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),
('31','5','0','0','Czech','','pkg_cs-CZ','package','','0','2.5.13.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),
('32','5','0','0','Persian','','pkg_fa-IR','package','','0','2.5.13.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),
('33','5','0','0','Galician','','pkg_gl-ES','package','','0','2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),
('34','5','0','0','Polish','','pkg_pl-PL','package','','0','2.5.14.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),
('35','5','0','0','Syriac','','pkg_sy-IQ','package','','0','2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),
('36','5','0','0','Portuguese','','pkg_pt-PT','package','','0','2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),
('37','5','0','0','Russian','','pkg_ru-RU','package','','0','2.5.13.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),
('38','5','0','0','Hebrew','','pkg_he-IL','package','','0','2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),
('39','5','0','0','Catalan','','pkg_ca-ES','package','','0','2.5.13.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),
('40','5','0','0','Laotian','','pkg_lo-LA','package','','0','2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),
('41','5','0','0','Afrikaans','','pkg_af-ZA','package','','0','2.5.14.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),
('42','5','0','0','Chinese Simplified','','pkg_zh-CN','package','','0','2.5.14.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),
('43','5','0','0','Greek','','pkg_el-GR','package','','0','2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),
('44','5','0','0','Esperanto','','pkg_eo-XX','package','','0','2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),
('45','5','0','0','Finnish','','pkg_fi-FI','package','','0','2.5.13.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),
('46','5','0','0','Portuguese Brazil','','pkg_pt-BR','package','','0','2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),
('47','5','0','0','Chinese Traditional','','pkg_zh-TW','package','','0','2.5.13.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),
('48','5','0','0','Vietnamese','','pkg_vi-VN','package','','0','2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),
('49','5','0','0','Kurdish Sorani','','pkg_ckb-IQ','package','','0','2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),
('50','5','0','0','Bosnian','','pkg_bs-BA','package','','0','2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),
('51','5','0','0','Croatian','','pkg_hr-HR','package','','0','2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),
('52','5','0','0','Azeri','','pkg_az-AZ','package','','0','2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),
('53','5','0','0','Norwegian Nynorsk','','pkg_nn-NO','package','','0','2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),
('54','5','0','0','Tamil India','','pkg_ta-IN','package','','0','2.5.14.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),
('55','5','0','0','Scottish Gaelic','','pkg_gd-GB','package','','0','2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),
('56','5','0','0','Thai','','pkg_th-TH','package','','0','2.5.13.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),
('57','5','0','0','Basque','','pkg_eu-ES','package','','0','1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),
('58','5','0','0','Uyghur','','pkg_ug-CN','package','','0','2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),
('59','5','0','0','Korean','','pkg_ko-KR','package','','0','2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),
('60','5','0','0','Hindi','','pkg_hi-IN','package','','0','2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),
('61','5','0','0','Welsh','','pkg_cy-GB','package','','0','2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),
('62','5','0','0','Swahili','','pkg_sw-KE','package','','0','2.5.14.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),
('64','5','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
('65','5','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
('66','5','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
('67','5','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
('69','5','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
('70','5','0','0','French','','pkg_fr-FR','package','','0','2.5.16.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),
('71','5','0','0','Italian','','pkg_it-IT','package','','0','2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),
('72','5','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.17.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
('73','5','0','0','Latvian','','pkg_lv-LV','package','','0','2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),
('74','5','0','0','Flemish','','pkg_nl-BE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),
('75','5','0','0','Japanese','','pkg_ja-JP','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),
('76','5','0','0','Arabic Unitag','','pkg_ar-AA','package','','0','2.5.16.2','','http://update.joomla.org/language/details/ar-AA_details.xml',''),
('77','5','0','0','German','','pkg_de-DE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),
('78','5','0','0','Norwegian Bokmal','','pkg_nb-NO','package','','0','2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),
('79','5','0','0','Czech','','pkg_cs-CZ','package','','0','2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),
('80','5','0','0','Polish','','pkg_pl-PL','package','','0','2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),
('81','5','0','0','Catalan','','pkg_ca-ES','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),
('82','5','0','0','Afrikaans','','pkg_af-ZA','package','','0','2.5.16.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),
('83','5','0','0','Tamil India','','pkg_ta-IN','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),
('84','5','0','0','Swahili','','pkg_sw-KE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),
('85','5','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
('86','5','0','0','French','','pkg_fr-FR','package','','0','2.5.16.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),
('87','5','0','0','Italian','','pkg_it-IT','package','','0','2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),
('88','5','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.17.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
('89','5','0','0','Latvian','','pkg_lv-LV','package','','0','2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),
('90','5','0','0','Flemish','','pkg_nl-BE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),
('91','5','0','0','Japanese','','pkg_ja-JP','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),
('92','5','0','0','Arabic Unitag','','pkg_ar-AA','package','','0','2.5.16.2','','http://update.joomla.org/language/details/ar-AA_details.xml',''),
('93','5','0','0','German','','pkg_de-DE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),
('94','5','0','0','Norwegian Bokmal','','pkg_nb-NO','package','','0','2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),
('95','5','0','0','Czech','','pkg_cs-CZ','package','','0','2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),
('96','5','0','0','Polish','','pkg_pl-PL','package','','0','2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),
('97','5','0','0','Catalan','','pkg_ca-ES','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),
('98','5','0','0','Afrikaans','','pkg_af-ZA','package','','0','2.5.16.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),
('99','5','0','0','Tamil India','','pkg_ta-IN','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),
('100','5','0','0','Swahili','','pkg_sw-KE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),
('101','5','0','0','Hungarian','','pkg_hu-HU','package','','0','2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),
('102','5','0','0','French','','pkg_fr-FR','package','','0','2.5.16.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),
('103','5','0','0','Italian','','pkg_it-IT','package','','0','2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),
('104','5','0','0','Slovak','','pkg_sk-SK','package','','0','2.5.17.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),
('105','5','0','0','Latvian','','pkg_lv-LV','package','','0','2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),
('106','5','0','0','Flemish','','pkg_nl-BE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),
('107','5','0','0','Japanese','','pkg_ja-JP','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),
('108','5','0','0','Arabic Unitag','','pkg_ar-AA','package','','0','2.5.16.2','','http://update.joomla.org/language/details/ar-AA_details.xml',''),
('109','5','0','0','German','','pkg_de-DE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),
('110','5','0','0','Norwegian Bokmal','','pkg_nb-NO','package','','0','2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),
('111','5','0','0','Czech','','pkg_cs-CZ','package','','0','2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),
('112','5','0','0','Persian','','pkg_fa-IR','package','','0','2.5.16.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),
('113','5','0','0','Polish','','pkg_pl-PL','package','','0','2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),
('114','5','0','0','Catalan','','pkg_ca-ES','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),
('115','5','0','0','Afrikaans','','pkg_af-ZA','package','','0','2.5.16.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),
('116','5','0','0','Tamil India','','pkg_ta-IN','package','','0','2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),
('117','5','0','0','Swahili','','pkg_sw-KE','package','','0','2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');

CREATE TABLE `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';



CREATE TABLE `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO #__usergroups VALUES
('1','0','1','18','Public'),
('2','1','6','13','Registered'),
('3','2','7','12','Author'),
('4','3','8','11','Editor'),
('5','4','9','10','Publisher'),
('6','1','2','5','Manager'),
('7','6','3','4','Administrator'),
('8','1','14','15','Super Users'),
('9','1','16','17','Unregister');

CREATE TABLE `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;



CREATE TABLE `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO #__viewlevels VALUES
('1','Public','0','[1]'),
('2','Registered','1','[6,2,8]'),
('3','Special','2','[6,3,8]'),
('4','Unregister','0','[9]');

CREATE TABLE `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

