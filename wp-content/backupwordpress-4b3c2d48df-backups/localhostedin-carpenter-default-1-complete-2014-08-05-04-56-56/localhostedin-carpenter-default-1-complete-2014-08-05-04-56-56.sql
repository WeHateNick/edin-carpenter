# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------


#
# Delete any existing table `wp_booking`
#

DROP TABLE IF EXISTS `wp_booking`;


#
# Table structure of table `wp_booking`
#

CREATE TABLE `wp_booking` (
  `booking_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `is_new` bigint(10) NOT NULL DEFAULT '1',
  `status` varchar(200) NOT NULL DEFAULT '',
  `sort_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `form` text,
  `booking_type` bigint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_booking (3 records)
#
 
INSERT INTO `wp_booking` VALUES (1, 0, '', '2014-07-15 00:00:00', '2014-07-13 21:30:11', 'text^name1^Jony~text^secondname1^Smith~text^email1^example-free@wpbookingcalendar.com~text^phone1^8(038)458-77-77~textarea^details1^Reserve a room with sea view', 1) ; 
INSERT INTO `wp_booking` VALUES (2, 0, '', '2014-07-19 00:00:00', '2014-07-14 04:44:00', 'text^name1^Nick~text^secondname1^Ocampo~email^email1^nick@kps3.com~text^phone1^7757727446~textarea^details1^', 1) ; 
INSERT INTO `wp_booking` VALUES (3, 1, '', '2014-08-19 00:00:00', '2014-07-14 05:24:03', 'text^name1^Nick~text^secondname1^Ocampo~email^email1^wehatenickocampo@gmail.com~text^phone1^7757727446~textarea^details1^Here are some details about my booking', 1) ;
#
# End of data contents of table wp_booking
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------


#
# Delete any existing table `wp_bookingdates`
#

DROP TABLE IF EXISTS `wp_bookingdates`;


#
# Table structure of table `wp_bookingdates`
#

CREATE TABLE `wp_bookingdates` (
  `booking_id` bigint(20) unsigned NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` bigint(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `booking_id_dates` (`booking_id`,`booking_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_bookingdates (5 records)
#
 
INSERT INTO `wp_bookingdates` VALUES (1, '2014-07-15 00:00:00', 1) ; 
INSERT INTO `wp_bookingdates` VALUES (1, '2014-07-16 00:00:00', 1) ; 
INSERT INTO `wp_bookingdates` VALUES (1, '2014-07-17 00:00:00', 1) ; 
INSERT INTO `wp_bookingdates` VALUES (2, '2014-07-19 00:00:00', 1) ; 
INSERT INTO `wp_bookingdates` VALUES (3, '2014-08-19 00:00:00', 0) ;
#
# End of data contents of table wp_bookingdates
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_commentmeta (0 records)
#

#
# End of data contents of table wp_commentmeta
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------


#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_comments (1 records)
#
 
INSERT INTO `wp_comments` VALUES (1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-06-28 06:30:33', '2014-06-28 06:30:33', 'Hi, this is a comment.
To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;
#
# End of data contents of table wp_comments
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------


#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_links (0 records)
#

#
# End of data contents of table wp_links
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------


#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_options (240 records)
#
 
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://localhost/edin-carpenter', 'yes') ; 
INSERT INTO `wp_options` VALUES (2, 'blogname', 'Edin Carpenter Makeup Artistry', 'yes') ; 
INSERT INTO `wp_options` VALUES (3, 'blogdescription', 'Edin Carpenter Makeup Artistry is a premiere makeup artistry in Reno, NV. Edin and here team bring world-class quality makeup artistry to Reno and Tahoe.', 'yes') ; 
INSERT INTO `wp_options` VALUES (4, 'users_can_register', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (5, 'admin_email', 'nick@wehatenick.com', 'yes') ; 
INSERT INTO `wp_options` VALUES (6, 'start_of_week', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (7, 'use_balanceTags', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (8, 'use_smilies', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (9, 'require_name_email', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (10, 'comments_notify', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (11, 'posts_per_rss', '10', 'yes') ; 
INSERT INTO `wp_options` VALUES (12, 'rss_use_excerpt', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (13, 'mailserver_url', 'mail.example.com', 'yes') ; 
INSERT INTO `wp_options` VALUES (14, 'mailserver_login', 'login@example.com', 'yes') ; 
INSERT INTO `wp_options` VALUES (15, 'mailserver_pass', 'password', 'yes') ; 
INSERT INTO `wp_options` VALUES (16, 'mailserver_port', '110', 'yes') ; 
INSERT INTO `wp_options` VALUES (17, 'default_category', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (18, 'default_comment_status', 'open', 'yes') ; 
INSERT INTO `wp_options` VALUES (19, 'default_ping_status', 'open', 'yes') ; 
INSERT INTO `wp_options` VALUES (20, 'default_pingback_flag', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (21, 'posts_per_page', '10', 'yes') ; 
INSERT INTO `wp_options` VALUES (22, 'date_format', 'F j, Y', 'yes') ; 
INSERT INTO `wp_options` VALUES (23, 'time_format', 'g:i a', 'yes') ; 
INSERT INTO `wp_options` VALUES (24, 'links_updated_date_format', 'F j, Y g:i a', 'yes') ; 
INSERT INTO `wp_options` VALUES (25, 'comment_moderation', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (26, 'moderation_notify', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (27, 'permalink_structure', '/%postname%/', 'yes') ; 
INSERT INTO `wp_options` VALUES (28, 'gzipcompression', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (29, 'hack_file', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (30, 'blog_charset', 'UTF-8', 'yes') ; 
INSERT INTO `wp_options` VALUES (31, 'moderation_keys', '', 'no') ; 
INSERT INTO `wp_options` VALUES (32, 'active_plugins', 'a:7:{i:0;s:35:"backupwordpress/backupwordpress.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:19:"akismet/akismet.php";i:3;s:37:"blueimp-lightbox/blueimp-lightbox.php";i:4;s:25:"booking/wpdev-booking.php";i:5;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:6;s:23:"debug-bar/debug-bar.php";}', 'yes') ; 
INSERT INTO `wp_options` VALUES (33, 'home', 'http://localhost/edin-carpenter', 'yes') ; 
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes') ; 
INSERT INTO `wp_options` VALUES (36, 'advanced_edit', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (37, 'comment_max_links', '2', 'yes') ; 
INSERT INTO `wp_options` VALUES (38, 'gmt_offset', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (39, 'default_email_category', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (40, 'recently_edited', '', 'no') ; 
INSERT INTO `wp_options` VALUES (41, 'template', 'edin-carpenter', 'yes') ; 
INSERT INTO `wp_options` VALUES (42, 'stylesheet', 'edin-carpenter', 'yes') ; 
INSERT INTO `wp_options` VALUES (43, 'comment_whitelist', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (44, 'blacklist_keys', '', 'no') ; 
INSERT INTO `wp_options` VALUES (45, 'comment_registration', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (46, 'html_type', 'text/html', 'yes') ; 
INSERT INTO `wp_options` VALUES (47, 'use_trackback', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (48, 'default_role', 'subscriber', 'yes') ; 
INSERT INTO `wp_options` VALUES (49, 'db_version', '27916', 'yes') ; 
INSERT INTO `wp_options` VALUES (50, 'uploads_use_yearmonth_folders', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (51, 'upload_path', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (52, 'blog_public', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (53, 'default_link_category', '2', 'yes') ; 
INSERT INTO `wp_options` VALUES (54, 'show_on_front', 'page', 'yes') ; 
INSERT INTO `wp_options` VALUES (55, 'tag_base', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (56, 'show_avatars', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (57, 'avatar_rating', 'G', 'yes') ; 
INSERT INTO `wp_options` VALUES (58, 'upload_url_path', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (59, 'thumbnail_size_w', '150', 'yes') ; 
INSERT INTO `wp_options` VALUES (60, 'thumbnail_size_h', '150', 'yes') ; 
INSERT INTO `wp_options` VALUES (61, 'thumbnail_crop', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (62, 'medium_size_w', '300', 'yes') ; 
INSERT INTO `wp_options` VALUES (63, 'medium_size_h', '300', 'yes') ; 
INSERT INTO `wp_options` VALUES (64, 'avatar_default', 'mystery', 'yes') ; 
INSERT INTO `wp_options` VALUES (65, 'large_size_w', '1024', 'yes') ; 
INSERT INTO `wp_options` VALUES (66, 'large_size_h', '1024', 'yes') ; 
INSERT INTO `wp_options` VALUES (67, 'image_default_link_type', 'file', 'yes') ; 
INSERT INTO `wp_options` VALUES (68, 'image_default_size', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (69, 'image_default_align', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (70, 'close_comments_for_old_posts', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (71, 'close_comments_days_old', '14', 'yes') ; 
INSERT INTO `wp_options` VALUES (72, 'thread_comments', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (73, 'thread_comments_depth', '5', 'yes') ; 
INSERT INTO `wp_options` VALUES (74, 'page_comments', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (75, 'comments_per_page', '50', 'yes') ; 
INSERT INTO `wp_options` VALUES (76, 'default_comments_page', 'newest', 'yes') ; 
INSERT INTO `wp_options` VALUES (77, 'comment_order', 'asc', 'yes') ; 
INSERT INTO `wp_options` VALUES (78, 'sticky_posts', 'a:0:{}', 'yes') ; 
INSERT INTO `wp_options` VALUES (79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (80, 'widget_text', 'a:0:{}', 'yes') ; 
INSERT INTO `wp_options` VALUES (81, 'widget_rss', 'a:0:{}', 'yes') ; 
INSERT INTO `wp_options` VALUES (82, 'uninstall_plugins', 'a:0:{}', 'no') ; 
INSERT INTO `wp_options` VALUES (83, 'timezone_string', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (84, 'page_for_posts', '13', 'yes') ; 
INSERT INTO `wp_options` VALUES (85, 'page_on_front', '4', 'yes') ; 
INSERT INTO `wp_options` VALUES (86, 'default_post_format', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (87, 'link_manager_enabled', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (88, 'initial_db_version', '27916', 'yes') ; 
INSERT INTO `wp_options` VALUES (89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (95, 'sidebars_widgets', 'a:5:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidenav-1";a:1:{i:0;s:10:"nav_menu-2";}s:9:"undefined";a:0:{}s:13:"array_version";i:3;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (96, 'cron', 'a:7:{i:1407220242;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1407220426;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1407224040;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1407279600;a:1:{s:19:"hmbkp_schedule_hook";a:1:{s:32:"887abd106b36605fbb285d0dec9f47ac";a:3:{s:8:"schedule";s:12:"hmbkp_weekly";s:4:"args";a:1:{s:2:"id";s:9:"default-1";}s:8:"interval";i:604800;}}}i:1407285723;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1407639600;a:1:{s:19:"hmbkp_schedule_hook";a:1:{s:32:"61a45f8e0e711228d9f0aa04271d0a05";a:3:{s:8:"schedule";s:12:"hmbkp_weekly";s:4:"args";a:1:{s:2:"id";s:9:"default-2";}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1407214442;s:15:"version_checked";s:5:"3.9.1";s:12:"translations";a:0:{}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (103, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1407214443;s:7:"checked";a:4:{s:14:"edin-carpenter";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (104, '_site_transient_timeout_browser_415432f8a69810436cc04440121d795d', '1404541848', 'yes') ; 
INSERT INTO `wp_options` VALUES (105, '_site_transient_browser_415432f8a69810436cc04440121d795d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"35.0.1916.153";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (106, 'can_compress_scripts', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (126, '_transient_twentyfourteen_category_count', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (130, 'current_theme', 'Edin Carpenter Makeup Artistry', 'yes') ; 
INSERT INTO `wp_options` VALUES (131, 'theme_mods_edin-carpenter', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"footer-menu";i:3;}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (132, 'theme_switched', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (159, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (165, '_transient_random_seed', 'ebcb6953ffc87af9128841c14dc22cab', 'yes') ; 
INSERT INTO `wp_options` VALUES (200, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1404199494;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (220, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:12:"Sidebar Menu";s:8:"nav_menu";i:2;}s:12:"_multiwidget";i:1;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (228, 'recently_activated', 'a:0:{}', 'yes') ; 
INSERT INTO `wp_options` VALUES (271, 'acf_version', '4.3.8', 'yes') ; 
INSERT INTO `wp_options` VALUES (312, 'cpt_custom_post_types', 'a:3:{i:0;a:21:{s:4:"name";s:5:"slide";s:5:"label";s:12:"Image Slides";s:14:"singular_label";s:5:"Slide";s:11:"description";s:0:"";s:6:"public";s:1:"1";s:7:"show_ui";s:1:"1";s:11:"has_archive";s:1:"0";s:19:"exclude_from_search";s:1:"0";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:1:"0";s:7:"rewrite";s:1:"1";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:9:"query_var";s:1:"1";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:1:"1";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";i:0;a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}i:1;N;i:2;a:12:{s:9:"menu_name";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}}i:1;a:21:{s:4:"name";s:11:"testimonial";s:5:"label";s:12:"Testimonials";s:14:"singular_label";s:11:"Testimonial";s:11:"description";s:0:"";s:6:"public";s:1:"1";s:7:"show_ui";s:1:"1";s:11:"has_archive";s:1:"0";s:19:"exclude_from_search";s:1:"0";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:1:"0";s:7:"rewrite";s:1:"1";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:9:"query_var";s:1:"1";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:1:"1";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";i:0;a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}i:1;N;i:2;a:12:{s:9:"menu_name";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}}i:2;a:21:{s:4:"name";s:7:"gallery";s:5:"label";s:7:"Gallery";s:14:"singular_label";s:5:"Image";s:11:"description";s:0:"";s:6:"public";s:1:"1";s:7:"show_ui";s:1:"1";s:11:"has_archive";s:1:"0";s:19:"exclude_from_search";s:1:"0";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:1:"0";s:7:"rewrite";s:1:"1";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:9:"query_var";s:1:"1";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:1:"1";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";i:0;a:11:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:7:"excerpt";i:3;s:10:"trackbacks";i:4;s:13:"custom-fields";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:9:"thumbnail";i:8;s:6:"author";i:9;s:15:"page-attributes";i:10;s:12:"post-formats";}i:1;N;i:2;a:12:{s:9:"menu_name";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (361, '_site_transient_timeout_browser_058b0e82ee86eb914f5e99790853b91a', '1405807776', 'yes') ; 
INSERT INTO `wp_options` VALUES (362, '_site_transient_browser_058b0e82ee86eb914f5e99790853b91a', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"35.0.1916.153";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (437, 'blueimp_lightbox_auto_add', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (438, 'blueimp_lightbox_media_types', 'gif,jpg,jpeg,png', 'yes') ; 
INSERT INTO `wp_options` VALUES (447, '_transient_timeout_feed_c809918297b2c893fd8504c06adcaf00', '1405344558', 'no') ; 
INSERT INTO `wp_options` VALUES (448, '_transient_feed_c809918297b2c893fd8504c06adcaf00', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:51:"
	
	
	
	
	
	
		
		
	
	
		
		
		
		
		
		
		
		
		
	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"WebDevStudios.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:24:"http://webdevstudios.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:40:"WordPress Website Development and Design";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Jul 2014 16:15:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:29:"http://wordpress.org/?v=3.9.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Stacy Kvernmo: Exploring the Design Process";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"http://webdevstudios.com/2014/07/10/stacy-kvernmo-exploring-the-design-process/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:88:"http://webdevstudios.com/2014/07/10/stacy-kvernmo-exploring-the-design-process/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Jul 2014 16:15:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8258";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:403:"At WordCamp Chicago 2014, Stacy Kvernmo of WDS presented in place of Lisa Sabin-Wilson. It was well worth a place in the room. Stacy has a knack for presenting and you can tell she&#8217;s passionate about the work she does. In &#8230; <a class="more-link" href="http://webdevstudios.com/2014/07/10/stacy-kvernmo-exploring-the-design-process/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:952:"<p>At <a href="http://2014.chicago.wordcamp.org/">WordCamp Chicago 2014</a>, <a title="Stacy Kvernmo" href="http://webdevstudios.com/team/stacy-kvernmo/">Stacy Kvernmo </a>of WDS presented in place of <a title="Lisa Sabin-Wilson" href="http://webdevstudios.com/team/lisa-sabin-wilson/">Lisa Sabin-Wilson</a>. It was well worth a place in the room. Stacy has a knack for presenting and you can tell she&#8217;s passionate about the work she does. In this presentation, she talks about exploring the design process.</p>
<p>&nbsp;</p>
<div id="v-XbuXlQnl-1" class="video-player"><embed id="v-XbuXlQnl-1-video" src="http://s0.videopress.com/player.swf?v=1.03&amp;guid=XbuXlQnl&amp;isDynamicSeeking=true" type="application/x-shockwave-flash" width="640" height="360" title="Stacy Kvernmo: Check and Double Check: Internal QA is Vita" wmode="direct" seamlesstabbing="true" allowfullscreen="true" allowscriptaccess="always" overstretch="true"></embed></div>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:84:"http://webdevstudios.com/2014/07/10/stacy-kvernmo-exploring-the-design-process/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:57:"
		
		
		
		
		
				
		
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"WDS Welcomes Chris Reynolds!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://webdevstudios.com/2014/07/07/wds-welcomes-chris-reynolds/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:73:"http://webdevstudios.com/2014/07/07/wds-welcomes-chris-reynolds/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 07 Jul 2014 19:03:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8254";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:410:"WDS is proud to announce our newest developer &#8212; Chris Reynolds! Chris has been building things with WordPress since around 2007 — long enough to remember 4 major WordPress admin redesigns. Before that, he played with various other open source &#8230; <a class="more-link" href="http://webdevstudios.com/2014/07/07/wds-welcomes-chris-reynolds/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2073:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/07/1797339_10152371200155185_3833927701982336945_n.jpg"><img class="alignleft size-medium wp-image-8255" src="http://webdevstudios.com/wp-content/uploads/2014/07/1797339_10152371200155185_3833927701982336945_n-225x300.jpg" alt="1797339_10152371200155185_3833927701982336945_n" width="225" height="300" /></a>WDS is proud to announce our newest developer &#8212; <a title="Chris Reynolds" href="http://webdevstudios.com/team/chris-reynolds/">Chris Reynolds</a>!</p>
<p>Chris has been building things with WordPress since around 2007 — long enough to remember 4 major WordPress admin redesigns. Before that, he played with various other open source platforms and the first incarnation of his blog was written entirely in HTML. Originally a designer, Chris graduated from the University of Redlands, Johnston Center. He left with a self-made degree titled Creative Arts in the Digital Revolution, which combined his loves for music, visual art, film and writing using computers as a medium for all of them.</p>
<p>As a freelance designer and developer, Chris has built WordPress-powered sites for criminal lawyers, schools, independent musicians and tabletop game designers. These days, nothing makes him happier than finding new ways to do cool stuff with WordPress. Chris is an author for the online developer training provider, <a href="http://pluralsight.com/training/Authors/Details/chris-reynolds">Pluralsight</a>, and has been involved with <a href="http://2013.slc.wordcamp.org/">WordCamp Salt Lake City</a> in some form or another since 2011.</p>
<p>If Chris isn&#8217;t sitting in front of his computer, he might be found playing Magic: the Gathering, camping in southern Utah or cheering for his local Major League Soccer team, Real Salt Lake. You can follow <a href="https://twitter.com/jazzs3quence">Chris on Twitter</a> to keep up with his work and experiences.</p>
<p>We are very excited to have Chris joining the team and are confident he will be an amazing addition to an already great team!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:69:"http://webdevstudios.com/2014/07/07/wds-welcomes-chris-reynolds/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:60:"
		
		
		
		
		
				
		
		
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"WDS Welcomes Damon Cook!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://webdevstudios.com/2014/06/24/wds-welcomes-damon-cook/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:69:"http://webdevstudios.com/2014/06/24/wds-welcomes-damon-cook/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 24 Jun 2014 14:50:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:7:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:16:"WordPress Meetup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8244";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:413:"WDS is proud to announce our newest designer, Damon Cook! While working at SUNY-Empire State College, Damon was tasked with creating several internal tools. Research lead him to open-source products like Drupal and WordPress. He quickly saw the elegant, and &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/24/wds-welcomes-damon-cook/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1653:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/damon.jpg"><img class="alignleft size-medium wp-image-8245" src="http://webdevstudios.com/wp-content/uploads/2014/06/damon-300x300.jpg" alt="damon" width="300" height="300" /></a>WDS is proud to announce our newest designer, <a href="http://webdevstudios.com/team/damon-cook/">Damon Cook</a>!</p>
<p>While working at SUNY-Empire State College, Damon was tasked with creating several internal tools. Research lead him to open-source products like Drupal and WordPress. He quickly saw the elegant, and extensible nature of WordPress and never looked back. He created a blogging platform based on WordPressMU for faculty, students, and staff, which is still running. Damon is the co-founder of <span style="color: #ff9900"><a href="http://www.meetup.com/wordpress-wp518/"><span style="color: #ff9900">WP518 Upstate NY WordPress Meetup group</span></a></span> as well as an organizer for <span style="color: #ff9900"><a href="http://2014.saratoga.wordcamp.org/"><span style="color: #ff9900">Upstate NY&#8217;s first WordCamp Saratoga</span></a></span></p>
<p>In his free time, he eats way too many peanut butter M&amp;M&#8217;s, while listening to his old band, <a href="https://itunes.apple.com/us/album/crash-tender/id378138344">Firefighter Font</a>. He also enjoys cleaning a lot, which is pretty useful with 2 kids in the house! You can follow <a href="https://twitter.com/dcook">Damon on Twitter</a> to keep track of his M&amp;M&#8217;s habit.</p>
<p>We are excited to see where Damon will go within WDS and can&#8217;t wait to see what he will bring to the team! Welcome, Damon!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:65:"http://webdevstudios.com/2014/06/24/wds-welcomes-damon-cook/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:51:"
		
		
		
		
		
				
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"WDS Welcomes Will Schmierer!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://webdevstudios.com/2014/06/16/wds-welcomes-will-schmierer/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:73:"http://webdevstudios.com/2014/06/16/wds-welcomes-will-schmierer/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Jun 2014 13:56:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8222";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:389:"WebDevStudios is proud to announce one of our newest Front-End Developers, Will Schmierer! Will fell in love with the web in the early 1990’s, in the old dial-up AOL days. After high school, he decided to leave the Jersey Shore &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/16/wds-welcomes-will-schmierer/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1834:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/Will-Color1.jpg"><img class="alignleft size-medium wp-image-8223" src="http://webdevstudios.com/wp-content/uploads/2014/06/Will-Color1-300x300.jpg" alt="Will-Color[1]" width="300" height="300" /></a>WebDevStudios is proud to announce one of our newest Front-End Developers, <a title="Will Schmierer" href="http://webdevstudios.com/team/will-schmierer/">Will Schmierer</a>!</p>
<p>Will fell in love with the web in the early 1990’s, in the old dial-up AOL days. After high school, he decided to leave the Jersey Shore for the University of Miami, pursuing a degree in Architecture. It was at this time he began to learn more about design principles, and was fascinated about emerging technologies like AutoCad, Photoshop, 3D Studio Max, Flash and the web.</p>
<p>After graduating early from the U in 2005, he worked in the architectural profession for several years before transitioning to web design and development with WordPress full time in 2010. He was drawn to WordPress because of the awesome community and the amazing flexibility of the software. A lot of what he learned about design during and after college made the transition to website designer/developer a smooth one and he thanks WordPress for changing his career in a positive way.</p>
<p>When Will&#8217;s hands are not on the keyboard, they are likely signing ASL (American Sign Language) to his beautiful wife, Francisca. Together they spend most of their free time with their daughter, Ali and newborn son, Will the 4th. Will also enjoys learning, traveling, sports, comedy and is a self proclaimed expert in assembling Ikea furniture.</p>
<p>We&#8217;re excited to see what Will is going to bring to the WDS table and you can follow him on <a href="https://twitter.com/ImBigWill">Twitter</a>!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:69:"http://webdevstudios.com/2014/06/16/wds-welcomes-will-schmierer/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:57:"
		
		
		
		
		
				
		
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"WDS at WordCamp Chicago 2014!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://webdevstudios.com/2014/06/12/wds-at-wordcamp-chicago-2014/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:74:"http://webdevstudios.com/2014/06/12/wds-at-wordcamp-chicago-2014/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 Jun 2014 14:28:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:6:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:16:"WordPress Meetup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8216";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:404:"It&#8217;s the time of year again for WordCamp Chicago to come around! This year it is being held at The University Center Chicago from Friday, June 13th until Sunday, June 15th. If you&#8217;re planning on attending WordCamp Chicago, you will &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/12/wds-at-wordcamp-chicago-2014/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2403:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/About-WordCamp-WordCamp-Chicago.png"><img class="alignleft size-full wp-image-8217" src="http://webdevstudios.com/wp-content/uploads/2014/06/About-WordCamp-WordCamp-Chicago.png" alt="About WordCamp   WordCamp Chicago" width="215" height="196" /></a>It&#8217;s the time of year again for <a href="http://2014.chicago.wordcamp.org/">WordCamp Chicago</a> to come around! This year it is being held at The University Center Chicago from Friday, June 13th until Sunday, June 15th. If you&#8217;re planning on attending WordCamp Chicago, you will be able to see WDS team members, <a title="Lisa Sabin-Wilson" href="http://webdevstudios.com/team/lisa-sabin-wilson/">Lisa Sabin-Wilson</a>, <a title="Stacy Kvernmo" href="http://webdevstudios.com/team/stacy-kvernmo/">Stacy Kvernmo</a>, and <a title="Brad Parbs" href="http://webdevstudios.com/team/brad-parbs/">Brad Parbs</a>. Along with attending, WDS is sponsoring the event this year!</p>
<p>Lisa Sabin-Wilson will be speaking at WordCamp Chicago this year. You can catch her at 11AM on Sunday the 15th in the Architect/Lake room. Her presentation is on everyone&#8217;s favorite step in a site launch &#8212; <em>Check &amp; Double Check: Internal QA is Vital!</em></p>
<p>Description of her presentation &#8211;</p>
<blockquote>
<p style="color: #141412">Before our team can say that a project is complete … before we even hand the project over to the client and say “”We’re done!”” – we have put it through the paces of an internal QA process that checks and double checks the site to make sure that we’ve met the client’s requirements.</p>
<p style="color: #141412">In this session, I share some easy methods that you can start doing with your projects today to improve overall client satisfaction and try and eliminate that dreaded list of things that just ‘aren’t quite right’ on a project you thought was done.</p>
</blockquote>
<p style="color: #141412">After the conference is over on Saturday the 14th, there will be an after party held on the 3rd Floor Rooftop Terrace. You will be able to see Lisa Sabin-Wilson there and pick her brain of all things WordPress!</p>
<p style="color: #141412">As always, Lisa, Stacy, and Brad are excited to meet new people and make new connections. They are also excited to reconnect with those they&#8217;ve already met!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:70:"http://webdevstudios.com/2014/06/12/wds-at-wordcamp-chicago-2014/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:54:"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"WDS Welcomes Shawn Finn!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://webdevstudios.com/2014/06/11/wds-welcomes-shawn-finn/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:69:"http://webdevstudios.com/2014/06/11/wds-welcomes-shawn-finn/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Jun 2014 15:41:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8231";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:400:"WDS is proud to announce our newest designer, Shawn Finn! Shawn has been fascinated by Web Design &#38; Development since launching his first linux server and RavenNuke CMS site over 10 years ago. CMS platforms had eventually evolved since then &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/11/wds-welcomes-shawn-finn/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2514:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/shawn.jpg"><img class="alignleft size-medium wp-image-8232" src="http://webdevstudios.com/wp-content/uploads/2014/06/shawn-300x300.jpg" alt="shawn" width="300" height="300" /></a><span style="color: #808080">WDS is proud to announce our newest designer, <a title="Shawn Finn" href="http://webdevstudios.com/team/shawn-finn/"><span style="color: #808080">Shawn Finn</span></a>!</span></p>
<p><span style="color: #808080">Shawn has been fascinated by Web Design &amp; Development since launching his first linux server and RavenNuke CMS site over 10 years ago. CMS platforms had eventually evolved since then and he along with them until landing comfortably with the WordPress platform. Shawn&#8217;s experience with WordPress ranges from small sites for local businesses trying to break into the e-commerce realm to large multi-site real estate installations with dozens of unique, interactive floor-plans. WordPress is his favorite platform to work with because of its powerful potential right out-of-the-box. When a skilled developer can spend less time on core functionality and more into the custom side, you have a truly unique and awe-inspiring website.</span></p>
<p><span style="color: #808080">During his free time, he&#8217;s usually found at the gym, mountain biking or catching up with friends. Over the past few years fitness has become an important part of his life; having lost a large amount of fat and transforming his life, eating habits and views on exercise. Shawn greatly enjoys riding his bike through Piedmont Park in Atlanta, GA.  Disconnecting from the technology world helps remind him of the simple things in life we often overlook.</span></p>
<blockquote>
<p style="color: #222222"><span style="color: #808080">I&#8217;m extremely excited to be a part of the WDS team!  Having read and studied many of the books written by the guru&#8217;s of WordPress here at WDS;  I truly look forward to working with this genius team, learning new tips &amp; tricks and mastering the platform.  I feel the potential for myself and my team is limitless with WDS and am eager to see what the future may hold!</span></p>
</blockquote>
<p style="color: #222222"><span style="color: #808080">We are very excited to see what Shawn will offer to the WDS brain! You can follow Shawn on <a href="https://twitter.com/shawnkfinn"><span style="color: #808080">Twitter</span></a> to keep up with his fitness and WordPress milestones!</span></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:65:"http://webdevstudios.com/2014/06/11/wds-welcomes-shawn-finn/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:54:"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WDS Welcomes Jay Wood!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://webdevstudios.com/2014/06/10/wds-welcomes-jay-wood/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"http://webdevstudios.com/2014/06/10/wds-welcomes-jay-wood/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 10 Jun 2014 14:12:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8227";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:390:"WDS is proud to announce one of our newest designers, Jay Wood! Jay&#8217;s passion for computers began back in late 90′s when his wife, then girlfriend, gave him an old Tandy computer. Which he then took apart and put back together, &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/10/wds-welcomes-jay-wood/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2430:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/jaywood.jpg"><img class="alignleft size-medium wp-image-8228" src="http://webdevstudios.com/wp-content/uploads/2014/06/jaywood-278x300.jpg" alt="jaywood" width="278" height="300" /></a><span style="color: #808080">WDS is proud to announce one of our newest designers, <a title="Jay Wood" href="http://webdevstudios.com/team/jay-wood/">Jay Wood</a>!</span></p>
<p><span style="color: #808080">Jay&#8217;s passion for computers began back in late 90′s when his wife, then girlfriend, gave him an old Tandy computer. Which he then took apart and put back together, after trying to connect to the then, new, internet. Once he graduated high school, Jay moved out of his parents house to the lower apartment, bought his own computer, and a book, PHP for Dummies. </span></p>
<p><span style="color: #808080">He began learning PHP and playing around with it off and on.  Never really getting serious for awhile until he read about MySQL and he thought, “how cool would it be to save information?”  So then began the two year journey on learning PHP and MySQL integration. Over the next few years Jay refined his PHP skills and started looking into multiple CMS systems.  Joomla was his first, followed by Drupal, and then WordPress.  He has stuck with WordPress ever since and in his down-time he reads the documentation just for fun.</span></p>
<p><span style="color: #808080">During his off time, Jay is a gamer and plugin hobbyist of sorts.  He loves trying to integrate WordPress with other API&#8217;s when he can.  Bascially, he likes pushing WordPress to it&#8217;s limit, and break it when possible.  When he&#8217;s not working with code, Jay is managing a Minecraft server for friends and learning Laravel 4 as a side project.  He loves learning new things and takes the chance when he can.</span></p>
<blockquote><p><span style="color: #808080">I&#8217;m excited to leave the freelance scene behind me and work with a team. Working for myself, by myself, for two years had grown tiresome and frustrating to find new clients.  Working with WDS, I&#8217;ll get to have the workload I want, along with the guaranteed paycheck I need.</span></p></blockquote>
<p><span style="color: #808080">We are excited to see what Jay will offer to WDS and don&#8217;t forget, you can follow him on</span> <a href="https://twitter.com/plugish">Twitter</a>!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"http://webdevstudios.com/2014/06/10/wds-welcomes-jay-wood/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:54:"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"WDS Welcomes Zack Rothauser!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://webdevstudios.com/2014/06/09/wds-welcomes-zack-rothauser/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:73:"http://webdevstudios.com/2014/06/09/wds-welcomes-zack-rothauser/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Jun 2014 15:35:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8218";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:417:"WebDevStudios is proud to announce one of our newest Front-End developers, Zack Rothauser! Zack is a web developer based in the Midwest. He’s been working in web design and development since early 2011. He’s been working exclusively with WordPress since &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/09/wds-welcomes-zack-rothauser/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:919:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/Zack.jpg"><img class="alignleft size-medium wp-image-8219" src="http://webdevstudios.com/wp-content/uploads/2014/06/Zack-300x300.jpg" alt="Zack" width="300" height="300" /></a>WebDevStudios is proud to announce one of our newest Front-End developers, <a title="Zack Rothauser" href="http://webdevstudios.com/team/zack-rothauser/">Zack Rothauser</a>!</p>
<p>Zack is a web developer based in the Midwest. He’s been working in web design and development since early 2011. He’s been working exclusively with WordPress since 2012. His other interests include loud concerts and good beer. In his free time Zack enjoys discovering new music, learning more about visual design, and audio engineering.</p>
<p>If you want to follow Zack&#8217;s journey in new music and good beer, you can follow him on <a href="https://twitter.com/zrothauser">Twitter</a>!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:69:"http://webdevstudios.com/2014/06/09/wds-welcomes-zack-rothauser/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:66:"
		
		
		
		
		
				
		
		
		
		
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"WDS At WordCamp Philly 2014!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://webdevstudios.com/2014/06/04/wds-at-wordcamp-philly-2014/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:73:"http://webdevstudios.com/2014/06/04/wds-at-wordcamp-philly-2014/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 04 Jun 2014 17:56:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:9:{i:0;a:5:{s:4:"data";s:10:"AppPresser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:16:"WordPress Meetup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8210";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:411:"We&#8217;re not trying to play favorites over here at WebDevStudios, but we get really excited when WordCamp Philly comes around! This year WordCamp Philly is being held at The University of the Arts at the Gershman Hall June 7th and June 8th. Brad &#8230; <a class="more-link" href="http://webdevstudios.com/2014/06/04/wds-at-wordcamp-philly-2014/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3058:"<p><a href="http://webdevstudios.com/wp-content/uploads/2014/06/WC-philly.png"><img class="alignleft size-full wp-image-8212" src="http://webdevstudios.com/wp-content/uploads/2014/06/WC-philly.png" alt="WC philly" width="245" height="249" /></a>We&#8217;re not trying to play favorites over here at WebDevStudios, but we get really excited when WordCamp Philly comes around! This year <a href="http://2014.philly.wordcamp.org/">WordCamp Philly</a> is being held at <span style="color: #2b2b2b">The University of the Arts at the Gershman Hall June 7th and June 8th. <a title="Brad Williams" href="http://webdevstudios.com/team/brad-williams/">Brad Williams</a> and <a title="April Williams" href="http://webdevstudios.com/team/april-heline/">April Williams</a> are helping organize this event for the 4th year in a row along with <a href="https://twitter.com/tangofoxtrot">Reed Gustow</a>, <a href="https://twitter.com/zamoose">Doug Stewart</a> and <a href="https://twitter.com/liamdempsey">Liam Dempsey</a>! Along with that, WDS is sponsoring WordCamp Philly this year.</span></p>
<p><a href="https://twitter.com/williamsba">Brad Williams</a> will be a part of the WordPress for Big Media Organizations panel along with Paul Wright, Neil McGinness,  <span style="color: #2b2b2b"><a href="https://twitter.com/aschweig">Adam Schweigert</a>,  <a href="https://twitter.com/brianjameskirk">Brian James Kirk</a>, and <a href="https://twitter.com/davisshaver">Davis Shaver</a>.</span> This panel is taking place on Saturday, June 7th at 2:45pm EST. A description of the panel &#8211;</p>
<blockquote><p>How do media companies big and small make the most of WordPress? In this panel session, we&#8217;ll discuss the unique opportunities and challenges of using WordPress for media outlets, and also highlight some resources that could benefit your next media project.</p></blockquote>
<p>You&#8217;ll also be able to catch <a href="https://twitter.com/bmess">Brian Messenlehner</a> of WDS in the &#8220;Unconference room&#8221; talking about <a href="http://apppresser.com/">AppPresser</a> and mobile applications. What is the &#8220;Unconference room&#8221;? It&#8217;s a room where you&#8217;ll have the chance to sign up with your name on a white board and talk about whatever you want to talk about.</p>
<p><a title="Camden Segal" href="http://webdevstudios.com/team/camden-segal/">Camden Segal</a> of WDS is also going to be in attendance. You can find him wandering around to different presentations and picking the brains of his fellow WordPress designers.</p>
<p>You will be able to pick all these amazing brains at the WordCamp Philly After Party. This is being held at Buffalo Billiards from 7PM &#8211; 10PM on Saturday the 7th. WordCamps are a great way of networking and what better way to do that than over drinks and food?</p>
<p>Brad, April, Brian, and Camden are excited to get back in touch with those of you they have already met, but they are just as equally excited to meet new people that can inspire their drive for WordPress!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:69:"http://webdevstudios.com/2014/06/04/wds-at-wordcamp-philly-2014/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:72:"
		
		
		
		
		
				
		
		
		
		
		
		
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Win A Copy Of Building Web Apps with WordPress!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"http://webdevstudios.com/2014/05/21/win-a-copy-of-building-web-apps-with-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:92:"http://webdevstudios.com/2014/05/21/win-a-copy-of-building-web-apps-with-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 May 2014 16:19:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:11:{i:0;a:5:{s:4:"data";s:10:"AppPresser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:10:"BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:8:"Giveaway";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:8:"Products";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:16:"Products We Love";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:27:"Social Network Applications";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:4:"Team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:9;a:5:{s:4:"data";s:7:"Twitter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:10;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"http://webdevstudios.com/?p=8201";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:425:"WDS hasn&#8217;t done a giveaway for a while now and we think it&#8217;s time to get one going. This time, we are giving away copies of Brian Messenlehner and Jason Coleman&#8216;s recently published book &#8212; Building Web Apps with WordPress! &#8230; <a class="more-link" href="http://webdevstudios.com/2014/05/21/win-a-copy-of-building-web-apps-with-wordpress/">Continue reading <span class="meta-nav">&#8594;</span></a>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Melissa Hoppe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3019:"<p>WDS hasn&#8217;t done a giveaway for a while now and we think it&#8217;s time to get one going. This time, we are giving away copies of <a title="Brian Messenlehner" href="http://webdevstudios.com/team/brian-messenlehner/">Brian Messenlehner</a> and <a href="https://twitter.com/jason_coleman">Jason Coleman</a>&#8216;s recently published book &#8212; <a href="http://www.amazon.com/Building-Apps-WordPress-Brian-Messenlehner/dp/1449364071">Building Web Apps with WordPress</a>! If you&#8217;re unfamiliar with the book, here&#8217;s a quick overview:<a href="http://webdevstudios.com/wp-content/uploads/2014/05/51gOTZ2xI0L.jpg"><img class="alignright size-medium wp-image-8202" src="http://webdevstudios.com/wp-content/uploads/2014/05/51gOTZ2xI0L-228x300.jpg" alt="51gOTZ2xI0L" width="228" height="300" /></a></p>
<blockquote><p>WordPress is much more than a blogging platform. As this practical guide clearly demonstrates, you can use WordPress to build web apps of any type—not mere content sites, but full-blown apps for specific tasks. If you have PHP experience with a smattering of HTML, CSS, and JavaScript, you’ll learn how to use WordPress plugins and themes to develop fast, scalable, and secure web apps, native mobile apps, web services, and even a network of multiple WordPress sites.</p></blockquote>
<p>We are giving away 5 digital copies of the book, but we are also giving away 1 hard copy of the book that will be signed by Brian Messenlehner!</p>
<h2>So, how do you win this giveaway?</h2>
<p>In order to win one of these books, we are asking that you comment on this post with your idea of a web app powered by WordPress. Along with the idea of your app, we want to know what it would be used for and how it would benefit your WordPress site or someone else&#8217;s. It can be an idea of an app for yourself or an idea that will help the WordPress community as a whole.</p>
<h2>How will we decide who wins?</h2>
<p>After the deadline for the giveaway, the team as a whole will look over all of your impressive ideas. The most creative app idea will win the signed hard copy of the book. The remaining 5 digital copies will be given away to those who also have awesome ideas for a web app powered by WordPress.</p>
<h2>Rules of the giveaway:</h2>
<ul>
<li>The giveaway starts today, May 21st at 12PM EST and ends Tuesday, May 27th at 1PM EST.</li>
<li>All entries must be in by 1PM EST on the 27th. Anything entered after that time will be appreciated, but will not be counted.</li>
<li>Employees of WDS and family members are welcome to participate in the giveaway but will not win a copy of the book.</li>
<li>You must comment on this post with your name, email address, and twitter handle.</li>
<li>We will announce the winner of the giveaway on Tuesday, May 27th at 4PM EST.</li>
</ul>
<p>We look forward to seeing all of your amazing ideas for web apps powered by WordPress. Be sure to follow us on Twitter to keep updated with the giveaway and to find out the winners on the 27th!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:88:"http://webdevstudios.com/2014/05/21/win-a-copy-of-building-web-apps-with-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"13";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:41:"http://feeds.feedburner.com/webdevstudios";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:3:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:13:"webdevstudios";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:13:"webdevstudios";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:28:"http://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"U5c4HQSW4aFlLp881TsmHwHCRvk";s:13:"last-modified";s:29:"Mon, 14 Jul 2014 00:39:20 GMT";s:4:"date";s:29:"Mon, 14 Jul 2014 01:29:18 GMT";s:7:"expires";s:29:"Mon, 14 Jul 2014 01:29:18 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:18:"alternate-protocol";s:7:"80:quic";}s:5:"build";s:14:"20130911110210";}', 'no') ; 
INSERT INTO `wp_options` VALUES (449, '_transient_timeout_feed_mod_c809918297b2c893fd8504c06adcaf00', '1405344558', 'no') ; 
INSERT INTO `wp_options` VALUES (450, '_transient_feed_mod_c809918297b2c893fd8504c06adcaf00', '1405301358', 'no') ; 
INSERT INTO `wp_options` VALUES (452, 'cpt_custom_tax_types', 'a:0:{}', 'yes') ; 
INSERT INTO `wp_options` VALUES (455, 'rewrite_rules', 'a:114:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:47:"actors/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?actors=$matches[1]&feed=$matches[2]";s:42:"actors/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?actors=$matches[1]&feed=$matches[2]";s:35:"actors/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?actors=$matches[1]&paged=$matches[2]";s:17:"actors/([^/]+)/?$";s:28:"index.php?actors=$matches[1]";s:33:"slide/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"slide/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"slide/([^/]+)/trackback/?$";s:32:"index.php?slide=$matches[1]&tb=1";s:34:"slide/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&paged=$matches[2]";s:41:"slide/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?slide=$matches[1]&cpage=$matches[2]";s:26:"slide/([^/]+)(/[0-9]+)?/?$";s:44:"index.php?slide=$matches[1]&page=$matches[2]";s:22:"slide/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"slide/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"testimonial/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonial/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)/trackback/?$";s:38:"index.php?testimonial=$matches[1]&tb=1";s:40:"testimonial/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&paged=$matches[2]";s:47:"testimonial/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonial=$matches[1]&cpage=$matches[2]";s:32:"testimonial/([^/]+)(/[0-9]+)?/?$";s:50:"index.php?testimonial=$matches[1]&page=$matches[2]";s:28:"testimonial/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonial/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"gallery/([^/]+)/trackback/?$";s:34:"index.php?gallery=$matches[1]&tb=1";s:36:"gallery/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?gallery=$matches[1]&paged=$matches[2]";s:43:"gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?gallery=$matches[1]&cpage=$matches[2]";s:28:"gallery/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?gallery=$matches[1]&page=$matches[2]";s:24:"gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes') ; 
INSERT INTO `wp_options` VALUES (471, 'category_children', 'a:0:{}', 'yes') ; 
INSERT INTO `wp_options` VALUES (475, 'booking_version_num', '5.1.5', 'yes') ; 
INSERT INTO `wp_options` VALUES (476, 'booking_admin_cal_count', '2', 'yes') ; 
INSERT INTO `wp_options` VALUES (477, 'booking_skin', '/css/skins/black.css', 'yes') ; 
INSERT INTO `wp_options` VALUES (478, 'bookings_num_per_page', '10', 'yes') ; 
INSERT INTO `wp_options` VALUES (479, 'booking_sort_order', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (480, 'booking_default_toolbar_tab', 'filter', 'yes') ; 
INSERT INTO `wp_options` VALUES (481, 'bookings_listing_default_view_mode', 'vm_calendar', 'yes') ; 
INSERT INTO `wp_options` VALUES (482, 'booking_view_days_num', '90', 'yes') ; 
INSERT INTO `wp_options` VALUES (483, 'booking_max_monthes_in_calendar', '6m', 'yes') ; 
INSERT INTO `wp_options` VALUES (484, 'booking_client_cal_count', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (485, 'booking_start_day_weeek', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (486, 'booking_title_after_reservation', 'Thank you for your booking.  We will send you an email confirmation of your booking as soon as possible.', 'yes') ; 
INSERT INTO `wp_options` VALUES (487, 'booking_title_after_reservation_time', '7000', 'yes') ; 
INSERT INTO `wp_options` VALUES (488, 'booking_type_of_thank_you_message', 'message', 'yes') ; 
INSERT INTO `wp_options` VALUES (489, 'booking_thank_you_page_URL', '/thank-you', 'yes') ; 
INSERT INTO `wp_options` VALUES (490, 'booking_is_use_autofill_4_logged_user', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (491, 'booking_date_format', 'F j, Y', 'yes') ; 
INSERT INTO `wp_options` VALUES (492, 'booking_date_view_type', 'short', 'yes') ; 
INSERT INTO `wp_options` VALUES (493, 'booking_is_delete_if_deactive', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (494, 'booking_dif_colors_approval_pending', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (495, 'booking_is_use_hints_at_admin_panel', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (496, 'booking_is_not_load_bs_script_in_client', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (497, 'booking_is_not_load_bs_script_in_admin', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (498, 'booking_type_of_day_selections', 'multiple', 'yes') ; 
INSERT INTO `wp_options` VALUES (499, 'booking_form_is_using_bs_css', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (500, 'booking_form_format_type', 'vertical', 'yes') ; 
INSERT INTO `wp_options` VALUES (501, 'booking_form_field_active1', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (502, 'booking_form_field_required1', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (503, 'booking_form_field_label1', 'First Name', 'yes') ; 
INSERT INTO `wp_options` VALUES (504, 'booking_form_field_active2', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (505, 'booking_form_field_required2', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (506, 'booking_form_field_label2', 'Last Name', 'yes') ; 
INSERT INTO `wp_options` VALUES (507, 'booking_form_field_active3', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (508, 'booking_form_field_required3', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (509, 'booking_form_field_label3', 'Email', 'yes') ; 
INSERT INTO `wp_options` VALUES (510, 'booking_form_field_active4', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (511, 'booking_form_field_required4', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (512, 'booking_form_field_label4', 'Phone', 'yes') ; 
INSERT INTO `wp_options` VALUES (513, 'booking_form_field_active5', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (514, 'booking_form_field_required5', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (515, 'booking_form_field_label5', 'Details', 'yes') ; 
INSERT INTO `wp_options` VALUES (516, 'booking_unavailable_days_num_from_today', '0', 'yes') ; 
INSERT INTO `wp_options` VALUES (517, 'booking_unavailable_day0', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (518, 'booking_unavailable_day1', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (519, 'booking_unavailable_day2', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (520, 'booking_unavailable_day3', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (521, 'booking_unavailable_day4', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (522, 'booking_unavailable_day5', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (523, 'booking_unavailable_day6', 'Off', 'yes') ; 
INSERT INTO `wp_options` VALUES (524, 'booking_user_role_booking', 'editor', 'yes') ; 
INSERT INTO `wp_options` VALUES (525, 'booking_user_role_addbooking', 'editor', 'yes') ; 
INSERT INTO `wp_options` VALUES (526, 'booking_user_role_resources', 'editor', 'yes') ; 
INSERT INTO `wp_options` VALUES (527, 'booking_user_role_settings', 'administrator', 'yes') ; 
INSERT INTO `wp_options` VALUES (528, 'booking_email_reservation_adress', '&quot;Booking system&quot; &lt;nick@wehatenick.com&gt;', 'yes') ; 
INSERT INTO `wp_options` VALUES (529, 'booking_email_reservation_from_adress', '[visitoremail]', 'yes') ; 
INSERT INTO `wp_options` VALUES (530, 'booking_email_reservation_subject', 'New booking', 'yes') ; 
INSERT INTO `wp_options` VALUES (531, 'booking_email_reservation_content', 'You need to approve a new booking [bookingtype] for: [dates]&lt;br/&gt;&lt;br/&gt; Person detail information:&lt;br/&gt; [content]&lt;br/&gt;&lt;br/&gt; Currently a new booking is waiting for approval. Please visit the moderation panel [moderatelink]&lt;br/&gt;&lt;br/&gt;Thank you, Edin Carpenter Makeup Artistry&lt;br/&gt;[siteurl]', 'yes') ; 
INSERT INTO `wp_options` VALUES (532, 'booking_email_approval_adress', '&quot;Booking system&quot; &lt;nick@wehatenick.com&gt;', 'yes') ; 
INSERT INTO `wp_options` VALUES (533, 'booking_email_approval_subject', 'Your booking has been approved', 'yes') ; 
INSERT INTO `wp_options` VALUES (534, 'booking_email_approval_content', 'Your booking [bookingtype] for: [dates] has been approved.&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt;Thank you, Edin Carpenter Makeup Artistry&lt;br/&gt;[siteurl]', 'yes') ; 
INSERT INTO `wp_options` VALUES (535, 'booking_email_deny_adress', '&quot;Booking system&quot; &lt;nick@wehatenick.com&gt;', 'yes') ; 
INSERT INTO `wp_options` VALUES (536, 'booking_email_deny_subject', 'Your booking has been declined', 'yes') ; 
INSERT INTO `wp_options` VALUES (537, 'booking_email_deny_content', 'Your booking [bookingtype] for: [dates] has been  canceled. &lt;br/&gt;&lt;br/&gt;[denyreason]&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt;Thank you, Edin Carpenter Makeup Artistry&lt;br/&gt;[siteurl]', 'yes') ; 
INSERT INTO `wp_options` VALUES (538, 'booking_is_email_reservation_adress', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (539, 'booking_is_email_approval_adress', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (540, 'booking_is_email_deny_adress', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (541, 'booking_widget_title', 'Booking form', 'yes') ; 
INSERT INTO `wp_options` VALUES (542, 'booking_widget_show', 'booking_form', 'yes') ; 
INSERT INTO `wp_options` VALUES (543, 'booking_widget_type', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (544, 'booking_widget_calendar_count', '1', 'yes') ; 
INSERT INTO `wp_options` VALUES (545, 'booking_widget_last_field', '', 'yes') ; 
INSERT INTO `wp_options` VALUES (546, 'booking_wpdev_copyright_adminpanel', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (547, 'booking_is_show_powered_by_notice', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (548, 'booking_is_use_captcha', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (549, 'booking_is_show_legend', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (550, 'booking_legend_is_show_item_available', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (551, 'booking_legend_text_for_item_available', 'Available', 'yes') ; 
INSERT INTO `wp_options` VALUES (552, 'booking_legend_is_show_item_pending', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (553, 'booking_legend_text_for_item_pending', 'Pending Confirmation', 'yes') ; 
INSERT INTO `wp_options` VALUES (554, 'booking_legend_is_show_item_approved', 'On', 'yes') ; 
INSERT INTO `wp_options` VALUES (555, 'booking_legend_text_for_item_approved', 'Booked', 'yes') ; 
INSERT INTO `wp_options` VALUES (580, '_site_transient_timeout_browser_b69641d2d7bcc44f549ced1604c4d328', '1407021779', 'yes') ; 
INSERT INTO `wp_options` VALUES (581, '_site_transient_browser_b69641d2d7bcc44f549ced1604c4d328', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"36.0.1985.125";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (614, '_site_transient_timeout_browser_e031bbc6802ffa5eb9cf57849f48e69b', '1407463865', 'yes') ; 
INSERT INTO `wp_options` VALUES (615, '_site_transient_browser_e031bbc6802ffa5eb9cf57849f48e69b', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"36.0.1985.125";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (639, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (640, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:51:"
	
	
	
	
	
	
		
		
	
	
		
		
		
		
		
		
		
		
		
	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:25:"http://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Jul 2014 21:15:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:42:"http://wordpress.org/?v=4.0-beta2-20140801";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.0 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 18 Jul 2014 21:15:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3261";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:374:"WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). For more of what’s new in version 4.0, check out [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1738:"<p>WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="http://wordpress.org/wordpress-4.0-beta2.zip">download the beta here</a> (zip).</p>
<p>For more of what’s new in version 4.0, <a href="http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/">check out the Beta 1 blog post</a>. Some of the changes in Beta 2 include:</p>
<ul>
<li>Further refinements for the the plugin installation and media library experiences.</li>
<li>Updated TinyMCE, which now includes better indentation for lists and the restoration of the color picker.</li>
<li>Cookies are now tied to a session internally, so if you have trouble logging in, <a href="https://core.trac.wordpress.org/ticket/20276">#20276</a> may be the culprit.</li>
<li>Various bug fixes (there were <a href="https://core.trac.wordpress.org/log?rev=29228&amp;stop_rev=29060&amp;limit=200">nearly 170 changes</a> since last week).</li>
</ul>
<p>If you think you’ve found a bug, you can post to the <a href="http://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="http://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="http://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.0">everything we’ve fixed</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.0 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Jul 2014 10:17:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3248";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.0 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4025:"<p>WordPress 4.0 Beta 1 is now available!</p>
<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.0, try the <a href="http://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.0-beta1.zip">download the beta here</a> (zip).</p>
<p>4.0 is due out next month, but to get there, we need your help testing what we&#8217;ve been working on:</p>
<ul>
<li><strong>Previews of <a href="http://codex.wordpress.org/Embeds">embedding via URLs</a></strong> in the visual editor and the &#8220;Insert from URL&#8221; tab in the media modal. Try pasting a URL (such as a <a href="http://wordpress.tv/">WordPress.tv</a> or YouTube video) onto its own line in the visual editor. (<a href="https://core.trac.wordpress.org/ticket/28195">#28195</a>, <a href="https://core.trac.wordpress.org/ticket/15490">#15490</a>)</li>
<li>The <strong>Media Library</strong> now has a &#8220;grid&#8221; view in addition to the existing list view. Clicking on an item takes you into a modal where you can see a larger preview and edit information about that attachment, and you can navigate between items right from the modal without closing it. (<a href="https://core.trac.wordpress.org/ticket/24716">#24716</a>)</li>
<li>We&#8217;re freshening up the <strong>plugin install experience</strong>. You&#8217;ll see some early visual changes as well as more information when searching for plugins and viewing details. (<a href="https://core.trac.wordpress.org/ticket/28785">#28785</a>, <a href="https://core.trac.wordpress.org/ticket/27440">#27440</a>)</li>
<li><strong>Selecting a language</strong> when you run the installation process. (<a href="https://core.trac.wordpress.org/ticket/28577">#28577</a>)</li>
<li>The <strong>editor</strong> intelligently resizes and its top and bottom bars pin when needed. Browsers don&#8217;t like to agree on where to put things like cursors, so if you find a bug here, please also let us know your browser and operating system. (<a href="https://core.trac.wordpress.org/ticket/28328">#28328</a>)</li>
<li>We&#8217;ve made some improvements to how your keyboard and cursor interact with <strong>TinyMCE views</strong> such as the gallery preview. Much like the editor resizing and scrolling improvements, knowing about your setup is particularly important for bug reports here. (<a href="https://core.trac.wordpress.org/ticket/28595">#28595</a>)</li>
<li><strong>Widgets in the Customizer</strong> are now loaded in a separate panel. (<a href="https://core.trac.wordpress.org/ticket/27406">#27406</a>)</li>
<li>We&#8217;ve also made some changes to some <strong>formatting</strong> functions, so if you see quotes curling in the wrong direction, please file a bug report.</li>
</ul>
<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="http://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="http://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.0">everything we’ve fixed</a> so far.</p>
<p><strong>Developers:</strong> Never fear, we haven&#8217;t forgotten you. There&#8217;s plenty for you, too &#8211; more on that in upcoming posts. In the meantime, check out the <a href="http://make.wordpress.org/core/2014/07/08/customizer-improvements-in-4-0/#customizer-panels">API for panels in the Customizer</a>.</p>
<p>Happy testing!</p>
<p><em>Plugins, editor</em><br />
<em>Media, things in between</em><br />
<em>Please help look for bugs</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/news/2014/07/wordpress-4-0-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 3.9.1 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/news/2014/05/wordpress-3-9-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/news/2014/05/wordpress-3-9-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 May 2014 18:40:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3241";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:385:"After three weeks and more than 9 million downloads of WordPress 3.9, we&#8217;re pleased to announce that WordPress 3.9.1 is now available. This maintenance release fixes 34 bugs in 3.9, including numerous fixes for multisite networks, customizing widgets while previewing themes, and the updated visual editor. We&#8217;ve also made some improvements to the new audio/video [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3077:"<p>After three weeks and more than 9 million downloads of <a title="WordPress 3.9 “Smith”" href="http://wordpress.org/news/2014/04/smith/">WordPress 3.9</a>, we&#8217;re pleased to announce that WordPress 3.9.1 is now available.</p>
<p>This maintenance release fixes 34 bugs in 3.9, including numerous fixes for multisite networks, customizing widgets while previewing themes, and the updated visual editor. We&#8217;ve also made some improvements to the new audio/video playlists feature and made some adjustments to improve performance. For a full list of changes, consult the <a href="https://core.trac.wordpress.org/query?milestone=3.9.1">list of tickets</a> and the <a href="https://core.trac.wordpress.org/log/branches/3.9?rev=28353&amp;stop_rev=28154">changelog</a>.</p>
<p>If you are one of the millions already running WordPress 3.9, we&#8217;ve started rolling out automatic background updates for 3.9.1. For sites <a href="http://wordpress.org/plugins/background-update-tester/">that support them</a>, of course.</p>
<p><a href="http://wordpress.org/download/">Download WordPress 3.9.1</a> or venture over to <strong>Dashboard → Updates</strong> and simply click &#8220;Update Now.&#8221;</p>
<p>Thanks to all of these fine individuals for contributing to 3.9.1: <a href="http://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="http://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="http://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="http://profiles.wordpress.org/rzen">Brian Richards</a>, <a href="http://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="http://profiles.wordpress.org/jupiterwise">Corey McKrill</a>, <a href="http://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="http://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="http://profiles.wordpress.org/feedmeastraycat">feedmeastraycat</a>, <a href="http://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="http://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="http://profiles.wordpress.org/imath">imath</a>, <a href="http://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="http://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="http://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="http://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="http://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="http://profiles.wordpress.org/m_i_n">m_i_n</a>, <a href="http://profiles.wordpress.org/clorith">Marius Jensen</a>, <a href="http://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="http://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="http://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="http://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="http://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="http://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, and <a href="http://profiles.wordpress.org/westonruter">Weston Ruter</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/05/wordpress-3-9-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"WordPress 3.9 “Smith”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"http://wordpress.org/news/2014/04/smith/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:49:"http://wordpress.org/news/2014/04/smith/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Apr 2014 18:33:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3154";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:411:"Version 3.9 of WordPress, named &#8220;Smith&#8221; in honor of jazz organist Jimmy Smith, is available for download or update in your WordPress dashboard. This release features a number of refinements that we hope you&#8217;ll love. A smoother media editing experience Improved visual editing The updated visual editor has improved speed, accessibility, and mobile support. You can paste into the [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:23298:"<p>Version 3.9 of WordPress, named &#8220;Smith&#8221; in honor of jazz organist <a href="http://en.wikipedia.org/wiki/Jimmy_Smith_(musician)">Jimmy Smith</a>, is available <a href="http://wordpress.org/download/">for download</a> or update in your WordPress dashboard. This release features a number of refinements that we hope you&#8217;ll love.</p>
<embed src="//v0.wordpress.com/player.swf?v=1.03" type="application/x-shockwave-flash" width="640" height="360" wmode="direct" seamlesstabbing="true" allowfullscreen="true" allowscriptaccess="always" overstretch="true" flashvars="guid=sAiXhCfV&amp;isDynamicSeeking=true" title=""></embed>
<h2 class="about-headline-callout" style="text-align: center">A smoother media editing experience</h2>
<div>
<p><img class="alignright wp-image-3168" src="//wordpress.org/news/files/2014/04/editor1-300x233.jpg" alt="editor" width="228" height="177" /></p>
<h3>Improved visual editing</h3>
<p>The updated visual editor has improved speed, accessibility, and mobile support. You can paste into the visual editor from your word processor without wasting time to clean up messy styling. (Yeah, we’re talking about you, Microsoft Word.)</p>
</div>
<div style="clear: both"></div>
<div>
<p><img class="alignright wp-image-3170" src="//wordpress.org/news/files/2014/04/image1-300x233.jpg" alt="image" width="228" height="178" /></p>
<h3>Edit images easily</h3>
<p>With quicker access to crop and rotation tools, it’s now much easier to edit your images while editing posts. You can also scale images directly in the editor to find just the right fit.</p>
</div>
<div style="clear: both"></div>
<div>
<p><img class="alignright wp-image-3187" src="//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg" alt="dragdrop" width="228" height="178" /></p>
<h3>Drag and drop your images</h3>
<p>Uploading your images is easier than ever. Just grab them from your desktop and drop them in the editor.</p>
</div>
<div style="clear: both"></div>
<hr />
<h2 style="text-align: center">Gallery previews</h2>
<p><img class="aligncenter size-full wp-image-3169" src="//wordpress.org/news/files/2014/04/gallery1.jpg" alt="gallery" width="980" height="550" /></p>
<p>Galleries display a beautiful grid of images right in the editor, just like they do in your published post.</p>
<hr />
<h2 style="text-align: center">Do more with audio and video</h2>

<a href=\'http://wordpress.org/news/files/2014/04/AintMisbehavin.mp3\'>Ain\'t Misbehavin\'</a>
<a href=\'http://wordpress.org/news/files/2014/04/DavenportBlues.mp3\'>Davenport Blues</a>
<a href=\'http://wordpress.org/news/files/2014/04/JellyRollMorton-BuddyBoldensBlues.mp3\'>Buddy Bolden\'s Blues</a>
<a href=\'http://wordpress.org/news/files/2014/04/Johnny_Hodges_Orchestra-Squaty_Roo-1941.mp3\'>Squaty Roo</a>
<a href=\'http://wordpress.org/news/files/2014/04/Louisiana_Five-Dixie_Blues-1919.mp3\'>Dixie Blues</a>
<a href=\'http://wordpress.org/news/files/2014/04/WolverineBlues.mp3\'>Wolverine Blues</a>

<p>Images have galleries; now we’ve added simple audio and video playlists, so you can showcase your music and clips.</p>
<hr />
<h2 style="text-align: center">Live widget and header previews</h2>
<div style="width: 692px; max-width: 100%;" class="wp-video"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->
<video class="wp-video-shortcode" id="video-3154-1" width="692" height="448" preload="metadata" controls="controls"><source type="video/mp4" src="//wordpress.org/news/files/2014/04/widgets.mp4?_=1" /><a href="//wordpress.org/news/files/2014/04/widgets.mp4">//wordpress.org/news/files/2014/04/widgets.mp4</a></video></div>
<p>Add, edit, and rearrange your site’s widgets right in the theme customizer. No “save and surprise” — preview your changes live and only save them when you’re ready.</p>
<p>The improved header image tool also lets you upload, crop, and manage headers while customizing your theme.</p>
<hr />
<h2 style="text-align: center">Stunning new theme browser</h2>
<p><img class="aligncenter size-full wp-image-3172" src="//wordpress.org/news/files/2014/04/theme1.jpg" alt="theme" width="1003" height="558" /><br />
Looking for a new theme should be easy and fun. Lose yourself in the boundless supply of free WordPress.org themes with the beautiful new theme browser.</p>
<hr />
<h2 style="text-align: center">The Crew</h2>
<p>This release was led by <a href="http://nacin.com/">Andrew Nacin</a> and <a href="http://www.getsource.net/">Mike Schroder</a>, with the help of these fine individuals. There are 267 contributors with props in this release, a new high:</p>
<p><a href="http://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="http://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="http://profiles.wordpress.org/kawauso">Adam Harley</a>, <a href="http://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="http://profiles.wordpress.org/adelval">adelval</a>, <a href="http://profiles.wordpress.org/ajay">Ajay</a>, <a href="http://profiles.wordpress.org/akeda">Akeda Bagus</a>, <a href="http://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="http://profiles.wordpress.org/tellyworth">Alex Shiels</a>, <a href="http://profiles.wordpress.org/aliso">Alison Barrett</a>, <a href="http://profiles.wordpress.org/collinsinternet">Allan Collins</a>, <a href="http://profiles.wordpress.org/sabreuse">Amy Hendrix (sabreuse)</a>, <a href="http://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="http://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="http://profiles.wordpress.org/norcross">Andrew Norcross</a>, <a href="http://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="http://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="http://profiles.wordpress.org/andykeith">Andy Keith</a>, <a href="http://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="http://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="http://profiles.wordpress.org/aubreypwd">Aubrey Portwood</a>, <a href="http://profiles.wordpress.org/barry">Barry</a>, <a href="http://profiles.wordpress.org/toszcze">Bartosz Romanowski</a>, <a href="http://profiles.wordpress.org/bassgang">bassgang</a>, <a href="http://profiles.wordpress.org/bcworkz">bcworkz</a>, <a href="http://profiles.wordpress.org/empireoflight">Ben Dunkle</a>, <a href="http://profiles.wordpress.org/neoxx">Bernhard Riedl</a>, <a href="http://profiles.wordpress.org/bigdawggi">bigdawggi</a>, <a href="http://profiles.wordpress.org/bobbravo2">Bob Gregor</a>, <a href="http://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="http://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="http://profiles.wordpress.org/bradparbs">bradparbs</a>, <a href="http://profiles.wordpress.org/bramd">bramd</a>, <a href="http://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="http://profiles.wordpress.org/brasofilo">brasofilo</a>, <a href="http://profiles.wordpress.org/bravokeyl">bravokeyl</a>, <a href="http://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="http://profiles.wordpress.org/cgaffga">cgaffga</a>, <a href="http://profiles.wordpress.org/chiragswadia">Chirag Swadia</a>, <a href="http://profiles.wordpress.org/chouby">Chouby</a>, <a href="http://profiles.wordpress.org/ehg">Chris Blower</a>, <a href="http://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="http://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="http://profiles.wordpress.org/chrisscott">Chris Scott</a>, <a href="http://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="http://profiles.wordpress.org/chrisguitarguy">chrisguitarguy</a>, <a href="http://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="http://profiles.wordpress.org/ciantic">ciantic</a>, <a href="http://profiles.wordpress.org/antorome">Comparativa de Bancos</a>, <a href="http://profiles.wordpress.org/cojennin">Connor Jennings</a>, <a href="http://profiles.wordpress.org/corvannoorloos">Cor van Noorloos</a>, <a href="http://profiles.wordpress.org/corphi">Corphi</a>, <a href="http://profiles.wordpress.org/cramdesign">cramdesign</a>, <a href="http://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="http://profiles.wordpress.org/redsweater">Daniel Jalkut (Red Sweater)</a>, <a href="http://profiles.wordpress.org/dannydehaan">Danny de Haan</a>, <a href="http://profiles.wordpress.org/koop">Daryl Koopersmith</a>, <a href="http://profiles.wordpress.org/eightface">Dave Kellam (eightface)</a>, <a href="http://profiles.wordpress.org/dpe415">DaveE</a>, <a href="http://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="http://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="http://profiles.wordpress.org/davidmarichal">David Marichal</a>, <a href="http://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="http://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="http://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="http://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="http://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="http://profiles.wordpress.org/drprotocols">DrProtocols</a>, <a href="http://profiles.wordpress.org/dustyf">Dustin Filippini</a>, <a href="http://profiles.wordpress.org/eatingrules">eatingrules</a>, <a href="http://profiles.wordpress.org/plocha">edik</a>, <a href="http://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="http://profiles.wordpress.org/enej">enej</a>, <a href="http://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="http://profiles.wordpress.org/ericmann">Eric Mann</a>, <a href="http://profiles.wordpress.org/evarlese">Erica Varlese</a>, <a href="http://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="http://profiles.wordpress.org/ejdanderson">Evan Anderson</a>, <a href="http://profiles.wordpress.org/fahmiadib">Fahmi Adib</a>, <a href="http://profiles.wordpress.org/fboender">fboender</a>, <a href="http://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="http://profiles.wordpress.org/garyc40">Gary Cao</a>, <a href="http://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="http://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="http://profiles.wordpress.org/genkisan">genkisan</a>, <a href="http://profiles.wordpress.org/soulseekah">Gennady Kovshenin</a>, <a href="http://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="http://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="http://profiles.wordpress.org/vancoder">Grant Mangham</a>, <a href="http://profiles.wordpress.org/gcorne">Gregory Cornelius</a>, <a href="http://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="http://profiles.wordpress.org/hakre">hakre</a>, <a href="http://profiles.wordpress.org/hanni">hanni</a>, <a href="http://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="http://profiles.wordpress.org/ippetkov">ippetkov</a>, <a href="http://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="http://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="http://profiles.wordpress.org/jackreichert">Jack Reichert</a>, <a href="http://profiles.wordpress.org/_jameslee">jameslee</a>, <a href="http://profiles.wordpress.org/avryl">Janneke Van Dorpe</a>, <a href="http://profiles.wordpress.org/janrenn">janrenn</a>, <a href="http://profiles.wordpress.org/jaycc">JayCC</a>, <a href="http://profiles.wordpress.org/jeffsebring">Jeff Sebring</a>, <a href="http://profiles.wordpress.org/jenmylo">Jen Mylo</a>, <a href="http://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="http://profiles.wordpress.org/jesin">Jesin A</a>, <a href="http://profiles.wordpress.org/jayjdk">Jesper Johansen (jayjdk)</a>, <a href="http://profiles.wordpress.org/jnielsendotnet">jnielsendotnet</a>, <a href="http://profiles.wordpress.org/jartes">Joan Artes</a>, <a href="http://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="http://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="http://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="http://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="http://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="http://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="http://profiles.wordpress.org/duck_">Jon Cave</a>, <a href="http://profiles.wordpress.org/jond3r">Jonas Bolinder (jond3r)</a>, <a href="http://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="http://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="http://profiles.wordpress.org/joshuaabenazer">Joshua Abenazer</a>, <a href="http://profiles.wordpress.org/jstraitiff">jstraitiff</a>, <a href="http://profiles.wordpress.org/juliobox">Julio Potier</a>, <a href="http://profiles.wordpress.org/kopepasah">Justin Kopepasah</a>, <a href="http://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="http://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="http://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="http://profiles.wordpress.org/kasparsd">Kaspars</a>, <a href="http://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="http://profiles.wordpress.org/kerikae">kerikae</a>, <a href="http://profiles.wordpress.org/kworthington">Kevin Worthington</a>, <a href="http://profiles.wordpress.org/kpdesign">Kim Parsell</a>, <a href="http://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="http://profiles.wordpress.org/kitchin">kitchin</a>, <a href="http://profiles.wordpress.org/klihelp">klihelp</a>, <a href="http://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="http://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="http://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="http://profiles.wordpress.org/drozdz">Krzysiek Drozdz</a>, <a href="http://profiles.wordpress.org/lancewillett">Lance Willett</a>, <a href="http://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="http://profiles.wordpress.org/lpointet">lpointet</a>, <a href="http://profiles.wordpress.org/ldebrouwer">Luc De Brouwer</a>, <a href="http://profiles.wordpress.org/spmlucas">Lucas Karpiuk</a>, <a href="http://profiles.wordpress.org/lkwdwrd">Luke Woodward</a>, <a href="http://profiles.wordpress.org/mark8barnes">Mark Barnes</a>, <a href="http://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="http://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="http://profiles.wordpress.org/marventus">Marventus</a>, <a href="http://profiles.wordpress.org/iammattthomas">Matt (Thomas) Miklic</a>, <a href="http://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="http://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="http://profiles.wordpress.org/mboynes">Matthew Boynes</a>, <a href="http://profiles.wordpress.org/mdbitz">Matthew Denton</a>, <a href="http://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="http://profiles.wordpress.org/mattonomics">mattonomics</a>, <a href="http://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="http://profiles.wordpress.org/matveb">Matías Ventura</a>, <a href="http://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="http://profiles.wordpress.org/mcadwell">mcadwell</a>, <a href="http://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="http://profiles.wordpress.org/meloniq">meloniq</a>, <a href="http://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="http://profiles.wordpress.org/michelwppi">Michel - xiligroup dev</a>, <a href="http://profiles.wordpress.org/mcsf">Miguel Fonseca</a>, <a href="http://profiles.wordpress.org/gradyetc">Mike Burns</a>, <a href="http://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="http://profiles.wordpress.org/mikemanger">Mike Manger</a>, <a href="http://profiles.wordpress.org/mikeschinkel">Mike Schinkel</a>, <a href="http://profiles.wordpress.org/dh-shredder">Mike Schroder</a>, <a href="http://profiles.wordpress.org/mikecorkum">mikecorkum</a>, <a href="http://profiles.wordpress.org/mitchoyoshitaka">mitcho (Michael Yoshitaka Erlewine)</a>, <a href="http://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="http://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="http://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="http://profiles.wordpress.org/Nao">Naoko Takano</a>, <a href="http://profiles.wordpress.org/alex-ye">Nashwan Doaqan</a>, <a href="http://profiles.wordpress.org/nendeb55">nendeb55</a>, <a href="http://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="http://profiles.wordpress.org/nicolealleyinteractivecom">Nicole Arnold</a>, <a href="http://profiles.wordpress.org/nikv">Nikhil Vimal (NikV)</a>, <a href="http://profiles.wordpress.org/nivijah">Nivi Jah</a>, <a href="http://profiles.wordpress.org/nofearinc">nofearinc</a>, <a href="http://profiles.wordpress.org/nunomorgadinho">Nuno Morgadinho</a>, <a href="http://profiles.wordpress.org/olivm">olivM</a>, <a href="http://profiles.wordpress.org/jbkkd">Omer Korner</a>, <a href="http://profiles.wordpress.org/originalexe">OriginalEXE</a>, <a href="http://profiles.wordpress.org/oso96_2000">oso96_2000</a>, <a href="http://profiles.wordpress.org/patricknami">patricknami</a>, <a href="http://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="http://profiles.wordpress.org/djpaul">Paul Gibbs</a>, <a href="http://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="http://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="http://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="http://profiles.wordpress.org/philiparthurmoore">Philip Arthur Moore</a>, <a href="http://profiles.wordpress.org/mordauk">Pippin Williamson</a>, <a href="http://profiles.wordpress.org/nprasath002">Prasath Nadarajah</a>, <a href="http://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="http://profiles.wordpress.org/raamdev">Raam Dev</a>, <a href="http://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="http://profiles.wordpress.org/mauryaratan">Ram Ratan Maurya</a>, <a href="http://profiles.wordpress.org/ramonchiara">ramonchiara</a>, <a href="http://profiles.wordpress.org/ounziw">Rescuework Support</a>, <a href="http://profiles.wordpress.org/rhyswynne">Rhys Wynne</a>, <a href="http://profiles.wordpress.org/ricardocorreia">Ricardo Correia</a>, <a href="http://profiles.wordpress.org/theorboman">Richard Sweeney</a>, <a href="http://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="http://profiles.wordpress.org/richard2222">richard2222</a>, <a href="http://profiles.wordpress.org/rickalee">Ricky Lee Whittemore</a>, <a href="http://profiles.wordpress.org/miqrogroove">Robert Chapin</a>, <a href="http://profiles.wordpress.org/robmiller">robmiller</a>, <a href="http://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="http://profiles.wordpress.org/romaimperator">romaimperator</a>, <a href="http://profiles.wordpress.org/roothorick">roothorick</a>, <a href="http://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="http://profiles.wordpress.org/ryan">Ryan Boren</a>, <a href="http://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="http://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="http://profiles.wordpress.org/otto42">Samuel Wood (Otto)</a>, <a href="http://profiles.wordpress.org/sandyr">Sandeep</a>, <a href="http://profiles.wordpress.org/scottlee">Scott Lee</a>, <a href="http://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="http://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="http://profiles.wordpress.org/greglone">ScreenfeedFr</a>, <a href="http://profiles.wordpress.org/scribu">scribu</a>, <a href="http://profiles.wordpress.org/sdasse">sdasse</a>, <a href="http://profiles.wordpress.org/bootsz">Sean Butze</a>, <a href="http://profiles.wordpress.org/seanchayes">Sean Hayes</a>, <a href="http://profiles.wordpress.org/nessworthy">Sean Nessworthy</a>, <a href="http://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="http://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="http://profiles.wordpress.org/shaunandrews">Shaun Andrews</a>, <a href="http://profiles.wordpress.org/shinichin">ShinichiN</a>, <a href="http://profiles.wordpress.org/pross">Simon Prosser</a>, <a href="http://profiles.wordpress.org/simonwheatley">Simon Wheatley</a>, <a href="http://profiles.wordpress.org/siobhan">Siobhan</a>, <a href="http://profiles.wordpress.org/siobhyb">Siobhan Bamber (siobhyb)</a>, <a href="http://profiles.wordpress.org/sirzooro">sirzooro</a>, <a href="http://profiles.wordpress.org/solarissmoke">solarissmoke</a>, <a href="http://profiles.wordpress.org/sonjanyc">sonjanyc</a>, <a href="http://profiles.wordpress.org/spencerfinnell">Spencer Finnell</a>, <a href="http://profiles.wordpress.org/piontkowski">Spencer Piontkowski</a>, <a href="http://profiles.wordpress.org/stephcook22">stephcook22</a>, <a href="http://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="http://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="http://profiles.wordpress.org/sbruner">Steve Bruner</a>, <a href="http://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="http://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="http://profiles.wordpress.org/tanner-m">Tanner Moushey</a>, <a href="http://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="http://profiles.wordpress.org/tbrams">tbrams</a>, <a href="http://profiles.wordpress.org/tobiasbg">TobiasBg</a>, <a href="http://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="http://profiles.wordpress.org/willmot">Tom Willmot</a>, <a href="http://profiles.wordpress.org/topher1kenobe">Topher</a>, <a href="http://profiles.wordpress.org/topquarky">topquarky</a>, <a href="http://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="http://profiles.wordpress.org/toru">Toru</a>, <a href="http://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="http://profiles.wordpress.org/umeshsingla">Umesh Kumar</a>, <a href="http://profiles.wordpress.org/undergroundnetwork">undergroundnetwork</a>, <a href="http://profiles.wordpress.org/varunagw">VarunAgw</a>, <a href="http://profiles.wordpress.org/wawco">wawco</a>, <a href="http://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="http://profiles.wordpress.org/wokamoto">wokamoto</a>, <a href="http://profiles.wordpress.org/xsonic">xsonic</a>, <a href="http://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="http://profiles.wordpress.org/yurivictor">Yuri Victor</a>, <a href="http://profiles.wordpress.org/zbtirrell">Zach Tirrell</a>, and <a href="http://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>. Also thanks to <a href="http://michaelpick.wordpress.com/">Michael Pick</a> for producing the release video.</p>
<p>If you want to follow along or help out, check out <a href="http://make.wordpress.org/">Make WordPress</a> and our <a href="http://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.0!</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/news/2014/04/smith/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress 3.9 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:77:"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Apr 2014 09:47:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3151";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:356:"The second release candidate for WordPress 3.9 is now available for testing. If you haven&#8217;t tested 3.9 yet, you&#8217;re running out of time! We made about five dozen changes since the first release candidate, and those changes are all helpfully summarized in our weekly post on the development blog. Probably the biggest fixes are to live [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2273:"<p>The second release candidate for WordPress 3.9 is now available for testing.</p>
<p>If you haven&#8217;t tested 3.9 yet, you&#8217;re running out of time! We made about five dozen changes since the <a title="WordPress 3.9 Release Candidate" href="//wordpress.org/news/2014/04/wordpress-3-9-release-candidate/">first release candidate</a>, and those changes are all helpfully summarized <a href="//make.wordpress.org/core/?p=10237">in our weekly post</a> on the development blog. Probably the biggest fixes are to live widget previews and the new theme browser, along with some extra TinyMCE compatibility and some RTL fixes.</p>
<p><strong>Plugin authors:</strong> Could you test your plugins against 3.9, and if they&#8217;re compatible, make sure they are marked as tested up to 3.9? It only takes a few minutes and this really helps make launch easier. Be sure to follow along the core development blog; we&#8217;ve been posting <a href="//make.wordpress.org/core/tag/3-9-dev-notes/">notes for developers for 3.9</a>. (For example: <a href="//make.wordpress.org/core/2014/04/15/html5-galleries-captions-in-wordpress-3-9/">HTML5</a>, <a href="//make.wordpress.org/core/2014/04/14/symlinked-plugins-in-wordpress-3-9/">symlinks</a>, <a href="//make.wordpress.org/core/2014/04/07/mysql-in-wordpress-3-9/">MySQL</a>, <a href="//make.wordpress.org/core/2014/04/11/plupload-2-x-in-wordpress-3-9/">Plupload</a>.)</p>
<p>To test WordPress 3.9 RC2, try the <a href="//wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="//wordpress.org/wordpress-3.9-RC2.zip">download the release candidate here</a> (zip). If you’d like to learn more about what’s new in WordPress 3.9, visit the nearly complete About screen in your dashboard (<strong><img src="//i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692" alt="" width="16" height="16" /> → About</strong> in the toolbar) and also check out <a title="WordPress 3.9 Beta 1" href="//wordpress.org/news/2014/03/wordpress-3-9-beta-1/">the Beta 1 post</a>.</p>
<p><em>This is for testing,</em><br />
<em>so not recommended for<br />
production sites—yet.</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 3.8.3 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/news/2014/04/wordpress-3-8-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/news/2014/04/wordpress-3-8-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 14 Apr 2014 19:29:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3145";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:338:"WordPress 3.8.3 is now available to fix a small but unfortunate bug in the WordPress 3.8.2 security release. The &#8220;Quick Draft&#8221; tool on the dashboard screen was broken in the 3.8.2 update. If you tried to use it, your draft would disappear and it wouldn&#8217;t save. While we doubt anyone was writing a novella using [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2339:"<p>WordPress 3.8.3 is now available to fix a small but unfortunate bug in the <a title="WordPress 3.8.2 Security Release" href="http://wordpress.org/news/2014/04/wordpress-3-8-2/">WordPress 3.8.2 security release</a>.</p>
<p>The &#8220;Quick Draft&#8221; tool on the dashboard screen was broken in the 3.8.2 update. If you tried to use it, your draft would disappear and it wouldn&#8217;t save. While we doubt anyone was writing a novella using this tool, <em>any</em> loss of content is unacceptable to us.</p>
<p>We recognize how much trust you place in us to safeguard your content, and we take this responsibility very seriously. We&#8217;re sorry we let you down.</p>
<p>We&#8217;ve all lost words we&#8217;ve written before, like an email thanks to a cat on the keyboard or a term paper to a blue screen of death. Over the last few WordPress releases, we&#8217;ve made a number of improvements to features like autosaves and revisions. With revisions, an old edit can always be restored. We&#8217;re trying our hardest to save your content somewhere even if your power goes out or your browser crashes. We even monitor your internet connection and prevent you from hitting that &#8220;Publish&#8221; button at the exact moment the coffee shop Wi-Fi has a hiccup.</p>
<p>It&#8217;s <em>possible</em> that the quick draft you lost last week is still in the database, and just hidden from view. As an added complication, these &#8220;discarded drafts&#8221; normally get deleted after seven days, and it&#8217;s already been six days since the release. If we were able to rescue your draft, you&#8217;ll see it on the &#8220;All Posts&#8221; screen after you update to 3.8.3. (We&#8217;ll also be pushing 3.8.3 out as a background update, so you may just see a draft appear.)</p>
<p>So, if you tried to jot down a quick idea last week, I hope WordPress has recovered it for you. Maybe it&#8217;ll turn into that novella.</p>
<p><a href="http://wordpress.org/download/">Download WordPress 3.8.3</a> or click &#8220;Update Now&#8221; on Dashboard → Updates.</p>
<p><em>This affected version 3.7.2 as well, so we&#8217;re pushing a 3.7.3 to these installs, but we&#8217;d encourage you to update to the latest and greatest.</em></p>
<hr />
<p><em>Now for some good news:<br />
WordPress 3.9 is near.<br />
Expect it this week</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/04/wordpress-3-8-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 3.9 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 08 Apr 2014 21:05:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3129";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:338:"As teased earlier, the first release candidate for WordPress 3.9 is now available for testing! We hope to ship WordPress 3.9 next week, but we need your help to get there. If you haven’t tested 3.9 yet, there’s no time like the present. (Please, not on a production site, unless you’re adventurous.) To test WordPress 3.9 [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2967:"<p><a href="//wordpress.org/news/2014/04/wordpress-3-8-2/">As teased earlier</a>, the first release candidate for WordPress 3.9 is now available for testing!</p>
<p>We hope to ship WordPress 3.9 <em>next week</em>, but we need your help to get there. If you haven’t tested 3.9 yet, there’s no time like the present. (Please, not on a production site, unless you’re adventurous.)</p>
<p>To test WordPress 3.9 RC1, try the <a href="//wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="//wordpress.org/wordpress-3.9-RC1.zip">download the release candidate here</a> (zip). If you’d like to learn more about what’s new in WordPress 3.9, visit the work-in-progress About screen in your dashboard (<strong><img src="//i0.wp.com/core.svn.wordpress.org/branches/3.6/wp-content/themes/twentyten/images/wordpress.png?w=692" alt="" width="16" height="16" /> → About</strong> in the toolbar) and check out <a title="WordPress 3.9 Beta 1" href="//wordpress.org/news/2014/03/wordpress-3-9-beta-1/">the Beta 1 post</a>.</p>
<p><strong>Think you’ve found a bug? </strong>Please post to the <a href="//wordpress.org/support/forum/alphabeta/">Alpha/Beta area in the support forums</a>. If any known issues come up, you’ll be able to <a href="//core.trac.wordpress.org/report/5">find them here</a>.</p>
<p><strong>If you&#8217;re a plugin author</strong>, there are two important changes in particular to be aware of:</p>
<ul>
<li>TinyMCE received a major update, to version 4.0. Any editor plugins written for TinyMCE 3.x might require some updates. (If things broke, we&#8217;d like to hear about them so we can make adjustments.) For more, see TinyMCE&#8217;s <a href="http://www.tinymce.com/wiki.php/Tutorial:Migration_guide_from_3.x">migration guide</a> and <a href="http://www.tinymce.com/wiki.php/api4:index">API documentation</a>, and the notes on the <a href="//make.wordpress.org/core/2014/01/18/tinymce-4-0-is-in-core/">core development blog</a>.</li>
<li>WordPress 3.9 now uses the MySQLi Improved extension for sites running PHP 5.5. Any plugins that made direct calls to <code>mysql_*</code> functions will experience some problems on these sites. For more information, see the notes on the <a href="//make.wordpress.org/core/2014/04/07/mysql-in-wordpress-3-9/">core development blog</a>.</li>
</ul>
<p>Be sure to follow along the core development blog, where we will be continuing to post <a href="//make.wordpress.org/core/tag/3-9-dev-notes/">notes for developers for 3.9</a>. (For example, read <a href="//make.wordpress.org/core/2014/03/27/masonry-in-wordpress-3-9/">this</a> if you are using Masonry in your theme.) And please, please update your plugin&#8217;s <em>Tested up to</em> version in the readme to 3.9 before April 16.</p>
<p><em>Release candidate<br />
This haiku&#8217;s the easy one<br />
3.9 is near</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wordpress.org/news/2014/04/wordpress-3-9-release-candidate/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 3.8.2 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/news/2014/04/wordpress-3-8-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/news/2014/04/wordpress-3-8-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 08 Apr 2014 19:04:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3124";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:355:"WordPress 3.8.2 is now available. This is an important security release for all previous versions and we strongly encourage you to update your sites immediately. This releases fixes a weakness that could let an attacker force their way into your site by forging authentication cookies. This was discovered and fixed by Jon Cave of the WordPress [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2272:"<p>WordPress 3.8.2 is now available. This is an important security release for all previous versions and we strongly encourage you to update your sites immediately.</p>
<p>This releases fixes a weakness that could let an attacker force their way into your site by forging authentication cookies. This was discovered and fixed by <a href="http://joncave.co.uk/">Jon Cave</a> of the WordPress security team.</p>
<p>It also contains a fix to prevent a user with the Contributor role from improperly publishing posts. Reported by <a href="http://edik.ch/">edik</a>.</p>
<p>This release also fixes nine bugs and contains three other security hardening changes:</p>
<ul>
<li>Pass along additional information when processing pingbacks to help hosts identify potentially abusive requests.</li>
<li>Fix a low-impact SQL injection by trusted users. Reported by <a href="http://www.dxw.com/">Tom Adams</a> of dxw.</li>
<li>Prevent possible cross-domain scripting through Plupload, the third-party library WordPress uses for uploading files. Reported by <a href="http://szgru.website.pl/">Szymon Gruszecki</a>.</li>
</ul>
<p>We appreciated <a href="http://codex.wordpress.org/FAQ_Security">responsible disclosure</a> of these security issues directly to our security team. For more information on all of the changes, see the <a href="http://codex.wordpress.org/Version_3.8.2">release notes</a> or consult <a href="https://core.trac.wordpress.org/log/branches/3.8?rev=28057&amp;stop_rev=27024">the list of changes</a>.</p>
<p><a href="http://wordpress.org/download/">Download WordPress 3.8.2</a> or venture over to <strong>Dashboard → Updates</strong> and simply click &#8220;Update Now.&#8221;</p>
<p>Sites that support automatic background updates will be updated to WordPress 3.8.2 within 12 hours. If you are still on WordPress 3.7.1, you will be updated to 3.7.2, which contains the same security fixes as 3.8.2. We don&#8217;t support older versions, so please update to 3.8.2 for the latest and greatest.</p>
<p>Already testing WordPress 3.9? The first release candidate is <a href="https://wordpress.org/wordpress-3.9-RC1.zip">now available</a> (zip) and it contains these security fixes. Look for a full announcement later today; we expect to release 3.9 next week.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/04/wordpress-3-8-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 3.9 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/03/wordpress-3-9-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/news/2014/03/wordpress-3-9-beta-3/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 29 Mar 2014 13:15:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3106";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"The third (and maybe last) beta of WordPress 3.9 is now available for download. Beta 3 includes more than 200 changes, including: New features like live widget previews and the new theme installer are now more ready for prime time, so check &#8216;em out. UI refinements when editing images and when working with media in the editor. We&#8217;ve also brought [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2668:"<p>The third (and maybe last) beta of WordPress 3.9 is now available for download.</p>
<p>Beta 3 includes more than 200 <a href="https://core.trac.wordpress.org/log?rev=27850&amp;stop_rev=27639&amp;limit=300">changes</a>, including:</p>
<ul>
<li>New features like live widget previews and the new theme installer are now more ready for prime time, so check &#8216;em out.</li>
<li>UI refinements when editing images and when working with media in the editor. We&#8217;ve also brought back some of the advanced display settings for images.</li>
<li>If you want to test out audio and video playlists, the links will appear in the media manager once you&#8217;ve uploaded an audio or video file.</li>
<li>For theme developers, we&#8217;ve added HTML5 caption support (<a class="reopened ticket" title="task (blessed): HTML5 captions (reopened)" href="https://core.trac.wordpress.org/ticket/26642">#26642</a>) to match the new gallery support (<a class="closed ticket" title="enhancement: HTML5 Galleries (closed: fixed)" href="https://core.trac.wordpress.org/ticket/26697">#26697</a>).</li>
<li>The formatting function that turns straight quotes into smart quotes (among other things) underwent some changes to drastically speed it up, so let us know if you see anything weird.</li>
</ul>
<p><strong>We need your help</strong>. We&#8217;re still aiming for an April release, which means the next week will be critical for identifying and squashing bugs. If you&#8217;re just joining us, please see <a href="https://wordpress.org/news/2014/03/wordpress-3-9-beta-1/">the Beta 1 announcement post</a> for what to look out for.</p>
<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="http://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums, where friendly moderators are standing by. <b>Plugin developers</b><strong>,</strong> if you haven&#8217;t tested WordPress 3.9 yet, now is the time — and be sure to update the &#8220;tested up to&#8221; version for your plugins so they&#8217;re listed as compatible with 3.9.</p>
<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 3.9, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="http://wordpress.org/wordpress-3.9-beta3.zip">download the beta here</a> (zip).</p>
<p><em>WordPress 3.9<br />
Let&#8217;s make the date official<br />
It&#8217;s April 16</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/news/2014/03/wordpress-3-9-beta-3/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 3.9 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/news/2014/03/wordpress-3-9-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/news/2014/03/wordpress-3-9-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Mar 2014 05:01:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://wordpress.org/news/?p=3101";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:309:"WordPress 3.9 Beta 2 is now available for testing! We&#8217;ve made more than a hundred changes since Beta 1, but we still need your help if we&#8217;re going to hit our goal of an April release. For what to look out for, please head on over to the Beta 1 announcement post. Some of the changes in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Andrew Nacin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1901:"<p>WordPress 3.9 Beta 2 is now available for testing!</p>
<p>We&#8217;ve made more than a hundred <a href="https://core.trac.wordpress.org/log?rev=27639&amp;stop_rev=27500&amp;limit=200">changes</a> since Beta 1, but we still need your help if we&#8217;re going to hit our goal of an April release. For what to look out for, please head on over to <a href="https://wordpress.org/news/2014/03/wordpress-3-9-beta-1/">the Beta 1 announcement post</a>. Some of the changes in Beta 2 include:</p>
<ul>
<li>Rendering of embedded audio and video players directly in the visual editor.</li>
<li>Visual and functional improvements to the editor, the media manager, and theme installer.</li>
<li>Various bug fixes to TinyMCE, the software behind the visual editor.</li>
<li>Lots of fixes to widget management in the theme customizer.</li>
</ul>
<p>As always,<strong> if you think you’ve found a bug</strong>, you can post to the <a href="http://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="http://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="http://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=3.9">everything we’ve fixed</a> so far.</p>
<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 3.9, try the <a href="http://wordpress.org/extend/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="http://wordpress.org/wordpress-3.9-beta2.zip">download the beta here</a> (zip).</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"http://wordpress.org/news/2014/03/wordpress-3-9-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:31:"http://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 05 Aug 2014 02:54:25 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:10:"x-pingback";s:36:"http://wordpress.org/news/xmlrpc.php";s:13:"last-modified";s:29:"Fri, 18 Jul 2014 21:15:58 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911110210";}', 'no') ; 
INSERT INTO `wp_options` VALUES (641, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (642, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1407207264', 'no') ; 
INSERT INTO `wp_options` VALUES (643, '_transient_timeout_feed_867bd5c64f85878d03a060509cd2f92c', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (644, '_transient_feed_867bd5c64f85878d03a060509cd2f92c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"
	
	
	
	




















































";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: Piklist Launches Beta Program Ahead of Commercial Product Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27673";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:196:"http://wptavern.com/piklist-launches-beta-program-ahead-of-commercial-product-releases?utm_source=rss&utm_medium=rss&utm_campaign=piklist-launches-beta-program-ahead-of-commercial-product-releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2445:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/02/piklist-featured.jpg" rel="prettyphoto[27673]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/02/piklist-featured.jpg?resize=892%2C389" alt="piklist-featured" class="aligncenter size-full wp-image-16561" /></a></p>
<p>Earlier this year, the <a href="https://piklist.com" target="_blank">Piklist</a> rapid development framework for WordPress rebranded with its 0.9.0 release and the team <a href="http://wptavern.com/piklist-wordpress-development-framework-rebrands-plans-to-launch-commercial-products" target="_blank">announced plans to launch commercial products</a>. The framework is used by many developers to speed up tasks such as creating fields for settings pages, registering custom post types and custom taxonomies, adding post-to-post relationships and much more.</p>
<p>The core <a href="https://piklist.com" target="_blank">Piklist framework</a> is free and open source and will always remain so. Its developers are working on supporting it with commercial extensions, a business model that has proved to be largely successful in the WordPress community. With the version 1.0 release right around the corner, the commercial products are now in beta and ready for testing.</p>
<p>Piklist developers are currently <a href="https://piklist.com/2014/08/04/test-drive-new-products-piklist-beta-program/" target="_blank">accepting beta signups</a> for the Piklist Toolbox and Piklist Fields and Forms. The Toolbox plugin allows you to easily manage post types, taxonomies, and advanced settings:</p>
<p><span class="embed-youtube"></span></p>
<p>The Piklist Fields and Forms plugin allow you to edit and add fields to metaboxes with the ease of a point-and-click UI:</p>
<p><span class="embed-youtube"></span></p>
<p>The framework&#8217;s development team is convinced that Piklist is to WordPress what Rails is to Ruby. They plan to release a family of plugins and support packages will help fund the future of the framework. These plugins will work together, connecting and enhancing various aspects of the framework. If you are a WordPress developer who depends on Piklist to make your life easier, consider <a href="https://piklist.com/product/category/beta/" target="_blank">signing up for the beta testing programs</a>. Beta testers will have access to pre-release versions and will play a significant role in shaping products in the pipeline.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 20:38:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"WPTavern: This Week On WPWeekly: Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27647";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:134:"http://wptavern.com/this-week-on-wpweekly-jeff-chandler?utm_source=rss&utm_medium=rss&utm_campaign=this-week-on-wpweekly-jeff-chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1281:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/01/WordPressWeeklyFeaturedImage.jpg" rel="prettyphoto[27647]"><img class="aligncenter size-full wp-image-15429" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/01/WordPressWeeklyFeaturedImage.jpg?resize=650%2C200" alt="WordPress Weekly Featured Image" /></a></p>
<p>You may be thinking, of course he&#8217;s going to be on the show, he&#8217;s the host! This week, I&#8217;m experimenting with the show by being the one who is interviewed instead of the other way around. My co-host Marcus Couch, will be the one asking the questions.</p>
<p>Throughout the show&#8217;s lifespan, I&#8217;ve spent countless hours interviewing some of the brightest minds in the WordPress community. WordPress Weekly is a show that satisfies my curiosity but it&#8217;s not often that I have the chance to solely express what&#8217;s on my mind. I&#8217;ll be giving Marcus a few questions of topics I&#8217;d like to talk about but the rest will be his and those submitted by the audience.</p>
<p>This is a unique opportunity to ask me anything you want. Everything from being a remote worker, how I work, to writing about WordPress everyday is on the table. If you have any questions, submit them using the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 19:54:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: Prestige Business Conference For WordPress Set For Oct 3-5, 2014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27550";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:190:"http://wptavern.com/prestige-business-conference-for-wordpress-set-for-oct-3-5-2014?utm_source=rss&utm_medium=rss&utm_campaign=prestige-business-conference-for-wordpress-set-for-oct-3-5-2014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5618:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/08/PrestigeConfLogo.png" rel="prettyphoto[27550]"><img class="alignright size-full wp-image-27630" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/08/PrestigeConfLogo.png?resize=275%2C233" alt="Prestige Conference Logo" /></a>Prestige is a <a title="http://prestigeconf.com/" href="http://prestigeconf.com/">new conference</a> that is taking place October 3-5, 2014 in downtown Minneapolis, Minnesota and is being organized by Josh Broton and Kiko Doran. Unlike WordCamps, Prestige only has one track and its devoted to the business of WordPress. Tickets <a title="http://prestigeconf.com/tickets/" href="http://prestigeconf.com/tickets/">are on sale</a> and if you can&#8217;t make it to the event in person, consider the live stream option. You can save money by purchasing tickets during the early bird pricing period which ends August 15th or when tickets sell out.</p>
<p>The Friday night of the event features an opportunity to hangout with the speakers in a casual atmosphere and ask questions. Saturday will have one track focused on the business of WordPress. There is a one day theme workshop planned for Sunday. In six hours, you&#8217;ll learn what it takes to build a WordPress theme.</p>
<h2>An Experimental Conference</h2>
<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/05/experiment.jpg" rel="prettyphoto[27550]"><img class="size-full wp-image-22252" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/05/experiment.jpg?resize=1025%2C484" alt="photo credit: CIMMYT - cc" /></a>photo credit: <a href="http://www.flickr.com/photos/cimmyt/6801601408/">CIMMYT</a> &#8211; <a href="http://creativecommons.org/licenses/by-nc-sa/2.0/">cc</a>
<p>By not using the WordCamp name opens the door for experimentation and to try out new ideas. &#8220;Not because we disagree with how WordCamps are run, but because that demand is met by WordCamps. This gives the members of our community an opportunity to learn from the very best,&#8221; Broton said.</p>
<p>Although Prestige is similar to a WordCamp, the duo compares it to <a title="http://wpsessions.com/" href="http://wpsessions.com/">WPSessions</a> in that, they are creating custom, tailor-made events. &#8220;I love the WPSessions model. I think Brian Richards is doing some awesome stuff that is custom tailored. That&#8217;s what we&#8217;re aiming for. Custom Tailored live events,&#8221; Doran told the Tavern.</p>
<p>One of the biggest differences between Prestige and WordCamps is that the organizers are paying for the speakers travel, accommodations, and food.  &#8220;I&#8217;ve spoken at 25 conferences in the last two years, including five WordCamps, so I know the burden that a lot of travel places on my work, my family, and my checkbook. We wanted to make sure the speakers were compensated for their travel and shown a great time, because they deserve it,&#8221; Broton told the Tavern.</p>
<h2>A WordCamp Conundrum</h2>
<p>In 2013, two organizers put together an independent conference in their city instead of doing another WordCamp. Andrea Middleton responded by <a title="http://make.wordpress.org/events/2013/08/20/organizing-a-non-wordcamp/" href="http://make.wordpress.org/events/2013/08/20/organizing-a-non-wordcamp/">publishing a post</a> explaining there is room to experiment while still being called a WordCamp. It also has advice on how to transition between organizing a WordCamp and a self-organized WordPress event in the same city.</p>
<blockquote><p>Before blazing a new trail, it’s worth checking with WordCamp Central to see if the event type you want to run could take place under the official banner — new event types are encouraged — so you can keep the benefits associated with being an official WordPress event.</p></blockquote>
<p>Since WordCamps are local, annual, events held in medium to large cities, how do you propose organizers that want to focus on just one topic do so under the WordCamp umbrella? Are we going to end up with multiple WordCamps in the same year and in the same city but with different names?</p>
<h2>Laser Focused WordPress Conferences</h2>
<p>Prestige is another example of a focused WordPress event. While WordCamps have been ongoing <a title="http://central.wordcamp.org/about/" href="http://central.wordcamp.org/about/">since 2006</a>, there are only a few WordPress conferences that don&#8217;t use the WordCamp name. One example is <a title="http://pressnomics.com/" href="http://pressnomics.com/">PressNomics</a>, which has quickly become one of the premiere, annual events, dedicated to the business of WordPress. WooThemes, the developers of WooCommerce are hosting <a title="http://conf.woocommerce.com/" href="http://conf.woocommerce.com/">WooConf</a>, the first conference dedicated to WooCommerce later this year.</p>
<p>It&#8217;s encouraging to see more WordPress conferences devoted to specific topics versus having multiple tracks. This is already starting to happen within WordCamps like <a title="http://wptavern.com/wordcamp-vancouver-to-hold-developer-edition-in-july" href="http://wptavern.com/wordcamp-vancouver-to-hold-developer-edition-in-july">WordCamp Developer Edition: Vancouver</a> which focused on developers. Even though most sessions are recorded at WordCamps, I find it refreshing to only have one track to attend, with awesome speakers, devoted to a specific topic.</p>
<p>Will you be attending the Prestige conference in person or will you opt for the livestream? Do you want to see more WordPress focused events like PressNomics and Prestige?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 19:26:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:100:"Post Status: Week in review: Themeforest changes, Jetpack 3.1, Polar Polls, Yoast and Sucuri partner";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://www.poststat.us/?p=6998";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:114:"http://www.poststat.us/week-review-jetpack-3-1/?utm_source=rss&utm_medium=rss&utm_campaign=week-review-jetpack-3-1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4965:"<p><img class="aligncenter size-large wp-image-6769" src="http://www.poststat.us/wp-content/uploads/2014/06/week-in-review1-752x300.jpg" alt="week-in-review" width="752" height="300" />Welcome to the sixth “<a href="http://www.poststat.us/category/week-in-review/">Week in Review</a>” on Post Status, where I hope to offer up some of the things you may have missed in the last week or so. Unfortunately, I haven&#8217;t posted since the last week in review. Trust me, that&#8217;ll change this week. There are already a lot of posts lined up for some upcoming news.</p>
<p>Fortunately, others in our community have been busy bees, writing away. Let&#8217;s dive into the news:</p>
<h3>Themeforest adds a $3 hike to items and author team support</h3>
<p>Themeforest is in the process of making some subtle, but overall significant, changes to their marketplaces. Last week they announced new <a href="http://themeforest.net/forums/thread/-new-feature-author-teams/137753">support for author teams</a> on Themeforest items.</p>
<p>Even more significant <a href="http://notes.envato.com/general/price-changes-across-the-marketplaces/">is a price hike, effectively immediately</a>, that looks to be basically a $3 hike across all, or at least most, items. That ends up being 5 or 6% for most stuff, and for top sellers will mean tens of thousands of dollars of new revenue for their items.</p>
<p>I don&#8217;t think we&#8217;re seeing the end of changes for Themeforest. Keep on the lookout for more here &#8212; especially in regard to renewable licensing, which I think is on the way.<span id="more-6998"></span></p>
<h3>Jetpack 3.1 includes custom content types</h3>
<p><img class="aligncenter size-large wp-image-7000" src="http://www.poststat.us/wp-content/uploads/2014/08/jetpack-752x296.gif" alt="jetpack" width="752" height="296" /></p>
<p>Jetpack<a href="http://jetpack.me/2014/07/31/jetpack-3-1-portfolio-custom-post-types-a-new-logo-and-much-more/"> released version 3.1</a>, which officially includes the custom content types module I&#8217;ve <a title="WordPress.com and Jetpack should lead the way toward standardizing custom post types" href="http://www.poststat.us/wordpress-com-jetpack-lead-way-toward-standardizing-custom-post-types/">already talked about before</a>. Phillip Arthur Moore also <a href="https://philiparthurmoore.com/cpts-jetpack-standardization/">added some good notes</a> on that topic.</p>
<p>They also unleashed a new snazzy logo, and some developer friendly features.</p>
<p>Jetpack is a big focus for Automattic, and as it matures, I&#8217;m quite interested to see how they further open up monetization opportunities with it. They already do small things, like some recent VaultPress trials, but I have a feeling we&#8217;ll be seeing much more over coming months and years.</p>
<h3>New to me: Polar polls</h3>
<p><img class="aligncenter size-large wp-image-7001" src="http://www.poststat.us/wp-content/uploads/2014/08/polar-752x243.png" alt="polar" width="752" height="243" /></p>
<p><a href="http://www.polarb.com/">Polar</a> seems to have launched in 2012, but they have what I think is a new WordPress plugin that enables poll embedding on WordPress sites.</p>
<p>If you are looking for Polldaddy or Gravity Forms Polls alternatives, you may want to check out the <a href="https://wordpress.org/plugins/polar-polls/">Polar WordPress plugin</a>. The design of these polls is super visual and seems quite nice.</p>
<p><a href="http://www.crunchbase.com/organization/polar">According to Crunchbase</a>, they&#8217;ve gotten a couple million in funding, with their latest round this year, and the app looks quite nice.</p>
<h3>Steps to becoming a world-class programmer, in a lifetime</h3>
<p>Tom McFarlin <a href="http://tommcfarlin.com/becoming-a-world-class-programmer/">continues to drop knowledge</a>, this time telling you how to be a world class programmer. But be prepared, it takes some time!</p>
<h3>Sucuri and Yoast partner</h3>
<p>Yoast and Sucuri are partnering for a trade swap, if you will. Sucuri will provide regular security audits for Yoast&#8217;s enormously popular plugins, and Yoast will provide online marketing services for Sucuri, as well as regular SEO audits.</p>
<p>Partnerships between companies shouldn&#8217;t surprise us at this point, and this one seems to make sense all around. You can see <a href="https://yoast.com/regular-security-audits/">Yoast&#8217;s announcement</a>, <a href="http://blog.sucuri.net/2014/08/yoast-and-sucuri-partner-to-create-a-safer-web.html">as well as Sucuri&#8217;s</a>, for more information.</p>
<hr />
<p>Alright, this is the short version of the week in review, but I think the most interesting stories I&#8217;ve seen the last week. Right now, it&#8217;s time for me to hop on a plane and get back to good &#8216;ole Alabama. I&#8217;ll have a lot from my experience here at WordCamp NYC, which was fantastic. I hope you all have an excellent week.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 18:26:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WordPress.tv: Kimberly Gauthier: I Started a Blog, Now What?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36964";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wordpress.tv/2014/08/04/kimberly-gauthier-a-started-a-blog-now-what/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:666:"<div id="v-MNojqTsw-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36964/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36964/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36964&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/04/kimberly-gauthier-a-started-a-blog-now-what/"><img alt="Kimberly Gauthier: I Started a Blog, Now What?" src="http://videos.videopress.com/MNojqTsw/video-ad9b54e2f6_scruberthumbnail_1.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 15:33:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WordPress.tv: Nancy Thanki: Images for WordPress Done Right";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=37182";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"http://wordpress.tv/2014/08/04/nancy-thanki-images-for-wordpress-done-right/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:666:"<div id="v-XzdYD68X-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/37182/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/37182/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=37182&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/04/nancy-thanki-images-for-wordpress-done-right/"><img alt="Nancy Thanki: Images for WordPress Done Right" src="http://videos.videopress.com/XzdYD68X/video-74bbcaffca_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 15:26:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WordPress.tv: Brent Shepherd: Develop Very Mild Superpowers with Git";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wordpress.tv/2014/08/04/brent-shepherd-develop-very-mild-superpowers-with-git/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:684:"<div id="v-8Su7Q5cn-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36509/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36509/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36509&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/04/brent-shepherd-develop-very-mild-superpowers-with-git/"><img alt="Brent Shepherd: Develop Very Mild Superpowers with Git" src="http://videos.videopress.com/8Su7Q5cn/video-e487be6658_scruberthumbnail_2.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 15:19:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"WPTavern: WordPress Tip: Disable the Toolbar on a Per-User-Role Basis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27593";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:180:"http://wptavern.com/wordpress-tip-disable-the-toolbar-on-a-per-user-role-basis?utm_source=rss&utm_medium=rss&utm_campaign=wordpress-tip-disable-the-toolbar-on-a-per-user-role-basis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1756:"<p>The <a href="http://codex.wordpress.org/Toolbar" target="_blank">WordPress toolbar</a> is shown by default to all users, but administration screen links aren&#8217;t always useful for everyone. For example, on most sites the subscriber user role is very limited and doesn&#8217;t require access to the backend.</p>
<p><a href="http://wordpress.org/plugins/disable-toolbar/" target="_blank">Disable Toolbar</a> is a new plugin that gives administrators the ability to turn the toolbar off on the frontend, based on user roles. It adds a list of all user roles on the site to <strong>Settings > Toolbar</strong> and even includes roles added by other plugins. Check the roles for which you want to remove the toolbar.</p>
<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/08/user-roles.png" rel="prettyphoto[27593]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/08/user-roles.png?resize=742%2C292" alt="user-roles" class="aligncenter size-full wp-image-27604" /></a></p>
<p>There are many plugins in the repository dedicated to hiding the toolbar. This one is different in that it hides it only on the frontend. The admin area will always display the toolbar, even if you&#8217;ve elected to hide it for certain user roles on the frontend. It also hides the toolbar option on user profiles if that user is already restricted from seeing the toolbar.</p>
<p>I tested the plugin and can verify that it works as advertised to show/hide the toolbar based on role. Instead of disabling the toolbar across the board, this one works nicely to hide it selectively, according to your requirements. You can download <a href="http://wordpress.org/plugins/disable-toolbar/" target="_blank">Disable Toolbar</a> from WordPress.org.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Aug 2014 05:21:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WordPress.tv: Aaron Holbrook: Introduction to IDEs and Debugging";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36540";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.tv/2014/08/03/aaron-holbrook-introduction-to-ides-and-debugging/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:676:"<div id="v-Ejp28sjt-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36540/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36540/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36540&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/03/aaron-holbrook-introduction-to-ides-and-debugging/"><img alt="Aaron Holbrook: Introduction to IDEs and Debugging" src="http://videos.videopress.com/Ejp28sjt/video-f39c9d76f9_scruberthumbnail_5.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 03 Aug 2014 15:30:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:107:"WordPress.tv: Rebecca Gill: Solutions Before Development – Creating WordPress Products That Actually Sell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36559";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:120:"http://wordpress.tv/2014/08/03/rebecca-gill-solutions-before-development-creating-wordpress-products-that-actually-sell/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:763:"<div id="v-IH68nKBC-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36559/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36559/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36559&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/03/rebecca-gill-solutions-before-development-creating-wordpress-products-that-actually-sell/"><img alt="Rebecca Gill: Solutions Before Development &#8211; Creating WordPress Products That Actually Sell" src="http://videos.videopress.com/IH68nKBC/video-51898a58c8_scruberthumbnail_14.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 03 Aug 2014 15:10:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WordPress.tv: Gregory Cornelius: Taking Your JavaScript Further";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36517";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wordpress.tv/2014/08/03/gregory-cornelius-taking-your-javascript-further/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:675:"<div id="v-L17zzADU-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36517/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36517/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36517&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/03/gregory-cornelius-taking-your-javascript-further/"><img alt="Gregory Cornelius: Taking Your JavaScript Further" src="http://videos.videopress.com/L17zzADU/video-ea8d7e611b_scruberthumbnail_10.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 03 Aug 2014 15:04:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"Lorelle on WP: Speed Blogging Tips and Techniques";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:37:"http://lorelle.wordpress.com/?p=11795";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://lorelle.wordpress.com/2014/08/03/speed-blogging-tips-and-techniques/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:492:"The following are the workshop notes for my popular workshop on &#8220;Speed Blogging.&#8221; The workshop is designed to teach how to take charge of your website and keep the content flowing with enthusiasm over the long term by learning the shortcuts, tips, and techniques to speed up the process of blogging, allowing your blog to [&#8230;]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=lorelle.wordpress.com&blog=72&post=11795&subd=lorelle&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 03 Aug 2014 12:25:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Lorelle VanFossen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WordPress.tv: George Stephanis: Moving your Plugin to GitHub – Trials, Tribulations, and Testing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36544";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"http://wordpress.tv/2014/08/02/george-stephanis-moving-your-plugin-to-github-trials-tribulations-and-testing/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:742:"<div id="v-giK2nywN-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36544/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36544/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36544&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/02/george-stephanis-moving-your-plugin-to-github-trials-tribulations-and-testing/"><img alt="George Stephanis: Moving your Plugin to GitHub &#8211; Trials, Tribulations, and Testing" src="http://videos.videopress.com/giK2nywN/video-b712a9b45a_scruberthumbnail_3.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 02 Aug 2014 15:57:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WordPress.tv: Jeremy Felt: Small Changes Toward Big Things";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=37174";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wordpress.tv/2014/08/02/jeremy-felt-small-changes-toward-big-things/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:664:"<div id="v-yMpiZuP5-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/37174/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/37174/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=37174&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/02/jeremy-felt-small-changes-toward-big-things/"><img alt="Jeremy Felt: Small Changes Toward Big Things" src="http://videos.videopress.com/yMpiZuP5/video-539a9f2f59_scruberthumbnail_1.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 02 Aug 2014 15:50:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WordPress.tv: Merrill Mayer: Advanced Custom Fields – Beyond the Basics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=37178";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"http://wordpress.tv/2014/08/02/merrill-mayer-advanced-custom-fields-beyond-the-basics/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:694:"<div id="v-zl0pnio3-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/37178/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/37178/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=37178&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/02/merrill-mayer-advanced-custom-fields-beyond-the-basics/"><img alt="Merrill Mayer: Advanced Custom Fields &#8211; Beyond the Basics" src="http://videos.videopress.com/zl0pnio3/video-6667c94976_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 02 Aug 2014 15:44:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Lorelle on WP: Sale on Lorelle’s Book “Social Media for Crafters”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:37:"http://lorelle.wordpress.com/?p=11787";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"http://lorelle.wordpress.com/2014/08/01/sale-on-lorelles-book-social-media-for-crafters/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:481:"I&#8217;ve updated my popular ebook, &#8220;Social Media for Crafters,&#8221; and it&#8217;s on sale for the next week in honor of the Willamette Writers Conference in Portland, Oregon, and to celebrate the power of the written word. The book will be on sale for only $2.99 USD. I&#8217;ve not had a sale on my books since [&#8230;]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=lorelle.wordpress.com&blog=72&post=11787&subd=lorelle&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 02 Aug 2014 05:52:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Lorelle VanFossen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: WPWeekly Episode 156 – A Crowdfunding Roundtable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wptavern.com?p=27552&preview_id=27552";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:156:"http://wptavern.com/wpweekly-episode-156-a-crowdfunding-roundtable?utm_source=rss&utm_medium=rss&utm_campaign=wpweekly-episode-156-a-crowdfunding-roundtable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4934:"<p>In this episode of WordPress Weekly,<a title="http://marcuscouch.com/" href="http://marcuscouch.com/"> Marcus Couch</a> and I are joined by three gentleman who have gone through the crowdfunding experience.</p>
<ul>
<li>Scott Kingsley Clark is a Senior Web Engineer at 10up. He’s also the lead developer of the Pods Framework and a number of other WordPress plugins. He used Kickstarter in September of 2011 and asked for $1,500.  He ended up with $4,177 with 91 backers.</li>
</ul>
<ul>
<li>John Saddington is best known in the WordPress community for his work on the WordPress news site, WP Daily, which was acquired by WP Engine last year. He’s the lead developer of <a title="http://pressgr.am/" href="http://pressgr.am/">Pressgram</a>, an iOS app to capture, edit, and publish mobile photos to your site or blog. He used Kickstarter in April of 2013 to raise $50,000. He received $56,500 from 498 backers.</li>
</ul>
<ul>
<li>Nick Haskins is the lead developer of the <a title="http://aesopstoryengine.com/" href="http://aesopstoryengine.com/">AESOP Story Engine platform plugin and service</a>. Haskins used Crowdhoster in early 2014 to try and raise $15,000. He received $6,572 from 45 contributors.</li>
</ul>
<p>There are two important lessons I learned from today&#8217;s show. First, always ask for more money than you think you need. Having more money is better than running out. Second, structure gifts to backers so that it works towards completing the project versus being a distraction. Although it&#8217;s a long show, there is a lot of great information.</p>
<h2>Stories Discussed:</h2>
<p><a title="http://wptavern.com/jetpack-rebrands-with-new-logo-adds-custom-post-types-in-3-1-release" href="http://wptavern.com/jetpack-rebrands-with-new-logo-adds-custom-post-types-in-3-1-release">Jetpack Rebrands with New Logo, Adds Custom Post Types in 3.1 Release</a><br />
<a title="http://wptavern.com/first-vietnamese-wordcamp-to-be-held-in-hanoi-in-september" href="http://wptavern.com/first-vietnamese-wordcamp-to-be-held-in-hanoi-in-september">First Vietnamese WordCamp to be Held in Hanoi in September</a><br />
<a title="http://wptavern.com/launchkey-plugin-adds-biometric-authentication-to-wordpress" href="http://wptavern.com/launchkey-plugin-adds-biometric-authentication-to-wordpress">LaunchKey Plugin Adds Biometric Authentication to WordPress</a></p>
<h2>Plugins Picked By Marcus:</h2>
<p><a title="http://wordpress.org/plugins/kickstarter-tracker-widget/" href="http://wordpress.org/plugins/kickstarter-tracker-widget/">Kickstarter Tracker Widget</a> &#8211; This widget uses cURL to fetch and parse the summary of a Kickstarter project&#8217;s funding metrics. With the widget, you can display the number of backers, current amount funded, percentage funded, and days left on the project. This also displays a large call to action button in order to promote and help drive traffic to your Kickstarter page.</p>
<p><a title="http://wordpress.org/plugins/appthemer-crowdfunding/" href="http://wordpress.org/plugins/appthemer-crowdfunding/">Fundify Crowdfunding</a> &#8211; This plugin integrates with <a title="https://easydigitaldownloads.com/" href="https://easydigitaldownloads.com/">Easy Digital Downloads</a> and the <a title="http://fundifytheme.com/" href="http://fundifytheme.com/">Fundify theme</a>. An extension that seamlessly integrates with Easy Digital Downloads, this plugin lets you crowdfund films, games, music, art, design, and technology.</p>
<p><a title="http://wordpress.org/plugins/all-in-one-wpml-crowdfunding-campaigns/" href="http://wordpress.org/plugins/all-in-one-wpml-crowdfunding-campaigns/">All-in-one WPML Crowdfunding Campaigns</a> &#8211; Unify WPML translation versions of a crowdfunding campaign so that contributions to each language version count towards the main campaign. If you are running a multilingual crowdfunding website and you want a single campaign to have multiple language versions, this is the plugin you need. It works alongside WPML and Fundify Crowdfunding, ensuring that when you have created translations of your campaign, contributions to each language-specific version of the campaign count towards the same campaign. This plugin is easy to use and requires zero configuration.</p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Friday, August 8th 3 P.M. Eastern</p>
<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="http://www.wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>
<p><strong>Listen To Episode #156:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 02 Aug 2014 03:59:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WPTavern: WordPress Async Task Library from TechCrunch Now Open Source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27495";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:184:"http://wptavern.com/wordpress-async-task-library-from-techcrunch-now-open-source?utm_source=rss&utm_medium=rss&utm_campaign=wordpress-async-task-library-from-techcrunch-now-open-source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3281:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/08/techcrunch-logo.png" rel="prettyphoto[27495]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/08/techcrunch-logo.png?resize=1025%2C461" alt="techcrunch-logo" class="aligncenter size-full wp-image-27587" /></a></p>
<p><a href="http://techcrunch.com/" target="_blank">TechCrunch</a> is one of the largest sites publishing with WordPress and its developers are always looking to improve performance to maximize engagement and ad revenue. This week the team <a href="http://techcrunch.com/2014/07/31/wp-async-task-our-new-open-source-library/" target="_blank">open sourced its WP Async Task Library</a>, which was created to offload time-consuming tasks into background tasks. Alex Khadiwala and Nico Vincent introduced the library at the Big Media &amp; Enterprise Meetup in San Francisco within their &#8220;<a href="http://vip.wordpress.com/2014/07/01/non-blocking-wordpress/" target="_blank">Non-Blocking WordPress</a>&#8221; presentation.</p>
<p>Essentially, the purpose of the async task library is to identify anything on page load that blocks better performance and relegate it to a background task. Vincent and Khadiwala offer an example of how the library works to reduce API calls when loading CrunchBase cards:</p>
<blockquote><p>On the TechCrunch site, loading CrunchBase cards on article pages is an example of a process that could slow down the site, since the information needed for each card becomes available via the CrunchBase API. To improve performance, we cache a copy of their data for about 12 hours. But when we initially retrieve that data or refresh it, we don’t want the API call to affect our page load time.</p>
<p>In both instances, we instead kick off an asynchronous call back to our site with the instruction to retrieve and cache this data to be available the next time it is needed, instead of waiting for a response from their API.</p></blockquote>
<p>Prior to addressing TechCrunch&#8217;s performance issues, the site could take up to 17 seconds to load, as it was calling more than 100 assets. Thanks to the new task library, the situation has been dramatically improved. &#8220;Since the redesign, we’ve improved overall performance by 5 to 8 times by implementing the WP Async Task library, among other important back-end and front-end improvements,&#8221; the team reported.</p>
<p><a href="https://github.com/techcrunch/wp-async-task/" target="_blank">WP Async Task</a> is available as a standalone plugin or developers can bundle it into their own plugins and themes. The <a href="https://github.com/techcrunch/wp-async-task/#quick-start" target="_blank">quick start</a> section of the documentation shows you how to use it in your own code.</p>
<p>It&#8217;s always exciting when one of the larger WordPress-powered publishers make their tools available to the community, because these projects tend to be the result of many developer hours. WP Async Task has the potential to benefit many other media sites running on WordPress thanks to the TechCrunch development team. The code is now available on <a href="https://github.com/techcrunch/wp-async-task/" target="_blank">GitHub</a> under the MIT license and the team welcomes your contributions.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 22:03:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: Radcliffe: A Free Image-Heavy WordPress Theme for Writers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27513";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:176:"http://wptavern.com/radcliffe-a-free-image-heavy-wordpress-theme-for-writers?utm_source=rss&utm_medium=rss&utm_campaign=radcliffe-a-free-image-heavy-wordpress-theme-for-writers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2477:"<p>Designer and developer <a href="http://wptavern.com/anders-noren-on-achieving-simplicity-in-wordpress-theme-design" target="_blank">Anders Norén</a> has been making a name for himself with his beautifully minimalist WordPress themes. Norén strives for simplicity on the page and in his code, and his five free themes collectively have nearly 130,000 downloads on WordPress.org.</p>
<p><a href="http://wordpress.org/themes/radcliffe" target="_blank">Radcliffe</a> is the newest of his creations, designed specifically for writers. Ordinarily, themes for writers tend to focus primarily on the typography, but Radcliffe is different in that Norén places images front and center.</p>
<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/radcliffe.png" rel="prettyphoto[27513]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/radcliffe.png?resize=880%2C660" alt="radcliffe" class="aligncenter size-full wp-image-27544" /></a></p>
<p>The theme showcases full-screen featured images along with your writing. Radcliffe is responsive with retina-ready assets, which means that it will respond nicely to devices large and small.</p>
<p>Single posts feature beautiful typography along with a full width header image, making your writing easy to read without distractions.</p>
<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/08/radcliffe-single.png" rel="prettyphoto[27513]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/08/radcliffe-single.png?resize=900%2C960" alt="radcliffe-single" class="aligncenter size-full wp-image-27563" /></a></p>
<p>Check out a <a href="http://www.andersnoren.se/themes/radcliffe/" target="_blank">live demo</a> of the theme along with Norén&#8217;s other <a href="http://www.andersnoren.se/teman/" target="_blank">themes</a> and his current works in progress on his website.</p>
<p>Radcliffe customization options include support for uploading your own logo, changing the accent color, and three widget areas in the footer. All of the options are built into WordPress&#8217; native customizer.</p>
<p>Radcliffe is a unique writer-focused theme in that it presents images as an equal part alongside the text-based content. It could also easily be used as a photoblog or a photo-heavy personal blog. You can <a href="http://wordpress.org/themes/radcliffe" target="_blank">download Radcliffe</a> for free from WordPress.org or install it directly within your admin theme browser.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 19:36:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Matt: 100% Owner";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=43959";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:31:"http://ma.tt/2014/08/100-owner/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:439:"<blockquote><p>The best approach is to think like a 100% owner of your company with long-term time horizon. Then you work backward to the present and see what makes sense and what remains. Versus, here is what we have now, how do we carry it forward?</p></blockquote>
<p>Marc Andreessen in <a href="http://a16z.com/2014/02/25/future-of-news-business/">The Future of the News Business: A Monumental Twitter Stream All in One Place</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 13:10:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WordPress.tv: Julian Dziki: SEO und Linkbuilding im Jahr 2014";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36364";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wordpress.tv/2014/08/01/julian-dziki-seo-und-linkbuilding-im-jahr-2014/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:670:"<div id="v-qO25t4HM-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36364/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36364/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36364&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/01/julian-dziki-seo-und-linkbuilding-im-jahr-2014/"><img alt="Julian Dziki: SEO und Linkbuilding im Jahr 2014" src="http://videos.videopress.com/qO25t4HM/video-2132772ef5_scruberthumbnail_1.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 11:18:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WordPress.tv: Ein Blick in die Zukunft – WordPress in 2020 | 1. Teil";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36477";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.tv/2014/08/01/ein-blick-in-die-zukunft-wordpress-in-2020-1-teil/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:682:"<div id="v-GEexYFIA-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36477/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36477/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36477&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/01/ein-blick-in-die-zukunft-wordpress-in-2020-1-teil/"><img alt="Ein Blick in die Zukunft – WordPress in 2020 | 1. Teil" src="http://videos.videopress.com/GEexYFIA/video-4606ac98dc_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 09:42:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:70:"WordPress.tv: Ein Blick in die Zukunft – WordPress in 2020 | 2. Teil";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36479";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wordpress.tv/2014/08/01/ein-blick-in-die-zukunft-wordpress-in-2020-2-teil/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:682:"<div id="v-AXoepRsa-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36479/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36479/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36479&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/08/01/ein-blick-in-die-zukunft-wordpress-in-2020-2-teil/"><img alt="Ein Blick in die Zukunft – WordPress in 2020 | 2. Teil" src="http://videos.videopress.com/AXoepRsa/video-189328ad1f_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 09:28:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Akismet: July Stats Roundup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1626";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://blog.akismet.com/2014/08/01/july-stats-roundup/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4096:"<p><em>This post is part of a monthly series summarizing some stats and figures from the Akismet universe. Feel free to browse <a href="http://blog.akismet.com/category/monthly-roundup/">all of the posts in the series</a>.</em></p>
<p>In July, Akismet saw 5,608,437,500 pieces of spam come through. <strong>If each piece of spam were a book, there would be enough books to fill 156 Libraries of Congress</strong> (the <a href="http://www.loc.gov/about/fascinating-facts/">largest library in the world</a>).</p>
<div id="attachment_1627" class="wp-caption alignright"><img class="wp-image-1627 size-full" src="http://akismet.files.wordpress.com/2014/07/library-of-congress.jpg?w=700" alt=" " /><p class="wp-caption-text">&#8220;<a href="https://www.flickr.com/photos/colincalvert/6000882476">Library of Congress (Jefferson building)</a>&#8221; by <a href="https://www.flickr.com/photos/colincalvert/">colincalvert</a> is licensed under <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC BY-SA 2.0</a></p></div>
<p>There was a small increase in spam numbers since June &#8211; about 5%, but a 71% increase from last year in July. That&#8217;s about the same yearly increase as the one was saw in <a href="http://blog.akismet.com/2014/07/01/june-stats-roundup/">last month</a>.</p>
<p>We also saw 310,275,000 legitimate comments made, which makes up only 5% of the total comments we see going around. <strong>If each real comment were a book, there would enough to fill only 8 Libraries of Congress</strong> (still not bad!).</p>
<p>Our busiest day was July 8 with about 240 million pieces of spam, and our slowest day was 6 with 133 million comments. Not a big range.</p>
<p>Overall, we missed only about 0.0206% of all spam comments this month. Although there weren&#8217;t any big fluctuations in our missed spam numbers this month, your missed spam numbers may be different. If you&#8217;re seeing more missed spam than usual come through, please do contact us and we&#8217;ll be <a href="http://akismet.com/contact/">happy to help</a> <span class="wp-smiley emoji emoji-smile" title=":)">:)</span>.</p>
<p>Here&#8217;s how much spam and ham came through each day of the month:</p>
<p><img class="alignnone size-large wp-image-1637" src="http://akismet.files.wordpress.com/2014/08/akismet-spam-and-ham-stats-july-2014.png?w=700&h=436" alt="akismet-spam-and-ham-stats-july-2014" /></p>
<p>This month we did not have any <a href="http://status.automattic.com/9931/136079/Akismet-API">service</a> interruptions. You are welcome to <a href="https://twitter.com/akismet">follow us</a> on Twitter or this blog for updates on that.</p>
<p>Here are some interesting articles on spam from around the web we liked this month:</p>
<ul>
<li><a href="http://www.thestar.com/business/tech_news/2014/07/04/canadians_report_1000_antispam_law_violations.html">Reports of violations of Canada&#8217;s new anti-spam law</a> start trickling in, while some continue to argue that it <a href="http://www.slate.com/blogs/future_tense/2014/07/01/canada_s_anti_spam_law_is_stupid_and_won_t_work.html">won&#8217;t</a> <a href="http://www.cbc.ca/news/technology/canada-s-new-anti-spam-law-can-it-really-clean-up-your-inbox-1.2688773">work</a> in the long term. Time will tell.</li>
<li>Leo reminds us that reporting spam using the &#8216;Report Spam&#8217; button works (like those found in your email and Akismet), but <a href="http://askleo.com/does_reporting_spam_help/">submitting spam to agencies like the FTC does much less good</a>, if any at all.</li>
<li>Mashable featured Cristina De Middel&#8217;s <a href="http://mashable.com/2014/07/23/spam-comes-to-life/">interesting photographs depicting the person behind spam messages</a>.</li>
</ul><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1626/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1626/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1626&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Aug 2014 03:00:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Valerie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"WPTavern: LaunchKey Plugin Adds Biometric Authentication to WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27326";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:182:"http://wptavern.com/launchkey-plugin-adds-biometric-authentication-to-wordpress?utm_source=rss&utm_medium=rss&utm_campaign=launchkey-plugin-adds-biometric-authentication-to-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6745:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/launchkey-facial-scan.jpg" rel="prettyphoto[27326]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/launchkey-facial-scan.jpg?resize=302%2C500" alt="launchkey-facial-scan" class="alignright size-large wp-image-27507" /></a>We&#8217;ve entered the future, folks. With the help of the <a href="http://wordpress.org/plugins/launchkey/" target="_blank">LaunchKey plugin</a>, you can now log into your WordPress site using your phone&#8217;s biometric facial and fingerprint scanning capabilities.</p>
<p>The <a href="https://launchkey.com/" target="_blank">LaunchKey</a> mobile authentication platform has been pioneering multi-factor authentication for WordPress sites via its official plugin since 2013. The plugin has received glowing five-star reviews from users who enjoy logging in without a password. It is the first plugin to protect your site with biometric face and fingerprint scanning.</p>
<p>LaunchKey CEO and Co-Founder Geoff Sanders said the platform currently supports all devices that support biometric facial scanning and a limited number of devices for the fingerprint scan.</p>
<blockquote><p>Our support for fingerprint scan is currently limited to the devices that gives us access to their fingerprint scanner, which at this time is only the Samsung Galaxy S5. As more devices with fingerprint scan become available, we&#8217;ll add support, including iOS devices with the release of iOS 8.</p></blockquote>
<p>If you&#8217;ve ever enabled the fingerprint scan for unlocking your device, the WordPress authentication works in a similar way, except you will be scanning your finger to authorize an authentication request. <strong>&#8220;Since this functionality piggy backs off of the device fingerprint scan, there is no initial pairing or registration process,&#8221;</strong> Sanders said. &#8220;It simply needs to be enabled through the control panel.&#8221;</p>
<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/launchkey-wordpress-authentication-tablet-phone.jpg" rel="prettyphoto[27326]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/launchkey-wordpress-authentication-tablet-phone.jpg?resize=1025%2C1014" alt="launchkey-wordpress-authentication-tablet-phone" class="aligncenter size-full wp-image-27510" /></a></p>
<h3>How to Set Up Biometric Authentication for WordPress</h3>
<p>If you want to set up biometric authentication for your WordPress site, you&#8217;ll need to download the LaunchKey mobile app in the Apple App Store or Google Play, pair a device, and enable the face scan through the control panel.</p>
<p>&#8220;During initial setup, you will be prompted to take 10 pictures of your face to map the dimensions and depths of your unique facial features,&#8221; Sanders explained. &#8220;From this point forward (until you disable it), you will be prompted with a facial scan to authorize authentication and login requests that come through LaunchKey Mobile.&#8221;</p>
<h4>Biometric Security</h4>
<p>Worried about having your biometric data stored by a third party? LaunchKey is totally anonymous and maintains your privacy. <strong>&#8220;All biometric data collected for these new authentication factors is encrypted and stored locally on the device and not on LaunchKey servers,&#8221;</strong> Sanders emphasized. &#8220;This also applies to all other authentication factor data used with LaunchKey such as geographic coordinates (used for geofencing), PIN codes, combinations, etc. LaunchKey is an anonymous service, and we don&#8217;t even have the ability to authenticate on behalf of our users.&#8221;</p>
<h3>LaunchKey Prioritizes WordPress Integration</h3>
<p>While the LaunchKey platform offers integration for both Drupal and Magento, as well as 16 web and mobile SDKs, protocol integrations (OAuth, OpenID, SSH), WordPress has emerged as a major priority.</p>
<p>&#8220;WordPress integration is a priority for LaunchKey because not only does it power over 20% of the internet, it&#8217;s vulnerable to the same password vulnerabilities inherent to any password-based system, and that&#8217;s exactly what LaunchKey was created to address,&#8221; Sanders told the Tavern.</p>
<p>The LaunchKey WordPress plugin has only been downloaded around 2,400 times, but users seem very satisfied with it. &#8220;We&#8217;ve stayed fairly quiet to date as we&#8217;ve really been more in R&amp;D mode, but staying &#8216;stealth&#8217; wasn&#8217;t something we wanted to do,&#8221; Sanders said.</p>
<p>&#8220;We wanted to test our technology out in the real world. As with anyone that uses LaunchKey, the WordPress owners who use our plugin immediately love that we&#8217;ve removed the hassle of passwords from their login flow which vastly improves their user experience of WordPress. Counterintuitively, LaunchKey&#8217;s friendlier user experience offers more security than password-based authentication, even at its most basic use with no other factors of authentication enabled.&#8221;</p>
<p>Even if LaunchKey provides a simpler way to authenticate, the challenge is getting WordPress users to see the value of the added security. Many users are familiar with WordPress.com&#8217;s <a href="http://en.support.wordpress.com/security/two-step-authentication/" target="_blank">Two Step Authentication</a>, which utilizes the Google Authenticator app, and other two-factor authentication plugins for self-hosted sites. But Sanders explains how these methods are different from LaunchKey:</p>
<blockquote><p>Google Authenticator is simply an interface for the open protocol knows as one time passwords (tOTP) which are the tokens used in the traditional 2-step authentication flow used on top of passwords. LaunchKey offers our own OTP authenticator inside our mobile app which provides the same functionality. (Our OTP authenticator actually offers more protection than Google Authenticator due to the numerous optional auth factors we can protect the app itself with such as geofencing, PIN or combo lock, etc.)</p></blockquote>
<p>LaunchKey was designed to be a full authentication platform that replaces passwords entirely. The platform also allows you to end sessions remotely, require use of specific auth factors, or even restrict logins to specific geographical zones or timeframes.</p>
<p>If you&#8217;re tired of passwords and want the added protection of authenticating with your face or your fingerprint, check out the <a href="https://launchkey.com/" target="_blank">LaunchKey</a> website for more information. The app is free and its corresponding <a href="http://wordpress.org/plugins/launchkey/" target="_blank">plugin</a> is available on WordPress.org.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 21:54:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"WPTavern: Jetpack Rebrands with New Logo,  Adds Custom Post Types in 3.1 Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27467";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:200:"http://wptavern.com/jetpack-rebrands-with-new-logo-adds-custom-post-types-in-3-1-release?utm_source=rss&utm_medium=rss&utm_campaign=jetpack-rebrands-with-new-logo-adds-custom-post-types-in-3-1-release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4322:"<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/jetpack-logo.gif" rel="prettyphoto[27467]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/jetpack-logo.gif?resize=700%2C276" alt="jetpack-logo" class="aligncenter size-full wp-image-27470" /></a></p>
<p>Jetpack is sporting a new logo in the <a href="http://jetpack.me/2014/07/31/jetpack-3-1-portfolio-custom-post-types-a-new-logo-and-much-more/" target="_blank">3.1 release</a> announced today as part of a re-branding inspired by its growth. &#8220;Jetpack is ever-evolving and is a major part of Automattic and WordPress. It’s grown a lot since its introduction in 2011, and its branding should grow too. Something better, faster, stronger,&#8221; Enej Bajgoric explained with the unveiling of the new logo.</p>
<p>Jetpack 3.1 also introduces custom post types and adds the long-awaited portfolio content type, which is likely to be the first of many. The Portfolio Custom Post Type allows users to manage and showcase projects and is easily displayed using the the <code>[portfolio]</code> <a href="http://en.support.wordpress.com/portfolios/portfolio-shortcode/" target="_blank">shortcode</a>. WordPress theme developers can elect to support Jetpack&#8217;s portfolio post type by styling it to match the theme, instead of building their own.</p>
<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/portfolio-content-type.png" rel="prettyphoto[27467]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/portfolio-content-type.png?resize=786%2C406" alt="portfolio-content-type" class="aligncenter size-full wp-image-27480" /></a></p>
<p>Theme developers will also enjoy the new responsive video support built into Jetpack. It can be enabled with one simple line of code:</p>
<pre class="brush: php; light: true; title: ; notranslate">&lt;?php add_theme_support( \'jetpack-responsive-videos\' ); ?&gt;</pre>
<p>With that code in place, all videos on the site will respond nicely to mobile devices with no extra markup. Jetpack users who were previously using other plugins to get responsive videos will now be able to eliminate those.</p>
<p>The 3.1 release also introduces additional JSON API endpoints for viewing updates and managing plugins and themes. You can check it out by playing with the <a href="https://developer.wordpress.com/docs/api/console/" target="_blank">WordPress.com developer console</a>.</p>
<p>Many smaller <a href="http://wordpress.org/plugins/jetpack/changelog/" target="_blank">improvements in 3.1</a> make Jetpack easier to use and its features more accessible:</p>
<ul>
<li>Jetpack Settings have improved keyboard accessibility.</li>
<li>Improved RTL support for After the Deadline, Carousel, Contact Form, Comics CPT, Custom CSS, Omnisearch, Publicize, Related Posts, Slideshow short code, Tiled Gallery, Widget-Visibility and Widgets Gallery.</li>
<li>Contact Form: Add an &#8220;Empty Spam&#8221; option.</li>
<li>i18n: Change the priority of where plugin_textdomain is hooked so that the plugins can better translate Jetpack.</li>
<li>Monitor: Displays how often the site is checked for downtime.</li>
<li>Shortcode: Added Mixcloud shortcode and oEmbed support.</li>
<li>Social Links: Improved handling of customizer hooks in non-admin context.</li>
<li>Stats: The smiley image is gone by default.</li>
<li>Stats: Added link to the configure page for stats so that the stats settings page is easier to find.</li>
<li>Theme Tools: Added the responsive videos to theme tools so that themes can support responsive videos more easily.</li>
<li>Updated Genericons to <a href="http://genericons.com/" target="_blank">version 3.1</a>, new icons for website, ellipsis, foursquare, x-post, sitemap, hierarchy and paintbrush.</li>
</ul>
<p>The Jetpack team further iterated on the admin overhaul that <a href="http://wptavern.com/jetpack-3-0-released-adds-bulk-module-management-site-verification-and-twitter-open-graph-support" target="_blank">added bulk module management in 3.0</a>. This release includes a number of tweaks to module management, allowing you to activate, configure, and deactivate Jetpack features in the feature description box. The update notice should already be available in your admin. Update now to take advantage of all the enhancements in 3.1.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 19:39:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"WPTavern: How To Change The Default View Of The WordPress Media Library Uploader";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27453";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:204:"http://wptavern.com/how-to-change-the-default-view-of-the-wordpress-media-library-uploader?utm_source=rss&utm_medium=rss&utm_campaign=how-to-change-the-default-view-of-the-wordpress-media-library-uploader";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1472:"<p>When adding or editing images in the WordPress media library, there is a drop down menu that allows you to filter between all media items, only the items uploaded to the post, images, audio, and video. By default, the media library shows all media items. If you find yourself constantly having to switch from all media items to only those uploaded to a post, consider using the <a title="http://wordpress.org/plugins/default-media-uploader-view/" href="http://wordpress.org/plugins/default-media-uploader-view/">Default Media Uploader View</a> plugin by <a title="https://profiles.wordpress.org/leemon/" href="https://profiles.wordpress.org/leemon/">Leemon</a>.</p>
<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/MediaLibraryDropDown.png" rel="prettyphoto[27453]"><img class="size-full wp-image-27454" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/MediaLibraryDropDown.png?resize=551%2C325" alt="Media Library Drop Down" /></a>Media Library Drop Down
<p>While activated, you&#8217;ll see items uploaded to the post by default. I tested the plugin on WordPress 3.9.1 and it works fine without any conflicts. It should, considering it&#8217;s an incredibly simple plugin. Despite opening the media library hundreds of times, I had no idea this drop down menu existed. It&#8217;s nice to be able to filter the media library to just items used in the post.</p>
<p>Let us know in the comments if this plugin saves you any mouse clicks.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 18:00:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: WordCamp San Francisco Is Not Just Another WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27458";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:166:"http://wptavern.com/wordcamp-san-francisco-is-not-just-another-wordcamp?utm_source=rss&utm_medium=rss&utm_campaign=wordcamp-san-francisco-is-not-just-another-wordcamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4819:"<p>WordCamp San Francisco is one of the largest, annual events, dedicated to WordPress. But is it just another WordCamp, or something else? Eric Mann <a title="http://eamann.com/tech/wordcamps-community-confusion/" href="http://eamann.com/tech/wordcamps-community-confusion/">points out the confusing nature</a> of the event and suggests using a different qualifier.</p>
<blockquote><p>From an outsider looking in, the only difference between a WordCamp in SF and a WordCamp in Portland is the location. From a sponsor’s perspective, from a new attendee’s perspective, from a new speaker’s perspective they’re the same. But the “official” status of SF changes all of that for those of us who’ve been in the community a bit longer.</p></blockquote>
<p>Back in 2011, Jen Mylo <a title="http://central.wordcamp.org/news/2011/01/24/wordcampsf-not-wordcon/" href="http://central.wordcamp.org/news/2011/01/24/wordcampsf-not-wordcon/">proposed changing the name</a> of WCSF to WordCon in an effort to officially differentiate it. A community member registered the domain before Mylo, forcing a name change. After thinking of different names, the decision was made to keep it as WCSF with an effort to point out that the event is more than just a local WordCamp.</p>
<blockquote><p>Eventually, Matt said, “Why can’t it just be WordCamp SF?” And I decided he was right (partly because the owner of wordcon.com had not given any indication of wanting to sell the domain to us). The history of the event and its name ultimately carry more weight than my desire for event naming consistency. We just need to make it clearer that WordCamp SF is special, something more than a local WordCamp. We need to say distinctly:</p>
<p><strong>WordCamp San Francisco is the official <strong>annual </strong>conference of the WordPress project. </strong></p></blockquote>
<p>So far, the event is not being marketed or touted as being something special. The <a title="http://2014.sf.wordcamp.org/" href="http://2014.sf.wordcamp.org/">WCSF 2014 website</a> doesn&#8217;t have any information explaining why it&#8217;s different from a regular WordCamp. However, <a title="http://central.wordcamp.org/wordcamps/wordcamp-san-francisco/" href="http://central.wordcamp.org/wordcamps/wordcamp-san-francisco/">its listing on WordCamp Central</a> specifies it being the official, annual conference. At the very least, there should be an About page with a bit of history and an explanation as to why it&#8217;s considered the <em>official, annual conference of the WordPress project.</em> I&#8217;d also like to see a list of items that make it special, compared to other WordCamps. It wouldn&#8217;t hurt to have specific branding as well. The only people who know it&#8217;s a special event are previous attendees and those who hear about it by word of mouth.</p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/EricMann">@ericmann</a> <a href="https://twitter.com/jeffr0">@jeffr0</a> I\'m with you, Eric. Haven\'t attended WCSF, but talked w/others who attended. Very different event from "regular" WordCamp.</p>
<p>&mdash; DeborahEdwards-Onoro (@redcrew) <a href="https://twitter.com/redcrew/statuses/494869686853840896">July 31, 2014</a></p></blockquote>
<p></p>
<h2>A Real World Example Showing The Need For A Distinction</h2>
<p>At a local WordPress meetup I attended, I spoke with a gentleman who recently started using WordPress. He had attended his first local WordCamp and decided that he was going to further his WordPress knowledge. Since he didn&#8217;t have a huge budget, he asked me which WordPress conference would give him the most bang for the buck. I told him WordCamp San Francisco. He asked why, isn&#8217;t that just our WordCamp but on a bigger scale? Yes, I answered, but it&#8217;s different from every other WordCamp. I told him it&#8217;s one of the largest WordPress conferences of the year and is organized by the co-creator of WordPress. Developers, business owners, and attendees from all walks of life will be there. If he could only attend one out-of-state WordPress conference, WCSF is it.</p>
<p>You see, he didn&#8217;t know about all this. He&#8217;s new to WordPress and its community. According to him, WCSF is just another WordCamp except bigger and he didn&#8217;t see the value or worth of traveling to attend something he could easily drive to. This is why there needs to be more of a distinction created between WCSF being the <em>official, annual conference of the WordPress project </em>and not just another WordCamp.</p>
<p>I&#8217;m not advocating for a name change because it&#8217;s already been tried. But short of one, what other suggestions do you have for those new to WordPress and its community to understand WCSF is not just another WordCamp?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 17:38:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"Matt: NomadList";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=43961";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:31:"http://ma.tt/2014/07/nomadlist/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:344:"<p><a href="http://nomadlist.io/">NomadList has list of cities around the world sortable by cost of living, temperature, and internet speed</a>, so if you can <a href="http://automattic.com/work-with-us/">work from anywhere</a> you can choose someplace fun to do so. <cite>Hat tip: <a href="https://twitter.com/mg">Matt Galligan</a>.</cite></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 16:12:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"WordPress.tv: Detlef Krause: Selbstmarketing- Die richtigen Kunden gewinnen – aber wie?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36350";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"http://wordpress.tv/2014/07/31/detlef-krause-selbstmarketing-die-richtigen-kunden-gewinnen-aber-wie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:720:"<div id="v-7hI05k2y-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36350/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36350/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36350&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/31/detlef-krause-selbstmarketing-die-richtigen-kunden-gewinnen-aber-wie/"><img alt="Detlef Krause: Selbstmarketing- Die richtigen Kunden gewinnen – aber wie?" src="http://videos.videopress.com/7hI05k2y/video-7081d0ddd7_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 15:34:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WordPress.tv: Thomas Maier: How to Make Money with Your (WordPress) Project";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36668";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"http://wordpress.tv/2014/07/31/thomas-maier-how-to-make-money-with-your-wordpress-project/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:696:"<div id="v-18jleoZO-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36668/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36668/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36668&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/31/thomas-maier-how-to-make-money-with-your-wordpress-project/"><img alt="Thomas Maier: How to Make Money with Your (WordPress) Project" src="http://videos.videopress.com/18jleoZO/video-c043f98f92_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 15:19:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"WordPress.tv: Ben Lobaugh: From Zero to WordPress Hero";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=37040";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wordpress.tv/2014/07/31/ben-lobaugh-from-zero-to-wordpress-hero-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:658:"<div id="v-hK7KSGrM-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/37040/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/37040/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=37040&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/31/ben-lobaugh-from-zero-to-wordpress-hero-2/"><img alt="Ben Lobaugh: From Zero to WordPress Hero" src="http://videos.videopress.com/hK7KSGrM/video-065b7d58a3_scruberthumbnail_1.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 15:15:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: BP Project Framework: A Boilerplate for Custom BuddyPress Projects";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27418";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:194:"http://wptavern.com/bp-project-framework-a-boilerplate-for-custom-buddypress-projects?utm_source=rss&utm_medium=rss&utm_campaign=bp-project-framework-a-boilerplate-for-custom-buddypress-projects";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3350:"<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/04/buddypress-wall.jpg" rel="prettyphoto[27418]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/04/buddypress-wall.jpg?resize=1018%2C458" alt="buddypress-wall" class="aligncenter size-full wp-image-20901" /></a></p>
<p>Developers who are new to BuddyPress sometimes find BP templates confusing to work with. Common questions include: <em>Why are there so many? Where do I place the files? How can I override the templates in my project?</em></p>
<p><a href="https://github.com/WebDevStudios/BP-Project-Framework" target="_blank">BP Project Framework</a> is a plugin from the folks at <a href="http://webdevstudios.com/" target="_blank">WebDevStudios</a> that provides a boilerplate for new custom BuddyPress projects. Essentially, it adds all the BuddyPress templates you need in the convenience of a plugin.</p>
<p>BuddyPress has included WordPress <a href="http://codex.buddypress.org/themes/theme-compatibility-1-7/" target="_blank">theme compatibility</a> since version 1.7, which means that you can activate the plugin and it will work with nearly any theme. However, if you want to customize BuddyPress-specific features, you will need to override the BP templates. Ordinarily, you would copy those templates from the BuddyPress plugin folder into your theme folder. BP Project Framework allows you to skip this step by creating a new template stack.</p>
<p>The plugin includes all of the necessary BP templates in the /templates directory and customizing any of those files will override the core templates. You can also place custom JS and CSS in <code>/templates/js/bp-custom.js</code> and <code>/templates/js/bp-custom.css</code> respectively. The /inc directory includes files for placing custom actions, filters, template tags, and widgets.</p>
<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/bp-project-framework.png" rel="prettyphoto[27418]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/bp-project-framework.png?resize=1025%2C591" alt="bp-project-framework" class="aligncenter size-full wp-image-27433" /></a></p>
<p>The bp-custom.php file contains example code for easily customizing BuddyPress. If you&#8217;re new to BuddyPress development, you&#8217;ll want to check out that file to get an overview of some quick customization options.</p>
<p>The advantage of putting BP templates into this plugin over building them into the current theme is that you can easily activate and deactivate the plugin. It also allows you to maintain your templates if you decide to change themes, without having to move the template files.</p>
<p>When you have the BP Project Framework installed, BuddyPress will first look to the plugin for its template files and then will default to BP core if any are missing. Simply activate the plugin and start adding custom code, edit the template markup and add custom CSS and JS. The plugin has no settings, but the development team at WebDevStudios plans to add some new features and options in the future.</p>
<p>You can find <a href="https://github.com/WebDevStudios/BP-Project-Framework" target="_blank">BP Project Framework</a> on GitHub. It&#8217;s a great resource for new BuddyPress developers who want a quick start for adding custom code and working with BP templates.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Jul 2014 00:20:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: Harvesting Emails From WordPress Comments Is A Bad Idea";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27360";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:174:"http://wptavern.com/harvesting-emails-from-wordpress-comments-is-a-bad-idea?utm_source=rss&utm_medium=rss&utm_campaign=harvesting-emails-from-wordpress-comments-is-a-bad-idea";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1821:"<p>A <a title="http://www.wpbeginner.com/plugins/how-to-export-email-addresses-from-wordpress-comments/" href="http://www.wpbeginner.com/plugins/how-to-export-email-addresses-from-wordpress-comments/">recently published article </a>by WPBeginner explains how to export email address from the comments and import them into a mailing list. While the article advises getting the user&#8217;s permission, everything about this practice rubs me the wrong way. If you&#8217;re going to do this, please put a big banner near the comments that states your intentions. A quick and easy way to do this is to use the <a title="https://wordpress.org/plugins/show-comment-policy/" href="https://wordpress.org/plugins/show-comment-policy/">Show Comment Policy</a> plugin by <a title="http://www.jimmyscode.com/" href="http://www.jimmyscode.com/">Jimmy Peña</a>. The comment policy text will be displayed above the commenting area.</p>
<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/ShowCommentPolicySettings.png" rel="prettyphoto[27360]"><img class="size-full wp-image-27361" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/ShowCommentPolicySettings.png?resize=840%2C799" alt="Show Comment Policy Settings" /></a>Show Comment Policy Settings
<p>I&#8217;m most concerned about sites that export email addresses from existing comments. At least give those people the common courtesy of being notified and provide them the option to opt-out immediately. In fact, it may be against the law in certain countries to outright harvest the email addresses. Better yet, instead of getting involved with this practice, just turn commenting off on the site.</p>
<p>Are you ok with the email address you gave to a site in order to leave a comment, being added to an email list as long as you&#8217;re notified?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 22:00:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WPTavern: Helpful Tips for Documenting WordPress Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27368";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:154:"http://wptavern.com/helpful-tips-for-documenting-wordpress-themes?utm_source=rss&utm_medium=rss&utm_campaign=helpful-tips-for-documenting-wordpress-themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8907:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/desk.jpg" rel="prettyphoto[27368]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/desk.jpg?resize=1025%2C510" alt="desk" class="aligncenter size-full wp-image-27398" /></a></p>
<p>When you have a question about a WordPress theme, where do you look for more information? Theme developers make use of a myriad of documentation methods, from bundling docs to linking to external resources. If you&#8217;ve already created a theme and taken the time to document it, then your next challenge is to make its documentation easy to discover.</p>
<p>When documentation isn&#8217;t readily available, users will take to the forums to get answers to common questions that could have easily been outlined in a few quick notes. This increases your support burden and causes delays for users who are trying to customize your theme. Let&#8217;s examine a few ways to make theme documentation easier to find.</p>
<h3>WordPress.org Theme Documentation Recommendations</h3>
<p>Themes hosted on WordPress.org tend to enjoy a large audience and have guidelines to protect their large user base. I spoke with <a href="https://profiles.wordpress.org/chipbennett" target="_blank">Chip Bennett</a>, who heads up the <a href="https://make.wordpress.org/themes/" target="_blank">WordPress.org Theme Review team</a>, to find out how WordPress.org recommends documenting themes. These recommendations are helpful even if you&#8217;re documenting a commercial theme or one not hosted on WordPress.org.</p>
<p><strong> Where is the best place for a WordPress theme author to place documentation so that their users can easily find it?</strong></p>
<p>Bennett&#8217;s advice, as quoted below, includes a combination of four different methods:</p>
<ol>
<li><strong>readme.txt</strong><br />
The Theme Review Team recommends placing all theme documentation in a readme file, ideally in the format of the Plugin-standard readme.txt markdown.</li>
<li><strong>Admin Contextual Help Tab</strong><br />
Another good documentation location that is woefully underused is the WP Admin contextual help tab. Themes that incorporate a settings page should definitely consider using the fairly rich <a href="http://codex.wordpress.org/Adding_Contextual_Help_to_Administration_Menus" target="_blank">Contextual Help API</a>. </li>
<li><strong>Forum Sticky Post</strong><br />
For any immediate support issues, a support forum sticky is a great idea.</li>
<li><strong>Theme URI for External Docs</strong><br />
And finally, themes can declare a Theme URI, which is intended to be an information/documentation resource for the theme. If any of the built-in documentation methods are too limiting, theme developers are welcome and encouraged to use ThemeURI (which can be a domain, subdomain, or landing page specific to the Theme, or even a GitHub repo/site for the Theme, with documentation).</li>
</ol>
<h3>Theme Documentation Best Practices and Examples</h3>
<p><a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/documenting.jpg" rel="prettyphoto[27368]"><img src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/documenting.jpg?resize=1025%2C488" alt="documenting" class="aligncenter size-full wp-image-27396" /></a></p>
<p>Now that we&#8217;ve covered where to place theme documentation, what should be included? Bennett recommends that you start with licensing attribution and use documentation to explain setup and anything out of the ordinary.</p>
<p>&#8220;Some best practices for theme documentation include explicitly stating the <a href="https://make.wordpress.org/themes/2014/07/08/proper-copyrightlicense-attribution-for-themes/" target="_blank">copyright/license attribute</a> for all resources bundled with the theme, explaining any unusual/non-standard setup instructions for the theme, and explaining any non-core-UI theme functionality,&#8221; he said. &#8220;For inline documentation, I strongly encourage developers to follow the <a href="http://make.wordpress.org/core/handbook/inline-documentation-standards/php-documentation-standards/" target="_blank">phpDoc standard</a>, which improves readability, and allows for automation of generation of theme documentation.&#8221;</p>
<p>Best practices for theme documentation are not unduly strict, in that you can utilize virtually any route you choose, extending beyond the four methods recommended by the Theme Review Team.</p>
<p>&#8220;Almost any method of documentation is encouraged,&#8221; Bennett said. &#8220;Theme developers can certainly bundle help docs with their themes. Some use plain-text readme.txt or readme.md files; others use HTML files, rich-text documents, or even PDFs,&#8221; he said.</p>
<p>&#8220;The only downside is that there is no standard/easy way for the end user to find/use those documents,&#8221; Bennett cautioned. &#8220;Again, the Contextual Help API could be useful (it can be used to display rich text/HTML, or to link to a Theme-bundled PDF, for example), as well as the Theme URI.&#8221;</p>
<p>Bennett also notes that the way you choose to implement theme features will directly affect how much documentation you need to produce. &#8220;<span class="pullquote alignleft">Another important best practice is always to incorporate features using the WordPress core implementation, so that fewer such features even need to be documented</span>,&#8221; he said.</p>
<p>&#8220;For example, when implementing <a href="http://codex.wordpress.org/Custom_Headers" target="_blank">custom header</a> images or <a href="http://codex.wordpress.org/Custom_Backgrounds" target="_blank">custom backgrounds</a>, using the core implementation provides a standard, intuitive UI for the end user. Similarly, when implementing a custom static front page, or a custom blog posts template, properly implementing the <a href="http://codex.wordpress.org/Template_Hierarchy" target="_blank">Template Hierarchy</a> will avoid the need to provide instructions for a non-standard implementation of those features.&#8221;</p>
<p>Bennett offered a few examples of themes that have solid easy-to-find documentation. He developed his <a href="https://wordpress.org/themes/oenology" target="_blank">Oenology theme</a> with excellent documentation as an intentional goal. The Oenology options page makes use of the contextual help tab to provide additional information on settings, FAQ, a changelog, support, and licensing.</p>
<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/oenology-options.png" rel="prettyphoto[27368]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/oenology-options.png?resize=873%2C610" alt="oenology-options" class="aligncenter size-full wp-image-27401" /></a></p>
<p>Theme developers can check out Oenology theme files to see how Bennett incorporates documentation into the theme itself. He also recommends <a href="http://underscores.me" target="_blank">Underscores</a> as a well-documented theme.</p>
<h3>More Documentation Options Coming to WordPress.org</h3>
<p>WordPress.org plugin authors have the option of adding additional documentation to the FAQ and Installation tabs. When I spoke with Bennett, he explained that theme authors do not yet have this capability.</p>
<p>&#8220;The Theme Directory is much more limited because, while the Theme and Plugin directories look essentially the same on the front end, they are two entirely different beasts under the hood,&#8221; he said. &#8220;The infrastructures are different. That said, there will be some changes in the (nearish?) future, that will allow the Theme directory to emulate the same (or similar) functionality, based on a standard readme file format.&#8221;</p>
<p>The Theme Review Team will be discussing how improvements can be implemented, but it&#8217;s not yet clear what those changes will look like. In the meantime, theme authors can make use of the solid documentation recommendations Bennett outlined.</p>
<p>Good documentation requires a little bit of strategy to find the best way to connect with your users when they need help. Chip Bennett&#8217;s tips are useful to all WordPress theme authors, whether you&#8217;re creating a custom theme for a client, selling a commercial theme, or supporting a free theme on WordPress.org. A combination of approaches via the readme.txt, inline documentation, contextual help and external docs at the Theme URI will cover all your bases.</p>
<p>Take the time to create high quality documentation and you&#8217;ll find that the burden of support will decrease. As a WordPress.org theme author, I&#8217;d prefer to spend my time making updates and developing new features and themes. Using WordPress core implementation for features and providing good docs is the best way to free up your time to do more of the fun stuff &#8211; creating beautiful themes that users will love.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 21:34:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WPTavern: 7 Aspects Of WordPress I Take For Granted";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27320";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:146:"http://wptavern.com/7-aspects-of-wordpress-i-take-for-granted?utm_source=rss&utm_medium=rss&utm_campaign=7-aspects-of-wordpress-i-take-for-granted";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9748:"<p>After using WordPress for seven years in a row, it&#8217;s hard to consider switching to another publishing platform. I have my gripes about WordPress and there are plenty of things that can improve the publishing process. However, after testing a few other open source alternatives, I was reminded of how many things I take for granted in WordPress. Here are seven WordPress things I take for granted.</p>
<h2>The Visual Editor</h2>
<p>For the longest time, the visual editor in WordPress has been the bane of existence for so many users. It has a reputation for screwing up code snippets and ruining the formatting of text. In the past two years, there have been several improvements to the editor that make it my favorite way to write a post. These are just a few of my favorites, some of which are <a title="http://wptavern.com/preview-wordpress-4-0-features-beta-1-now-available-for-testing" href="http://wptavern.com/preview-wordpress-4-0-features-beta-1-now-available-for-testing">slated for WordPress 4.0</a>.  oEmbed support, oEmbed previews, sticky toolbar, automatic resizing based on the amount and type of content, and the ability to easily edit inserted media.</p>
<p>After using a few different themes, I&#8217;ve determined support for <a title="http://codex.wordpress.org/Function_Reference/add_editor_style" href="http://codex.wordpress.org/Function_Reference/add_editor_style">visual editor styles</a> to be a killer feature. If executed properly, content within the visual editor looks the same as it does on the frontend of the site. After using a theme that executes this feature properly, it&#8217;s hard to use a theme that doesn&#8217;t support it.</p>
<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/WP40VisualEditor.png" rel="prettyphoto[27320]"><img class="size-full wp-image-27324" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/WP40VisualEditor.png?resize=1025%2C545" alt="Visual Editor In WordPress 4.0 With oEmbed Previews" /></a>Visual Editor In WordPress 4.0 With oEmbed Previews
<h2>One Click and Automatic Updates</h2>
<p>As far as I&#8217;m concerned, any content management system that doesn&#8217;t have an easy way to upgrade within the software is stuck in the past. <a title="http://wordpress.org/news/2008/12/coltrane/" href="http://wordpress.org/news/2008/12/coltrane/">WordPress 2.7 &#8220;Coltrane&#8221;</a> introduced the ability to upgrade WordPress with one click. Gone are the days of manually uploading files via FTP. Being able to upgrade plugins, themes, and WordPress with the click of a button is a huge time saver. If you want to fully automate the process, you can <a title="http://wptavern.com/how-to-configure-automatic-core-updates-for-wordpress-3-7" href="http://wptavern.com/how-to-configure-automatic-core-updates-for-wordpress-3-7">configure WordPress to automatically update</a> core, themes, and plugins.</p>
<h2>Vast Amount Of Plugins and Themes To Choose From</h2>
<p>Considered a negative by some, I think the large amount of free themes and plugins to choose from is a huge benefit. It gives users across the world a chance to turn WordPress into <em>their WordPress</em>. Because of the wide assortment of themes and plugins available, the chances of two WordPress installations being exactly the same are slim. Sure, there is a lot to choose from, but I&#8217;d rather have too much choice than too little.</p>
<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/PluginCountOnJuly292014.png" rel="prettyphoto[27320]"><img class="size-full wp-image-27331" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/PluginCountOnJuly292014.png?resize=603%2C184" alt="Plugin Count As Of July 29th, 2014" /></a>Plugin Count As Of July 29th, 2014
<h2>Akismet</h2>
<p>Despite <a title="http://akismet.com/" href="http://akismet.com/">Akismet</a> not being 100% accurate in determining who spammers are, it&#8217;s saved me a lot of time (24 days to be exact) and grief. It&#8217;s available for free for non-commercial use and ships with WordPress. There are plenty of alternatives to handle comment spam but I&#8217;ve never had a reason to switch. Other content management systems I&#8217;ve tested either don&#8217;t have an anti spam solution built-in or are tied into the Akismet service. At the time of writing, Akismet has protected the Tavern from <strong>109,288</strong> spam comments with an accuracy rating of <strong>99.19%. </strong></p>
<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/TavernAkismetStatsJuly29th2014.png" rel="prettyphoto[27320]"><img class="size-full wp-image-27336" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/TavernAkismetStatsJuly29th2014.png?resize=710%2C564" alt="Akismet Stats For The Tavern" /></a>Akismet Stats For The Tavern
<h2>An Abundance Of Resources</h2>
<p>Being used on over <a title="http://w3techs.com/" href="http://w3techs.com/">22% of the web</a> has its perks. If I don&#8217;t know how to do something with or in WordPress, the answer is usually a Google search away. Someone has either written a tutorial or knows about a plugin that has the functionality I&#8217;m looking for and a lot of the information is free of charge.</p>
<h2>The WordPress Community</h2>
<p>The WordPress community is global. People all over the world are helping each other go farther with WordPress. People who don&#8217;t know each other are showing up to local area meetups and becoming best friends. I&#8217;ve seen first-hand veterans of the community stop what they are doing and provide a helping hand. More often than not, if we see someone struggling with their WordPress website, we do what we can to help them.</p>
<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2013/08/483.jpg" rel="prettyphoto[27320]"><img class="size-full wp-image-8217" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2013/08/483.jpg?resize=800%2C597" alt="WCSF Contributor Day" /></a>WCSF Contributor Day
<h2>The Time So Many People Spend Improving The Project</h2>
<p>Notice how I didn&#8217;t say <em>improving the software</em>. That&#8217;s because WordPress is more than just software, it&#8217;s like a big tree with several branches. There are a ton of people all over the world helping to make the project better through individual and team contributions. Most are not paid but simply want to improve their favorite part of the project. This includes documentation, organizing meetups, WordCamp planning, improving the core of WordPress, and other initiatives.</p>
<p>Many of the contributions go unnoticed and contributing to WordPress can be a thankless job sometimes. Not every contribution is world-changing; some are more important than others. The bottom line is, every contribution no matter how small, makes a difference.</p>
<h2>What Do You Take For Granted?</h2>
<p>I <a title="https://twitter.com/wptavern/status/494308557945204736" href="https://twitter.com/wptavern/status/494308557945204736">asked the Tavern followers</a> on <a title="https://twitter.com/wptavern" href="https://twitter.com/wptavern">Twitter </a>what aspect of the WordPress project do they take for granted. Here are a few of the responses.</p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> not code related, but the thousands of volunteer hours and personal sacrifices that go into making it great.</p>
<p>&mdash; Ryan D. Sullivan (@ryandonsullivan) <a href="https://twitter.com/ryandonsullivan/statuses/494308912875585536">July 30, 2014</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> The installation and upgrade process. Other pieces of software are an absolute nightmare compared to WordPress.</p>
<p>&mdash; Philip Arthur Moore (@philip_arthur) <a href="https://twitter.com/philip_arthur/statuses/494309581036601344">July 30, 2014</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> beautiful hook system, plugin api, theme system, and install system for core, themes and plugins. Next inline would be admin UI</p>
<p>&mdash; Jeff Behnke (@validwebs) <a href="https://twitter.com/validwebs/statuses/494327674483929090">July 30, 2014</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> Still have to go with CPT\'s and the ease of creating them.. It really I think what drove WP from "blog" to "CMS"</p>
<p>&mdash; RoyBoy789 (@royboy789) <a href="https://twitter.com/royboy789/statuses/494326168372273152">July 30, 2014</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> You can type anything into google followed by "WordPress" and someone has already asked (and answered) it</p>
<p>&mdash; Jared Novack (@jaredNova) <a href="https://twitter.com/jaredNova/statuses/494322903739936768">July 30, 2014</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> : Licensing GPLv2+</p>
<p>&mdash; VibeThemes (@VibeThemes) <a href="https://twitter.com/VibeThemes/statuses/494315673468665857">July 30, 2014</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet" width="550"><p><a href="https://twitter.com/wptavern">@wptavern</a> If you can dream it you can do it in WordPress.</p>
<p>&mdash; Teri Williams (@teri_williams) <a href="https://twitter.com/teri_williams/statuses/494314334558765056">July 30, 2014</a></p></blockquote>
<p></p>
<p><strong>What aspects of WordPress do you take for granted?</strong></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 20:00:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"WPTavern: If I Switched Publishing Systems, ProcessWire Wouldn’t Be My First Choice";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27251";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:206:"http://wptavern.com/if-i-switched-publishing-systems-processwire-wouldnt-be-my-first-choice?utm_source=rss&utm_medium=rss&utm_campaign=if-i-switched-publishing-systems-processwire-wouldnt-be-my-first-choice";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12556:"<p><a title="http://www.cmscritic.com/" href="http://www.cmscritic.com/">CMS Critic</a>, a popular website covering the content management system market, has <a title="http://www.cmscritic.com/processwire-vs-wordpress/" href="http://www.cmscritic.com/processwire-vs-wordpress/">switched their website from WordPress to ProcessWire</a>. <a title="http://processwire.com/" href="http://processwire.com/">ProcessWire</a> is a free, PHP based, open source, four-year old, content management system maintained by Ryan Cramer. CMS Critic cites the following reasons for moving away from WordPress:</p>
<ul>
<li>Bloat</li>
<li>Poor performance on their webhosting account</li>
<li>Too many plugin/theme updates</li>
<li>Too many plugins in general with no vetting process</li>
<li>Difficult to use caching plugins</li>
</ul>
<p>Their number one reason for leaving WordPress is bloat but their explanation of bloat is different from most I&#8217;ve read.</p>
<blockquote><p>WordPress; like a lot of CMS platforms; relies heavily on plugins for extra functionality over and above the core services. The main issue, however, is that these plugins are not actively vetted out (or tested) by core team members to ensure they use optimized code and are safe for your site. This means that by installing a plugin, you can bring down your whole site and cause yourself mountains of headaches all because you wanted to add some extra functionality.</p></blockquote>
<p>The bloat they speak of is not from the core of WordPress, but due to the number of plugins they installed. They are the ones responsible for the bloat, not WordPress. While they raise a good point about plugins not being vetted from a code quality stand point, <a title="http://wptavern.com/behind-the-scenes-in-the-wordpress-plugin-directory-with-mika-epstein" href="http://wptavern.com/behind-the-scenes-in-the-wordpress-plugin-directory-with-mika-epstein">they <strong>are vetted</strong></a> to make sure they don&#8217;t contain security vulnerabilities and follow the <a title="https://wordpress.org/plugins/about/guidelines/" href="https://wordpress.org/plugins/about/guidelines/">WordPress plugin directory guidelines</a>.</p>
<p>According to CMS Critic, Cramer reviews most of the modules before they end up in the official directory. He gives developers a list of improvements and advice that helps limit the potential of modules conflicting with each other. The review process has helped keep problems stemming from modules to a minimum but I don&#8217;t see how it can scale. If the CMS ever reaches the point of receiving 20-50 modules per day, Cramer will need to find help or risk losing precious development time.</p>
<h2>WordPress Plugin Update Fatigue Is Real</h2>
<p>As for updates, each plugin and theme installed in WordPress increases the chance you&#8217;ll see an upgrade notice each time you login to the backend. Despite upgrades being as easy as clicking a button, having to go through the process every day can become cumbersome. CMS Critic makes a good point in that you can&#8217;t tell the difference between a critical update and a bug fix release. As far as the user is concerned, every update is critical.</p>
<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/TooManyPluginUpdates.png" rel="prettyphoto[27251]"><img class="size-full wp-image-27315" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/TooManyPluginUpdates.png?resize=738%2C500" alt="Looks Like I Have A Few Plugins To Update" /></a>Looks Like I Have A Few Plugins To Update
<p>While most plugins have a changelog where you can see what changes are in the latest release, themes do not. This is something that will be addressed when the <a title="https://wordpress.org/themes/" href="https://wordpress.org/themes/">WordPress theme directory</a> receives a major overhaul. Even if a change log is available, it&#8217;s not always clear to the user if the update requires immediate.</p>
<p>What makes all of this a moot point is the security advice of <em>always run the latest version of WordPress</em> which could be extended to plugins and themes. If you follow that advice, it doesn&#8217;t matter whether an update is critical or not. There will likely never be a system in place to determine the importance of an update because it creates another layer of complexity involving a decision that shouldn&#8217;t be complex at all.</p>
<p>The development philosophy of &#8220;<em>iterate and release often</em>&#8221; works fine for services like WordPress.com, but not so much for WordPress, themes, and plugins. Coen Jacobs <a title="http://coenjacobs.me/wordpress-plugins-shouldnt-release-often/" href="http://coenjacobs.me/wordpress-plugins-shouldnt-release-often/">wrote an excellent post</a> explaining why not all WordPress plugins should iterate quickly and release often.</p>
<blockquote><p>Of course, it’s a great thing to be able to develop new features at a fast pace, be able to quickly deliver this to your users (or to add an extra layer of complexity: to your customers) and release a couple fix releases in the time between. But it also requires your users to deal with this number of updates, or they might be at risk of falling behind or have potential security issues in their websites.</p></blockquote>
<p>Update fatigue is a real and should be avoided if possible. The problem is compounded as the number of installed plugins increases. I&#8217;d like more plugin developers to come up with a better release strategy instead of sending out an update as soon as they&#8217;ve fixed a bug. Beginning with WordPress 3.7, users have the ability to <a title="http://codex.wordpress.org/Configuring_Automatic_Background_Updates" href="http://codex.wordpress.org/Configuring_Automatic_Background_Updates">automatically upgrade core, plugins, and themes</a>. However, turning on automatic updates because a plugin is updating too much is a poor reason to use the feature. It&#8217;s worth noting that automatic updates are impossible for certain sites to use such as eCommerce or those that use version control to verify updates before they go live.</p>
<h2>My Experience Using ProcessWire</h2>
<p>In order to see what all the fuss is about, I installed ProcessWire on my local server. Installation is easy and didn&#8217;t require me to edit a configuration file. Here is what a sites looks like after a fresh install.</p>
<a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/ProcessWireFreshInstall.png" rel="prettyphoto[27251]"><img class="size-full wp-image-27302" src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/ProcessWireFreshInstall.png?resize=1025%2C724" alt="ProcessWire Fresh Install" /></a>ProcessWire Fresh Install
<p>The backend of ProcessWire is simple but coming from WordPress, is like being on a new planet. Everything I&#8217;m familiar with in terms of creating content is missing. I can create pages but from a background of knowing pages are more for static content, I&#8217;m not sure if that&#8217;s the optimum method of creating content. There&#8217;s no welcome screen, no signs of help if I need it, and it quickly becomes obvious this is created by developers, for developers.</p>
<a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/ProcessWireBackend.png" rel="prettyphoto[27251]"><img class="size-full wp-image-27306" src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/ProcessWireBackend.png?resize=1025%2C424" alt="The Backend Of ProcessWire" /></a>The Backend Of ProcessWire
<p>After using the CMS for 30 minutes, I promptly gave up trying to do anything cool with it. ProcessWire has a <a title="http://modules.processwire.com/" href="http://modules.processwire.com/">modules directory</a> to add functionality to the platform but it&#8217;s not accessible from within the CMS without the <a title="http://modules.processwire.com/modules/modules-manager/" href="http://modules.processwire.com/modules/modules-manager/">modules manager</a>.</p>
<p>ProcessWire comes with a lot of bundled modules that can be turned on or off. This allows you to specifically determine how much functionality your site has. Over the years, there have been <a title="http://lists.automattic.com/pipermail/wp-hackers/2009-February/024242.html" href="http://lists.automattic.com/pipermail/wp-hackers/2009-February/024242.html">several discussions</a> on whether WordPress should start moving its feature set into separate plugins. This is where I appreciate the <a title="https://wordpress.org/about/philosophy/" href="https://wordpress.org/about/philosophy/">decisions, not options</a> philosophy of WordPress. I&#8217;d rather be given a strict feature set and then add-on to it with plugins. I couldn&#8217;t care less about enabling/disabling core functionality but I understand how this is a great feature for developers.</p>
<a href="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/ProcessWireCoreModules.png" rel="prettyphoto[27251]"><img class="size-full wp-image-27311" src="http://i1.wp.com/wptavern.com/wp-content/uploads/2014/07/ProcessWireCoreModules.png?resize=1025%2C729" alt="Core Modules In ProcessWire" /></a>Module Management In ProcessWire
<p>ProcessWire is based on the premise of <a title="http://processwire.com/about/background/" href="http://processwire.com/about/background/">everything being an API call away</a>. &#8220;Underneath, ProcessWire 2 is a purely API-driven content management framework that is fully functional without any sort of admin interface.&#8221; WordPress is steadily moving in the same direction, especially once the JSON REST API <a title="http://wptavern.com/json-rest-api-slated-for-wordpress-4-1-release" href="http://wptavern.com/json-rest-api-slated-for-wordpress-4-1-release">makes its way into core</a>.</p>
<h2>ProcessWire Wouldn&#8217;t Be My First Choice</h2>
<p>I&#8217;m happy to see another <a title="http://processwire.com/about/license/" href="http://processwire.com/about/license/">GPL licensed project</a> gaining steam and finding a place all its own. The <a title="https://processwire.com/talk/" href="https://processwire.com/talk/">community is active</a> and the main developer has over 8,000 forum posts. They also have a <a title="http://processwire.com/about/sites/" href="http://processwire.com/about/sites/">showcase</a> filled with websites using the software. If you&#8217;d like to check out ProcessWire for yourself, they have a <a title="http://processwire.com/demo/" href="http://processwire.com/demo/">demo available</a> which shows an already created, public facing website. You can also log in to the backend to see how it looks and functions.</p>
<p>If I were going to switch from WordPress to another publishing system, ProcessWire wouldn&#8217;t be my first choice. There are several reasons why. First, I&#8217;m not a user within their target market. Second, most of what I want out of a publishing system it doesn&#8217;t have out of the box. If it does, it&#8217;s not obvious. Last but not least, because of the way ProcessWire functions, it <a title="https://processwire.com/talk/topic/6653-how-can-i-apply-a-new-theme-to-processwire/?hl=%2Binstall+%2Bnew+%2Btheme" href="https://processwire.com/talk/topic/6653-how-can-i-apply-a-new-theme-to-processwire/?hl=%2Binstall+%2Bnew+%2Btheme">doesn&#8217;t have a way</a> to install new themes for the frontend of the site. Great for developers, terrible for users.</p>
<p>Several of the reasons CMS Critic moved from WordPress I think are benefits, not detriments to the project. It&#8217;s great that they&#8217;ve found a project that is more in line with what they need but with the nature of evolving software, how long will it take before iterations and improvements have them looking for yet another CMS to switch to? In most software projects, end users far outnumber developers. I get the impression that most of the users for ProcessWire are developers. If the project doesn&#8217;t decide to cater to end users, I don&#8217;t see it ever becoming much more than an addition to a developer&#8217;s toy box.</p>
<p>There are plenty of things that need improvement in WordPress, but after using ProcessWire for 30 minutes, I was reminded of how many things I take for granted. More on that in a future post.</p>
<p><strong>What do you think of ProcessWire? Is it something you can see yourself switching to or building client sites with? What parts of ProcessWire can be used as inspiration for future improvements in WordPress?</strong></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 18:37:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WordPress.tv: Ivan Potančok: Tvorba eshopov vo WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"http://wordpress.tv/2014/07/30/ivan-potancok-tvorba-eshopov-vo-wordpress-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:663:"<div id="v-htXgylqp-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36973/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36973/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36973&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/30/ivan-potancok-tvorba-eshopov-vo-wordpress-2/"><img alt="Ivan Potančok: Tvorba eshopov vo WordPress" src="http://videos.videopress.com/htXgylqp/video-8e8e5b54c0_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 15:43:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WordPress.tv: Mária Jellúšová: Projektový manažment pri tvorbe webov";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36969";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"http://wordpress.tv/2014/07/30/maria-jellusova-projektovy-manazment-pri-tvorbe-webov-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:686:"<div id="v-roqqnvws-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36969/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36969/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36969&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/30/maria-jellusova-projektovy-manazment-pri-tvorbe-webov-2/"><img alt="Mária Jellúšová: Projektový manažment pri tvorbe webov" src="http://videos.videopress.com/roqqnvws/video-1f89f5cc84_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 15:27:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WordPress.tv: Vladimír Rejholec: WordPress MFA a affiliate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36977";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"http://wordpress.tv/2014/07/30/vladimir-rejholec-wordpress-mfa-a-affiliate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:661:"<div id="v-9sxNBvpw-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36977/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36977/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36977&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/30/vladimir-rejholec-wordpress-mfa-a-affiliate-2/"><img alt="Vladimír Rejholec: WordPress MFA a affiliate" src="http://videos.videopress.com/9sxNBvpw/video-b1ab1ce8a4_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 15:07:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Matt: Five Corporate Giants";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=43957";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"http://ma.tt/2014/07/five-corporate-giants/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:685:"<blockquote><p>As the engineer and writer Alex Payne put it, these startups represent “the field offices of a large distributed workforce assembled by venture capitalists and their associate institutions,” doing low-overhead, low-risk R&amp;D for five corporate giants. In such a system, the real disillusionment isn’t the discovery that you’re unlikely to become a billionaire; it’s the realization that your feeling of autonomy is a fantasy, and that the vast majority of you have been set up to fail by design.</p></blockquote>
<p>From Wired&#8217;s <a href="http://www.wired.com/2014/04/no-exit/">One Startup’s Struggle to Survive the Silicon Valley Gold Rush</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 13:05:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: First Vietnamese WordCamp to be Held in Hanoi in September";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27328";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:180:"http://wptavern.com/first-vietnamese-wordcamp-to-be-held-in-hanoi-in-september?utm_source=rss&utm_medium=rss&utm_campaign=first-vietnamese-wordcamp-to-be-held-in-hanoi-in-september";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2494:"<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/hanoi.jpg" rel="prettyphoto[27328]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/hanoi.jpg?resize=1024%2C479" alt="hanoi" class="aligncenter size-full wp-image-27350" /></a></p>
<p>Vietnam is getting its first WordCamp on September 6th, 2014. <a href="http://2014.hanoi.wordcamp.org/" target="_blank">WordCamp Hanoi</a> was born out of the <a href="http://www.meetup.com/hanoi-wordpress/events/196954212/" target="_blank">Hanoi WordPress Group</a>, an active local meetup with nearly 300 members. The group connects WordPress enthusiasts in the area for relaxed chats and presentations. As of last month, <a href="http://wptavern.com/wordpress-in-vietnamese-now-100-translated" target="_blank">WordPress is now 100% translated into Vietnamese</a>, and some of the meetup members were active in helping to reach that goal.</p>
<p>WordCamp Hanoi is set to have three presentation tracks to include the business side of WordPress, using WordPress, and developing for WordPress. The <a href="http://2014.hanoi.wordcamp.org/2014/07/30/keu-goi-dang-ky-tro-thanh-speaker-call-for-speakers/" target="_blank">call for speakers</a> is open and applications will close on August 11. Organizers are <a href="http://2014.hanoi.wordcamp.org/2014/07/29/tuyen-tinh-nguyen-vien-cho-wordcamp-ha-noi-2014-call-for-volunteers/" target="_blank">looking for volunteers</a> to help with food, shopping, creating speaker gift bags, designing and organizing badges, and all the other behind-the-scenes magic that powers WordCamps.</p>
<p>The Hanoi WordPress Group has been meeting for the past two years and its members have created a friendly atmosphere for connecting with other local enthusiasts. <a href="https://philiparthurmoore.com/" target="_blank">Philip Arthur Moore</a>, one of the organizers of the event, is hoping that same atmosphere will be part of Vietnam&#8217;s first WordCamp. &#8220;Our goal this year is to keep the event simple, cozy, small, and familial, something that our group has done a good job of maintaining since its 2012 start,&#8221; he said.</p>
<p><a href="http://2014.hanoi.wordcamp.org/" target="_blank">WordCamp Hanoi</a> will feature a diverse range of presentations to interest as many different kinds of WordPress users as possible. If you&#8217;re planning on being in Hanoi during September, watch for the ticket announcement so you don&#8217;t miss this historic WordPress event.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Jul 2014 03:54:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:104:"WPTavern: Stellar Places: A Plugin to Create, Manage and Display Locations in WordPress with Google Maps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27252";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:248:"http://wptavern.com/stellar-places-a-plugin-to-create-manage-and-display-locations-in-wordpress-with-google-maps?utm_source=rss&utm_medium=rss&utm_campaign=stellar-places-a-plugin-to-create-manage-and-display-locations-in-wordpress-with-google-maps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4343:"<p>Many Google Maps plugins have a convoluted admin workflow for creating locations in WordPress. Some of the clunkier solutions actually require you to look up longitude and latitude coordinates to manually input for pinpointing. Very few maps plugins utilize custom post types to provide a user-friendly input.</p>
<p><a href="http://wordpress.org/plugins/stellar-places/" target="_blank">Stellar Places</a> is a new plugin designed to provide an intuitive way to create, manage and display locations in WordPress. The plugin registers a custom post type for locations with integrated Google maps. Once activated, a new Places menu shows up in the WordPress admin:</p>
<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/places.png" rel="prettyphoto[27252]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/places.png?resize=900%2C374" alt="places" class="aligncenter size-full wp-image-27287" /></a></p>
<p>Scroll down to enter location data, which is pulled in via Google Maps. You can enter an exact address, just the cross streets, exact coordinates, etc. There&#8217;s a good deal of flexibility in entering a location to pinpoint. The map and extra data fields are automatically updated with your location, without refreshing the page.</p>
<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/google-map.png" rel="prettyphoto[27252]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/google-map.png?resize=900%2C644" alt="google-map" class="aligncenter size-full wp-image-27290" /></a></p>
<p>Places added can be accessed on the front end via the location listing view or single location view with the associated maps. Maps can be inserted into a page or post using the <code>[stellar_places_map]</code> shortcode. Stellar Places also allows you to display multiple locations on the same map.</p>
<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/maps-frontend.png" rel="prettyphoto[27252]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/maps-frontend.png?resize=1025%2C501" alt="maps-frontend" class="aligncenter size-full wp-image-27294" /></a></p>
<p>The <a href="http://wordpress.org/plugins/stellar-places/faq/" target="_blank">shortcode for embedding places</a> is extremely customizable and includes parameters for customizing HTML attributes, such as ID, class, width, and height. It also includes query parameters for limiting the display by post_type, taxonomy, term, category, and post_id. Shortcode map settings allow you to specify latitude/longitude for the map center, mapType, scrollwheel, zoom, minzoom, maxzoom, and infowindows.</p>
<p><a href="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/responsive-map.png" rel="prettyphoto[27252]"><img src="http://i2.wp.com/wptavern.com/wp-content/uploads/2014/07/responsive-map.png?resize=248%2C500" alt="responsive-map" class="alignright size-large wp-image-27297" /></a>The plugin is also mobile-friendly and produces responsive maps that are easy to navigate on devices. This makes it ideal for featuring local events, divided by categories. You could also use it to create a store locator for businesses that have multiple physical locations. Each location gets its own dedicated page and will automatically appear in the list of all locations.</p>
<p>Stellar places features include:</p>
<ul>
<li>Live map preview</li>
<li>Drag and drop marker relocation</li>
<li>Location pages for better SEO</li>
<li>Unlimited locations and maps</li>
<li>Mobile friendly, responsive maps</li>
<li>Easy map embeds via a customizable shortcode</li>
</ul>
<p>In the future, the <a href="http://stellarplaces.com/" target="_blank">Stellar Places development team</a> plans to build extensions for the plugin that you can install to gain additional functionality.</p>
<p>An easy-to-use maps plugin that looks and feels like native WordPress is long overdue. I tested Stellar Places and found that it works as advertised. The process of adding new places is intuitive and maps can be tailored to your exact specifications with the many options available in the shortcode. If you&#8217;re looking to try a new Google Maps plugin for WordPress, download <a href="http://wordpress.org/plugins/stellar-places/" target="_blank">Stellar Places</a> for free from WordPress.org.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 20:04:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: MigrateWP Launches a Service Dedicated to WordPress Migrations";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=27144";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:188:"http://wptavern.com/migratewp-launches-a-service-dedicated-to-wordpress-migrations?utm_source=rss&utm_medium=rss&utm_campaign=migratewp-launches-a-service-dedicated-to-wordpress-migrations";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5010:"<p>While there are many excellent plugins that make migrations easier for developers, WordPress migration as a service hasn&#8217;t been widely marketed. <a href="http://migratewp.io/" target="_blank">MigrateWP</a> is a new business dedicated solely to providing smooth, painless migrations for people who don&#8217;t have the skills or time move a site from one host to another. <a href="http://migratewp.io/pricing/" target="_blank">Pricing</a> starts at $200 and includes DNS migration and a free site audit. Larger and more complex migrations range from $300-$750.</p>
<p><a href="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/migratewp.png" rel="prettyphoto[27144]"><img src="http://i0.wp.com/wptavern.com/wp-content/uploads/2014/07/migratewp.png?resize=900%2C722" alt="migratewp" class="aligncenter size-full wp-image-27269" /></a></p>
<p>Founder <a href="http://ghost1227.com/" target="_blank">Daniel Griffiths</a> describes MigrateWP as a curated migration and conversion service for WordPress.  Griffiths is best known for his work as an <a href="http://easydigitaldownloads.com/" target="_blank">Easy Digital Downloads</a> extension developer and is also the founder of the <a href="http://reduxframework.com/" target="_blank">Redux Framework</a>. During the course of his work, he found migrations to be a source of continual frustration for the average WordPress user.</p>
<p>&#8220;The idea came about as a direct result of a series of issues posted in the Easy Digital Downloads support forum related to migration issues experienced by one of our users,&#8221; Griffiths said. &#8220;<span class="pullquote alignleft">I came to the realization that no matter how well documented, migrations suck!</span> Even for someone who’s done a few, they’re a headache and for a new user, they’re downright impossible.&#8221;</p>
<h3>A Hands-On Migration Service with No Automation</h3>
<p>After researching the problem, Griffiths found that there are very few resources available to facilitate site migration, let alone conversion, for end users who aren&#8217;t technically inclined. <strong>&#8220;Yes, there are a few other services, but they all suffer from one fatal flaw: automation,&#8221;</strong> he said. &#8220;MigrateWP was built on the premise that no matter how well thought out, automated systems can&#8217;t compare with the reliability that manual processes can.&#8221;</p>
<p>Griffiths hand-tailors the migration process for each user&#8217;s unique scenario, and all migrations are completed hands-on by specialists with a high level of experience. This enables MigrateWP employees to ensure data integrity and customer satisfaction.</p>
<p>&#8220;Beyond the basic migration component, we do site conversions, full site auditing, and every migration is run through malware checks both before and after the migration process to ensure the client receives a clean site when the process is finished,&#8221; Griffiths said.</p>
<p>Customers often have no idea how much information they will need to provide access to in the course of a migration. I asked Griffiths how he plans to simplify the process of interfacing with his clients&#8217; old and new hosts. &#8220;Before the migration begins, we personally contact every client to work out the details of the migration,&#8221; he said. However, the initial contact on the website is designed to be quick, without attempting to capture all of the information required.</p>
<p>&#8220;Our client contact form is extremely simple for a reason,&#8221; Griffiths said. &#8220;Particularly in the case of companies, it’s unreasonable to expect a single individual to know all the details up front. After all, companies frequently have multiple employees responsible for various facets of their tech. This may well include different people responsible for the physical hardware as opposed to software, or corporate staff changeovers.&#8221;</p>
<p>Griffiths&#8217; team first performs a site review and engages each potential client directly to get a grasp of the actual migration before proceeding. He is aiming to hire a 5-10 person staff within the first year.</p>
<p>In the future, he hopes to attract developers to utilize his service, in addition to assisting end users who don&#8217;t have the skills to migrate their own sites. Any capable WordPress developer should be able to easily handle an average site migration, but Griffiths hopes to free up their time by creating agreements with development agencies or hosting providers to manage their client migrations.</p>
<p>The commitment to provide a more personalized migration experience with no automation is what Griffiths hopes will distinguish <a href="http://migratewp.io/" target="_blank">MigrateWP</a> from its competitors. Many hosts already offer free automated migration when you sign up for a new account. Do you think end users are more likely to utilize a dedicated migration service or will MigrateWP find more success among developers and agencies?</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 18:12:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Lorelle on WP: Code Standards Project to Take WordPress Into the Future";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:37:"http://lorelle.wordpress.com/?p=11770";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"http://lorelle.wordpress.com/2014/07/29/code-standards-project-to-take-wordpress-into-the-future/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:525:"WP Tavern reported recently that WordPress Developers are organizing a community initiative to standardize common post types, taxonomies and meta data. Led by Justin Tadlock, popular WordPress developer and author of Professional WordPress Plugin Development, the goals of the community project are to name these common parts of WordPress to create a more stable and [&#8230;]<img alt="" border="0" src="http://pixel.wp.com/b.gif?host=lorelle.wordpress.com&blog=72&post=11770&subd=lorelle&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 16:57:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Lorelle VanFossen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WordPress.tv: Daniel Naber: Wie WordPress unsere Rechtschreibfehler findet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36348";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"http://wordpress.tv/2014/07/29/daniel-naber-wie-wordpress-unsere-rechtschreibfehler-findet/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:696:"<div id="v-r1wFwK3F-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36348/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36348/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36348&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/29/daniel-naber-wie-wordpress-unsere-rechtschreibfehler-findet/"><img alt="Daniel Naber: Wie WordPress unsere Rechtschreibfehler findet" src="http://videos.videopress.com/r1wFwK3F/video-dfe262fb4d_scruberthumbnail_0.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 15:54:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WordPress.tv: Michal Kopecký: Perfektný článok";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wordpress.tv/?p=36913";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.tv/2014/07/29/michal-kopecky-perfektny-clanok/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:638:"<div id="v-Y6hV9ilw-1" class="video-player">
</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/36913/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/36913/" /></a> <img alt="" border="0" src="http://pixel.wp.com/b.gif?host=wordpress.tv&blog=5089392&post=36913&subd=wptv&ref=&feed=1" width="1" height="1" /><div><a href="http://wordpress.tv/2014/07/29/michal-kopecky-perfektny-clanok/"><img alt="Michal Kopecký: Perfektný článok" src="http://videos.videopress.com/Y6hV9ilw/video-51a6191c6c_std.original.jpg" width="160" height="120" /></a></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 15:42:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"Matt: WPgo + Postbot";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:21:"http://ma.tt/?p=43955";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:34:"http://ma.tt/2014/07/wpgo-postbot/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:301:"<p><a href="https://github.com/Automattic/wpgo">wpgo.go is a command-line tool to interact with WordPress blogs, written in Google&#8217;s Go language</a>. It&#8217;s cool to see this new generation of apps built on WP.com + Jetpack&#8217;s new APIs, like <a href="http://postbot.co/">Postbot</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 15:30:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:99:"Post Status: Week in review: Sass in _s, CPT standards, MailPoet vs Sucuri, and meet me in New York";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:30:"http://www.poststat.us/?p=6979";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:162:"http://www.poststat.us/week-in-review-underscores-is-sassy-in-new-york/?utm_source=rss&utm_medium=rss&utm_campaign=week-in-review-underscores-is-sassy-in-new-york";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9532:"<p><img class="aligncenter size-large wp-image-6769" src="http://www.poststat.us/wp-content/uploads/2014/06/week-in-review1-752x300.jpg" alt="week-in-review" width="752" height="300" /></p>
<p>Welcome to the fifth “<a href="http://www.poststat.us/category/week-in-review/">Week in Review</a>” on Post Status, where I hope to offer up some of the things you may have missed in the last week or so.</p>
<h3>Sass is coming to Underscores</h3>
<p>A long-awaited feature, the first pass at introducing Sass to the <a href="http://underscores.me">Underscores</a> (_s) theme has been committed. This morning&#8217;s <a href="https://github.com/Automattic/_s/commit/55085b74a34097026711e33b5342b55ac2f5cafd">commit</a> by Tammie Lister follows a number of <a href="https://github.com/Automattic/_s/pull/410">much-discussed Github threads</a>, and it looks promising. The Sassy version of Underscores is <a href="https://github.com/Automattic/_s/tree/_sass">in its own branch</a>, if you want to explore it further and get started with that version right away.</p>
<p>I&#8217;ve been using my own forked version of Underscores for some time now, that includes Sass, and I&#8217;m happy to see this change. I look forward to comparing their version with my own and learning from it. Underscores has become one of the most popular WordPress themes to build custom websites from, and this is a great change.</p>
<p>If you don&#8217;t think you&#8217;re ready for Sass, Josh Pollock has a <a href="http://torquemag.io/developers-guide-learning-sass-twenty-minutes-less/">nice post on Torque</a> to help you out.</p>
<h3>Custom post type standards are underway</h3>
<p>After my post recommending that Jetpack <a title="WordPress.com and Jetpack should lead the way toward standardizing custom post types" href="http://www.poststat.us/wordpress-com-jetpack-lead-way-toward-standardizing-custom-post-types/">lead the way for standardizing custom post types</a>, Justin Tadlock wrote <a href="http://justintadlock.com/archives/2014/07/25/custom-post-type-standards">an excellent follow-up piece</a>.</p>
<p>Furthermore, he started a Github repo for a <a href="https://github.com/justintadlock/content-type-standards">community-based, unofficial standards document</a>. This is exactly the type of discussion that I hoped would occur, and I encourage you all to get involved. If enough of us encourage standards for some common custom content types, we can make portability between WordPress themes even better, and that would be great.</p>
<p>The first issue is to decide what post types to standardize, so <a href="https://github.com/justintadlock/content-type-standards/issues/1">go get involved</a>.</p>
<h3>Standard site logo support for the customizer</h3>
<p>Also along the standardization theme, WordPress.com has introduced a feature for theme developers to create <a href="http://wptavern.com/wordpress-com-moves-to-standardize-theme-support-for-logos">standard support for site logos</a>, a feature that&#8217;s in almost any WordPress theme.</p>
<p>The feature is live on WordPress.com, and coming to a Jetpack near you. WordPress.com <a href="http://en.blog.wordpress.com/2014/07/24/site-logo/">added support for about a dozen themes</a> for the launch of the feature.</p>
<h3>MailPoet and Sucuri spar over the handling of security disclosures</h3>
<p>On July 1st, Sucuri <a href="http://blog.sucuri.net/2014/07/remote-file-upload-vulnerability-on-mailpoet-wysija-newsletters.html">disclosed a vulnerability in MailPoet</a>, a very popular WordPress-centric newsletter plugin. Over the next few days, <a href="http://www.mailpoet.com/critical-security-update-mailpoet-2-6-7/">MailPoet released a variety of updates</a>. A <a href="http://www.pcworld.com/article/2458080/thousands-of-sites-compromised-through-wordpress-plugin-vulnerability.html">bunch</a> of WordPress websites were estimated to be hacked. Updates were available, and many hosts made server level changes, but it affected every version and was a serious issue.<span id="more-6979"></span></p>
<p>However, MailPoet was unsatisfied with how Sucuri handled the disclosure, and <a href="http://www.mailpoet.com/sucuri-hack-lessons-learned/">posted some lessons learned</a> on their blog a couple of days ago. That post is worth reading on its own, but essentially they&#8217;re displeased at the rapidity of Sucuri&#8217;s actions from notification of the vulnerability to publishing the news on their blog. Sucuri says it was standard practice, and <a href="http://blog.sucuri.net/2014/07/responsible-disclosure-sucuri-open-letter-to-mailpoet-and-future-disclosures.html">give a rundown in an open letter to MailPoet</a> on their own blog.</p>
<p>When your primary software product has something like this happen, your emotions definitely tick up a notch or three. I can see both sides of this story. In the end, it&#8217;s important that the fix gets in and site owners and hosts get notified so they can get their sites fixed. I don&#8217;t know who is more correct in this story (I haven&#8217;t given it enough thought, honestly), but I think most things are better settled in a different venue than trading accusatory and pointed open letters &#8212; something both parties are guilty of here.</p>
<h3>Starting a WordPress blog?</h3>
<p>Oli Dale has some really interesting insight where he raises the hypothetical, &#8220;<a href="http://wplift.com/start-blog-wordpress-today">If I were to start a blog about WordPress today.</a>&#8221; He highlights how he thinks some genres (like WordPress news) are well covered, but that he sees a great deal of potential in more niche markets.</p>
<p>Definitely read Oli&#8217;s advice if you&#8217;re looking to start a blog. Also keep in mind, really there is so much opportunity, no matter what you see out there today; just do it better than anyone else and you can succeed. (Notable on this topic, <a href="http://wpscoop.com/version-2-0/">WP Scoop</a> just rebranded itself)</p>
<p>Related, but more general: <a href="https://medium.com/message/you-are-not-late-b3d76f963142">You are not late</a>.</p>
<h3>GravityView: display entries of Gravity Forms anywhere on your site</h3>
<p>Zack Katz has released <a href="http://gravityview.co/">GravityView</a>, a plugin that takes Gravity Forms submissions and lets you put them anywhere on your site. This plugin look really slick, and I see a lot of potential uses for it.</p>
<p>Zack is the developer of the free <a href="http://wordpress.org/plugins/gravity-forms-addons/">Gravity Forms Directory</a> plugin, and GravityView is a different plugin, but expanded version of that. Zack talks about GravityView and his thinking behind it on the <a href="http://applyfilters.fm/podcast/episode-22/">latest Apply Filters podcast</a>, which he recorded right before he released the plugin.</p>
<h3>Automating WP App Store</h3>
<p>Iain Poulson wrote a fun little post about how he&#8217;s <a href="http://polevaultweb.com/2014/07/workflow-automation-wp-app-store/">automated most of the work that goes into WP App Store</a>, a former marketplace product <a title="WP App Store has a new owner" href="http://www.poststat.us/wp-app-store-new-owner/">turned email deals product</a>.</p>
<h3>Brian Richards goes full-time on WP Sessions, introduces first course</h3>
<p>Brian Richards has left his position at WebDevStudios to attempt a full-time career building WP Sessions, his WordPress learning website.</p>
<p>As I noted last week, he&#8217;s giving away a $2,000 value trip to WCSF to those that sign up for his VIP program, and there are <a href="http://wpsessions.com/great-big-give-away/">still a couple of days to enter</a>.</p>
<p>He also just released a <a href="http://wpsessions.com/course/first-wordpress-plugin/">course on building WordPress plugins</a>, <a href="https://pippinsplugins.com/first-wordpress-plugin-course-wp-sessions/">which Pippin Williamson is teaching</a>; it doesn&#8217;t get much better than that. I wish Brian the best of luck, and hope WP Sessions sustains him.</p>
<h3>My first WordCamp San Francisco</h3>
<p>I guest posted on the WordCamp San Francisco blog, where I talked about my first experience at WCSF. Incredible relationships and experiences are made at WordCamps; <a href="http://2014.sf.wordcamp.org/2014/07/21/my-first-wordcamp-san-francisco/">this is my story</a>.</p>
<p>Along a similar vein, <a href="http://bluelimemedia.com/2014/07/27/bother-wordcamps/">Christine Rondeau answers</a>, &#8220;Why bother with WordCamps?&#8221;</p>
<h3>Meet me in New York</h3>
<p>I&#8217;m really excited to attend <a href="http://2014.nyc.wordcamp.org/">WordCamp New York City</a> Friday through Sunday. If you&#8217;re there, I&#8217;d love to meet. The lineup of <a href="http://2014.nyc.wordcamp.org/attendees">attendees</a> and <a href="http://2014.nyc.wordcamp.org/speakers">speakers</a> is insane. I&#8217;ll also be doing some hallway interviews, so Post Status readers will hopefully enjoy the results of those. I&#8217;ll probably be <a href="https://www.youtube.com/watch?v=6PHOeXIPNZE">singing Alicia Keys to myself</a> for the next few days, so you can have that mental image for free.</p>
<p><!--more--></p>
<p>It&#8217;s not quite midnight on Monday in Alabama, as I wrap this up. So while the week in review is a bit late this week, I hope you still enjoyed it and learned something new. If you did, I of course appreciate if you&#8217;ll share it with your social network of choice.</p>
<p>Have a great week everyone.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 Jul 2014 04:31:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: This Week On WPWeekly – A Roundtable Discussion On Crowdfunding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wptavern.com/?p=26916";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:186:"http://wptavern.com/this-week-on-wpweekly-a-roundtable-discussion-on-crowdfunding?utm_source=rss&utm_medium=rss&utm_campaign=this-week-on-wpweekly-a-roundtable-discussion-on-crowdfunding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2221:"<p>This <a title="http://wptavern.com/wordpress-weekly" href="http://wptavern.com/wordpress-weekly">Friday at 3PM Eastern</a>, we&#8217;ll be joined by three individuals to discuss the topic of crowdfunding. Crowdfunding is defined as &#8220;the practice of funding a project or venture by raising many small amounts of money from a large number of people, typically via the Internet.&#8221; While some projects fail, others are exceedingly successful.</p>
<p>Our guests will share their experience, lessons learned, and what they would have done differently. We&#8217;ll also discuss the impact of crowdfunding open source software development.</p>
<ul>
<li>Scott Kingsley Clark &#8211; <a title="https://www.kickstarter.com/projects/sc0ttkclark/pods-development-framework-20" href="https://www.kickstarter.com/projects/sc0ttkclark/pods-development-framework-20">Clark used Kickstarter</a> to successfully raise enough funds to develop Pods 2.0 and the community website. Although he only asked for $1,500, he ended up with nearly $4,200.</li>
<li>Nick Haskins &#8211; Lead developer of the AESOP Story Engine plugin and hosted service, <a title="https://aesop.crowdhoster.com/storytelling-engine" href="https://aesop.crowdhoster.com/storytelling-engine">Haskins asked for $6,000</a> and received $6,572 using Crowdhoster. <a title="https://open.crowdtilt.com/" href="https://open.crowdtilt.com/">Crowdhoster</a> is the open source version of <a title="https://www.crowdtilt.com/" href="https://www.crowdtilt.com/">Crowdtilt</a>.</li>
<li>John Saddington &#8211; Lead developer of Pressgram, <a title="https://www.kickstarter.com/projects/tentblogger/pressgram-an-image-sharing-app-built-for-an-indepe" href="https://www.kickstarter.com/projects/tentblogger/pressgram-an-image-sharing-app-built-for-an-indepe">asked for $50,000</a> and received $56,500 using Kickstarter to fund his image sharing app.</li>
</ul>
<p>Crowdfunding enables people to not only gauge interest in an idea or product, but also allows them to receive funding without having to deal with venture capitalists or banks.</p>
<p>If you have any questions for our guests, or about the topic of crowdfunding, feel free to post them in the comments.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 28 Jul 2014 23:20:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 05 Aug 2014 02:54:25 GMT";s:12:"content-type";s:8:"text/xml";s:14:"content-length";s:6:"166404";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Tue, 05 Aug 2014 02:30:14 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:13:"accept-ranges";s:5:"bytes";}s:5:"build";s:14:"20130911110210";}', 'no') ; 
INSERT INTO `wp_options` VALUES (645, '_transient_timeout_feed_mod_867bd5c64f85878d03a060509cd2f92c', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (646, '_transient_feed_mod_867bd5c64f85878d03a060509cd2f92c', '1407207264', 'no') ; 
INSERT INTO `wp_options` VALUES (647, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (648, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"
	
";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"http://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 05 Aug 2014 02:35:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"http://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:104:"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the WordPress SEO plugin by Yoast.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"MailPoet Newsletters";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wysija-newsletters/#post-32629";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Dec 2011 17:09:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"32629@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:94:"Send newsletters, post notifications or autoresponders from WordPress easily, and beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"MailPoet Staff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 10 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"The easiest, most effective way to secure WordPress in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"http://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"http://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"http://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Google Maps Ready!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"http://wordpress.org/plugins/google-maps-ready/#post-62478";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 06 Jan 2014 10:47:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"62478@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Display custom Google Maps. Set markers and locations with text, images, categories and links. Customize google map without any programming skills";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:18:"Google Maps plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Captcha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wordpress.org/plugins/captcha/#post-26129";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Apr 2011 05:53:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26129@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:79:"This plugin allows you to implement super security captcha form into web forms.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"bestwebsoft";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"
			
			
			
			
			
			
					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Fast Secure Contact Form";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wordpress.org/plugins/si-contact-form/#post-12636";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Aug 2009 01:20:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12636@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"An easy and powerful form builder that lets your visitors send you email. Blocks all automated spammers. No templates to mess with.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Mike Challis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:45:"http://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:11:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 05 Aug 2014 02:54:26 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:7:"expires";s:29:"Tue, 05 Aug 2014 03:10:22 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Tue, 05 Aug 2014 02:35:22 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911110210";}', 'no') ; 
INSERT INTO `wp_options` VALUES (649, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (650, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1407207264', 'no') ; 
INSERT INTO `wp_options` VALUES (651, '_transient_timeout_plugin_slugs', '1407300845', 'no') ; 
INSERT INTO `wp_options` VALUES (652, '_transient_plugin_slugs', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:35:"backupwordpress/backupwordpress.php";i:3;s:37:"blueimp-lightbox/blueimp-lightbox.php";i:4;s:25:"booking/wpdev-booking.php";i:5;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:6;s:23:"debug-bar/debug-bar.php";i:7;s:9:"hello.php";}', 'no') ; 
INSERT INTO `wp_options` VALUES (653, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1407250464', 'no') ; 
INSERT INTO `wp_options` VALUES (654, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://wordpress.org/news/2014/07/wordpress-4-0-beta-2/\'>WordPress 4.0 Beta 2</a> <span class="rss-date">July 18, 2014</span><div class="rssSummary">WordPress 4.0 Beta 2 is now available for download and testing. This is software still in development, so we don’t recommend that you run it on a production site. To get the beta, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). For more of what’s new in version 4.0, check out […]</div></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://wptavern.com/piklist-launches-beta-program-ahead-of-commercial-product-releases?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=piklist-launches-beta-program-ahead-of-commercial-product-releases\' title=\'Earlier this year, the Piklist rapid development framework for WordPress rebranded with its 0.9.0 release and the team announced plans to launch commercial products. The framework is used by many developers to speed up tasks such as creating fields for settings pages, registering custom post types and custom taxonomies, adding post-to-post relationships and\'>WPTavern: Piklist Launches Beta Program Ahead of Commercial Product Releases</a></li><li><a class=\'rsswidget\' href=\'http://wptavern.com/this-week-on-wpweekly-jeff-chandler?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=this-week-on-wpweekly-jeff-chandler\' title=\'You may be thinking, of course he’s going to be on the show, he’s the host! This week, I’m experimenting with the show by being the one who is interviewed instead of the other way around. My co-host Marcus Couch, will be the one asking the questions. Throughout the show’s lifespan, I’ve spent countless hours interviewing some of the brightest minds in the Wo\'>WPTavern: This Week On WPWeekly: Jeff Chandler</a></li><li><a class=\'rsswidget\' href=\'http://wptavern.com/prestige-business-conference-for-wordpress-set-for-oct-3-5-2014?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=prestige-business-conference-for-wordpress-set-for-oct-3-5-2014\' title=\'Prestige is a new conference that is taking place October 3-5, 2014 in downtown Minneapolis, Minnesota and is being organized by Josh Broton and Kiko Doran. Unlike WordCamps, Prestige only has one track and its devoted to the business of WordPress. Tickets are on sale and if you can’t make it to the event in person, consider the live stream option. You can s\'>WPTavern: Prestige Business Conference For WordPress Set For Oct 3-5, 2014</a></li></ul></div><div class="rss-widget"><ul><li class=\'dashboard-news-plugin\'><span>Popular Plugin:</span> <a href=\'http://wordpress.org/plugins/wysija-newsletters/\' class=\'dashboard-news-plugin-link\'>MailPoet Newsletters</a>&nbsp;<span>(<a href=\'plugin-install.php?tab=plugin-information&amp;plugin=wysija-newsletters&amp;_wpnonce=5a78aacebc&amp;TB_iframe=true&amp;width=600&amp;height=800\' class=\'thickbox\' title=\'MailPoet Newsletters\'>Install</a>)</span></li></ul></div>', 'no') ; 
INSERT INTO `wp_options` VALUES (655, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1407218099', 'yes') ; 
INSERT INTO `wp_options` VALUES (656, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"4463";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2778";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2683";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2196";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2110";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1756";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1553";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1513";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1465";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1449";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1401";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1340";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1308";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1157";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1116";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1096";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"999";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"955";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"955";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"789";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"782";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"781";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"769";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"766";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"703";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"678";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"662";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"651";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"619";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"610";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"592";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"583";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"579";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"579";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"568";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"532";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"525";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"524";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"510";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"507";}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (657, '_site_transient_timeout_theme_roots', '1407216241', 'yes') ; 
INSERT INTO `wp_options` VALUES (658, '_site_transient_theme_roots', 'a:4:{s:14:"edin-carpenter";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes') ; 
INSERT INTO `wp_options` VALUES (659, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1407214445;s:7:"checked";a:8:{s:30:"advanced-custom-fields/acf.php";s:5:"4.3.8";s:19:"akismet/akismet.php";s:5:"3.0.1";s:35:"backupwordpress/backupwordpress.php";s:5:"2.6.2";s:37:"blueimp-lightbox/blueimp-lightbox.php";s:5:"1.1.0";s:25:"booking/wpdev-booking.php";s:5:"5.1.5";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"0.8.3";s:23:"debug-bar/debug-bar.php";s:5:"0.8.1";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:25:"booking/wpdev-booking.php";O:8:"stdClass":6:{s:2:"id";s:4:"9680";s:4:"slug";s:7:"booking";s:6:"plugin";s:25:"booking/wpdev-booking.php";s:11:"new_version";s:5:"5.1.6";s:3:"url";s:38:"https://wordpress.org/plugins/booking/";s:7:"package";s:50:"https://downloads.wordpress.org/plugin/booking.zip";}}s:12:"translations";a:0:{}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (660, 'hmbkp_default_path', '/Users/nick/Sites/edin-carpenter/wp-content/backupwordpress-4b3c2d48df-backups', 'yes') ; 
INSERT INTO `wp_options` VALUES (661, 'hmbkp_path', '/Users/nick/Sites/edin-carpenter/wp-content/backupwordpress-4b3c2d48df-backups', 'yes') ; 
INSERT INTO `wp_options` VALUES (662, 'hmbkp_schedule_default-1', 'a:5:{s:4:"type";s:8:"complete";s:12:"reoccurrence";s:12:"hmbkp_weekly";s:19:"schedule_start_time";i:1407279600;s:11:"max_backups";i:5;s:19:"HMBKP_Email_Service";a:1:{s:5:"email";s:0:"";}}', 'yes') ; 
INSERT INTO `wp_options` VALUES (663, 'hmbkp_schedule_default-2', 'a:4:{s:4:"type";s:8:"complete";s:12:"reoccurrence";s:12:"hmbkp_weekly";s:19:"schedule_start_time";i:1407639600;s:11:"max_backups";i:12;}', 'yes') ; 
INSERT INTO `wp_options` VALUES (664, 'hmbkp_plugin_version', '2.6.2', 'yes') ; 
INSERT INTO `wp_options` VALUES (665, '_transient_timeout_hmbkp_plugin_data', '1407300867', 'no') ; 
INSERT INTO `wp_options` VALUES (666, '_transient_hmbkp_plugin_data', 'O:8:"stdClass":20:{s:4:"name";s:15:"BackUpWordPress";s:4:"slug";s:15:"backupwordpress";s:7:"version";s:5:"2.6.2";s:6:"author";s:47:"<a href="http://hmn.md/">Human Made Limited</a>";s:14:"author_profile";s:32:"//profiles.wordpress.org/willmot";s:12:"contributors";a:7:{s:9:"humanmade";s:34:"//profiles.wordpress.org/humanmade";s:7:"willmot";s:32:"//profiles.wordpress.org/willmot";s:13:"pauldewouters";s:38:"//profiles.wordpress.org/pauldewouters";s:8:"joehoyle";s:33:"//profiles.wordpress.org/joehoyle";s:7:"mattheu";s:32:"//profiles.wordpress.org/mattheu";s:9:"tcrsavage";s:34:"//profiles.wordpress.org/tcrsavage";s:8:"cuvelier";s:0:"";}s:8:"requires";s:5:"3.7.3";s:6:"tested";s:5:"3.9.1";s:13:"compatibility";a:1:{s:5:"3.9.1";a:1:{s:5:"2.6.2";a:3:{i:0;i:92;i:1;i:12;i:2;i:11;}}}s:6:"rating";d:91.7999999999999971578290569595992565155029296875;s:11:"num_ratings";i:723;s:7:"ratings";a:5:{i:5;i:590;i:4;i:66;i:3;i:13;i:2;i:8;i:1;i:46;}s:10:"downloaded";i:1112465;s:12:"last_updated";s:10:"2014-05-06";s:5:"added";s:10:"2007-09-02";s:8:"homepage";s:18:"http://bwp.hmn.md/";s:8:"sections";a:5:{s:11:"description";s:1433:"<p><a href="https://bwp.hmn.md/?utm_source=wordpress-org&#38;utm_medium=plugin-page&#38;utm_campaign=freeplugin">BackUpWordPress</a> will back up your entire site including your database and all your files on a schedule that suits you. Try it now to see how easy it is!</p>

<h4>Features</h4>

<ul>
<li>Super simple to use, no setup required.</li>
<li>Works in low memory, "shared host" environments.</li>
<li>Manage multiple schedules.</li>
<li>Option to have each backup file emailed to you.</li>
<li>Uses <code>zip</code> and <code>mysqldump</code> for faster backups if they are available.</li>
<li>Works on Linux &#38; Windows Server.</li>
<li>Exclude files and folders from your backups.</li>
<li>Good support should you need help.</li>
<li>Translations for Spanish, German, Chinese, Romanian, Russian, Serbian, Lithuanian, Italian, Czech, Dutch, French, Basque.</li>
</ul>

<h4>Help develop this plugin</h4>

<p>The BackUpWordPress plugin is hosted on GitHub, if you want to help out with development or testing then head over to <a href="https://github.com/humanmade/backupwordpress/" rel="nofollow">https://github.com/humanmade/backupwordpress/</a>.</p>

<h4>Translations</h4>

<p>We\'d also love help translating the plugin into more languages, if you can help then please contact <a href="mailto:support@hmn.md">support@hmn.md</a> or visit <a href="http://translate.hmn.md/" rel="nofollow">http://translate.hmn.md/</a>.</p>";s:12:"installation";s:460:"<ol>
<li>Install BackUpWordPress either via the WordPress.org plugin directory, or by uploading the files to your server.</li>
<li>Activate the plugin.</li>
<li>Sit back and relax safe in the knowledge that your whole site will be backed up every day.</li>
</ol>

<p>The plugin will try to use the <code>mysqldump</code> and <code>zip</code> commands via shell if they are available, using these will greatly improve the time it takes to back up your site.</p>";s:11:"screenshots";s:1083:"<ol>
	<li>
		<a href=\'//ps.w.org/backupwordpress/assets/screenshot-1.png?rev=904756\' title=\'Click to view full-size screenshot 1\'>			<img class=\'screenshot\' src=\'//ps.w.org/backupwordpress/assets/screenshot-1.png?rev=904756\' alt=\'backupwordpress screenshot 1\' />
		</a>		<p>Manage multiple schedules.</p>
	</li>
	<li>
		<a href=\'//ps.w.org/backupwordpress/assets/screenshot-2.png?rev=904756\' title=\'Click to view full-size screenshot 2\'>			<img class=\'screenshot\' src=\'//ps.w.org/backupwordpress/assets/screenshot-2.png?rev=904756\' alt=\'backupwordpress screenshot 2\' />
		</a>		<p>Choose your schedule, backup type, number of backups to keep and whether to recieve a notification email.</p>
	</li>
	<li>
		<a href=\'//ps.w.org/backupwordpress/assets/screenshot-3.png?rev=904756\' title=\'Click to view full-size screenshot 3\'>			<img class=\'screenshot\' src=\'//ps.w.org/backupwordpress/assets/screenshot-3.png?rev=904756\' alt=\'backupwordpress screenshot 3\' />
		</a>		<p>Easily manage exclude rules and see exactly which files are included and excluded from your backup.</p>
	</li>
</ol>";s:9:"changelog";s:32377:"<h4>2.6.2</h4>

<ul>
<li>Reverts a change to how the home path is calculated as it caused issues on installs where wp-config.php was stored outside of web root. Props to @mikelittle for the bug report.</li>
</ul>

<h4>2.6.1</h4>

<ul>
<li>Bump minimum WP requirement to 3.7.3, the latest security release on the 3.7 branch.</li>
<li>Fix an issues that could cause schedule times to fail to account for timezone differences.</li>
<li>Add a nonce check to the schedule settings.</li>
<li>Fix a possible JS warning when removing an exclude rule.</li>
<li>Our unit tests now run in PHP 5.2 again.</li>
</ul>

<h4>2.6</h4>

<ul>
<li>It\'s now possible to choose the time and day that your schedule will run on.</li>
<li>Introduces several new unit tests around schedule timings.</li>
<li>Fixes a bug that could cause the hourly schedule to run constantly.</li>
<li>Improved the layout of the Constants help panel.</li>
<li>If the backup root directory is unreadable then the plugin will no longer function.</li>
<li>Update the backups table match the standard WordPress table styles.</li>
<li>Improved styling for the settings dialogue.</li>
<li>Improved styling for the Server Info help tab.</li>
<li>/s/back ups/backups.</li>
<li>Remove Deprecated call to <code>screen_icon</code>.</li>
<li>Updated French translation.</li>
<li>Update the <code>WP CLI</code> command to use the new method for registering command.</li>
<li>Reload the schedules when re-setting up the default schedules so they show up straight away.</li>
<li>s/dpesnt\'t/doesn\'t.</li>
<li>Only show the estimated total schedule size when editing an existing schedule.</li>
<li>Stop stripping 0 from the minutes on hourly backups so that backups at 10 (&#38; 20, etc.) past the hour correctly show.</li>
<li>Disable buttons whilst ajax requests are running.</li>
<li>Move spinners outside the buttons as they didn\'t look very good inside.</li>
<li>Improve the detection of the home path on multisite installs which have WordPress in a subdirectory.</li>
<li>Track the time that the running backup is started and display how long a backup has been running for.</li>
<li>Fix an issue that meant it wasn\'t possible to run multiple manual backups at the same time.</li>
<li>Many other minor improvements.</li>
</ul>

<h4>2.5</h4>

<ul>
<li>BackUpWordPress now requires WordPress 3.7.1 as a minimum.</li>
<li>Remove some old back-compat code that was required because we supported older WP versions.</li>
<li>It\'s now possible to change the email address that notification emails are sent from using the <code>hmbkp_from_email</code> filter.</li>
<li>The spinner is now retina!</li>
<li>Close the PHP Session before starting the backup process to work around the 1 request per session issue. Backup status will now work on sites which happen to call <code>session_start</code>.</li>
<li>Pass <code>max_execution_time</code> and the BackUpWordPress Plugin version back to support. * Include the users real name in support requests</li>
<li>Stop passing <code>$_SERVER</code> with support requests as it can contain things like <code>.htaccess</code> passwords on some server configurations.</li>
<li>Improve the display of the server info in the enable support popup.</li>
<li>New screenshots</li>
<li>Use <code>wp_safe_redirect</code> for internal redirects.</li>
<li>Use <code>wp_is_writable</code> instead of <code>is_writable</code>.</li>
</ul>

<h4>2.4.2</h4>

<ul>
<li>In WordPress Multisite the backups admin page is now located in Network admin instead of the wp-admin of the main site.</li>
<li>Fixed an issue with the new intercom support integration that could cause loading the backups page to timeout</li>
<li>Fixed 3 stray PHP warnings.</li>
<li>BackUpWordPress will now always be loaded before any BackUpWordPress Extensions.</li>
<li>Fixed an issue that could cause a long modal (excludes) to show underneath the WP admin bar.</li>
</ul>

<h4>2.4.1</h4>

<ul>
<li>Add missing colorbox images</li>
</ul>

<h4>2.4</h4>

<ul>
<li>Support for new premium extensions for storing backups in a variety of online services.</li>
<li>Exclude the WP DB Manager backups and WP Super Cache cache directories by default.</li>
<li>We now use Intercom to offer support directly from within the plugin, opt-in of course.</li>
<li>More i18n fixes / improvements.</li>
<li>We no longer show download links if your backups directory isn\'t web accessible.</li>
<li>Fix a bug that caused the plugin activation and deactivation hooks from firing.</li>
<li>Correctly handle <code>MYSQL TIMESTAMP</code> columns in database dumps.</li>
<li><code>mysqldump</code> and <code>zip</code> are now correctly recognised on SmartOS.</li>
<li>Schedule names are now translatable.</li>
<li>Avoid having to re-calculate the filesize when a schedules type is set.</li>
<li>Compatibility with WordPress 3.8</li>
</ul>

<h4>2.3.2</h4>

<ul>
<li>Correct version number.</li>
</ul>

<h4>2.3.1</h4>

<ul>
<li>Fix a PHP strict error.</li>
<li>Save and close as separate buttons.</li>
<li>Fix bug that caused multiple notification emails.</li>
<li>Fixes typo in database option name.</li>
<li>Updated translations.</li>
<li>Improve PHP docblocks.</li>
<li>Make schedules class a singleton.</li>
<li>Exclude popular backup plugin folders by default.</li>
<li>Exclude version control folders by default.</li>
<li>Fix broken localisation.</li>
<li>Use <code>wp_safe_redirect</code> instead of <code>wp_redirect</code> for internal form submissions</li>
<li></li>
</ul>

<h4>2.3</h4>

<ul>
<li>Replace Fancybox with Colorbox as Fancybox 2 isn\'t GPL compatible.</li>
<li>Use the correct <code>HMBKP_ATTACHMENT_MAX_FILESIZE</code> constant consistently in the help section.</li>
<li>Correct filename for some mis-named translation files.</li>
<li>Show the total estimated disk space a schedule could take up (max backups * estimated site size).</li>
<li>Fix a typo (your -&#62; you\'re).</li>
<li>Use the new time Constants and define backwords compatible ones for &#62; than 3.5.</li>
<li>Play nice with custom cron intervals.</li>
<li>Main plugin file is now <code>backupwordpress.php</code> for consistency.</li>
<li>Add Paul De Wouters (<code>pauldewouters</code>) as a contributor, welcome Paul!</li>
<li>Don\'t remove non-backup files from custom backup paths.</li>
<li>Fix a regression where setting a custom path which didn\'t exist could cause you to lose existing backups.</li>
<li>When moving paths only move backup files.</li>
<li>Make some untranslatable strings translatable.</li>
<li>Don\'t allow a single schedule to run in multiple threads at once, should finally fix edge case issues where some load balancer / proxies were causing multiple backups per run.</li>
<li>Only highlight the <code>HMBKP_SCHEDULE_TIME</code> constant in help if it\'s not the default value.</li>
<li>Remove help text for deprecated <code>HMBKP_EMAIL</code>.</li>
<li>Default to allways specificing <code>--single-transaction</code> when using <code>mysqldump</code> to backup the database, can be disabled by setting the <code>HMBKP_MYSQLDUMP_SINGLE_TRANSACTION</code> to <code>false</code>.</li>
<li>Silence a <code>PHP Warning</code> if <code>mysql_pconnect</code> has been disabled.</li>
<li>Ensure dot directories <code>.</code> &#38; <code>..</code> are always skipped when looping the filesystem.</li>
<li>Work around a warning in the latest version of MySQL when using the <code>-p</code> flag with <code>mysqldunmp</code>.</li>
<li>Fix issues on IIS that could cause the root directory to be incorrectly calculated.</li>
<li>Fix an issue on IIS that could cause the download backup url to be incorrect.</li>
<li>Fix an issue on IIS that could mean your existing backups are lost when moving backup directory.</li>
<li>Avoid a <code>PHP FATAL ERROR</code> if the <code>mysql_set_charset</code> doesn\'t exist.</li>
<li>All unit tests now pass under IIS on Windows.</li>
<li>Prefix the backup directory with <code>backupwordpress-</code> so that it\'s easier to identify.</li>
<li>Re-calculate the backup directory name on plugin update and move backups.</li>
<li>Fix some issues with how <code>HMBKP_SECURE_KEY</code> was generated.</li>
</ul>

<h4>2.2.4</h4>

<ul>
<li>Fix a fatal error on PHP 5.2, sorry! (again.)</li>
</ul>

<h4>2.2.3</h4>

<ul>
<li>Fix a parse error, sorry!</li>
</ul>

<h4>2.2.2</h4>

<ul>
<li>Fix a fatal error when uninstalling.</li>
<li>Updated translations for Brazilian, French, Danish, Spanish, Czech, Slovakian, Polish, Italian, German, Latvian, Hebrew, Chinese &#38; Dutch.</li>
<li>Fix a possible notice when using the plugin on a server without internet access.</li>
<li>Don\'t show the wp-cron error message when <code>WP_USE_ALTERNATE_CRON</code> is defined as true.</li>
<li>Ability to override the max attachment size for email notifications using the new <code>HMBKP_ATTACHMENT_MAX_FILESIZE</code> constant.</li>
<li>Nonce some ajax request.</li>
<li>Silence warnings created if <code>is_executable</code>, <code>escapeshellcmd</code> or <code>escapeshellarg</code> are disabled.</li>
<li>Handle situations where the mysql port is set to something wierd.</li>
<li>Fallback to <code>mysql_connect</code> on system that disable <code>mysql_pconnect</code>.</li>
<li>You can now force the <code>--single-transaction</code> param when using <code>mysqldump</code> by defining <code>HMBKP_MYSQLDUMP_SINGLE_TRANSACTION</code>.</li>
<li>Unit tests for <code>HM_Backup::is_safe_mode_available()</code>.</li>
<li>Silence possible PHP Warnings when unlinking files.</li>
</ul>

<h4>2.2.1</h4>

<ul>
<li>Stop storing a list of unreadable files in the backup warnings as it\'s too memory intensive.</li>
<li>Revert the custom <code>RecursiveDirectoryIterator</code> as it caused an infinite loop on some servers.</li>
<li>Show all errors and warnings in the popup shown when a manual backup completes.</li>
<li>Write the .backup_error and .backup_warning files everytime an error or warning happens instead of waiting until the end of the backups process.</li>
<li>Fix a couple of <code>PHP E_STRICT</code> notices.</li>
<li>Catch more errors during the manual backup process and expose them to the user.</li>
</ul>

<h4>2.2</h4>

<ul>
<li>Don\'t repeatedly try to create the backups directory in the <code>uploads</code> if <code>uploads</code> isn\'t writable.</li>
<li>Show the correct path in the warning message when the backups path can\'t be created.</li>
<li>Include any user defined auth keys and salts when generating the HMBKP_SECURE_KEY.</li>
<li>Stop relying on the built in WordPress schedules as other plugins can mess with them.</li>
<li>Delete old backups everytime the backups page is viewed in an attempt to ensure old backups are always cleaned up.</li>
<li>Improve modals on small screens and mobile devices.</li>
<li>Use the retina spinner on retina screens.</li>
<li>Update buttons to the new 3.5 style.</li>
<li>Fix a possible fatal error caused when a symlink points to a location that is outside an <code>open_basedir</code> restriction.</li>
<li>Fix an issue that could cause backups using PclZip with a custom backups path to fail.</li>
<li>Security hardening by improving escaping, sanitizitation and validation.</li>
<li>Increase the timeout on the ajax cron check, should fix issues with cron errors showing on slow sites.</li>
<li>Only clear the cached backup filesize if the backup type changes.</li>
<li>Add unit tests for all the schedule recurrences.</li>
<li>Fix an issue which could cause weekly and monthly schedules to fail.</li>
<li>Add an <code>uninstall.php</code> file which removes all BackUpWordPress data and options.</li>
<li>Catch a possible fatal error in <code>RecursiveDirectoryIterator::hasChildren</code>.</li>
<li>Fix an issue that could cause mysqldump errors to be ignored thus causing the backup process to use an incomplete mysqldump file.</li>
</ul>

<h4>2.1.3</h4>

<ul>
<li>Fix a regression in <code>2.1.2</code> that broke previewing and adding new exclude rules.</li>
</ul>

<h4>2.1.2</h4>

<ul>
<li>Fix an issue that could stop the settings panel from closing on save on servers which return <code>\'0\'</code> for ajax requests.</li>
<li>Fix an issue that could cause the backup root to be set to <code>/</code> on sites with <code>site_url</code> and <code>home</code> set to different domains.</li>
<li>The mysqldump fallback function will now be used if <code>mysqldump</code> produces an empty file.</li>
<li>Fix a possible PHP <code>NOTICE</code> on Apache servers.</li>
</ul>

<h4>2.1.1</h4>

<ul>
<li>Fix a possible fatal error when a backup schedule is instantiated outside of wp-admin.</li>
<li>Don\'t use functions from misc.php as loading it too early can cause fatal errors.</li>
<li>Don\'t hardcode an English string in the JS, use the translated string instead.</li>
<li>Properly skip dot files, should fix fatal errors on systems with <code>open_basedir</code> restrictions.</li>
<li>Don\'t call <code>apache_mod_loaded</code> as it caused wierd DNS issue on some sites, use <code>global $is_apache</code> instead.</li>
<li>Fix a possible double full stop at the end of the schedule sentence.</li>
<li>Minor code cleanup.</li>
</ul>

<h4>2.1</h4>

<ul>
<li>Stop blocking people with <code>safe_mode = On</code> from using the plugin, instead just show a warning.</li>
<li>Fix possible fatal error when setting schedule to monthly.</li>
<li>Fix issues with download backup not working on some shared hosts.</li>
<li>Fix issuses with download backup not working on sites with strange characters in the site name.</li>
<li>Fix a bug could cause the update actions to fire on initial activation.</li>
<li>Improved reliability when changing backup paths, now with Unit Tests.</li>
<li>Generate the lists of excluded, included and unreadable files in a more memory efficient way, no more fatal errors on sites with lots of files.</li>
<li>Bring back .htaccess protection of the backups directory on <code>Apache</code> servers with <code>mod_rewrite</code> enabled.</li>
<li>Prepend a random string to the backups directory to make it harder to brute force guess.</li>
<li>Fall back to storing the backups directoy in <code>uploads</code> if <code>WP_CONTENT_DIR</code> isn\'t writable.</li>
<li>Attempt to catch <code>E_ERROR</code> level errors (Fatal errors) that happen during the backup process and offer to email them to support.</li>
<li>Provide more granular status messages during the backup process.</li>
<li>Show a spinner next to the schedule link when a backup is running on a schedule which you are not currently viewing.</li>
<li>Improve the feedback when removing an exclude rule.</li>
<li>Fix an issue that could cause an exclude rule to be marked as default when it in-fact isn\'t, thus not letting it be deleted.</li>
<li>Add a line encouraging people to rate the plugin if they like it.</li>
<li>Change the support line to point to the FAQ before recommending they contact support.</li>
<li>Fix the link to the "How to Restore" post in the FAQ.</li>
<li>Some string changes for translators, 18 changed strings.</li>
</ul>

<h4>2.0.6</h4>

<ul>
<li>Fix possible warning on plugin activation if the sites cron option is empty.</li>
<li>Don\'t show the version warning in the help for Constants as that comes from the current version.</li>
</ul>

<h4>2.0.5</h4>

<ul>
<li>Re-setup the cron schedules if they get deleted somehow.</li>
<li>Delete all BackUpWordPress cron entries when the plugin is deactivated.</li>
<li>Introduce the <code>HMBKP_SCHEDULE_TIME</code> constant to allow control over the time schedules run.</li>
<li>Make sure the schedule times and times of previous backups are shown in local time.</li>
<li>Fix a bug that could cause the legacy backup schedule to be created on every update, not just when going from 1.x to 2.x.</li>
<li>Improve the usefulness of the <code>wp-cron.php</code> response code check.</li>
<li>Use the built in <code>site_format</code> function for human readable filesizes instead of defining our own function.</li>
</ul>

<h4>2.0.4</h4>

<ul>
<li>Revert the change to the way the plugin url and path were calculated as it caused regressions on some systems.</li>
</ul>

<h4>2.0.3</h4>

<ul>
<li>Fix issues with scheduled backups not firing in some cases.</li>
<li>Better compatibility when the WP Remote plugin is active alongside BackUpWordPress.</li>
<li>Catch and display more WP Cron errors.</li>
<li>BackUpWordPress now fails to activate on WordPress 3.3.2 and below.</li>
<li>Other minor fixes and improvements.</li>
</ul>

<h4>2.0.2</h4>

<ul>
<li>Only send backup failed emails if the backup actually failed.</li>
<li>Turn off the generic "memory limit probably hit" message as it was showing for too many people.</li>
<li>Fix a possible notice when the backup running filename is blank.</li>
<li>Include the <code>wp_error</code> response in the cron check.</li>
</ul>

<h4>2.0.1</h4>

<ul>
<li>Fix fatal error on PHP 5.2.</li>
</ul>

<h4>2.0</h4>

<ul>
<li>Ability to have multiple schedules with separate settings &#38; excludes per schedule.</li>
<li>Ability to manage exclude rules and see exactly which files are included and excluded.</li>
<li>Fix an issue with sites with an <code>open_basedir</code> restriction.</li>
<li>Backups should now be much more reliable in low memory environments.</li>
<li>Lots of other minor improvements and bug fixes.</li>
</ul>

<h4>1.6.9</h4>

<ul>
<li>Updated and improved translations across the board - props @elektronikLexikon.</li>
<li>German translation - props @elektronikLexikon.</li>
<li>New Basque translation - props Unai ZC.</li>
<li>New Dutch translation - Anno De Vries.</li>
<li>New Italian translation.</li>
<li>Better support for when WordPress is installed in a sub directory - props @mattheu</li>
</ul>

<h4>1.6.8</h4>

<ul>
<li>French translation props Christophe - <a href="http://catarina.fr" rel="nofollow">http://catarina.fr</a>.</li>
<li>Updated Spanish Translation props DD666 - <a href="https://github.com/radinamatic" rel="nofollow">https://github.com/radinamatic</a>.</li>
<li>Serbian translation props StefanRistic - <a href="https://github.com/StefanRistic" rel="nofollow">https://github.com/StefanRistic</a>.</li>
<li>Lithuanian translation props Vincent G - <a href="http://www.Host1Free.com" rel="nofollow">http://www.Host1Free.com</a>.</li>
<li>Romanian translation.</li>
<li>Fix conflict with WP Remote.</li>
<li>Fix a minor issue where invalid email address\'s were still stored.</li>
<li>The root path that is backed up can now be controlled by defining <code>HMBKP_ROOT</code>.</li>
</ul>

<h4>1.6.7</h4>

<ul>
<li>Fix issue with backups being listed in reverse chronological order.</li>
<li>Fix issue with newest backup being deleted when you hit your max backups limit.</li>
<li>It\'s now possible to have backups sent to multiple email address\'s by entering them as a comma separated list.</li>
<li>Fix a bug which broke the ability to override the <code>mysqldump</code> path with <code>HMBKP_MYSQLDUMP_PATH</code>.</li>
<li>Use <code>echo</code> rather than <code>pwd</code> when testing <code>shell_exec</code> as it\'s supported cross platform.</li>
<li>Updated Spanish translation.</li>
<li>Fix a minor spelling mistake.</li>
<li>Speed up the manage backups page by caching the FAQ data for 24 hours.</li>
</ul>

<h4>1.6.6</h4>

<ul>
<li>Fix backup path issue with case sensitive filesystems.</li>
</ul>

<h4>1.6.5</h4>

<ul>
<li>Fix an issue with emailing backups that could cause the backup file to not be attached.</li>
<li>Fix an issue that could cause the backup to be marked as running for ever if emailing the backup <code>FATAL</code> error\'d.</li>
<li>Never show the running backup in the list of backups.</li>
<li>Show an error backup email failed to send.</li>
<li>Fix possible notice when deleting a backup file which doesn\'t exist.</li>
<li>Fix possible notice on older versions of <code>PHP</code> which don\'t define <code>E_DEPRECATED</code>.</li>
<li>Make <code>HMBKP_SECURE_KEY</code> override-able.</li>
<li>BackUpWordPress should now work when <code>ABSPATH</code> is <code>/</code>.</li>
</ul>

<h4>1.6.4</h4>

<ul>
<li>Don\'t show warning message as they cause to much panic.</li>
<li>Move previous methods errors to warnings in fallback methods.</li>
<li>Wrap <code>.htaccess</code> rewrite rules in if <code>mod_rewrite</code> check.</li>
<li>Add link to new restore help article to FAQ.</li>
<li>Fix issue that could cause "not using latest stable version" message to show when you were in-fact using the latest version.</li>
<li>Bug fix in <code>zip command</code> check that could cause an incorrect <code>zip</code> path to be used.</li>
<li>Detect and pass <code>MySQL</code> port to <code>mysqldump</code>.</li>
</ul>

<h4>1.6.3</h4>

<ul>
<li>Don\'t fail archive verification for errors in previous archive methods.</li>
<li>Improved detection of the <code>zip</code> and <code>mysqldump</code> commands.</li>
<li>Fix issues when <code>ABSPATH</code> is <code>/</code>.</li>
<li>Remove reliance on <code>SECURE_AUTH_KEY</code> as it\'s often not defined.</li>
<li>Use <code>warning()</code> not <code>error()</code> for issues reported by <code>zip</code>, <code>ZipArchive</code> &#38; <code>PclZip</code>.</li>
<li>Fix download zip on Windows when <code>ABSPATH</code> contains a trailing forward slash.</li>
<li>Send backup email after backup completes so that fatal errors in email code don\'t stop the backup from completing.</li>
<li>Add missing / to <code>PCLZIP_TEMPORARY_DIR</code> define.</li>
<li>Catch and display errors during <code>mysqldump</code>.</li>
</ul>

<h4>1.6.2</h4>

<ul>
<li>Track <code>PHP</code> errors as backup warnings not errors.</li>
<li>Only show warning message for <code>PHP</code> errors in BackUpWordPress files.</li>
<li>Ability to dismiss the error / warning messages.</li>
<li>Disable use of <code>PclZip</code> for full archive checking for now as it causes memory issues on some large sites.</li>
<li>Don\'t delete "number of backups" setting on update.</li>
<li>Better handling of multibyte characters in archive and database dump filenames.</li>
<li>Mark backup as running and increase callback timeout to <code>500</code> when firing backup via ajax.</li>
<li>Don\'t send backup email if backup failed.</li>
<li>Filter out duplicate exclude rules.</li>
</ul>

<h4>1.6.1</h4>

<ul>
<li>Fix fatal error on PHP =&#60; 5.3</li>
</ul>

<h4>1.6</h4>

<ul>
<li>Fixes issue with backups dir being included in backups on some Windows Servers.</li>
<li>Consistent handling of symlinks across all archive methods (they are followed).</li>
<li>Use .htaccess rewrite cond authentication to allow for secure http downloads of backup files.</li>
<li>Track errors and warnings that happen during backup and expose them through admin.</li>
<li>Fire manual backups using ajax instead of wp-cron, <code>HMBKP_DISABLE_MANUAL_BACKUP_CRON</code> is no longer needed and has been removed.</li>
<li>Ability to cancel a running backup.</li>
<li>Zip files are now integrity checked after every backup.</li>
<li>More robust handling of failed / corrupt zips, backup process now fallsback through the various zip methods until one works.</li>
<li>Use <code>mysql_query</code> instead of the depreciated <code>mysql_list_tables</code>.</li>
</ul>

<h4>1.5.2</h4>

<ul>
<li>Better handling of unreadable files in ZipArchive and the backup size calculation.</li>
<li>Support for wp-cli, usage: <code>wp backup [--files_only] [--database_only] [--path&#60;dir&#62;] [--root&#60;dir&#62;] [--zip_command_path=&#60;path&#62;] [--mysqldump_command_path=&#60;path&#62;]</code></li>
</ul>

<h4>1.5.1</h4>

<ul>
<li>Better detection of <code>zip</code> command.</li>
<li>Don\'t delete user settings on update / deactivate.</li>
<li>Use <code>ZipArchive</code> if <code>zip</code> is not available, still falls back to <code>PclZip</code> if neither <code>zip</code> nor <code>ZipArchive</code> are installed.</li>
<li>Better exclude rule parsing, fixes lots of edge cases, excludes now pass all 52 unit tests.</li>
<li>Improved the speed of the backup size calculation.</li>
</ul>

<h4>1.5</h4>

<ul>
<li>Re-written core backup engine should be more robust especially in edge case scenarios.</li>
<li>48 unit tests for the core backup engine, yay for unit tests.</li>
<li>Remove some extraneous status information from the admin interface.</li>
<li>Rename Advanced Options to Settings</li>
<li>New <code>Constant</code> <code>HMBKP_CAPABILITY</code> to allow the default <code>add_menu_page</code> capability to be changed.</li>
<li>Suppress possible filemtime warnings in some edge cases.</li>
<li>3.3 compatability.</li>
<li>Set proper charset of MySQL backup, props valericus.</li>
<li>Fix some inconsistencies between the estimated backup size and actual backup size when excluding files.</li>
</ul>

<h4>1.4.1</h4>

<ul>
<li>1.4 was incorrectly marked as beta.</li>
</ul>

<h4>1.4</h4>

<ul>
<li>Most options can now be set on the backups page, all options can still be set by defining them as <code>Constants</code>.</li>
<li>Russian translation, props valericus.</li>
<li>All dates are now translatable.</li>
<li>Fixed some strings which weren\'t translatable.</li>
<li>New Constant <code>HMBKP_DISABLE_MANUAL_BACKUP_CRON</code> which enable you to disable the use of <code>wp_cron</code> for manual backups.</li>
<li>Manual backups now work if <code>DISABLE_WP_CRON</code> is defined as <code>true</code>.</li>
</ul>

<h4>1.3.2</h4>

<ul>
<li>Spanish translation</li>
<li>Bump PHP version check to 5.2.4</li>
<li>Fallback to PHP mysqldump if shell_exec fails for any reason.</li>
<li>Silently ignore unreadable files / folders</li>
<li>Make sure binary data is properly exported when doing a mysqldump</li>
<li>Use 303 instead of 302 when redirecting in the admin.</li>
<li>Don\'t <code>set_time_limit</code> inside a loop</li>
<li>Use WordPress 3.2 style buttons</li>
<li>Don\'t pass an empty password to mysqldump</li>
</ul>

<h4>1.3.1</h4>

<ul>
<li>Check for PHP version. Deactivate plugin if running on PHP version 4.</li>
</ul>

<h4>1.3</h4>

<ul>
<li>Re-written back up engine, no longer copies everything to a tmp folder before zipping which should improve speed and reliability.</li>
<li>Support for excluding files and folders, define <code>HMBKP_EXCLUDE</code> with a comma separated list of files and folders to exclude, supports wildcards <code>*</code>, path fragments and absolute paths.</li>
<li>Full support for moving the backups directory, if you define a new backups directory then your existing backups will be moved to it.</li>
<li>Work around issues caused by low MySQL <code>wait_timeout</code> setting.</li>
<li>Add FAQ to readme.txt.</li>
<li>Pull FAQ into the contextual help tab on the backups page.</li>
<li>Block activation on old versions of WordPress.</li>
<li>Stop guessing compressed backup file size, instead just show size of site uncompressed.</li>
<li>Fix bug in <code>safe_mode</code> detection which could cause <code>Off</code> to act like <code>On</code>.</li>
<li>Better name for the database dump file.</li>
<li>Better name for the backup files.</li>
<li>Improve styling for advanced options.</li>
<li>Show examples for all advanced options.</li>
<li>Language improvements.</li>
<li>Layout tweaks.</li>
</ul>

<h4>1.2</h4>

<ul>
<li>Show live backup status in the back up now button when a back up is running.</li>
<li>Show free disk space after total used by backups.</li>
<li>Several langauge changes.</li>
<li>Work around the 1 cron every 60 seconds limit.</li>
<li>Store backup status in a 2 hour transient as a last ditch attempt to work around the "stuck on backup running" issue.</li>
<li>Show a warning and disable backups when PHP is in Safe Mode, may try to work round issues and re-enable in the future.</li>
<li>Highlight defined <code>Constants</code>.</li>
<li>Show defaults for all <code>Constants</code>.</li>
<li>Show a warning if both <code>HMBKP_FILES_ONLY</code> and <code>HMBKP_DATABASE_ONLY</code> are defined at the same time.</li>
<li>Make sure options added in 1.1.4 are cleared on de-activate.</li>
<li>Support <code>mysqldump on</code> Windows if it\'s available.</li>
<li>New option to have each backup emailed to you on completion. Props @matheu for the contribution.</li>
<li>Improved windows server support.</li>
</ul>

<h4>1.1.4</h4>

<ul>
<li>Fix a rare issue where database backups could fail when using the mysqldump PHP fallback if <code>mysql.max_links</code> is set to 2 or less.</li>
<li>Don\'t suppress <code>mysql_connect</code> errors in the mysqldump PHP fallback.</li>
<li>One time highlight of the most recent completed backup when viewing the manage backups page after a successful backup.</li>
<li>Fix a spelling error in the <code>shell_exec</code> disabled message.</li>
<li>Store the BackUpWordPress version as a <code>Constant</code> rather than a <code>Variable</code>.</li>
<li>Don\'t <code>(float)</code> the BackUpWordPress version number, fixes issues with minor versions numbers being truncated.</li>
<li>Minor PHPDoc improvements.</li>
</ul>

<h4>1.1.3</h4>

<ul>
<li>Attempt to re-connect if database connection hits a timeout while a backup is running, should fix issues with the "Back Up Now" button continuing to spin even though the backup is completed.</li>
<li>When using <code>PCLZIP</code> as the zip fallback don\'t store the files with absolute paths. Should fix issues unzipping the file archives using "Compressed (zipped) Folders" on Windows XP.</li>
</ul>

<h4>1.1.2</h4>

<ul>
<li>Fix a bug that stopped <code>HMBKP_DISABLE_AUTOMATIC_BACKUP</code> from working.</li>
</ul>

<h4>1.1.1</h4>

<ul>
<li>Fix a possible <code>max_execution_timeout</code> fatal error when attempting to calculate the path to <code>mysqldump</code>.</li>
<li>Clear the running backup status and reset the calculated filesize on update.</li>
<li>Show a link to the manage backups page in the plugin description.</li>
<li>Other general fixes.</li>
</ul>

<h4>1.1</h4>

<ul>
<li>Remove the logging facility as it provided little benefit and complicated the code, your existing logs will be deleted on update.</li>
<li>Expose the various <code>Constants</code> that can be defined to change advanced settings.</li>
<li>Added the ability to disable the automatic backups completely <code>define( \'HMBKP_DISABLE_AUTOMATIC_BACKUP\', true );</code>.</li>
<li>Added the ability to switch to file only or database only backups <code>define( \'HMBKP_FILES_ONLY\', true );</code> Or <code>define( \'HMBKP_DATABASE_ONLY\', true );</code>.</li>
<li>Added the ability to define how many old backups should be kept <code>define( \'HMBKP_MAX_BACKUPS\', 20 );</code></li>
<li>Added the ability to define the time that the daily backup should run <code>define( \'HMBKP_DAILY_SCHEDULE_TIME\', \'16:30\' );</code></li>
<li>Tweaks to the backups page layout.</li>
<li>General bug fixes and improvements.</li>
</ul>

<h4>1.0.5</h4>

<ul>
<li>Don\'t ajax load estimated backup size if it\'s already been calculated.</li>
<li>Fix time in backup complete log message.</li>
<li>Don\'t mark backup as running until cron has been called, will fix issues with backup showing as running even if cron never fired.</li>
<li>Show number of backups saved message.</li>
<li>Add a link to the backups page to the plugin action links.</li>
</ul>

<h4>1.0.4</h4>

<p>Don\'t throw PHP Warnings when <code>shell_exec</code> is disabled</p>

<h4>1.0.3</h4>

<p>Minor bug fix release.</p>

<ul>
<li>Suppress <code>filesize()</code> warnings when calculating backup size.</li>
<li>Plugin should now work when symlinked.</li>
<li>Remove all options on deactivate, you should now be able to deactivate then activate to fix issues with settings etc. becoming corrupt.</li>
<li>Call setup_defaults for users who update from backupwordpress 0.4.5 so they get new settings.</li>
<li>Don\'t ajax ping running backup status quite so often.</li>
</ul>

<h4>1.0.1 &#38; 1.0.2</h4>

<p>Fix some silly 1.0 bugs</p>

<h4>1.0</h4>

<p>1.0 represents a total rewrite &#38; rethink of the BackUpWordPress plugin with a focus on making it "Just Work". The management and development of the plugin has been taken over by <a href="http://hmn.md">Human Made Limited</a> the chaps behind <a href="https://wpremote.com">WP Remote</a></p>

<h4>Previous</h4>

<p>Version 0.4.5 and previous were developed by <a href="http://profiles.wordpress.org/users/wpdprx/">wpdprx</a></p>";s:3:"faq";s:4410:"<p><strong>Where does BackUpWordPress store the backup files?</strong></p>

<p>Backups are stored on your server in <code>/wp-content/backups</code>, you can change the directory.</p>

<p><strong>Important:</strong> By default BackUpWordPress backs up everything in your site root as well as your database, this includes any non WordPress folders that happen to be in your site root. This does means that your backup directory can get quite large.</p>

<p><strong>What if I want I want to back up my site to another destination?</strong></p>

<p>BackUpWordPress Pro supports Dropbox, Google Drive, Amazon S3, Rackspace, Azure, DreamObjects and FTP/SFTP. Check it out here: <a href="http://bwp.hmn.md/?utm_source=wordpress-org&#38;utm_medium=plugin-page&#38;utm_campaign=freeplugin">https://bwp.hmn.md</a></p>

<p><strong>How do I restore my site from a backup?</strong></p>

<p>You need to download the latest backup file either by clicking download on the backups page or via <code>FTP</code>. <code>Unzip</code> the files and upload all the files to your server overwriting your site. You can then import the database using your hosts database management tool (likely <code>phpMyAdmin</code>).</p>

<p>See this post for more details <a href="http://hmn.md/backupwordpress-how-to-restore-from-backup-files/" rel="nofollow">http://hmn.md/backupwordpress-how-to-restore-from-backup-files/</a>.</p>

<p><strong>Does BackUpWordPress back up the backups directory?</strong></p>

<p>No.</p>

<p><strong>I\'m not receiving my backups by email</strong></p>

<p>Most servers have a filesize limit on email attachments, it\'s generally about 10mb. If your backup file is over that limit it won\'t be sent attached to the email, instead you should receive an email with a link to download the backup, if you aren\'t even receiving that then you likely have a mail issue on your server that you\'ll need to contact your host about.</p>

<p><strong>How many backups are stored by default?</strong></p>

<p>BackUpWordPress stores the last 10 backups by default.</p>

<p><strong>How long should a backup take?</strong></p>

<p>Unless your site is very large (many gigabytes) it should only take a few minutes to perform a back up, if your back up has been running for longer than an hour it\'s safe to assume that something has gone wrong, try de-activating and re-activating the plugin, if it keeps happening, contact support.</p>

<p><strong>What do I do if I get the wp-cron error message</strong></p>

<p>The issue is that your <code>wp-cron.php</code> is not returning a <code>200</code> response when hit with a http request originating from your own server, it could be several things, most of the time it\'s an issue with the server / site and not with BackUpWordPress.</p>

<p>Some things you can test are.</p>

<ul>
<li>Are scheduled posts working? (They use wp-cron too).</li>
<li>Are you hosted on Heart Internet? (wp-cron is known not to work with them).</li>
<li>If you click manual backup does it work?</li>
<li>Try adding <code>define( \'ALTERNATE_WP_CRON\', true ); to your</code>wp-config.php`, do automatic backups work?</li>
<li>Is your site private (I.E. is it behind some kind of authentication, maintenance plugin, .htaccess) if so wp-cron won\'t work until you remove it, if you are and you temporarily remove the authentication, do backups start working?</li>
</ul>

<p>If you have tried all these then feel free to contact support.</p>

<p><strong>How to get BackUpWordPress working in Heart Internet</strong></p>

<p>The script to be entered into the Heart Internet cPanel is: <code>/usr/bin/php5 /home/sites/yourdomain.com/public_html/wp-cron.php</code> (note the space between php5 and the location of the file). The file <code>wp-cron.php</code> <code>chmod</code> must be set to <code>711</code>.</p>

<p><strong>Further Support &#38; Feedback</strong></p>

<p>General support questions should be posted in the <a href="http://wordpress.org/tags/backupwordpress?forum_id=10">WordPress support forums, tagged with backupwordpress.</a></p>

<p>For development issues, feature requests or anybody wishing to help out with development checkout <a href="https://github.com/humanmade/backupwordpress/">BackUpWordPress on GitHub.</a></p>

<p>You can also tweet <a href="http://twitter.com/humanmadeltd">@humanmadeltd</a> or email <a href="mailto:support@hmn.md">support@hmn.md</a> for further help/support.</p>";}s:13:"download_link";s:64:"https://downloads.wordpress.org/plugin/backupwordpress.2.6.2.zip";s:4:"tags";a:10:{s:7:"archive";s:7:"archive";s:7:"back-up";s:7:"back up";s:6:"backup";s:6:"backup";s:7:"backups";s:7:"backups";s:8:"database";s:8:"database";s:2:"db";s:2:"db";s:5:"files";s:5:"files";s:9:"humanmade";s:9:"humanmade";s:6:"wp-cli";s:6:"wp-cli";s:3:"zip";s:3:"zip";}s:11:"donate_link";N;}', 'no') ; 
INSERT INTO `wp_options` VALUES (667, '_transient_timeout_hmbkp_schedule_default-1_database_filesize', '2814515334', 'no') ; 
INSERT INTO `wp_options` VALUES (668, '_transient_hmbkp_schedule_default-1_database_filesize', '1458176', 'no') ; 
INSERT INTO `wp_options` VALUES (669, '_transient_timeout_hmbkp_schedule_default-1_complete_filesize', '2814515608', 'no') ; 
INSERT INTO `wp_options` VALUES (670, '_transient_hmbkp_schedule_default-1_complete_filesize', '42776298', 'no') ;
#
# End of data contents of table wp_options
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=859 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_postmeta (747 records)
#
 
INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default') ; 
INSERT INTO `wp_postmeta` VALUES (2, 4, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (3, 4, '_edit_lock', '1404088799:1') ; 
INSERT INTO `wp_postmeta` VALUES (4, 6, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (7, 6, '_edit_lock', '1405307091:1') ; 
INSERT INTO `wp_postmeta` VALUES (8, 8, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (11, 8, '_edit_lock', '1405316135:1') ; 
INSERT INTO `wp_postmeta` VALUES (12, 10, '_menu_item_type', 'custom') ; 
INSERT INTO `wp_postmeta` VALUES (13, 10, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (14, 10, '_menu_item_object_id', '10') ; 
INSERT INTO `wp_postmeta` VALUES (15, 10, '_menu_item_object', 'custom') ; 
INSERT INTO `wp_postmeta` VALUES (16, 10, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (17, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (18, 10, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (19, 10, '_menu_item_url', 'http://localhost/edin-carpenter/') ; 
INSERT INTO `wp_postmeta` VALUES (20, 10, '_menu_item_orphaned', '1404088964') ; 
INSERT INTO `wp_postmeta` VALUES (39, 13, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (40, 13, '_edit_lock', '1405308154:1') ; 
INSERT INTO `wp_postmeta` VALUES (41, 15, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (42, 15, '_menu_item_menu_item_parent', '27') ; 
INSERT INTO `wp_postmeta` VALUES (43, 15, '_menu_item_object_id', '13') ; 
INSERT INTO `wp_postmeta` VALUES (44, 15, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (45, 15, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (46, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (47, 15, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (48, 15, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (50, 2, '_edit_lock', '1404792424:1') ; 
INSERT INTO `wp_postmeta` VALUES (51, 2, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (52, 17, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (53, 17, '_edit_lock', '1405308541:1') ; 
INSERT INTO `wp_postmeta` VALUES (54, 20, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (55, 20, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (56, 20, '_menu_item_object_id', '17') ; 
INSERT INTO `wp_postmeta` VALUES (57, 20, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (58, 20, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (59, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (60, 20, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (61, 20, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (63, 21, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (64, 21, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (65, 21, '_menu_item_object_id', '17') ; 
INSERT INTO `wp_postmeta` VALUES (66, 21, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (67, 21, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (68, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (69, 21, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (70, 21, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (81, 23, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (82, 23, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (83, 23, '_menu_item_object_id', '4') ; 
INSERT INTO `wp_postmeta` VALUES (84, 23, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (85, 23, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (86, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (87, 23, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (88, 23, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (99, 25, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (100, 25, '_menu_item_menu_item_parent', '26') ; 
INSERT INTO `wp_postmeta` VALUES (101, 25, '_menu_item_object_id', '13') ; 
INSERT INTO `wp_postmeta` VALUES (102, 25, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (103, 25, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (104, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (105, 25, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (106, 25, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (108, 26, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (109, 26, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (110, 26, '_menu_item_object_id', '2') ; 
INSERT INTO `wp_postmeta` VALUES (111, 26, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (112, 26, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (113, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (114, 26, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (115, 26, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (117, 27, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (118, 27, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (119, 27, '_menu_item_object_id', '2') ; 
INSERT INTO `wp_postmeta` VALUES (120, 27, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (121, 27, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (122, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (123, 27, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (124, 27, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (126, 28, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (127, 28, '_edit_lock', '1405308161:1') ; 
INSERT INTO `wp_postmeta` VALUES (128, 30, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (129, 30, '_edit_lock', '1406768792:1') ; 
INSERT INTO `wp_postmeta` VALUES (130, 32, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (131, 32, '_edit_lock', '1404094670:1') ; 
INSERT INTO `wp_postmeta` VALUES (132, 34, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (133, 34, '_edit_lock', '1404278934:1') ; 
INSERT INTO `wp_postmeta` VALUES (134, 36, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (135, 36, '_edit_lock', '1405308307:1') ; 
INSERT INTO `wp_postmeta` VALUES (136, 38, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (137, 38, '_menu_item_menu_item_parent', '41') ; 
INSERT INTO `wp_postmeta` VALUES (138, 38, '_menu_item_object_id', '36') ; 
INSERT INTO `wp_postmeta` VALUES (139, 38, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (140, 38, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (141, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (142, 38, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (143, 38, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (145, 39, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (146, 39, '_menu_item_menu_item_parent', '41') ; 
INSERT INTO `wp_postmeta` VALUES (147, 39, '_menu_item_object_id', '34') ; 
INSERT INTO `wp_postmeta` VALUES (148, 39, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (149, 39, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (150, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (151, 39, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (152, 39, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (154, 40, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (155, 40, '_menu_item_menu_item_parent', '41') ; 
INSERT INTO `wp_postmeta` VALUES (156, 40, '_menu_item_object_id', '32') ; 
INSERT INTO `wp_postmeta` VALUES (157, 40, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (158, 40, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (159, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (160, 40, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (161, 40, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (163, 41, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (164, 41, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (165, 41, '_menu_item_object_id', '30') ; 
INSERT INTO `wp_postmeta` VALUES (166, 41, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (167, 41, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (168, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (169, 41, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (170, 41, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (172, 42, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (173, 42, '_menu_item_menu_item_parent', '26') ; 
INSERT INTO `wp_postmeta` VALUES (174, 42, '_menu_item_object_id', '28') ; 
INSERT INTO `wp_postmeta` VALUES (175, 42, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (176, 42, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (177, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (178, 42, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (179, 42, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (181, 43, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (182, 43, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (183, 43, '_menu_item_object_id', '17') ; 
INSERT INTO `wp_postmeta` VALUES (184, 43, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (185, 43, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (186, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (187, 43, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (188, 43, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (189, 43, '_menu_item_orphaned', '1404094241') ; 
INSERT INTO `wp_postmeta` VALUES (190, 44, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (191, 44, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (192, 44, '_menu_item_object_id', '13') ; 
INSERT INTO `wp_postmeta` VALUES (193, 44, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (194, 44, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (195, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (196, 44, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (197, 44, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (198, 44, '_menu_item_orphaned', '1404094241') ; 
INSERT INTO `wp_postmeta` VALUES (199, 45, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (200, 45, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (201, 45, '_menu_item_object_id', '4') ; 
INSERT INTO `wp_postmeta` VALUES (202, 45, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (203, 45, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (204, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (205, 45, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (206, 45, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (207, 45, '_menu_item_orphaned', '1404094241') ; 
INSERT INTO `wp_postmeta` VALUES (208, 46, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (209, 46, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (210, 46, '_menu_item_object_id', '2') ; 
INSERT INTO `wp_postmeta` VALUES (211, 46, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (212, 46, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (213, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (214, 46, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (215, 46, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (216, 46, '_menu_item_orphaned', '1404094241') ; 
INSERT INTO `wp_postmeta` VALUES (217, 47, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (218, 47, '_edit_lock', '1405316710:1') ; 
INSERT INTO `wp_postmeta` VALUES (219, 49, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (222, 49, '_edit_lock', '1404878436:1') ; 
INSERT INTO `wp_postmeta` VALUES (223, 51, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (224, 51, '_edit_lock', '1404371604:1') ; 
INSERT INTO `wp_postmeta` VALUES (225, 53, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (226, 53, '_menu_item_menu_item_parent', '21') ; 
INSERT INTO `wp_postmeta` VALUES (227, 53, '_menu_item_object_id', '51') ; 
INSERT INTO `wp_postmeta` VALUES (228, 53, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (229, 53, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (230, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (231, 53, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (232, 53, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (234, 54, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (235, 54, '_menu_item_menu_item_parent', '21') ; 
INSERT INTO `wp_postmeta` VALUES (236, 54, '_menu_item_object_id', '47') ; 
INSERT INTO `wp_postmeta` VALUES (237, 54, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (238, 54, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (239, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (240, 54, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (241, 54, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (243, 57, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (244, 57, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (245, 57, '_menu_item_object_id', '30') ; 
INSERT INTO `wp_postmeta` VALUES (246, 57, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (247, 57, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (248, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (249, 57, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (250, 57, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (252, 58, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (253, 58, '_menu_item_menu_item_parent', '57') ; 
INSERT INTO `wp_postmeta` VALUES (254, 58, '_menu_item_object_id', '36') ; 
INSERT INTO `wp_postmeta` VALUES (255, 58, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (256, 58, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (257, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (258, 58, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (259, 58, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (261, 59, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (262, 59, '_menu_item_menu_item_parent', '57') ; 
INSERT INTO `wp_postmeta` VALUES (263, 59, '_menu_item_object_id', '34') ; 
INSERT INTO `wp_postmeta` VALUES (264, 59, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (265, 59, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (266, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (267, 59, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (268, 59, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (270, 60, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (271, 60, '_menu_item_menu_item_parent', '57') ; 
INSERT INTO `wp_postmeta` VALUES (272, 60, '_menu_item_object_id', '32') ; 
INSERT INTO `wp_postmeta` VALUES (273, 60, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (274, 60, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (275, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (276, 60, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (277, 60, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (279, 61, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (280, 61, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (281, 61, '_menu_item_object_id', '17') ; 
INSERT INTO `wp_postmeta` VALUES (282, 61, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (283, 61, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (284, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (285, 61, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (286, 61, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (287, 61, '_menu_item_orphaned', '1404096105') ; 
INSERT INTO `wp_postmeta` VALUES (288, 62, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (289, 62, '_menu_item_menu_item_parent', '20') ; 
INSERT INTO `wp_postmeta` VALUES (290, 62, '_menu_item_object_id', '51') ; 
INSERT INTO `wp_postmeta` VALUES (291, 62, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (292, 62, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (293, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (294, 62, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (295, 62, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (297, 63, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (298, 63, '_menu_item_menu_item_parent', '20') ; 
INSERT INTO `wp_postmeta` VALUES (299, 63, '_menu_item_object_id', '47') ; 
INSERT INTO `wp_postmeta` VALUES (300, 63, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (301, 63, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (302, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (303, 63, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (304, 63, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (306, 64, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (307, 64, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (308, 64, '_menu_item_object_id', '4') ; 
INSERT INTO `wp_postmeta` VALUES (309, 64, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (310, 64, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (311, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (312, 64, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (313, 64, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (314, 64, '_menu_item_orphaned', '1404096105') ; 
INSERT INTO `wp_postmeta` VALUES (315, 65, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (316, 65, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (317, 65, '_menu_item_object_id', '2') ; 
INSERT INTO `wp_postmeta` VALUES (318, 65, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (319, 65, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (320, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (321, 65, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (322, 65, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (323, 65, '_menu_item_orphaned', '1404096105') ; 
INSERT INTO `wp_postmeta` VALUES (324, 66, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (325, 66, '_menu_item_menu_item_parent', '27') ; 
INSERT INTO `wp_postmeta` VALUES (326, 66, '_menu_item_object_id', '28') ; 
INSERT INTO `wp_postmeta` VALUES (327, 66, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (328, 66, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (329, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (330, 66, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (331, 66, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (333, 67, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (334, 67, '_menu_item_menu_item_parent', '0') ; 
INSERT INTO `wp_postmeta` VALUES (335, 67, '_menu_item_object_id', '13') ; 
INSERT INTO `wp_postmeta` VALUES (336, 67, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (337, 67, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (338, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (339, 67, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (340, 67, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (341, 67, '_menu_item_orphaned', '1404096105') ; 
INSERT INTO `wp_postmeta` VALUES (342, 69, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (343, 69, '_edit_lock', '1404284608:1') ; 
INSERT INTO `wp_postmeta` VALUES (344, 73, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (346, 73, 'field_53b4e75db2e4a', 'a:11:{s:3:"key";s:19:"field_53b4e75db2e4a";s:5:"label";s:10:"Main Image";s:4:"name";s:10:"main_image";s:4:"type";s:5:"image";s:12:"instructions";s:30:"Add a main image for this page";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (347, 73, 'field_53b4e7a1b2e4b', 'a:11:{s:3:"key";s:19:"field_53b4e7a1b2e4b";s:5:"label";s:12:"Body Content";s:4:"name";s:7:"content";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:79:"Add content to your page. It will display below the image and title of the page";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}') ; 
INSERT INTO `wp_postmeta` VALUES (349, 73, 'position', 'normal') ; 
INSERT INTO `wp_postmeta` VALUES (350, 73, 'layout', 'no_box') ; 
INSERT INTO `wp_postmeta` VALUES (351, 73, 'hide_on_screen', 'a:12:{i:0;s:11:"the_content";i:1;s:7:"excerpt";i:2;s:13:"custom_fields";i:3;s:10:"discussion";i:4;s:8:"comments";i:5;s:9:"revisions";i:6;s:6:"author";i:7;s:6:"format";i:8;s:14:"featured_image";i:9;s:10:"categories";i:10;s:4:"tags";i:11;s:15:"send-trackbacks";}') ; 
INSERT INTO `wp_postmeta` VALUES (352, 73, '_edit_lock', '1405308247:1') ; 
INSERT INTO `wp_postmeta` VALUES (355, 74, '_wp_attached_file', '2014/06/blonde-just-face.png') ; 
INSERT INTO `wp_postmeta` VALUES (356, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:394;s:4:"file";s:28:"2014/06/blonde-just-face.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"blonde-just-face-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"blonde-just-face-300x168.png";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (357, 75, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (358, 75, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (359, 75, 'content', 'This is the about page. It is an excellent page with a ton of content like this and that and the other. Can you believe how fast I can type? It\'s amazing. I am a very very very fast typer. I should probably get a medal for typing faster than whoever was the fastest at typing before me.

Here\'s another paragraph about being fast at typing and whatnot.') ; 
INSERT INTO `wp_postmeta` VALUES (360, 75, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (361, 2, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (362, 2, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (363, 2, 'content', 'This is the about page. It is an excellent page with a ton of content like this and that and the other. Can you believe how fast I can type? It\'s amazing. I am a very very very fast typer. I should probably get a medal for typing faster than whoever was the fastest at typing before me.

Here\'s another paragraph about being fast at typing and whatnot.

Normcore banh mi deep v Helvetica. Vinyl umami flannel retro. Synth messenger bag YOLO scenester quinoa Banksy. Kitsch disrupt irony kogi, fanny pack DIY paleo Tonx. 90\'s pop-up sriracha, irony master cleanse synth iPhone butcher. DIY art party master cleanse banh mi fingerstache. Kickstarter Carles leggings, viral retro twee sriracha gentrify small batch normcore.
<ul>
	<li>thing one</li>
	<li>thing two</li>
	<li>thing c?</li>
	<li>one more thing</li>
</ul>
Here\'s a link to <a href="http://google.com">Google</a> for ya.') ; 
INSERT INTO `wp_postmeta` VALUES (364, 2, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (365, 76, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (366, 76, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (367, 76, 'content', 'This is the about page. It is an excellent page with a ton of content like this and that and the other. Can you believe how fast I can type? It\'s amazing. I am a very very very fast typer. I should probably get a medal for typing faster than whoever was the fastest at typing before me.

Here\'s another paragraph about being fast at typing and whatnot.

Normcore banh mi deep v Helvetica. Vinyl umami flannel retro. Synth messenger bag YOLO scenester quinoa Banksy. Kitsch disrupt irony kogi, fanny pack DIY paleo Tonx. 90\'s pop-up sriracha, irony master cleanse synth iPhone butcher. DIY art party master cleanse banh mi fingerstache. Kickstarter Carles leggings, viral retro twee sriracha gentrify small batch normcore.
<ul>
	<li>thing one</li>
	<li>thing two</li>
	<li>thing c?</li>
	<li>one more thing</li>
</ul>
Here\'s a link to <a href="http://google.com">Google</a> for ya.') ; 
INSERT INTO `wp_postmeta` VALUES (368, 76, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (369, 77, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (370, 77, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (371, 77, 'content', 'write ome thing right here iIn a;lkns d

klnasem,ng

klnasd;,mng
<ul>
	<li>List items</li>
	<li>here</li>
	<li>and here</li>
</ul>') ; 
INSERT INTO `wp_postmeta` VALUES (372, 77, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (373, 17, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (374, 17, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (375, 17, 'content', 'write ome thing right here iIn a;lkns d

klnasem,ng

klnasd;,mng
<ul>
	<li>List items</li>
	<li>here</li>
	<li>and here</li>
</ul>
<a href="http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup3.jpg"><img class="alignnone size-medium wp-image-133" src="http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup3-300x200.jpg" alt="makeup3" width="300" height="200" /></a>') ; 
INSERT INTO `wp_postmeta` VALUES (376, 17, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (377, 78, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (378, 78, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (379, 78, 'content', 'write ome thing right here iIn a;lkns d

klnasem,ng

klnasd;,mng
<ul>
	<li>List items</li>
	<li>here</li>
	<li>and here</li>
</ul>') ; 
INSERT INTO `wp_postmeta` VALUES (380, 78, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (381, 79, '_wp_attached_file', '2014/06/Ultramanthrow-2.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (382, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:430;s:6:"height";i:323;s:4:"file";s:27:"2014/06/Ultramanthrow-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Ultramanthrow-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"Ultramanthrow-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (383, 80, 'main_image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (384, 80, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (385, 80, 'content', '') ; 
INSERT INTO `wp_postmeta` VALUES (386, 80, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (387, 47, 'main_image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (388, 47, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (389, 47, 'content', 'Please request a date you would like to schedule me for. I will contact you to hash over the final details and confirm your request shortly after. In the meantime, I will hold the date or dates for you.

[booking nummonths=2]') ; 
INSERT INTO `wp_postmeta` VALUES (390, 47, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (391, 81, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (392, 81, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (393, 81, 'content', 'Try this for content here.') ; 
INSERT INTO `wp_postmeta` VALUES (394, 81, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (395, 51, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (396, 51, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (397, 51, 'content', 'Try this for content here.') ; 
INSERT INTO `wp_postmeta` VALUES (398, 51, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (399, 82, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (400, 82, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (401, 82, 'content', 'JREJeija]

klsjdklga

&nbsp;') ; 
INSERT INTO `wp_postmeta` VALUES (402, 82, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (403, 28, 'main_image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (404, 28, '_main_image', 'field_53bb717b1d04f') ; 
INSERT INTO `wp_postmeta` VALUES (405, 28, 'content', '&nbsp;

&nbsp;') ; 
INSERT INTO `wp_postmeta` VALUES (406, 28, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (407, 84, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (408, 84, 'field_53bb6b776a4f6', 'a:13:{s:3:"key";s:19:"field_53bb6b776a4f6";s:5:"label";s:11:"Testimonial";s:4:"name";s:11:"testimonial";s:4:"type";s:8:"textarea";s:12:"instructions";s:46:"Enter testimonial (Do not add quotation marks)";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:3:"300";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (409, 84, 'field_53bb6bfa6a4f7', 'a:14:{s:3:"key";s:19:"field_53bb6bfa6a4f7";s:5:"label";s:6:"Author";s:4:"name";s:6:"author";s:4:"type";s:4:"text";s:12:"instructions";s:28:"Enter the name of the author";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}') ; 
INSERT INTO `wp_postmeta` VALUES (411, 84, 'position', 'normal') ; 
INSERT INTO `wp_postmeta` VALUES (412, 84, 'layout', 'no_box') ; 
INSERT INTO `wp_postmeta` VALUES (413, 84, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}') ; 
INSERT INTO `wp_postmeta` VALUES (414, 84, '_edit_lock', '1405217426:1') ; 
INSERT INTO `wp_postmeta` VALUES (415, 86, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (416, 86, '_edit_lock', '1404791908:1') ; 
INSERT INTO `wp_postmeta` VALUES (417, 87, 'testimonial', 'This is a test testimonial. Please delete me before the site goes live.') ; 
INSERT INTO `wp_postmeta` VALUES (418, 87, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (419, 87, 'author', 'Nick Ocampo') ; 
INSERT INTO `wp_postmeta` VALUES (420, 87, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (421, 86, 'testimonial', 'This is a test testimonial. Please delete me before the site goes live.') ; 
INSERT INTO `wp_postmeta` VALUES (422, 86, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (423, 86, 'author', 'Nick Ocampo') ; 
INSERT INTO `wp_postmeta` VALUES (424, 86, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (425, 88, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (426, 88, '_edit_lock', '1404791969:1') ; 
INSERT INTO `wp_postmeta` VALUES (427, 89, 'testimonial', 'This is the second testimonial test. Please delete me when you\'re ready to get this site live. I\'m a little bit longer than the first one, but not a whole lot longer.') ; 
INSERT INTO `wp_postmeta` VALUES (428, 89, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (429, 89, 'author', 'Charles Darwin') ; 
INSERT INTO `wp_postmeta` VALUES (430, 89, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (431, 88, 'testimonial', 'This is the second testimonial test. Please delete me when you\'re ready to get this site live. I\'m a little bit longer than the first one, but not a whole lot longer.') ; 
INSERT INTO `wp_postmeta` VALUES (432, 88, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (433, 88, 'author', 'Charles Darwin') ; 
INSERT INTO `wp_postmeta` VALUES (434, 88, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (435, 90, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (436, 90, '_edit_lock', '1405212047:1') ; 
INSERT INTO `wp_postmeta` VALUES (437, 91, 'testimonial', 'Here is another testimonial that should also be deleted at some point. It\'s just meant to show you how this whole thing will look, ya know?') ; 
INSERT INTO `wp_postmeta` VALUES (438, 91, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (439, 91, 'author', 'Mahatma Ghandi') ; 
INSERT INTO `wp_postmeta` VALUES (440, 91, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (441, 90, 'testimonial', 'Here is another testimonial that should also be deleted at some point. It\'s just meant to show you how this whole thing will look, ya know?') ; 
INSERT INTO `wp_postmeta` VALUES (442, 90, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (443, 90, 'author', 'Mahatma Ghandi') ; 
INSERT INTO `wp_postmeta` VALUES (444, 90, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (445, 28, '_wp_page_template', 'testimonials.php') ; 
INSERT INTO `wp_postmeta` VALUES (446, 92, '_wp_attached_file', '2014/06/crazy-eyes.png') ; 
INSERT INTO `wp_postmeta` VALUES (447, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:400;s:4:"file";s:22:"2014/06/crazy-eyes.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"crazy-eyes-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"crazy-eyes-300x171.png";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (448, 93, 'main_image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (449, 93, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (450, 93, 'content', '&nbsp;

&nbsp;') ; 
INSERT INTO `wp_postmeta` VALUES (451, 93, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (452, 94, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (453, 94, 'field_53bb717b1d04f', 'a:11:{s:3:"key";s:19:"field_53bb717b1d04f";s:5:"label";s:10:"Main Image";s:4:"name";s:10:"main_image";s:4:"type";s:5:"image";s:12:"instructions";s:83:"Add an image for the main testimonial page that will appear above the post excerpts";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (455, 94, 'position', 'acf_after_title') ; 
INSERT INTO `wp_postmeta` VALUES (456, 94, 'layout', 'no_box') ; 
INSERT INTO `wp_postmeta` VALUES (457, 94, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}') ; 
INSERT INTO `wp_postmeta` VALUES (458, 94, '_edit_lock', '1405217275:1') ; 
INSERT INTO `wp_postmeta` VALUES (459, 94, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:16:"testimonials.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (460, 49, '_wp_trash_meta_status', 'publish') ; 
INSERT INTO `wp_postmeta` VALUES (461, 49, '_wp_trash_meta_time', '1404878597') ; 
INSERT INTO `wp_postmeta` VALUES (464, 97, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (465, 97, 'field_53bcc002d9bfb', 'a:11:{s:3:"key";s:19:"field_53bcc002d9bfb";s:5:"label";s:10:"Main Image";s:4:"name";s:10:"main-image";s:4:"type";s:5:"image";s:12:"instructions";s:92:"Add a main image to appear on the top of the photo and on the preview of the post (optional)";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (467, 97, 'position', 'acf_after_title') ; 
INSERT INTO `wp_postmeta` VALUES (468, 97, 'layout', 'no_box') ; 
INSERT INTO `wp_postmeta` VALUES (469, 97, 'hide_on_screen', 'a:5:{i:0;s:13:"custom_fields";i:1;s:6:"format";i:2;s:14:"featured_image";i:3;s:4:"tags";i:4;s:15:"send-trackbacks";}') ; 
INSERT INTO `wp_postmeta` VALUES (470, 97, '_edit_lock', '1405308271:1') ; 
INSERT INTO `wp_postmeta` VALUES (473, 97, 'field_53bcc13be2868', 'a:13:{s:3:"key";s:19:"field_53bcc13be2868";s:5:"label";s:7:"Excerpt";s:4:"name";s:7:"excerpt";s:4:"type";s:8:"textarea";s:12:"instructions";s:53:"Add a short excerpt of your post. 200 characters max.";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:3:"200";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}') ; 
INSERT INTO `wp_postmeta` VALUES (477, 98, 'main-image', '') ; 
INSERT INTO `wp_postmeta` VALUES (478, 98, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (479, 98, 'excerpt', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY.') ; 
INSERT INTO `wp_postmeta` VALUES (480, 98, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (481, 8, 'main-image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (482, 8, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (483, 8, 'excerpt', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl') ; 
INSERT INTO `wp_postmeta` VALUES (484, 8, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (487, 99, 'main-image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (488, 99, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (489, 99, 'excerpt', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY.') ; 
INSERT INTO `wp_postmeta` VALUES (490, 99, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (493, 100, 'main-image', '') ; 
INSERT INTO `wp_postmeta` VALUES (494, 100, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (495, 100, 'excerpt', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY. Roof party Odd Future umami freegan next level, sartorial Shoreditch literally selvage crucifix direct trade Brooklyn art party. Normcore hashtag before they sold out wolf, biodiesel Tumblr gentrify forage authentic Neutra. Brunch food truck pickled, chambray roof party pug flannel retro sriracha +1 8-bit lomo biodiesel hoodie street art. Mlkshk keytar Banksy ethical bicycle rights, Schlitz aesthetic fingerstache disrupt.

Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.') ; 
INSERT INTO `wp_postmeta` VALUES (496, 100, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (497, 6, 'main-image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (498, 6, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (499, 6, 'excerpt', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. ') ; 
INSERT INTO `wp_postmeta` VALUES (500, 6, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (503, 101, 'main-image', '') ; 
INSERT INTO `wp_postmeta` VALUES (504, 101, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (505, 101, 'excerpt', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party.') ; 
INSERT INTO `wp_postmeta` VALUES (506, 101, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (507, 97, 'field_53bcc95c8d147', 'a:14:{s:3:"key";s:19:"field_53bcc95c8d147";s:5:"label";s:0:"";s:4:"name";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}') ; 
INSERT INTO `wp_postmeta` VALUES (508, 97, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (511, 102, 'main-image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (512, 102, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (513, 102, 'excerpt', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl') ; 
INSERT INTO `wp_postmeta` VALUES (514, 102, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (515, 102, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (516, 8, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (519, 103, 'main-image', '') ; 
INSERT INTO `wp_postmeta` VALUES (520, 103, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (521, 103, 'excerpt', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. ') ; 
INSERT INTO `wp_postmeta` VALUES (522, 103, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (523, 103, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (524, 6, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (525, 1, '_edit_lock', '1405307103:1') ; 
INSERT INTO `wp_postmeta` VALUES (526, 1, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (529, 105, 'main-image', '') ; 
INSERT INTO `wp_postmeta` VALUES (530, 105, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (531, 105, 'excerpt', 'Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY.') ; 
INSERT INTO `wp_postmeta` VALUES (532, 105, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (533, 105, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (534, 1, 'main-image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (535, 1, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (536, 1, 'excerpt', 'Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY.') ; 
INSERT INTO `wp_postmeta` VALUES (537, 1, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (538, 1, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (541, 106, 'main-image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (542, 106, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (543, 106, 'excerpt', 'Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY.') ; 
INSERT INTO `wp_postmeta` VALUES (544, 106, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (545, 106, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (548, 107, 'main-image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (549, 107, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (550, 107, 'excerpt', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. ') ; 
INSERT INTO `wp_postmeta` VALUES (551, 107, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (552, 107, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (553, 108, '_wp_attached_file', '2014/06/makeup-e1405215901655.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (554, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:570;s:6:"height";i:300;s:4:"file";s:33:"2014/06/makeup-e1405215901655.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"makeup-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"makeup-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (555, 108, '_edit_lock', '1406416917:1') ; 
INSERT INTO `wp_postmeta` VALUES (556, 109, 'main_image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (557, 109, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (558, 109, 'content', '') ; 
INSERT INTO `wp_postmeta` VALUES (559, 109, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (560, 13, 'main_image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (561, 13, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (562, 13, 'content', '') ; 
INSERT INTO `wp_postmeta` VALUES (563, 13, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (566, 110, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (567, 110, 'field_53c1e2e489171', 'a:11:{s:3:"key";s:19:"field_53c1e2e489171";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:46:"Add a 770 X 450 pixel image (or close in size)";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (569, 110, 'position', 'acf_after_title') ; 
INSERT INTO `wp_postmeta` VALUES (570, 110, 'layout', 'no_box') ; 
INSERT INTO `wp_postmeta` VALUES (571, 110, 'hide_on_screen', 'a:14:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:10:"categories";i:12;s:4:"tags";i:13;s:15:"send-trackbacks";}') ; 
INSERT INTO `wp_postmeta` VALUES (572, 110, '_edit_lock', '1405216287:1') ; 
INSERT INTO `wp_postmeta` VALUES (573, 111, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (574, 111, '_edit_lock', '1405220140:1') ; 
INSERT INTO `wp_postmeta` VALUES (575, 112, 'image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (576, 112, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (577, 111, 'image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (578, 111, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (579, 113, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (580, 113, '_edit_lock', '1405215633:1') ; 
INSERT INTO `wp_postmeta` VALUES (581, 114, 'image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (582, 114, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (583, 113, 'image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (584, 113, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (585, 115, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (586, 115, '_edit_lock', '1406770134:1') ; 
INSERT INTO `wp_postmeta` VALUES (587, 108, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:570;s:6:"height";i:300;s:4:"file";s:10:"makeup.jpg";}}') ; 
INSERT INTO `wp_postmeta` VALUES (588, 108, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (589, 116, 'image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (590, 116, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (591, 115, 'image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (592, 115, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (593, 117, 'image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (594, 117, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (595, 110, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"slide";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (596, 118, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (597, 118, '_edit_lock', '1405217481:1') ; 
INSERT INTO `wp_postmeta` VALUES (598, 84, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"testimonial";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (599, 119, 'testimonial', 'This is a test testimonial. Please delete me when you are ready to have this site live.') ; 
INSERT INTO `wp_postmeta` VALUES (600, 119, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (601, 119, 'author', 'Nick Ocampo') ; 
INSERT INTO `wp_postmeta` VALUES (602, 119, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (603, 118, 'testimonial', 'This is a test testimonial. Please delete me when you are ready to have this site live.') ; 
INSERT INTO `wp_postmeta` VALUES (604, 118, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (605, 118, 'author', 'Nick Ocampo') ; 
INSERT INTO `wp_postmeta` VALUES (606, 118, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (607, 120, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (608, 120, '_edit_lock', '1405217531:1') ; 
INSERT INTO `wp_postmeta` VALUES (609, 121, 'testimonial', 'This is another example testimonial. With words like great, and excellent! Please delete me later.') ; 
INSERT INTO `wp_postmeta` VALUES (610, 121, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (611, 121, 'author', 'Dr. Waltz') ; 
INSERT INTO `wp_postmeta` VALUES (612, 121, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (613, 120, 'testimonial', 'This is another example testimonial. With words like great, and excellent! Please delete me later.') ; 
INSERT INTO `wp_postmeta` VALUES (614, 120, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (615, 120, 'author', 'Dr. Waltz') ; 
INSERT INTO `wp_postmeta` VALUES (616, 120, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (617, 122, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (618, 122, '_edit_lock', '1406770125:1') ; 
INSERT INTO `wp_postmeta` VALUES (619, 123, 'testimonial', 'A third test testimonial. I should be deleted.') ; 
INSERT INTO `wp_postmeta` VALUES (620, 123, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (621, 123, 'author', 'Clark Kent') ; 
INSERT INTO `wp_postmeta` VALUES (622, 123, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (623, 122, 'testimonial', 'A third test testimonial. I should be deleted.') ; 
INSERT INTO `wp_postmeta` VALUES (624, 122, '_testimonial', 'field_53bb6b776a4f6') ; 
INSERT INTO `wp_postmeta` VALUES (625, 122, 'author', 'Clark Kent') ; 
INSERT INTO `wp_postmeta` VALUES (626, 122, '_author', 'field_53bb6bfa6a4f7') ; 
INSERT INTO `wp_postmeta` VALUES (629, 124, 'main-image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (630, 124, '_main-image', 'field_53bcc002d9bfb') ; 
INSERT INTO `wp_postmeta` VALUES (631, 124, 'excerpt', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl') ; 
INSERT INTO `wp_postmeta` VALUES (632, 124, '_excerpt', 'field_53bcc13be2868') ; 
INSERT INTO `wp_postmeta` VALUES (633, 124, '_', 'field_53bcc95c8d147') ; 
INSERT INTO `wp_postmeta` VALUES (634, 30, '_wp_page_template', 'default') ; 
INSERT INTO `wp_postmeta` VALUES (637, 73, 'field_53c216f2cf56d', 'a:14:{s:3:"key";s:19:"field_53c216f2cf56d";s:5:"label";s:0:"";s:4:"name";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}') ; 
INSERT INTO `wp_postmeta` VALUES (638, 73, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:7:"default";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (639, 73, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:11:"gallery.php";s:8:"order_no";i:0;s:8:"group_no";i:1;}') ; 
INSERT INTO `wp_postmeta` VALUES (640, 125, 'main_image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (641, 125, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (642, 125, 'content', 'This is the image gallery. This page should have a small introduction to the gallery. You can also just leave it blank it you don\'t want any text to appear here.') ; 
INSERT INTO `wp_postmeta` VALUES (643, 125, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (644, 125, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (645, 30, 'main_image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (646, 30, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (647, 30, 'content', 'This is the image gallery. This page should have a small introduction to the gallery. You can also just leave it blank it you don\'t want any text to appear here.') ; 
INSERT INTO `wp_postmeta` VALUES (648, 30, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (649, 30, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (650, 127, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (651, 127, 'field_53c22d0df5d2b', 'a:11:{s:3:"key";s:19:"field_53c22d0df5d2b";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:40:"Add an image. Ideal size: 400x400 pixels";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (652, 127, 'field_53c22d3ef5d2c', 'a:14:{s:3:"key";s:19:"field_53c22d3ef5d2c";s:5:"label";s:11:"Description";s:4:"name";s:11:"description";s:4:"type";s:4:"text";s:12:"instructions";s:53:"Add an optional description of 140 characters or less";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:3:"140";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}') ; 
INSERT INTO `wp_postmeta` VALUES (654, 127, 'position', 'acf_after_title') ; 
INSERT INTO `wp_postmeta` VALUES (655, 127, 'layout', 'no_box') ; 
INSERT INTO `wp_postmeta` VALUES (656, 127, 'hide_on_screen', 'a:13:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:14:"featured_image";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}') ; 
INSERT INTO `wp_postmeta` VALUES (657, 127, '_edit_lock', '1405301439:1') ; 
INSERT INTO `wp_postmeta` VALUES (658, 128, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (659, 128, '_edit_lock', '1405304773:1') ; 
INSERT INTO `wp_postmeta` VALUES (660, 129, '_wp_attached_file', '2014/07/bride2-e1405235199334.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (661, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:399;s:6:"height";i:399;s:4:"file";s:33:"2014/07/bride2-e1405235199334.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"bride2-e1405235199334-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"bride2-e1405235199334-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (662, 130, '_wp_attached_file', '2014/07/hair-bride.jpeg') ; 
INSERT INTO `wp_postmeta` VALUES (663, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:184;s:6:"height";i:274;s:4:"file";s:23:"2014/07/hair-bride.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"hair-bride-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (664, 131, '_wp_attached_file', '2014/07/makeup-1-e1405235057970.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (665, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:399;s:4:"file";s:35:"2014/07/makeup-1-e1405235057970.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"makeup-1-e1405235057970-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"makeup-1-e1405235057970-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"makeup-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:7.0999999999999996447286321199499070644378662109375;s:6:"credit";s:19:"halayalex - Fotolia";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1315913520;s:9:"copyright";s:19:"halayalex - Fotolia";s:12:"focal_length";s:2:"50";s:3:"iso";i:0;s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:55:"Young beautiful girl applying make-up by make-up artist";}}') ; 
INSERT INTO `wp_postmeta` VALUES (666, 132, '_wp_attached_file', '2014/07/makeup2-e1405234957486.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (667, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:300;s:4:"file";s:34:"2014/07/makeup2-e1405234957486.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"makeup2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"makeup2-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (668, 133, '_wp_attached_file', '2014/07/makeup3.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (669, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:367;s:4:"file";s:19:"2014/07/makeup3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"makeup3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"makeup3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (670, 132, '_edit_lock', '1405234837:1') ; 
INSERT INTO `wp_postmeta` VALUES (671, 132, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";i:236;s:6:"height";i:354;s:4:"file";s:11:"makeup2.jpg";}s:18:"full-1405234942170";a:3:{s:5:"width";i:236;s:6:"height";i:354;s:4:"file";s:26:"makeup2-e1405234922193.jpg";}s:18:"full-1405234957486";a:3:{s:5:"width";i:236;s:6:"height";i:354;s:4:"file";s:26:"makeup2-e1405234942170.jpg";}}') ; 
INSERT INTO `wp_postmeta` VALUES (672, 132, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (673, 134, 'image', '132') ; 
INSERT INTO `wp_postmeta` VALUES (674, 134, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (675, 134, 'description', 'This is a project about something') ; 
INSERT INTO `wp_postmeta` VALUES (676, 134, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (677, 128, 'image', '132') ; 
INSERT INTO `wp_postmeta` VALUES (678, 128, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (679, 128, 'description', 'This is a project about something') ; 
INSERT INTO `wp_postmeta` VALUES (680, 128, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (681, 135, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (682, 135, '_edit_lock', '1405304757:1') ; 
INSERT INTO `wp_postmeta` VALUES (683, 131, '_edit_lock', '1405236143:1') ; 
INSERT INTO `wp_postmeta` VALUES (684, 131, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:1688;s:6:"height";i:1125;s:4:"file";s:12:"makeup-1.jpg";}s:18:"full-1405235057970";a:3:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:27:"makeup-1-e1405235027553.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:20:"makeup-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:20:"makeup-1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:21:"makeup-1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}}') ; 
INSERT INTO `wp_postmeta` VALUES (685, 131, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (686, 136, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (687, 136, '_edit_lock', '1405304700:1') ; 
INSERT INTO `wp_postmeta` VALUES (688, 137, 'image', '131') ; 
INSERT INTO `wp_postmeta` VALUES (689, 137, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (690, 137, 'description', 'This is a description for an image') ; 
INSERT INTO `wp_postmeta` VALUES (691, 137, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (692, 136, 'image', '131') ; 
INSERT INTO `wp_postmeta` VALUES (693, 136, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (694, 136, 'description', 'This is a description for an image') ; 
INSERT INTO `wp_postmeta` VALUES (695, 136, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (696, 129, '_edit_lock', '1405238595:1') ; 
INSERT INTO `wp_postmeta` VALUES (697, 129, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:600;s:6:"height";i:792;s:4:"file";s:10:"bride2.jpg";}s:18:"full-1405235199334";a:3:{s:5:"width";i:400;s:6:"height";i:528;s:4:"file";s:25:"bride2-e1405235165811.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:18:"bride2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:18:"bride2-227x300.jpg";s:5:"width";i:227;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}') ; 
INSERT INTO `wp_postmeta` VALUES (698, 129, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (699, 138, 'image', '129') ; 
INSERT INTO `wp_postmeta` VALUES (700, 138, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (701, 138, 'description', '') ; 
INSERT INTO `wp_postmeta` VALUES (702, 138, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (703, 135, 'image', '129') ; 
INSERT INTO `wp_postmeta` VALUES (704, 135, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (705, 135, 'description', 'A bride doing something') ; 
INSERT INTO `wp_postmeta` VALUES (706, 135, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (707, 139, 'image', '129') ; 
INSERT INTO `wp_postmeta` VALUES (708, 139, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (709, 139, 'description', 'A bride doing something') ; 
INSERT INTO `wp_postmeta` VALUES (710, 139, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (711, 140, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (712, 141, 'image', '133') ; 
INSERT INTO `wp_postmeta` VALUES (713, 141, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (714, 141, 'description', 'Lots of makeup here') ; 
INSERT INTO `wp_postmeta` VALUES (715, 141, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (716, 140, 'image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (717, 140, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (718, 140, 'description', 'Lots of makeup here') ; 
INSERT INTO `wp_postmeta` VALUES (719, 140, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (720, 140, '_edit_lock', '1405235992:1') ; 
INSERT INTO `wp_postmeta` VALUES (721, 142, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (722, 142, '_edit_lock', '1405305958:1') ; 
INSERT INTO `wp_postmeta` VALUES (723, 143, 'image', '130') ; 
INSERT INTO `wp_postmeta` VALUES (724, 143, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (725, 143, 'description', 'Too small? Images this small should not be used.') ; 
INSERT INTO `wp_postmeta` VALUES (726, 143, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (727, 142, 'image', '148') ; 
INSERT INTO `wp_postmeta` VALUES (728, 142, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (729, 142, 'description', 'Too small? Images this small should not be used.') ; 
INSERT INTO `wp_postmeta` VALUES (730, 142, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (731, 144, 'image', '130') ; 
INSERT INTO `wp_postmeta` VALUES (732, 144, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (733, 144, 'description', 'Too small? Images this small should not be used.') ; 
INSERT INTO `wp_postmeta` VALUES (734, 144, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (735, 145, 'image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (736, 145, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (737, 145, 'description', 'Lots of makeup here') ; 
INSERT INTO `wp_postmeta` VALUES (738, 145, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (739, 146, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (740, 146, '_edit_lock', '1405305108:1') ; 
INSERT INTO `wp_postmeta` VALUES (741, 147, 'image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (742, 147, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (743, 147, 'description', 'I don\'t know how to even begin to describe this.') ; 
INSERT INTO `wp_postmeta` VALUES (744, 147, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (745, 146, 'image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (746, 146, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (747, 146, 'description', 'I don\'t know how to even begin to describe this.') ; 
INSERT INTO `wp_postmeta` VALUES (748, 146, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (749, 148, '_wp_attached_file', '2014/07/simple-hairstyles-for-weddings-5-e1405236994640.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (750, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:399;s:6:"height";i:399;s:4:"file";s:59:"2014/07/simple-hairstyles-for-weddings-5-e1405236994640.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"simple-hairstyles-for-weddings-5-e1405236994640-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"simple-hairstyles-for-weddings-5-e1405236994640-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (751, 148, '_edit_lock', '1405236856:1') ; 
INSERT INTO `wp_postmeta` VALUES (752, 148, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:439;s:6:"height";i:585;s:4:"file";s:36:"simple-hairstyles-for-weddings-5.jpg";}s:18:"full-1405236994640";a:3:{s:5:"width";i:400;s:6:"height";i:533;s:4:"file";s:51:"simple-hairstyles-for-weddings-5-e1405236965908.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:44:"simple-hairstyles-for-weddings-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:44:"simple-hairstyles-for-weddings-5-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}') ; 
INSERT INTO `wp_postmeta` VALUES (753, 148, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (754, 149, 'image', '148') ; 
INSERT INTO `wp_postmeta` VALUES (755, 149, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (756, 149, 'description', 'Too small? Images this small should not be used.') ; 
INSERT INTO `wp_postmeta` VALUES (757, 149, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (758, 17, '_wp_page_template', 'default') ; 
INSERT INTO `wp_postmeta` VALUES (759, 150, 'main_image', '74') ; 
INSERT INTO `wp_postmeta` VALUES (760, 150, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (761, 150, 'content', 'write ome thing right here iIn a;lkns d

klnasem,ng

klnasd;,mng
<ul>
	<li>List items</li>
	<li>here</li>
	<li>and here</li>
</ul>
<a href="http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup3.jpg"><img class="alignnone size-medium wp-image-133" src="http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup3-300x200.jpg" alt="makeup3" width="300" height="200" /></a>') ; 
INSERT INTO `wp_postmeta` VALUES (762, 150, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (763, 150, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (764, 17, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (765, 127, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"gallery";s:8:"order_no";i:0;s:8:"group_no";i:0;}') ; 
INSERT INTO `wp_postmeta` VALUES (774, 151, 'main_image', '108') ; 
INSERT INTO `wp_postmeta` VALUES (775, 151, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (776, 151, 'content', 'This is the image gallery. This page should have a small introduction to the gallery. You can also just leave it blank it you don\'t want any text to appear here.') ; 
INSERT INTO `wp_postmeta` VALUES (777, 151, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (778, 151, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (779, 152, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (780, 152, '_edit_lock', '1405308315:1') ; 
INSERT INTO `wp_postmeta` VALUES (781, 152, '_wp_page_template', 'gallery.php') ; 
INSERT INTO `wp_postmeta` VALUES (782, 153, 'main_image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (783, 153, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (784, 153, 'content', 'This is the image gallery. This page should have a small introduction to the gallery. You can also just leave it blank it you don\'t want any text to appear here.') ; 
INSERT INTO `wp_postmeta` VALUES (785, 153, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (786, 153, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (787, 152, 'main_image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (788, 152, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (789, 152, 'content', 'This is the image gallery. This page should have a small introduction to the gallery. You can also just leave it blank it you don\'t want any text to appear here.') ; 
INSERT INTO `wp_postmeta` VALUES (790, 152, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (791, 152, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (792, 154, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (793, 154, '_menu_item_menu_item_parent', '27') ; 
INSERT INTO `wp_postmeta` VALUES (794, 154, '_menu_item_object_id', '152') ; 
INSERT INTO `wp_postmeta` VALUES (795, 154, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (796, 154, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (797, 154, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (798, 154, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (799, 154, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (801, 155, '_menu_item_type', 'post_type') ; 
INSERT INTO `wp_postmeta` VALUES (802, 155, '_menu_item_menu_item_parent', '26') ; 
INSERT INTO `wp_postmeta` VALUES (803, 155, '_menu_item_object_id', '152') ; 
INSERT INTO `wp_postmeta` VALUES (804, 155, '_menu_item_object', 'page') ; 
INSERT INTO `wp_postmeta` VALUES (805, 155, '_menu_item_target', '') ; 
INSERT INTO `wp_postmeta` VALUES (806, 155, '_menu_item_classes', 'a:1:{i:0;s:0:"";}') ; 
INSERT INTO `wp_postmeta` VALUES (807, 155, '_menu_item_xfn', '') ; 
INSERT INTO `wp_postmeta` VALUES (808, 155, '_menu_item_url', '') ; 
INSERT INTO `wp_postmeta` VALUES (810, 47, '_wp_page_template', 'default') ; 
INSERT INTO `wp_postmeta` VALUES (811, 156, 'main_image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (812, 156, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (813, 156, 'content', '[booking nummonths=2]') ; 
INSERT INTO `wp_postmeta` VALUES (814, 156, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (815, 156, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (816, 47, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (817, 157, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (818, 157, '_edit_lock', '1405315536:1') ; 
INSERT INTO `wp_postmeta` VALUES (819, 158, 'image', '131') ; 
INSERT INTO `wp_postmeta` VALUES (820, 158, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (821, 157, 'image', '131') ; 
INSERT INTO `wp_postmeta` VALUES (822, 157, '_image', 'field_53c1e2e489171') ; 
INSERT INTO `wp_postmeta` VALUES (823, 157, '_wp_trash_meta_status', 'publish') ; 
INSERT INTO `wp_postmeta` VALUES (824, 157, '_wp_trash_meta_time', '1405315700') ; 
INSERT INTO `wp_postmeta` VALUES (825, 159, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (826, 159, '_edit_lock', '1406769007:1') ; 
INSERT INTO `wp_postmeta` VALUES (827, 160, 'image', '132') ; 
INSERT INTO `wp_postmeta` VALUES (828, 160, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (829, 160, 'description', 'A description of the image!') ; 
INSERT INTO `wp_postmeta` VALUES (830, 160, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (831, 159, 'image', '132') ; 
INSERT INTO `wp_postmeta` VALUES (832, 159, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (833, 159, 'description', 'A description of the image!') ; 
INSERT INTO `wp_postmeta` VALUES (834, 159, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (835, 161, 'main_image', '79') ; 
INSERT INTO `wp_postmeta` VALUES (836, 161, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (837, 161, 'content', 'Please request a date you would like to schedule me for. I will contact you to hash over the final details and confirm your request shortly after. In the meantime, I will hold the date or dates for you.

[booking nummonths=2]') ; 
INSERT INTO `wp_postmeta` VALUES (838, 161, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (839, 161, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (840, 164, 'main_image', '92') ; 
INSERT INTO `wp_postmeta` VALUES (841, 164, '_main_image', 'field_53b4e75db2e4a') ; 
INSERT INTO `wp_postmeta` VALUES (842, 164, 'content', 'This is the image gallery. This page should have a small introduction to the gallery. You can also just leave it blank it you don\'t want any text to appear here.') ; 
INSERT INTO `wp_postmeta` VALUES (843, 164, '_content', 'field_53b4e7a1b2e4b') ; 
INSERT INTO `wp_postmeta` VALUES (844, 164, '_', 'field_53c216f2cf56d') ; 
INSERT INTO `wp_postmeta` VALUES (845, 166, '_edit_last', '1') ; 
INSERT INTO `wp_postmeta` VALUES (846, 166, '_edit_lock', '1406778739:1') ; 
INSERT INTO `wp_postmeta` VALUES (847, 167, '_wp_attached_file', '2014/07/baby-floor-edited-e1406770447278.jpg') ; 
INSERT INTO `wp_postmeta` VALUES (848, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:451;s:4:"file";s:44:"2014/07/baby-floor-edited-e1406770447278.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"baby-floor-edited-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"baby-floor-edited-265x300.jpg";s:5:"width";i:265;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"baby-floor-edited-907x1024.jpg";s:5:"width";i:907;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.79999999999999982236431605997495353221893310546875;s:6:"credit";s:0:"";s:6:"camera";s:8:"iPhone 4";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1394657552;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.85";s:3:"iso";s:4:"1000";s:13:"shutter_speed";s:15:"0.0666666666667";s:5:"title";s:0:"";}}') ; 
INSERT INTO `wp_postmeta` VALUES (849, 168, 'image', '167') ; 
INSERT INTO `wp_postmeta` VALUES (850, 168, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (851, 168, 'description', '') ; 
INSERT INTO `wp_postmeta` VALUES (852, 168, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (853, 166, 'image', '167') ; 
INSERT INTO `wp_postmeta` VALUES (854, 166, '_image', 'field_53c22d0df5d2b') ; 
INSERT INTO `wp_postmeta` VALUES (855, 166, 'description', '') ; 
INSERT INTO `wp_postmeta` VALUES (856, 166, '_description', 'field_53c22d3ef5d2c') ; 
INSERT INTO `wp_postmeta` VALUES (857, 167, '_edit_lock', '1406778739:1') ; 
INSERT INTO `wp_postmeta` VALUES (858, 167, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:1932;s:6:"height";i:2180;s:4:"file";s:21:"baby-floor-edited.jpg";}}') ;
#
# End of data contents of table wp_postmeta
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------


#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_posts (159 records)
#
 
INSERT INTO `wp_posts` VALUES (1, 1, '2014-06-28 06:30:33', '2014-06-28 06:30:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!

Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY. Roof party Odd Future umami freegan next level, sartorial Shoreditch literally selvage crucifix direct trade Brooklyn art party. Normcore hashtag before they sold out wolf, biodiesel Tumblr gentrify forage authentic Neutra. Brunch food truck pickled, chambray roof party pug flannel retro sriracha +1 8-bit lomo biodiesel hoodie street art. Mlkshk keytar Banksy ethical bicycle rights, Schlitz aesthetic fingerstache disrupt.
<p style="color: #444444;">Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.</p>', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-07-14 03:07:25', '2014-07-14 03:07:25', '', 0, 'http://localhost/edin-carpenter/?p=1', 0, 'post', '', 1) ; 
INSERT INTO `wp_posts` VALUES (2, 1, '2014-06-28 06:30:33', '2014-06-28 06:30:33', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:
<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>
...or something like this:
<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>
As a new WordPress user, you should go to <a href="http://localhost/edin-carpenter/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2014-07-03 06:55:30', '2014-07-03 06:55:30', '', 0, 'http://localhost/edin-carpenter/?page_id=2', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (4, 1, '2014-06-30 00:42:21', '2014-06-30 00:42:21', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-06-30 00:42:21', '2014-06-30 00:42:21', '', 0, 'http://localhost/edin-carpenter/?page_id=4', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (5, 1, '2014-06-30 00:42:21', '2014-06-30 00:42:21', '', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-06-30 00:42:21', '2014-06-30 00:42:21', '', 4, 'http://localhost/edin-carpenter/4-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (6, 1, '2014-06-30 00:42:31', '2014-06-30 00:42:31', '<p style="color: #444444;">Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.</p>
<p style="color: #444444;">YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.</p>', 'Example Pages', '', 'publish', 'open', 'open', '', 'example-pages', '', '', '2014-07-14 03:07:14', '2014-07-14 03:07:14', '', 0, 'http://localhost/edin-carpenter/?p=6', 0, 'post', '', 0) ; 
INSERT INTO `wp_posts` VALUES (7, 1, '2014-06-30 00:42:31', '2014-06-30 00:42:31', '', 'Example Pages', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-06-30 00:42:31', '2014-06-30 00:42:31', '', 6, 'http://localhost/edin-carpenter/6-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (8, 1, '2014-06-30 00:42:38', '2014-06-30 00:42:38', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.

Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.

YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.', 'My First Post', '', 'publish', 'open', 'open', '', 'blog', '', '', '2014-07-14 03:07:03', '2014-07-14 03:07:03', '', 0, 'http://localhost/edin-carpenter/?p=8', 0, 'post', '', 0) ; 
INSERT INTO `wp_posts` VALUES (9, 1, '2014-06-30 00:42:38', '2014-06-30 00:42:38', '', 'Blog', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-06-30 00:42:38', '2014-06-30 00:42:38', '', 8, 'http://localhost/edin-carpenter/8-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (10, 1, '2014-06-30 00:42:44', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 00:42:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=10', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (13, 1, '2014-06-30 00:43:41', '2014-06-30 00:43:41', '', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2014-07-14 03:22:33', '2014-07-14 03:22:33', '', 2, 'http://localhost/edin-carpenter/?page_id=13', 1, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (14, 1, '2014-06-30 00:43:41', '2014-06-30 00:43:41', '', 'Blog', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-06-30 00:43:41', '2014-06-30 00:43:41', '', 13, 'http://localhost/edin-carpenter/13-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (15, 1, '2014-06-30 00:43:58', '2014-06-30 00:43:58', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 2, 'http://localhost/edin-carpenter/?p=15', 3, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (16, 1, '2014-06-30 01:41:31', '2014-06-30 01:41:31', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:
<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>
...or something like this:
<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>
As a new WordPress user, you should go to <a href="http://localhost/edin-carpenter/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-06-30 01:41:31', '2014-06-30 01:41:31', '', 2, 'http://localhost/edin-carpenter/2-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (17, 1, '2014-06-30 01:42:04', '2014-06-30 01:42:04', 'This is the contact page. Welcome.', 'Contact', '', 'publish', 'open', 'open', '', 'contact-page', '', '', '2014-07-13 22:03:11', '2014-07-13 22:03:11', '', 0, 'http://localhost/edin-carpenter/?page_id=17', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (18, 1, '2014-06-30 01:42:04', '2014-06-30 01:42:04', 'This is the contact page. Welcome.', 'Contact Page', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-30 01:42:04', '2014-06-30 01:42:04', '', 17, 'http://localhost/edin-carpenter/17-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (19, 1, '2014-06-30 01:42:43', '2014-06-30 01:42:43', 'This is the contact page. Welcome.', 'Contact', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-06-30 01:42:43', '2014-06-30 01:42:43', '', 17, 'http://localhost/edin-carpenter/17-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (20, 1, '2014-06-30 01:42:59', '2014-06-30 01:42:59', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 0, 'http://localhost/edin-carpenter/?p=20', 9, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (21, 1, '2014-06-30 01:48:26', '2014-06-30 01:48:26', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 0, 'http://localhost/edin-carpenter/?p=21', 10, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (23, 1, '2014-06-30 01:48:26', '2014-06-30 01:48:26', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 0, 'http://localhost/edin-carpenter/?p=23', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (25, 1, '2014-06-30 01:52:40', '2014-06-30 01:52:40', ' ', '', '', 'publish', 'open', 'open', '', '25', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 2, 'http://localhost/edin-carpenter/?p=25', 4, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (26, 1, '2014-06-30 01:52:40', '2014-06-30 01:52:40', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 0, 'http://localhost/edin-carpenter/?p=26', 2, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (27, 1, '2014-06-30 01:54:27', '2014-06-30 01:54:27', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 0, 'http://localhost/edin-carpenter/?p=27', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (28, 1, '2014-06-30 02:09:01', '2014-06-30 02:09:01', '', 'Testimonials', '', 'publish', 'open', 'closed', '', 'testimonials', '', '', '2014-07-14 03:22:41', '2014-07-14 03:22:41', '', 2, 'http://localhost/edin-carpenter/?page_id=28', 2, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (29, 1, '2014-06-30 02:09:01', '2014-06-30 02:09:01', '', 'Testimonials', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2014-06-30 02:09:01', '2014-06-30 02:09:01', '', 28, 'http://localhost/edin-carpenter/28-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (30, 1, '2014-06-30 02:09:12', '2014-06-30 02:09:12', '', 'Work', '', 'publish', 'open', 'open', '', 'work', '', '', '2014-07-31 01:08:52', '2014-07-31 01:08:52', '', 0, 'http://localhost/edin-carpenter/?page_id=30', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (31, 1, '2014-06-30 02:09:12', '2014-06-30 02:09:12', '', 'Gallery', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2014-06-30 02:09:12', '2014-06-30 02:09:12', '', 30, 'http://localhost/edin-carpenter/30-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (32, 1, '2014-06-30 02:09:24', '2014-06-30 02:09:24', '', 'Weddings', '', 'publish', 'open', 'closed', '', 'weddings', '', '', '2014-06-30 02:17:50', '2014-06-30 02:17:50', '', 30, 'http://localhost/edin-carpenter/?page_id=32', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (33, 1, '2014-06-30 02:09:24', '2014-06-30 02:09:24', '', 'Weddings', '', 'inherit', 'open', 'open', '', '32-revision-v1', '', '', '2014-06-30 02:09:24', '2014-06-30 02:09:24', '', 32, 'http://localhost/edin-carpenter/32-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (34, 1, '2014-06-30 02:09:36', '2014-06-30 02:09:36', '', 'Photoshoots', '', 'publish', 'open', 'closed', '', 'photoshoots', '', '', '2014-07-02 05:28:54', '2014-07-02 05:28:54', '', 30, 'http://localhost/edin-carpenter/?page_id=34', 1, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (35, 1, '2014-06-30 02:09:36', '2014-06-30 02:09:36', '', 'Photoshoots', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2014-06-30 02:09:36', '2014-06-30 02:09:36', '', 34, 'http://localhost/edin-carpenter/34-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (36, 1, '2014-06-30 02:09:55', '2014-06-30 02:09:55', '', 'Special Events', '', 'publish', 'open', 'closed', '', 'special-events', '', '', '2014-07-14 03:25:07', '2014-07-14 03:25:07', '', 30, 'http://localhost/edin-carpenter/?page_id=36', 2, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (37, 1, '2014-06-30 02:09:55', '2014-06-30 02:09:55', '', 'Special Events', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2014-06-30 02:09:55', '2014-06-30 02:09:55', '', 36, 'http://localhost/edin-carpenter/36-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (38, 1, '2014-06-30 02:12:44', '2014-06-30 02:12:44', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 30, 'http://localhost/edin-carpenter/?p=38', 9, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (39, 1, '2014-06-30 02:12:44', '2014-06-30 02:12:44', ' ', '', '', 'publish', 'open', 'open', '', '39', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 30, 'http://localhost/edin-carpenter/?p=39', 8, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (40, 1, '2014-06-30 02:12:44', '2014-06-30 02:12:44', ' ', '', '', 'publish', 'open', 'open', '', '40', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 30, 'http://localhost/edin-carpenter/?p=40', 7, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (41, 1, '2014-06-30 02:12:44', '2014-06-30 02:12:44', ' ', '', '', 'publish', 'open', 'open', '', '41', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 0, 'http://localhost/edin-carpenter/?p=41', 6, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (42, 1, '2014-06-30 02:12:44', '2014-06-30 02:12:44', ' ', '', '', 'publish', 'open', 'open', '', '42', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 2, 'http://localhost/edin-carpenter/?p=42', 5, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (43, 1, '2014-06-30 02:10:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:10:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=43', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (44, 1, '2014-06-30 02:10:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:10:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=44', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (45, 1, '2014-06-30 02:10:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:10:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=45', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (46, 1, '2014-06-30 02:10:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:10:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=46', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (47, 1, '2014-06-30 02:12:55', '2014-06-30 02:12:55', '', 'Save the Date', '', 'publish', 'open', 'closed', '', 'save-the-date', '', '', '2014-07-14 05:47:32', '2014-07-14 05:47:32', '', 17, 'http://localhost/edin-carpenter/?page_id=47', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (48, 1, '2014-06-30 02:12:55', '2014-06-30 02:12:55', '', 'Save the Date', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-06-30 02:12:55', '2014-06-30 02:12:55', '', 47, 'http://localhost/edin-carpenter/47-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (49, 1, '2014-06-30 02:13:13', '2014-06-30 02:13:13', '', 'Pricing', '', 'trash', 'open', 'open', '', 'pricing', '', '', '2014-07-09 04:03:17', '2014-07-09 04:03:17', '', 0, 'http://localhost/edin-carpenter/?p=49', 0, 'post', '', 0) ; 
INSERT INTO `wp_posts` VALUES (50, 1, '2014-06-30 02:13:13', '2014-06-30 02:13:13', '', 'Pricing', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-06-30 02:13:13', '2014-06-30 02:13:13', '', 49, 'http://localhost/edin-carpenter/49-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (51, 1, '2014-06-30 02:13:46', '2014-06-30 02:13:46', '', 'Pricing', '', 'publish', 'open', 'closed', '', 'pricing', '', '', '2014-07-03 07:15:15', '2014-07-03 07:15:15', '', 17, 'http://localhost/edin-carpenter/?page_id=51', 1, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (52, 1, '2014-06-30 02:13:46', '2014-06-30 02:13:46', '', 'Pricing', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2014-06-30 02:13:46', '2014-06-30 02:13:46', '', 51, 'http://localhost/edin-carpenter/51-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (53, 1, '2014-06-30 02:14:07', '2014-06-30 02:14:07', ' ', '', '', 'publish', 'open', 'open', '', '53', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 17, 'http://localhost/edin-carpenter/?p=53', 12, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (54, 1, '2014-06-30 02:14:07', '2014-06-30 02:14:07', ' ', '', '', 'publish', 'open', 'open', '', '54', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 17, 'http://localhost/edin-carpenter/?p=54', 11, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (55, 1, '2014-06-30 02:29:37', '2014-06-30 02:29:37', '', 'Donny\'s Page', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2014-06-30 02:29:37', '2014-06-30 02:29:37', '', 28, 'http://localhost/edin-carpenter/28-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (56, 1, '2014-06-30 02:30:15', '2014-06-30 02:30:15', '', 'Testimonials', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2014-06-30 02:30:15', '2014-06-30 02:30:15', '', 28, 'http://localhost/edin-carpenter/28-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (57, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 0, 'http://localhost/edin-carpenter/?p=57', 5, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (58, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '58', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 30, 'http://localhost/edin-carpenter/?p=58', 8, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (59, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 30, 'http://localhost/edin-carpenter/?p=59', 7, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (60, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '60', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 30, 'http://localhost/edin-carpenter/?p=60', 6, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (61, 1, '2014-06-30 02:41:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:41:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=61', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (62, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '62', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 17, 'http://localhost/edin-carpenter/?p=62', 11, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (63, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '63', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 17, 'http://localhost/edin-carpenter/?p=63', 10, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (64, 1, '2014-06-30 02:41:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:41:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=64', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (65, 1, '2014-06-30 02:41:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:41:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=65', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (66, 1, '2014-06-30 02:43:13', '2014-06-30 02:43:13', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 2, 'http://localhost/edin-carpenter/?p=66', 4, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (67, 1, '2014-06-30 02:41:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-06-30 02:41:45', '0000-00-00 00:00:00', '', 2, 'http://localhost/edin-carpenter/?p=67', 1, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (69, 1, '2014-07-02 07:04:41', '2014-07-02 07:04:41', '', 'Terms and Conditions', '', 'publish', 'open', 'open', '', 'test', '', '', '2014-07-02 07:05:48', '2014-07-02 07:05:48', '', 0, 'http://localhost/edin-carpenter/?page_id=69', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (70, 1, '2014-07-02 07:04:41', '2014-07-02 07:04:41', '', 'Test', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-07-02 07:04:41', '2014-07-02 07:04:41', '', 69, 'http://localhost/edin-carpenter/69-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (71, 1, '2014-07-02 07:05:14', '2014-07-02 07:05:14', '', 'Privacy Policy', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-07-02 07:05:14', '2014-07-02 07:05:14', '', 69, 'http://localhost/edin-carpenter/69-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (72, 1, '2014-07-02 07:05:48', '2014-07-02 07:05:48', '', 'Terms and Conditions', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-07-02 07:05:48', '2014-07-02 07:05:48', '', 69, 'http://localhost/edin-carpenter/69-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (73, 1, '2014-07-03 05:28:12', '2014-07-03 05:28:12', '', 'Default Page Fields', '', 'publish', 'closed', 'closed', '', 'acf_default-page-fields', '', '', '2014-07-13 05:19:57', '2014-07-13 05:19:57', '', 0, 'http://localhost/edin-carpenter/?post_type=acf&#038;p=73', 0, 'acf', '', 0) ; 
INSERT INTO `wp_posts` VALUES (74, 1, '2014-07-03 06:31:35', '2014-07-03 06:31:35', '', 'blonde-just-face', '', 'inherit', 'open', 'open', '', 'blonde-just-face', '', '', '2014-07-03 06:31:35', '2014-07-03 06:31:35', '', 2, 'http://localhost/edin-carpenter/wp-content/uploads/2014/06/blonde-just-face.png', 0, 'attachment', 'image/png', 0) ; 
INSERT INTO `wp_posts` VALUES (75, 1, '2014-07-03 06:31:46', '2014-07-03 06:31:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:
<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>
...or something like this:
<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>
As a new WordPress user, you should go to <a href="http://localhost/edin-carpenter/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-07-03 06:31:46', '2014-07-03 06:31:46', '', 2, 'http://localhost/edin-carpenter/2-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (76, 1, '2014-07-03 06:55:30', '2014-07-03 06:55:30', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:
<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>
...or something like this:
<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>
As a new WordPress user, you should go to <a href="http://localhost/edin-carpenter/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-07-03 06:55:30', '2014-07-03 06:55:30', '', 2, 'http://localhost/edin-carpenter/2-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (77, 1, '2014-07-03 07:02:57', '2014-07-03 07:02:57', 'This is the contact page. Welcome.', 'Contact', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-07-03 07:02:57', '2014-07-03 07:02:57', '', 17, 'http://localhost/edin-carpenter/17-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (78, 1, '2014-07-03 07:03:36', '2014-07-03 07:03:36', 'This is the contact page. Welcome.', 'Contact', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-07-03 07:03:36', '2014-07-03 07:03:36', '', 17, 'http://localhost/edin-carpenter/17-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (79, 1, '2014-07-03 07:10:25', '2014-07-03 07:10:25', '', 'Ultramanthrow 2', '', 'inherit', 'open', 'open', '', 'ultramanthrow-2', '', '', '2014-07-03 07:10:25', '2014-07-03 07:10:25', '', 47, 'http://localhost/edin-carpenter/wp-content/uploads/2014/06/Ultramanthrow-2.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (80, 1, '2014-07-03 07:10:29', '2014-07-03 07:10:29', '', 'Save the Date', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-07-03 07:10:29', '2014-07-03 07:10:29', '', 47, 'http://localhost/edin-carpenter/47-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (81, 1, '2014-07-03 07:15:15', '2014-07-03 07:15:15', '', 'Pricing', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2014-07-03 07:15:15', '2014-07-03 07:15:15', '', 51, 'http://localhost/edin-carpenter/51-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (82, 1, '2014-07-04 06:23:40', '2014-07-04 06:23:40', '', 'Testimonials', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2014-07-04 06:23:40', '2014-07-04 06:23:40', '', 28, 'http://localhost/edin-carpenter/28-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (84, 1, '2014-07-08 03:58:53', '2014-07-08 03:58:53', '', 'Testimonial Posts', '', 'publish', 'closed', 'closed', '', 'acf_testimonial-posts', '', '', '2014-07-13 02:12:47', '2014-07-13 02:12:47', '', 0, 'http://localhost/edin-carpenter/?post_type=acf&#038;p=84', 0, 'acf', '', 0) ; 
INSERT INTO `wp_posts` VALUES (86, 1, '2014-07-08 04:00:50', '2014-07-08 04:00:50', '', 'Test - imonial', '', 'publish', 'open', 'open', '', 'test-imonial', '', '', '2014-07-08 04:00:50', '2014-07-08 04:00:50', '', 0, 'http://localhost/edin-carpenter/?post_type=testimonials&#038;p=86', 0, 'testimonials', '', 0) ; 
INSERT INTO `wp_posts` VALUES (87, 1, '2014-07-08 04:00:50', '2014-07-08 04:00:50', '', 'Test - imonial', '', 'inherit', 'open', 'open', '', '86-revision-v1', '', '', '2014-07-08 04:00:50', '2014-07-08 04:00:50', '', 86, 'http://localhost/edin-carpenter/86-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (88, 1, '2014-07-08 04:01:52', '2014-07-08 04:01:52', '', 'Second Test', '', 'publish', 'open', 'open', '', 'second-test', '', '', '2014-07-08 04:01:52', '2014-07-08 04:01:52', '', 0, 'http://localhost/edin-carpenter/?post_type=testimonials&#038;p=88', 0, 'testimonials', '', 0) ; 
INSERT INTO `wp_posts` VALUES (89, 1, '2014-07-08 04:01:52', '2014-07-08 04:01:52', '', 'Second Test', '', 'inherit', 'open', 'open', '', '88-revision-v1', '', '', '2014-07-08 04:01:52', '2014-07-08 04:01:52', '', 88, 'http://localhost/edin-carpenter/88-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (90, 1, '2014-07-08 04:02:48', '2014-07-08 04:02:48', '', 'Yet another testimonial', '', 'publish', 'open', 'open', '', 'yet-another-testimonial', '', '', '2014-07-08 04:02:48', '2014-07-08 04:02:48', '', 0, 'http://localhost/edin-carpenter/?post_type=testimonials&#038;p=90', 0, 'testimonials', '', 0) ; 
INSERT INTO `wp_posts` VALUES (91, 1, '2014-07-08 04:02:48', '2014-07-08 04:02:48', '', 'Yet another testimonial', '', 'inherit', 'open', 'open', '', '90-revision-v1', '', '', '2014-07-08 04:02:48', '2014-07-08 04:02:48', '', 90, 'http://localhost/edin-carpenter/90-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (92, 1, '2014-07-08 04:10:48', '2014-07-08 04:10:48', '', 'crazy-eyes', '', 'inherit', 'open', 'open', '', 'crazy-eyes', '', '', '2014-07-08 04:10:48', '2014-07-08 04:10:48', '', 28, 'http://localhost/edin-carpenter/wp-content/uploads/2014/06/crazy-eyes.png', 0, 'attachment', 'image/png', 0) ; 
INSERT INTO `wp_posts` VALUES (93, 1, '2014-07-08 04:10:59', '2014-07-08 04:10:59', '', 'Testimonials', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2014-07-08 04:10:59', '2014-07-08 04:10:59', '', 28, 'http://localhost/edin-carpenter/28-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (94, 1, '2014-07-08 04:21:50', '2014-07-08 04:21:50', '', 'Testimonials Page', '', 'publish', 'closed', 'closed', '', 'acf_testimonials-page', '', '', '2014-07-08 04:22:41', '2014-07-08 04:22:41', '', 0, 'http://localhost/edin-carpenter/?post_type=acf&#038;p=94', 0, 'acf', '', 0) ; 
INSERT INTO `wp_posts` VALUES (95, 1, '2014-07-09 04:04:22', '2014-07-09 04:04:22', '', 'Blog post', '', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2014-07-09 04:04:22', '2014-07-09 04:04:22', '', 8, 'http://localhost/edin-carpenter/8-autosave-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (96, 1, '2014-07-09 04:04:30', '2014-07-09 04:04:30', '', 'Blog post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-07-09 04:04:30', '2014-07-09 04:04:30', '', 8, 'http://localhost/edin-carpenter/8-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (97, 1, '2014-07-09 04:10:32', '2014-07-09 04:10:32', '', 'Blog Posts', '', 'publish', 'closed', 'closed', '', 'acf_blog-posts', '', '', '2014-07-09 04:47:31', '2014-07-09 04:47:31', '', 0, 'http://localhost/edin-carpenter/?post_type=acf&#038;p=97', 0, 'acf', '', 0) ; 
INSERT INTO `wp_posts` VALUES (98, 1, '2014-07-09 04:44:47', '2014-07-09 04:44:47', 'Jean shorts next level selvage chia, four loko swag disrupt Neutra Cosby sweater YOLO trust fund kogi Etsy Marfa. Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY. Roof party Odd Future umami freegan next level, sartorial Shoreditch literally selvage crucifix direct trade Brooklyn art party. Normcore hashtag before they sold out wolf, biodiesel Tumblr gentrify forage authentic Neutra. Brunch food truck pickled, chambray roof party pug flannel retro sriracha +1 8-bit lomo biodiesel hoodie street art. Mlkshk keytar Banksy ethical bicycle rights, Schlitz aesthetic fingerstache disrupt.

Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.

Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.

YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.', 'Blog post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-07-09 04:44:47', '2014-07-09 04:44:47', '', 8, 'http://localhost/edin-carpenter/8-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (99, 1, '2014-07-09 04:46:00', '2014-07-09 04:46:00', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.

Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.

YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.', 'Blog post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-07-09 04:46:00', '2014-07-09 04:46:00', '', 8, 'http://localhost/edin-carpenter/8-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (100, 1, '2014-07-09 04:46:37', '2014-07-09 04:46:37', '<p style="color: #444444;">Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.</p>
<p style="color: #444444;">YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.</p>', 'Example Pages', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-07-09 04:46:37', '2014-07-09 04:46:37', '', 6, 'http://localhost/edin-carpenter/6-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (101, 1, '2014-07-09 04:46:59', '2014-07-09 04:46:59', '<p style="color: #444444;">Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.</p>
<p style="color: #444444;">YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.</p>', 'Example Pages', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-07-09 04:46:59', '2014-07-09 04:46:59', '', 6, 'http://localhost/edin-carpenter/6-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (102, 1, '2014-07-09 04:47:53', '2014-07-09 04:47:53', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.

Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.

YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.', 'Blog post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-07-09 04:47:53', '2014-07-09 04:47:53', '', 8, 'http://localhost/edin-carpenter/8-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (103, 1, '2014-07-09 04:48:15', '2014-07-09 04:48:15', '<p style="color: #444444;">Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.</p>
<p style="color: #444444;">YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.</p>', 'Example Pages', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-07-09 04:48:15', '2014-07-09 04:48:15', '', 6, 'http://localhost/edin-carpenter/6-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (104, 1, '2014-07-09 04:49:23', '2014-07-09 04:49:23', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!

Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY. Roof party Odd Future umami freegan next level, sartorial Shoreditch literally selvage crucifix direct trade Brooklyn art party. Normcore hashtag before they sold out wolf, biodiesel Tumblr gentrify forage authentic Neutra. Brunch food truck pickled, chambray roof party pug flannel retro sriracha +1 8-bit lomo biodiesel hoodie street art. Mlkshk keytar Banksy ethical bicycle rights, Schlitz aesthetic fingerstache disrupt.
<p style="color: #444444;">Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.</p>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-autosave-v1', '', '', '2014-07-09 04:49:23', '2014-07-09 04:49:23', '', 1, 'http://localhost/edin-carpenter/1-autosave-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (105, 1, '2014-07-09 04:49:29', '2014-07-09 04:49:29', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!

Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY. Roof party Odd Future umami freegan next level, sartorial Shoreditch literally selvage crucifix direct trade Brooklyn art party. Normcore hashtag before they sold out wolf, biodiesel Tumblr gentrify forage authentic Neutra. Brunch food truck pickled, chambray roof party pug flannel retro sriracha +1 8-bit lomo biodiesel hoodie street art. Mlkshk keytar Banksy ethical bicycle rights, Schlitz aesthetic fingerstache disrupt.
<p style="color: #444444;">Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.</p>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-07-09 04:49:29', '2014-07-09 04:49:29', '', 1, 'http://localhost/edin-carpenter/1-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (106, 1, '2014-07-09 04:49:38', '2014-07-09 04:49:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!

Lomo single-origin coffee Brooklyn, chia vinyl Portland chambray meggings ugh dreamcatcher fashion axe twee Cosby sweater VHS. Readymade banh mi scenester DIY. Roof party Odd Future umami freegan next level, sartorial Shoreditch literally selvage crucifix direct trade Brooklyn art party. Normcore hashtag before they sold out wolf, biodiesel Tumblr gentrify forage authentic Neutra. Brunch food truck pickled, chambray roof party pug flannel retro sriracha +1 8-bit lomo biodiesel hoodie street art. Mlkshk keytar Banksy ethical bicycle rights, Schlitz aesthetic fingerstache disrupt.
<p style="color: #444444;">Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.</p>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-07-09 04:49:38', '2014-07-09 04:49:38', '', 1, 'http://localhost/edin-carpenter/1-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (107, 1, '2014-07-09 04:49:51', '2014-07-09 04:49:51', '<p style="color: #444444;">Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.</p>
<p style="color: #444444;">YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.</p>', 'Example Pages', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-07-09 04:49:51', '2014-07-09 04:49:51', '', 6, 'http://localhost/edin-carpenter/6-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (108, 1, '2014-07-09 04:53:41', '2014-07-09 04:53:41', '', 'makeup', '', 'inherit', 'open', 'open', '', 'makeup', '', '', '2014-07-09 04:53:41', '2014-07-09 04:53:41', '', 13, 'http://localhost/edin-carpenter/wp-content/uploads/2014/06/makeup.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (109, 1, '2014-07-09 04:54:05', '2014-07-09 04:54:05', '', 'Blog', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-07-09 04:54:05', '2014-07-09 04:54:05', '', 13, 'http://localhost/edin-carpenter/13-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (110, 1, '2014-07-13 01:42:08', '2014-07-13 01:42:08', '', 'Image Slides Fields', '', 'publish', 'closed', 'closed', '', 'acf_image-slides-fields', '', '', '2014-07-13 01:53:41', '2014-07-13 01:53:41', '', 0, 'http://localhost/edin-carpenter/?post_type=acf&#038;p=110', 0, 'acf', '', 0) ; 
INSERT INTO `wp_posts` VALUES (111, 1, '2014-07-13 01:42:30', '2014-07-13 01:42:30', '', 'Image 1', '', 'publish', 'open', 'open', '', 'image-1', '', '', '2014-07-13 01:42:30', '2014-07-13 01:42:30', '', 0, 'http://localhost/edin-carpenter/?post_type=slide&#038;p=111', 0, 'slide', '', 0) ; 
INSERT INTO `wp_posts` VALUES (112, 1, '2014-07-13 01:42:30', '2014-07-13 01:42:30', '', 'Image 1', '', 'inherit', 'open', 'open', '', '111-revision-v1', '', '', '2014-07-13 01:42:30', '2014-07-13 01:42:30', '', 111, 'http://localhost/edin-carpenter/111-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (113, 1, '2014-07-13 01:42:48', '2014-07-13 01:42:48', '', 'Image 2', '', 'publish', 'open', 'open', '', 'image-2', '', '', '2014-07-13 01:42:48', '2014-07-13 01:42:48', '', 0, 'http://localhost/edin-carpenter/?post_type=slide&#038;p=113', 0, 'slide', '', 0) ; 
INSERT INTO `wp_posts` VALUES (114, 1, '2014-07-13 01:42:48', '2014-07-13 01:42:48', '', 'Image 2', '', 'inherit', 'open', 'open', '', '113-revision-v1', '', '', '2014-07-13 01:42:48', '2014-07-13 01:42:48', '', 113, 'http://localhost/edin-carpenter/113-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (115, 1, '2014-07-13 01:45:30', '2014-07-13 01:45:30', '', 'Image 3', '', 'publish', 'open', 'open', '', 'image-3', '', '', '2014-07-13 01:48:53', '2014-07-13 01:48:53', '', 0, 'http://localhost/edin-carpenter/?post_type=slide&#038;p=115', 0, 'slide', '', 0) ; 
INSERT INTO `wp_posts` VALUES (116, 1, '2014-07-13 01:45:30', '2014-07-13 01:45:30', '', 'Image 3', '', 'inherit', 'open', 'open', '', '115-revision-v1', '', '', '2014-07-13 01:45:30', '2014-07-13 01:45:30', '', 115, 'http://localhost/edin-carpenter/115-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (117, 1, '2014-07-13 01:48:53', '2014-07-13 01:48:53', '', 'Image 3', '', 'inherit', 'open', 'open', '', '115-revision-v1', '', '', '2014-07-13 01:48:53', '2014-07-13 01:48:53', '', 115, 'http://localhost/edin-carpenter/115-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (118, 1, '2014-07-13 02:13:44', '2014-07-13 02:13:44', '', 'Testimonial 1', '', 'publish', 'open', 'open', '', 'testimonial-1', '', '', '2014-07-13 02:13:44', '2014-07-13 02:13:44', '', 0, 'http://localhost/edin-carpenter/?post_type=testimonial&#038;p=118', 0, 'testimonial', '', 0) ; 
INSERT INTO `wp_posts` VALUES (119, 1, '2014-07-13 02:13:44', '2014-07-13 02:13:44', '', 'Testimonial 1', '', 'inherit', 'open', 'open', '', '118-revision-v1', '', '', '2014-07-13 02:13:44', '2014-07-13 02:13:44', '', 118, 'http://localhost/edin-carpenter/118-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (120, 1, '2014-07-13 02:14:32', '2014-07-13 02:14:32', '', 'Testimonial 2', '', 'publish', 'open', 'open', '', 'testimonial-2', '', '', '2014-07-13 02:14:32', '2014-07-13 02:14:32', '', 0, 'http://localhost/edin-carpenter/?post_type=testimonial&#038;p=120', 0, 'testimonial', '', 0) ; 
INSERT INTO `wp_posts` VALUES (121, 1, '2014-07-13 02:14:32', '2014-07-13 02:14:32', '', 'Testimonial 2', '', 'inherit', 'open', 'open', '', '120-revision-v1', '', '', '2014-07-13 02:14:32', '2014-07-13 02:14:32', '', 120, 'http://localhost/edin-carpenter/120-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (122, 1, '2014-07-13 02:15:07', '2014-07-13 02:15:07', '', 'Testimonial 3', '', 'publish', 'open', 'open', '', 'testimonial-3', '', '', '2014-07-13 02:15:13', '2014-07-13 02:15:13', '', 0, 'http://localhost/edin-carpenter/?post_type=testimonial&#038;p=122', 0, 'testimonial', '', 0) ; 
INSERT INTO `wp_posts` VALUES (123, 1, '2014-07-13 02:15:07', '2014-07-13 02:15:07', '', 'Testimonial 3', '', 'inherit', 'open', 'open', '', '122-revision-v1', '', '', '2014-07-13 02:15:07', '2014-07-13 02:15:07', '', 122, 'http://localhost/edin-carpenter/122-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (124, 1, '2014-07-13 03:47:06', '2014-07-13 03:47:06', 'Cosby sweater cred cardigan pug Neutra. Flexitarian asymmetrical keffiyeh, Banksy synth chillwave retro pork belly. Actually keffiyeh four loko cred put a bird on it gluten-free. Chillwave salvia keffiyeh, Blue Bottle fixie cornhole actually Pinterest meh art party. Authentic PBR&amp;B banjo, blog flexitarian cardigan small batch dreamcatcher try-hard tofu Schlitz actually lomo drinking vinegar. You probably haven\'t heard of them crucifix XOXO art party, PBR Schlitz retro. Beard Shoreditch mumblecore, seitan tattooed cray lo-fi pork belly butcher roof party gastropub chambray artisan 3 wolf moon.

Stumptown banjo deep v try-hard before they sold out, Pinterest Williamsburg Neutra biodiesel tattooed pour-over keffiyeh. Food truck pour-over vinyl, Banksy Echo Park squid farm-to-table Pitchfork mlkshk blog. Fashion axe selvage mlkshk, Truffaut organic you probably haven\'t heard of them narwhal lomo hoodie Helvetica Odd Future Austin skateboard meggings hashtag. Austin viral gastropub Odd Future tofu, direct trade wayfarers vinyl 3 wolf moon authentic XOXO. Deep v Portland umami pour-over, trust fund bitters sriracha wolf organic sartorial mlkshk typewriter. Keffiyeh Pinterest ugh, selfies bicycle rights before they sold out food truck tousled photo booth 8-bit skateboard Pitchfork Vice +1 tote bag. Godard hoodie fanny pack, meh umami mixtape banjo selfies street art letterpress you probably haven\'t heard of them.

YOLO Carles shabby chic, post-ironic semiotics iPhone tattooed kale chips meggings Marfa cardigan brunch. Biodiesel Tumblr craft beer Odd Future tousled. Meh raw denim crucifix Bushwick. Keytar distillery deep v photo booth crucifix cray, Helvetica scenester cliche viral. Stumptown semiotics lo-fi cornhole farm-to-table sriracha. Artisan wayfarers Portland, pop-up you probably haven\'t heard of them mixtape stumptown mumblecore. Schlitz squid Neutra four loko banjo.', 'My First Post', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-07-13 03:47:06', '2014-07-13 03:47:06', '', 8, 'http://localhost/edin-carpenter/8-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (125, 1, '2014-07-13 05:20:51', '2014-07-13 05:20:51', '', 'Gallery', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2014-07-13 05:20:51', '2014-07-13 05:20:51', '', 30, 'http://localhost/edin-carpenter/30-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (127, 1, '2014-07-13 06:56:24', '2014-07-13 06:56:24', '', 'Gallery Posts', '', 'publish', 'closed', 'closed', '', 'acf_gallery-posts', '', '', '2014-07-14 01:32:55', '2014-07-14 01:32:55', '', 0, 'http://localhost/edin-carpenter/?post_type=acf&#038;p=127', 0, 'acf', '', 0) ; 
INSERT INTO `wp_posts` VALUES (128, 1, '2014-07-13 07:03:18', '2014-07-13 07:03:18', '', '1', '', 'publish', 'open', 'open', '', '1', '', '', '2014-07-14 02:28:34', '2014-07-14 02:28:34', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=128', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (129, 1, '2014-07-13 07:01:41', '2014-07-13 07:01:41', '', 'bride2', '', 'inherit', 'open', 'open', '', 'bride2', '', '', '2014-07-13 07:01:41', '2014-07-13 07:01:41', '', 128, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/bride2.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (130, 1, '2014-07-13 07:01:42', '2014-07-13 07:01:42', '', 'hair-bride', '', 'inherit', 'open', 'open', '', 'hair-bride', '', '', '2014-07-13 07:01:42', '2014-07-13 07:01:42', '', 128, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/hair-bride.jpeg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (131, 1, '2014-07-13 07:01:42', '2014-07-13 07:01:42', '', 'Young beautiful girl applying make-up by make-up artist', '', 'inherit', 'open', 'open', '', 'young-beautiful-girl-applying-make-up-by-make-up-artist', '', '', '2014-07-13 07:01:42', '2014-07-13 07:01:42', '', 128, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup-1.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (132, 1, '2014-07-13 07:01:43', '2014-07-13 07:01:43', '', 'makeup2', '', 'inherit', 'open', 'open', '', 'makeup2', '', '', '2014-07-13 07:01:43', '2014-07-13 07:01:43', '', 128, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup2.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (133, 1, '2014-07-13 07:01:44', '2014-07-13 07:01:44', '', 'makeup3', '', 'inherit', 'open', 'open', '', 'makeup3', '', '', '2014-07-13 07:01:44', '2014-07-13 07:01:44', '', 128, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/makeup3.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (134, 1, '2014-07-13 07:03:18', '2014-07-13 07:03:18', '', '1', '', 'inherit', 'open', 'open', '', '128-revision-v1', '', '', '2014-07-13 07:03:18', '2014-07-13 07:03:18', '', 128, 'http://localhost/edin-carpenter/128-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (135, 1, '2014-07-13 07:07:02', '2014-07-13 07:07:02', '', '2', '', 'publish', 'open', 'open', '', '2', '', '', '2014-07-14 02:26:44', '2014-07-14 02:26:44', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=135', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (136, 1, '2014-07-13 07:05:37', '2014-07-13 07:05:37', '', '3', '', 'publish', 'open', 'open', '', '3', '', '', '2014-07-14 02:27:21', '2014-07-14 02:27:21', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=136', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (137, 1, '2014-07-13 07:05:37', '2014-07-13 07:05:37', '', '3', '', 'inherit', 'open', 'open', '', '136-revision-v1', '', '', '2014-07-13 07:05:37', '2014-07-13 07:05:37', '', 136, 'http://localhost/edin-carpenter/136-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (138, 1, '2014-07-13 07:07:02', '2014-07-13 07:07:02', '', '2', '', 'inherit', 'open', 'open', '', '135-revision-v1', '', '', '2014-07-13 07:07:02', '2014-07-13 07:07:02', '', 135, 'http://localhost/edin-carpenter/135-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (139, 1, '2014-07-13 07:07:11', '2014-07-13 07:07:11', '', '2', '', 'inherit', 'open', 'open', '', '135-revision-v1', '', '', '2014-07-13 07:07:11', '2014-07-13 07:07:11', '', 135, 'http://localhost/edin-carpenter/135-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (140, 1, '2014-07-13 07:07:42', '2014-07-13 07:07:42', '', 'Getting Makeup', '', 'publish', 'open', 'open', '', '4', '', '', '2014-07-13 07:22:13', '2014-07-13 07:22:13', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=140', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (141, 1, '2014-07-13 07:07:42', '2014-07-13 07:07:42', '', '4', '', 'inherit', 'open', 'open', '', '140-revision-v1', '', '', '2014-07-13 07:07:42', '2014-07-13 07:07:42', '', 140, 'http://localhost/edin-carpenter/140-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (142, 1, '2014-07-13 07:08:15', '2014-07-13 07:08:15', '', 'Blonde Bride', '', 'publish', 'open', 'open', '', '5', '', '', '2014-07-14 02:48:20', '2014-07-14 02:48:20', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=142', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (143, 1, '2014-07-13 07:08:15', '2014-07-13 07:08:15', '', '5', '', 'inherit', 'open', 'open', '', '142-revision-v1', '', '', '2014-07-13 07:08:15', '2014-07-13 07:08:15', '', 142, 'http://localhost/edin-carpenter/142-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (144, 1, '2014-07-13 07:21:44', '2014-07-13 07:21:44', '', 'Blonde Bride', '', 'inherit', 'open', 'open', '', '142-revision-v1', '', '', '2014-07-13 07:21:44', '2014-07-13 07:21:44', '', 142, 'http://localhost/edin-carpenter/142-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (145, 1, '2014-07-13 07:22:13', '2014-07-13 07:22:13', '', 'Getting Makeup', '', 'inherit', 'open', 'open', '', '140-revision-v1', '', '', '2014-07-13 07:22:13', '2014-07-13 07:22:13', '', 140, 'http://localhost/edin-carpenter/140-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (146, 1, '2014-07-13 07:26:29', '2014-07-13 07:26:29', '', 'Ultra Man is Back', '', 'publish', 'open', 'open', '', 'ultra-man-is-back', '', '', '2014-07-14 02:25:55', '2014-07-14 02:25:55', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=146', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (147, 1, '2014-07-13 07:26:29', '2014-07-13 07:26:29', '', 'Ultra Man is Back', '', 'inherit', 'open', 'open', '', '146-revision-v1', '', '', '2014-07-13 07:26:29', '2014-07-13 07:26:29', '', 146, 'http://localhost/edin-carpenter/146-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (148, 1, '2014-07-13 07:35:34', '2014-07-13 07:35:34', '', 'simple-hairstyles-for-weddings-5', '', 'inherit', 'open', 'open', '', 'simple-hairstyles-for-weddings-5', '', '', '2014-07-13 07:35:34', '2014-07-13 07:35:34', '', 0, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/simple-hairstyles-for-weddings-5.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (149, 1, '2014-07-13 07:36:53', '2014-07-13 07:36:53', '', 'Blonde Bride', '', 'inherit', 'open', 'open', '', '142-revision-v1', '', '', '2014-07-13 07:36:53', '2014-07-13 07:36:53', '', 142, 'http://localhost/edin-carpenter/142-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (150, 1, '2014-07-13 22:03:11', '2014-07-13 22:03:11', 'This is the contact page. Welcome.', 'Contact', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-07-13 22:03:11', '2014-07-13 22:03:11', '', 17, 'http://localhost/edin-carpenter/17-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (151, 1, '2014-07-14 03:17:23', '2014-07-14 03:17:23', '', 'Work', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2014-07-14 03:17:23', '2014-07-14 03:17:23', '', 30, 'http://localhost/edin-carpenter/30-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (152, 1, '2014-07-14 03:18:12', '2014-07-14 03:18:12', '', 'Gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2014-07-14 03:27:37', '2014-07-14 03:27:37', '', 2, 'http://localhost/edin-carpenter/?page_id=152', 0, 'page', '', 0) ; 
INSERT INTO `wp_posts` VALUES (153, 1, '2014-07-14 03:18:12', '2014-07-14 03:18:12', '', 'Gallery', '', 'inherit', 'open', 'open', '', '152-revision-v1', '', '', '2014-07-14 03:18:12', '2014-07-14 03:18:12', '', 152, 'http://localhost/edin-carpenter/152-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (154, 1, '2014-07-14 03:18:51', '2014-07-14 03:18:51', ' ', '', '', 'publish', 'open', 'open', '', '154', '', '', '2014-07-14 03:18:51', '2014-07-14 03:18:51', '', 0, 'http://localhost/edin-carpenter/?p=154', 2, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (155, 1, '2014-07-14 03:30:03', '2014-07-14 03:30:03', ' ', '', '', 'publish', 'open', 'open', '', '155', '', '', '2014-07-14 03:30:03', '2014-07-14 03:30:03', '', 2, 'http://localhost/edin-carpenter/?p=155', 3, 'nav_menu_item', '', 0) ; 
INSERT INTO `wp_posts` VALUES (156, 1, '2014-07-14 04:43:14', '2014-07-14 04:43:14', '', 'Save the Date', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-07-14 04:43:14', '2014-07-14 04:43:14', '', 47, 'http://localhost/edin-carpenter/47-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (157, 1, '2014-07-14 05:27:57', '2014-07-14 05:27:57', '', 'Another Slide', '', 'trash', 'open', 'open', '', 'another-slide', '', '', '2014-07-14 05:28:20', '2014-07-14 05:28:20', '', 0, 'http://localhost/edin-carpenter/?post_type=slide&#038;p=157', 0, 'slide', '', 0) ; 
INSERT INTO `wp_posts` VALUES (158, 1, '2014-07-14 05:27:57', '2014-07-14 05:27:57', '', 'Another Slide', '', 'inherit', 'open', 'open', '', '157-revision-v1', '', '', '2014-07-14 05:27:57', '2014-07-14 05:27:57', '', 157, 'http://localhost/edin-carpenter/157-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (159, 1, '2014-07-14 05:28:46', '2014-07-14 05:28:46', '', 'This is an image', '', 'publish', 'open', 'open', '', 'this-is-an-image', '', '', '2014-07-14 05:28:46', '2014-07-14 05:28:46', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=159', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (160, 1, '2014-07-14 05:28:46', '2014-07-14 05:28:46', '', 'This is an image', '', 'inherit', 'open', 'open', '', '159-revision-v1', '', '', '2014-07-14 05:28:46', '2014-07-14 05:28:46', '', 159, 'http://localhost/edin-carpenter/159-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (161, 1, '2014-07-14 05:47:32', '2014-07-14 05:47:32', '', 'Save the Date', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-07-14 05:47:32', '2014-07-14 05:47:32', '', 47, 'http://localhost/edin-carpenter/47-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (164, 1, '2014-07-31 01:08:52', '2014-07-31 01:08:52', '', 'Work', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2014-07-31 01:08:52', '2014-07-31 01:08:52', '', 30, 'http://localhost/edin-carpenter/30-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (165, 1, '2014-07-31 01:31:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-07-31 01:31:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?post_type=slide&p=165', 0, 'slide', '', 0) ; 
INSERT INTO `wp_posts` VALUES (166, 1, '2014-07-31 01:32:36', '2014-07-31 01:32:36', '', 'Test with Gary Platt', '', 'publish', 'open', 'open', '', 'test-with-gary-platt', '', '', '2014-07-31 01:32:36', '2014-07-31 01:32:36', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&#038;p=166', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (167, 1, '2014-07-31 01:32:26', '2014-07-31 01:32:26', '', 'baby-floor-edited', '', 'inherit', 'open', 'open', '', 'baby-floor-edited', '', '', '2014-07-31 01:32:26', '2014-07-31 01:32:26', '', 166, 'http://localhost/edin-carpenter/wp-content/uploads/2014/07/baby-floor-edited.jpg', 0, 'attachment', 'image/jpeg', 0) ; 
INSERT INTO `wp_posts` VALUES (168, 1, '2014-07-31 01:32:36', '2014-07-31 01:32:36', '', 'Test with Gary Platt', '', 'inherit', 'open', 'open', '', '166-revision-v1', '', '', '2014-07-31 01:32:36', '2014-07-31 01:32:36', '', 166, 'http://localhost/edin-carpenter/166-revision-v1/', 0, 'revision', '', 0) ; 
INSERT INTO `wp_posts` VALUES (169, 1, '2014-08-01 02:11:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-08-01 02:11:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?post_type=gallery&p=169', 0, 'gallery', '', 0) ; 
INSERT INTO `wp_posts` VALUES (170, 1, '2014-08-05 02:54:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-08-05 02:54:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/edin-carpenter/?p=170', 0, 'post', '', 0) ;
#
# End of data contents of table wp_posts
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_relationships`
# --------------------------------------------------------


#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_term_relationships (32 records)
#
 
INSERT INTO `wp_term_relationships` VALUES (1, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (6, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (8, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (15, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (20, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (21, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (23, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (25, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (26, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (27, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (38, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (39, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (40, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (41, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (42, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (49, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (53, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (54, 3, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (57, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (58, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (59, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (60, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (62, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (63, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (66, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (128, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (135, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (136, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (142, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (146, 1, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (154, 2, 0) ; 
INSERT INTO `wp_term_relationships` VALUES (155, 3, 0) ;
#
# End of data contents of table wp_term_relationships
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_relationships`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_taxonomy`
# --------------------------------------------------------


#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_term_taxonomy (3 records)
#
 
INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 8) ; 
INSERT INTO `wp_term_taxonomy` VALUES (2, 2, 'nav_menu', '', 0, 11) ; 
INSERT INTO `wp_term_taxonomy` VALUES (3, 3, 'nav_menu', '', 0, 12) ;
#
# End of data contents of table wp_term_taxonomy
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_relationships`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_taxonomy`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_terms`
# --------------------------------------------------------


#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_terms (3 records)
#
 
INSERT INTO `wp_terms` VALUES (1, 'General', 'general', 0) ; 
INSERT INTO `wp_terms` VALUES (2, 'Header Nav', 'header-nav', 0) ; 
INSERT INTO `wp_terms` VALUES (3, 'Footer Nav', 'footer-nav', 0) ;
#
# End of data contents of table wp_terms
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_relationships`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_taxonomy`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_terms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_usermeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_usermeta (24 records)
#
 
INSERT INTO `wp_usermeta` VALUES (1, 1, 'first_name', '') ; 
INSERT INTO `wp_usermeta` VALUES (2, 1, 'last_name', '') ; 
INSERT INTO `wp_usermeta` VALUES (3, 1, 'nickname', 'wehatenick') ; 
INSERT INTO `wp_usermeta` VALUES (4, 1, 'description', '') ; 
INSERT INTO `wp_usermeta` VALUES (5, 1, 'rich_editing', 'true') ; 
INSERT INTO `wp_usermeta` VALUES (6, 1, 'comment_shortcuts', 'false') ; 
INSERT INTO `wp_usermeta` VALUES (7, 1, 'admin_color', 'fresh') ; 
INSERT INTO `wp_usermeta` VALUES (8, 1, 'use_ssl', '0') ; 
INSERT INTO `wp_usermeta` VALUES (9, 1, 'show_admin_bar_front', 'true') ; 
INSERT INTO `wp_usermeta` VALUES (10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}') ; 
INSERT INTO `wp_usermeta` VALUES (11, 1, 'wp_user_level', '10') ; 
INSERT INTO `wp_usermeta` VALUES (12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets') ; 
INSERT INTO `wp_usermeta` VALUES (13, 1, 'show_welcome_panel', '1') ; 
INSERT INTO `wp_usermeta` VALUES (14, 1, 'wp_dashboard_quick_press_last_post_id', '170') ; 
INSERT INTO `wp_usermeta` VALUES (15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}') ; 
INSERT INTO `wp_usermeta` VALUES (16, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}') ; 
INSERT INTO `wp_usermeta` VALUES (17, 1, 'nav_menu_recently_edited', '3') ; 
INSERT INTO `wp_usermeta` VALUES (18, 1, 'wp_user-settings', 'hidetb=1&libraryContent=upload') ; 
INSERT INTO `wp_usermeta` VALUES (19, 1, 'wp_user-settings-time', '1406859100') ; 
INSERT INTO `wp_usermeta` VALUES (20, 1, 'closedpostboxes_gallery', 'a:0:{}') ; 
INSERT INTO `wp_usermeta` VALUES (21, 1, 'metaboxhidden_gallery', 'a:13:{i:0;s:6:"acf_97";i:1;s:7:"acf_110";i:2;s:6:"acf_94";i:3;s:6:"acf_73";i:4;s:6:"acf_84";i:5;s:12:"revisionsdiv";i:6;s:11:"postexcerpt";i:7;s:13:"trackbacksdiv";i:8;s:10:"postcustom";i:9;s:16:"commentstatusdiv";i:10;s:11:"commentsdiv";i:11;s:7:"slugdiv";i:12;s:9:"authordiv";}') ; 
INSERT INTO `wp_usermeta` VALUES (22, 1, 'closedpostboxes_post', 'a:1:{i:0;s:11:"categorydiv";}') ; 
INSERT INTO `wp_usermeta` VALUES (23, 1, 'metaboxhidden_post', 'a:14:{i:0;s:7:"acf_127";i:1;s:7:"acf_110";i:2;s:6:"acf_94";i:3;s:16:"tagsdiv-post_tag";i:4;s:6:"acf_73";i:5;s:6:"acf_84";i:6;s:12:"revisionsdiv";i:7;s:11:"postexcerpt";i:8;s:13:"trackbacksdiv";i:9;s:10:"postcustom";i:10;s:16:"commentstatusdiv";i:11;s:11:"commentsdiv";i:12;s:7:"slugdiv";i:13;s:9:"authordiv";}') ; 
INSERT INTO `wp_usermeta` VALUES (24, 1, 'wp_booking_win_wpbc-panel-get-started', '1') ;
#
# End of data contents of table wp_usermeta
# --------------------------------------------------------

# WordPress : http://localhost/edin-carpenter MySQL database backup
#
# Generated: Tuesday 5. August 2014 04:56 UTC
# Hostname: localhost
# Database: `edin-carpenter`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_booking`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_bookingdates`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_relationships`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_term_taxonomy`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_terms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_usermeta`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_users`
# --------------------------------------------------------


#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Data contents of table wp_users (1 records)
#
 
INSERT INTO `wp_users` VALUES (1, 'wehatenick', '$P$BX0rdEA7nMYn1zwEzpnGQ8AhkksbdS.', 'wehatenick', 'nick@wehatenick.com', '', '2014-06-28 06:30:33', '', 0, 'wehatenick') ;
#
# End of data contents of table wp_users
# --------------------------------------------------------

