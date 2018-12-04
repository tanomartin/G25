-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2018 a las 23:54:20
-- Versión del servidor: 5.7.17
-- Versión de PHP: 5.6.30

SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `g25`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_commentmeta`
--

CREATE TABLE `g25_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_comments`
--

CREATE TABLE `g25_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_links`
--

CREATE TABLE `g25_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_options`
--

CREATE TABLE `g25_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ;

--
-- Volcado de datos para la tabla `g25_options`
--

INSERT INTO `g25_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/G25', 'yes'),
(2, 'home', 'http://localhost/G25', 'yes'),
(3, 'blogname', 'G25', 'yes'),
(4, 'blogdescription', 'Sitio G25', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tanomartin05@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(562, 'events_categories_children', 'a:0:{}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:41:\"add-search-to-menu/add-search-to-menu.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:37:\"post-types-order/post-types-order.php\";i:3;s:43:\"the-events-calendar/the-events-calendar.php\";i:4;s:41:\"wordpress-importer/wordpress-importer.php\";i:5;s:27:\"wp-optimize/wp-optimize.php\";i:6;s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:92:\"C:\\Program Files\\EasyPHP-DevServer-14.1VC9\\data\\localweb\\G25/wp-content/themes/g25/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'g25', 'yes'),
(41, 'stylesheet', 'g25', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"wp-optimize/wp-optimize.php\";s:21:\"wpo_uninstall_actions\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'g25_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:125:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:24:\"manage_events_categories\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:80:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:24:\"manage_events_categories\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:36:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:24:\"manage_events_categories\";b:1;s:17:\"edit_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:13:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:17:\"edit_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:17:\"g25_administrador\";a:2:{s:4:\"name\";s:17:\"G25 Administrador\";s:12:\"capabilities\";a:63:{s:4:\"read\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:18:\"read_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:17:\"manage_categories\";b:1;s:12:\"upload_files\";b:1;s:17:\"unfiltered_upload\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:13:\"publish_pages\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_theme_options\";b:1;s:20:\"publish_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:20:\"publish_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:25:\"read_private_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:26:\"publish_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;}}}', 'yes'),
(584, 'rewrite_rules', 'a:261:{s:28:\"event-aggregator/(insert)/?$\";s:53:\"index.php?tribe-aggregator=1&tribe-action=$matches[1]\";s:26:\"(?:agenda)/([^/]+)/ical/?$\";s:56:\"index.php?ical=1&name=$matches[1]&post_type=tribe_events\";s:35:\"(?:agenda)/(?:page|pagina)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:58:\"(?:agenda)/(?:featured|destacado)/(?:page|pagina)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&paged=$matches[1]\";s:38:\"(?:agenda)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]\";s:61:\"(?:agenda)/(?:featured|destacado)/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&feed=$matches[1]\";s:27:\"(?:agenda)/(?:month|mes)/?$\";s:51:\"index.php?post_type=tribe_events&eventDisplay=month\";s:50:\"(?:agenda)/(?:month|mes)/(?:featured|destacado)/?$\";s:62:\"index.php?post_type=tribe_events&eventDisplay=month&featured=1\";s:41:\"(?:agenda)/(?:month|mes)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:50:\"(?:agenda)/(?:list|lista)/(?:page|pagina)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:73:\"(?:agenda)/(?:list|lista)/(?:featured|destacado)/(?:page|pagina)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1&paged=$matches[1]\";s:28:\"(?:agenda)/(?:list|lista)/?$\";s:50:\"index.php?post_type=tribe_events&eventDisplay=list\";s:51:\"(?:agenda)/(?:list|lista)/(?:featured|destacado)/?$\";s:61:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1\";s:27:\"(?:agenda)/(?:today|hoy)/?$\";s:49:\"index.php?post_type=tribe_events&eventDisplay=day\";s:50:\"(?:agenda)/(?:today|hoy)/(?:featured|destacado)/?$\";s:60:\"index.php?post_type=tribe_events&eventDisplay=day&featured=1\";s:27:\"(?:agenda)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:50:\"(?:agenda)/(\\d{4}-\\d{2})/(?:featured|destacado)/?$\";s:84:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]&featured=1\";s:33:\"(?:agenda)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]\";s:56:\"(?:agenda)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|destacado)/?$\";s:82:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:36:\"(?:agenda)/(?:featured|destacado)/?$\";s:43:\"index.php?post_type=tribe_events&featured=1\";s:13:\"(?:agenda)/?$\";s:53:\"index.php?post_type=tribe_events&eventDisplay=default\";s:18:\"(?:agenda)/ical/?$\";s:39:\"index.php?post_type=tribe_events&ical=1\";s:41:\"(?:agenda)/(?:featured|destacado)/ical/?$\";s:50:\"index.php?post_type=tribe_events&ical=1&featured=1\";s:38:\"(?:agenda)/(\\d{4}-\\d{2}-\\d{2})/ical/?$\";s:78:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]\";s:47:\"(?:agenda)/(\\d{4}-\\d{2}-\\d{2})/ical/featured/?$\";s:89:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:77:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:page|pagina)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:100:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:featured|destacado)/(?:page|pagina)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:69:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:month|mes)/?$\";s:80:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month\";s:92:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:month|mes)/(?:featured|destacado)/?$\";s:91:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&featured=1\";s:92:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:list|lista)/(?:page|pagina)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:115:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:list|lista)/(?:featured|destacado)/(?:page|pagina)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:70:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:list|lista)/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list\";s:93:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:list|lista)/(?:featured|destacado)/?$\";s:90:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1\";s:69:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:today|hoy)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day\";s:92:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:today|hoy)/(?:featured|destacado)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&featured=1\";s:87:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:day|dia)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:110:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:day|dia)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|destacado)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:69:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$\";s:102:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:92:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/(?:featured|destacado)/?$\";s:113:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:75:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:98:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|destacado)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:60:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/feed/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2\";s:83:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:featured|destacado)/feed/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&feed=rss2\";s:60:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/ical/?$\";s:68:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1\";s:83:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:featured|destacado)/ical/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&ical=1\";s:85:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]\";s:108:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:featured|destacado)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&feed=$matches[2]\";s:78:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/(?:featured|destacado)/?$\";s:93:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=default\";s:55:\"(?:agenda)/(?:category|categoria)/(?:[^/]+/)*([^/]+)/?$\";s:82:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=default\";s:60:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:page|pagina)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:83:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:featured|destacado)/(?:page|pagina)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:52:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:month|mes)/?$\";s:67:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month\";s:75:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:month|mes)/(?:featured|destacado)/?$\";s:78:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&featured=1\";s:75:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:list|lista)/(?:page|pagina)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:98:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:list|lista)/(?:featured|destacado)/(?:page|pagina)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:53:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:list|lista)/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list\";s:76:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:list|lista)/(?:featured|destacado)/?$\";s:77:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1\";s:52:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:today|hoy)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day\";s:75:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:today|hoy)/(?:featured|destacado)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&featured=1\";s:70:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:day|dia)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:93:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:day|dia)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|destacado)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:52:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(\\d{4}-\\d{2})/?$\";s:89:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:75:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(\\d{4}-\\d{2})/(?:featured|destacado)/?$\";s:100:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:58:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:81:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured|destacado)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:43:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/feed/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2\";s:66:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:featured|destacado)/feed/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2&featured=1\";s:43:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/ical/?$\";s:55:\"index.php?post_type=tribe_events&tag=$matches[1]&ical=1\";s:66:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:featured|destacado)/ical/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&ical=1\";s:68:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]\";s:91:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:featured|destacado)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&feed=$matches[2]\";s:61:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/(?:featured|destacado)/?$\";s:59:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1\";s:38:\"(?:agenda)/(?:tag|etiqueta)/([^/]+)/?$\";s:69:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=default\";s:12:\"comunidad/?$\";s:29:\"index.php?post_type=comunidad\";s:42:\"comunidad/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=comunidad&feed=$matches[1]\";s:37:\"comunidad/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=comunidad&feed=$matches[1]\";s:29:\"comunidad/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=comunidad&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"agenda/?$\";s:32:\"index.php?post_type=tribe_events\";s:39:\"agenda/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:34:\"agenda/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:26:\"agenda/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=tribe_events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"comunidad/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"comunidad/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"comunidad/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"comunidad/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"comunidad/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"comunidad/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"comunidad/([^/]+)/embed/?$\";s:42:\"index.php?comunidad=$matches[1]&embed=true\";s:30:\"comunidad/([^/]+)/trackback/?$\";s:36:\"index.php?comunidad=$matches[1]&tb=1\";s:50:\"comunidad/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?comunidad=$matches[1]&feed=$matches[2]\";s:45:\"comunidad/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?comunidad=$matches[1]&feed=$matches[2]\";s:38:\"comunidad/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?comunidad=$matches[1]&paged=$matches[2]\";s:45:\"comunidad/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?comunidad=$matches[1]&cpage=$matches[2]\";s:34:\"comunidad/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?comunidad=$matches[1]&page=$matches[2]\";s:26:\"comunidad/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"comunidad/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"comunidad/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"comunidad/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"comunidad/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"comunidad/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"lugar/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"lugar/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"lugar/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"lugar/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"lugar/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"lugar/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"lugar/([^/]+)/embed/?$\";s:44:\"index.php?tribe_venue=$matches[1]&embed=true\";s:26:\"lugar/([^/]+)/trackback/?$\";s:38:\"index.php?tribe_venue=$matches[1]&tb=1\";s:34:\"lugar/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&paged=$matches[2]\";s:41:\"lugar/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&cpage=$matches[2]\";s:30:\"lugar/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?tribe_venue=$matches[1]&page=$matches[2]\";s:22:\"lugar/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"lugar/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"lugar/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"lugar/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"lugar/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"lugar/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"organizador/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"organizador/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"organizador/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"organizador/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"organizador/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"organizador/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"organizador/([^/]+)/embed/?$\";s:48:\"index.php?tribe_organizer=$matches[1]&embed=true\";s:32:\"organizador/([^/]+)/trackback/?$\";s:42:\"index.php?tribe_organizer=$matches[1]&tb=1\";s:40:\"organizador/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&paged=$matches[2]\";s:47:\"organizador/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]\";s:36:\"organizador/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?tribe_organizer=$matches[1]&page=$matches[2]\";s:28:\"organizador/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"organizador/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"organizador/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"organizador/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"organizador/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"organizador/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"agenda/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"agenda/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"agenda/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"agenda/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"agenda/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"agenda/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"agenda/([^/]+)/embed/?$\";s:45:\"index.php?tribe_events=$matches[1]&embed=true\";s:27:\"agenda/([^/]+)/trackback/?$\";s:39:\"index.php?tribe_events=$matches[1]&tb=1\";s:47:\"agenda/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:42:\"agenda/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:35:\"agenda/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&paged=$matches[2]\";s:42:\"agenda/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&cpage=$matches[2]\";s:31:\"agenda/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?tribe_events=$matches[1]&page=$matches[2]\";s:23:\"agenda/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"agenda/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"agenda/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"agenda/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"agenda/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"agenda/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"agenda/categoria/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:50:\"agenda/categoria/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:31:\"agenda/categoria/(.+?)/embed/?$\";s:49:\"index.php?tribe_events_cat=$matches[1]&embed=true\";s:43:\"agenda/categoria/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]\";s:25:\"agenda/categoria/(.+?)/?$\";s:38:\"index.php?tribe_events_cat=$matches[1]\";s:41:\"deleted_event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"deleted_event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"deleted_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"deleted_event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"deleted_event/([^/]+)/embed/?$\";s:46:\"index.php?deleted_event=$matches[1]&embed=true\";s:34:\"deleted_event/([^/]+)/trackback/?$\";s:40:\"index.php?deleted_event=$matches[1]&tb=1\";s:42:\"deleted_event/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&paged=$matches[2]\";s:49:\"deleted_event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&cpage=$matches[2]\";s:38:\"deleted_event/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?deleted_event=$matches[1]&page=$matches[2]\";s:30:\"deleted_event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"deleted_event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"deleted_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"deleted_event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `g25_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(112, 'cron', 'a:8:{i:1543961142;a:1:{s:39:\"tribe_aggregator_process_insert_records\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:17:\"tribe-every15mins\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1543962171;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543972971;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543977207;a:1:{s:21:\"wpo_plugin_cron_tasks\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544016196;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544017120;a:1:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544019513;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539007324;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(147, 'fs_debug_mode', '', 'yes'),
(148, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:2086;a:3:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:11:\"plugin_data\";a:1:{s:18:\"add-search-to-menu\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}s:17:\"install_timestamp\";i:1539005545;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";s:5:\"4.1.3\";s:14:\"plugin_version\";s:5:\"4.1.4\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1539005545;s:7:\"version\";s:5:\"4.1.2\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1539005558;s:7:\"version\";s:5:\"4.1.2\";}s:30:\"affiliate_program_notice_shown\";i:1543930889;}}s:13:\"file_slug_map\";a:1:{s:41:\"add-search-to-menu/add-search-to-menu.php\";s:18:\"add-search-to-menu\";}s:7:\"plugins\";a:1:{s:18:\"add-search-to-menu\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"Ivory Search\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:7:\"version\";s:5:\"4.1.4\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_e05b040b84ff5014d0f0955127743\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2086\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}s:9:\"unique_id\";s:32:\"5ae55e1071506e204917dda6c496e91f\";s:13:\"admin_notices\";a:1:{s:18:\"add-search-to-menu\";a:0:{}}}', 'yes'),
(1099, '_site_transient_timeout_theme_roots', '1543947362', 'no'),
(1100, '_site_transient_theme_roots', 'a:1:{s:3:\"g25\";s:7:\"/themes\";}', 'no'),
(146, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"add-search-to-menu/includes/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.1.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1543959264;s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:7:\"abspath\";s:56:\"C:\\Program Files (x86)\\EasyPHP-Devserver-17\\eds-www\\G25/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:8:\"sdk_path\";s:36:\"add-search-to-menu/includes/freemius\";s:7:\"version\";s:5:\"2.1.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1543959264;}}', 'yes'),
(393, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(892, 'wp-optimize-schedule', 'false', 'yes'),
(893, 'wp-optimize-last-optimized', 'Never', 'yes'),
(894, 'wp-optimize-schedule-type', 'wpo_weekly', 'yes'),
(895, 'wp-optimize-retention-enabled', 'false', 'yes'),
(896, 'wp-optimize-retention-period', '2', 'yes'),
(897, 'wp-optimize-enable-admin-menu', 'false', 'yes'),
(898, 'wp-optimize-total-cleaned', '37753', 'yes'),
(899, 'wp-optimize-auto', 'a:7:{s:6:\"drafts\";s:4:\"true\";s:8:\"optimize\";s:5:\"false\";s:9:\"revisions\";s:4:\"true\";s:5:\"spams\";s:4:\"true\";s:9:\"transient\";s:5:\"false\";s:5:\"trash\";s:4:\"true\";s:10:\"unapproved\";s:5:\"false\";}', 'yes'),
(900, 'wp-optimize-settings', 'a:7:{s:11:\"user-drafts\";s:4:\"true\";s:13:\"user-optimize\";s:4:\"true\";s:14:\"user-revisions\";s:4:\"true\";s:10:\"user-spams\";s:4:\"true\";s:10:\"user-trash\";s:4:\"true\";s:15:\"user-unapproved\";s:4:\"true\";s:13:\"last_saved_in\";s:5:\"2.2.4\";}', 'yes'),
(901, 'wp-optimize-enable-auto-backup', 'false', 'yes'),
(902, 'wp-optimize-current-cleaned', '0', 'yes'),
(536, 'calendarjsupdated', '0', 'no'),
(537, 'jswidgetupdated', '0', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(676, 'new_admin_email', 'tanomartin05@gmail.com', 'yes'),
(149, 'fs_api_cache', 'a:1:{s:30:\"get:/v1/plugins/2086/info.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":14:{s:9:\"plugin_id\";s:4:\"2086\";s:3:\"url\";s:24:\"https://ivorysearch.com/\";s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";N;s:15:\"card_banner_url\";N;s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:3:\"254\";s:7:\"created\";s:19:\"2018-05-16 09:30:54\";s:7:\"updated\";s:19:\"2018-06-27 15:53:25\";s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/2086/icons/41754c5d23d11f794625602703d88539.jpg\";}s:7:\"created\";i:1539005550;s:9:\"timestamp\";i:1539610350;}}', 'yes'),
(150, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(153, 'widget_is_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'dismissed_update_core', 'a:2:{s:11:\"4.9.8|es_AR\";b:1;s:11:\"4.9.8|es_ES\";b:1;}', 'no'),
(166, 'ivory_search', 'a:12:{i:0;b:0;s:10:\"menu_style\";s:7:\"default\";s:10:\"menu_title\";s:0:\"\";s:12:\"menu_classes\";s:0:\"\";s:9:\"menu_gcse\";s:0:\"\";s:13:\"header_search\";s:1:\"0\";s:13:\"footer_search\";s:1:\"0\";s:18:\"header_menu_search\";s:18:\"header_menu_search\";s:10:\"custom_css\";s:0:\"\";s:9:\"stopwords\";s:0:\"\";s:8:\"synonyms\";s:0:\"\";s:21:\"dismiss_admin_notices\";i:1;}', 'yes'),
(516, 'category_children', 'a:1:{i:2;a:2:{i:0;i:7;i:1;i:8;}}', 'yes'),
(160, 'tribe_events_calendar_options', 'a:44:{s:14:\"schema-version\";s:7:\"4.7.0.1\";s:27:\"recurring_events_are_hidden\";s:6:\"hidden\";s:21:\"previous_ecp_versions\";a:4:{i:0;s:1:\"0\";i:1;s:6:\"4.6.24\";i:2;s:8:\"4.6.24.1\";i:3;s:6:\"4.6.25\";}s:18:\"latest_ecp_version\";s:7:\"4.7.0.1\";s:39:\"last-update-message-the-events-calendar\";s:6:\"4.6.25\";s:24:\"front_page_event_archive\";b:0;s:16:\"stylesheetOption\";s:5:\"tribe\";s:19:\"tribeEventsTemplate\";s:0:\"\";s:16:\"tribeEnableViews\";a:1:{i:0;s:4:\"list\";}s:10:\"viewOption\";s:4:\"list\";s:20:\"tribeDisableTribeBar\";b:0;s:16:\"monthEventAmount\";s:1:\"3\";s:23:\"enable_month_view_cache\";b:1;s:18:\"dateWithYearFormat\";s:6:\"j F, Y\";s:21:\"dateWithoutYearFormat\";s:3:\"M j\";s:18:\"monthAndYearFormat\";s:3:\"F Y\";s:17:\"dateTimeSeparator\";s:3:\" @ \";s:18:\"timeRangeSeparator\";s:3:\" - \";s:16:\"datepickerFormat\";s:1:\"8\";s:21:\"tribeEventsBeforeHTML\";s:0:\"\";s:20:\"tribeEventsAfterHTML\";s:0:\"\";s:13:\"earliest_date\";s:19:\"2018-10-27 00:00:00\";s:21:\"earliest_date_markers\";a:1:{i:0;s:3:\"183\";}s:11:\"latest_date\";s:19:\"2018-12-31 14:30:00\";s:19:\"latest_date_markers\";a:1:{i:0;s:3:\"202\";}s:11:\"donate-link\";b:0;s:12:\"postsPerPage\";s:1:\"6\";s:17:\"liveFiltersUpdate\";b:1;s:12:\"showComments\";b:0;s:29:\"disable_metabox_custom_fields\";b:1;s:20:\"showEventsInMainLoop\";b:0;s:10:\"eventsSlug\";s:6:\"agenda\";s:15:\"singleEventSlug\";s:6:\"agenda\";s:14:\"multiDayCutoff\";s:5:\"00:00\";s:21:\"defaultCurrencySymbol\";s:1:\"$\";s:23:\"reverseCurrencyPosition\";b:0;s:17:\"trash-past-events\";s:0:\"\";s:18:\"delete-past-events\";s:0:\"\";s:15:\"embedGoogleMaps\";b:1;s:19:\"embedGoogleMapsZoom\";s:2:\"10\";s:11:\"debugEvents\";b:0;s:26:\"tribe_events_timezone_mode\";s:5:\"event\";s:32:\"tribe_events_timezones_show_zone\";b:0;s:22:\"google_maps_js_api_key\";s:39:\"AIzaSyDNsicAsP6-VuGtAb1O9riI3oc_NOb7IOU\";}', 'yes'),
(161, 'widget_tribe-events-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'tribe_last_save_post', '1543945479', 'yes'),
(177, 'theme_mods_g25', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:10;s:6:\"footer\";i:21;}}', 'yes'),
(179, 'current_theme', 'G25', 'yes'),
(180, 'theme_switched', '', 'yes'),
(317, 'acf_version', '5.7.7', 'yes'),
(1073, '_transient_tribe_supports_async_process', '1', 'no'),
(1075, '_transient_timeout_plugin_slugs', '1544045840', 'no'),
(1076, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:41:\"add-search-to-menu/add-search-to-menu.php\";i:2;s:37:\"post-types-order/post-types-order.php\";i:3;s:43:\"the-events-calendar/the-events-calendar.php\";i:4;s:41:\"wordpress-importer/wordpress-importer.php\";i:5;s:27:\"wp-optimize/wp-optimize.php\";i:6;s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";}', 'no'),
(1068, '_transient_timeout_tribe_feature_detection', '1544535986', 'no'),
(1069, '_transient_tribe_feature_detection', 'a:1:{s:22:\"supports_async_process\";b:0;}', 'no'),
(1095, 'wp-optimize-dismiss_dash_notice_until', '1575567771', 'yes'),
(1101, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543959439;s:8:\"response\";a:0:{}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"post-types-order\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:7:\"1.9.3.9\";s:7:\"updated\";s:19:\"2018-05-01 18:45:59\";s:7:\"package\";s:84:\"http://downloads.wordpress.org/translation/plugin/post-types-order/1.9.3.9/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"the-events-calendar\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:7:\"4.7.0.1\";s:7:\"updated\";s:19:\"2018-11-30 12:56:10\";s:7:\"package\";s:87:\"http://downloads.wordpress.org/translation/plugin/the-events-calendar/4.7.0.1/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"0.6.4\";s:7:\"updated\";s:19:\"2018-12-02 18:06:31\";s:7:\"package\";s:84:\"http://downloads.wordpress.org/translation/plugin/wordpress-importer/0.6.4/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"wp-optimize\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"2.2.6\";s:7:\"updated\";s:19:\"2018-10-30 18:49:26\";s:7:\"package\";s:77:\"http://downloads.wordpress.org/translation/plugin/wp-optimize/2.2.6/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"add-search-to-menu/add-search-to-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/add-search-to-menu\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:6:\"plugin\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/add-search-to-menu/\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/plugin/add-search-to-menu.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-256x256.jpg?rev=1920729\";s:2:\"1x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-128x128.jpg?rev=1920729\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/add-search-to-menu/assets/banner-1544x500.jpg?rev=1920729\";s:2:\"1x\";s:73:\"https://ps.w.org/add-search-to-menu/assets/banner-772x250.jpg?rev=1920729\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.3.9\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/plugin/post-types-order.1.9.3.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"the-events-calendar/the-events-calendar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/the-events-calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:6:\"plugin\";s:43:\"the-events-calendar/the-events-calendar.php\";s:11:\"new_version\";s:7:\"4.7.0.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/the-events-calendar/\";s:7:\"package\";s:69:\"http://downloads.wordpress.org/plugin/the-events-calendar.4.7.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-256x256.png?rev=1679210\";s:2:\"1x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-128x128.png?rev=1679210\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/the-events-calendar/assets/banner-1544x500.png?rev=1907269\";s:2:\"1x\";s:74:\"https://ps.w.org/the-events-calendar/assets/banner-772x250.png?rev=1907269\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-optimize/wp-optimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-optimize\";s:4:\"slug\";s:11:\"wp-optimize\";s:6:\"plugin\";s:27:\"wp-optimize/wp-optimize.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-optimize/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/wp-optimize.2.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/wp-optimize/assets/icon-256x256.png?rev=1552899\";s:2:\"1x\";s:64:\"https://ps.w.org/wp-optimize/assets/icon-128x128.png?rev=1552899\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-optimize/assets/banner-1544x500.png?rev=1842684\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-optimize/assets/banner-772x250.png?rev=1842684\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/wpfront-user-role-editor\";s:4:\"slug\";s:24:\"wpfront-user-role-editor\";s:6:\"plugin\";s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";s:11:\"new_version\";s:6:\"2.14.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wpfront-user-role-editor/\";s:7:\"package\";s:73:\"http://downloads.wordpress.org/plugin/wpfront-user-role-editor.2.14.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/wpfront-user-role-editor/assets/icon-256x256.png?rev=1022726\";s:2:\"1x\";s:69:\"https://ps.w.org/wpfront-user-role-editor/assets/icon.svg?rev=1022723\";s:3:\"svg\";s:69:\"https://ps.w.org/wpfront-user-role-editor/assets/icon.svg?rev=1022723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/wpfront-user-role-editor/assets/banner-772x250.png?rev=875133\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1102, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:6:{s:4:\"post\";s:4:\"hide\";s:10:\"attachment\";s:4:\"hide\";s:9:\"comunidad\";s:4:\"show\";s:11:\"tribe_venue\";s:4:\"hide\";s:15:\"tribe_organizer\";s:4:\"hide\";s:12:\"tribe_events\";s:4:\"hide\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:13:\"publish_pages\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(1103, 'CPT_configured', 'TRUE', 'yes'),
(1096, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1543956323', 'no'),
(1097, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4528;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3153;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2602;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2462;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1891;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1698;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1690;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1460;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1411;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1411;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1410;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1343;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1265;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1123;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1081;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1065;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1044;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:954;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:906;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:838;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:823;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:813;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:744;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:716;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:706;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:700;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:698;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:673;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:671;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:670;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:652;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:647;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:629;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:629;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:620;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:611;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:608;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:602;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:574;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:558;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:550;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:549;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:540;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:539;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:528;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:520;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:519;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:514;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:512;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:505;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:496;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:490;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:490;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:468;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:465;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:461;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:454;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:450;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:446;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:440;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:427;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:427;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:417;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:412;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:398;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:388;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:380;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:372;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:372;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:372;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:371;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:370;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:356;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:355;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:355;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:353;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:346;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:343;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:341;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:338;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:336;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:333;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:316;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:315;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:314;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:311;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:311;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:306;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:306;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:305;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:305;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:304;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}}', 'no'),
(1072, '_transient_timeout_tribe_supports_async_process', '1543934787', 'no'),
(1059, '_site_transient_timeout_browser_522e45e00ca34a7f2ac8b3ddd58be187', '1544535700', 'no'),
(1060, '_site_transient_browser_522e45e00ca34a7f2ac8b3ddd58be187', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1061, '_transient_timeout_tribe_aggregator_services_list', '1544017300', 'no'),
(1062, '_transient_tribe_aggregator_services_list', 'a:1:{s:6:\"origin\";a:1:{i:0;O:8:\"stdClass\":2:{s:2:\"id\";s:3:\"csv\";s:4:\"name\";s:11:\"Archivo CSV\";}}}', 'no'),
(413, 'geografico_children', 'a:0:{}', 'yes'),
(833, 'tribe_events_cat_children', 'a:0:{}', 'yes'),
(884, 'wpfront-user-role-editor-db-version', '2.14.1', 'yes'),
(952, 'wp-optimize-corrupted-tables-count', '0', 'yes'),
(1053, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543945561;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-27 22:08:38\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(1054, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543945563;s:7:\"checked\";a:1:{s:3:\"g25\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1112, '_site_transient_timeout_browser_54f587746181ab7a3934401875df1515', '1544564214', 'no'),
(1113, '_site_transient_browser_54f587746181ab7a3934401875df1515', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_postmeta`
--

CREATE TABLE `g25_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

--
-- Volcado de datos para la tabla `g25_postmeta`
--

INSERT INTO `g25_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(900, 196, '_tribe_modified_fields', 'a:17:{s:12:\"_EventOrigin\";i:1540384418;s:10:\"_edit_last\";i:1540384435;s:10:\"post_title\";i:1540384435;s:11:\"post_status\";i:1540384440;s:17:\"_EventShowMapLink\";i:1540384440;s:13:\"_EventShowMap\";i:1540384440;s:12:\"_EventAllDay\";i:1540384440;s:15:\"_EventStartDate\";i:1540384440;s:13:\"_EventEndDate\";i:1540384440;s:18:\"_EventStartDateUTC\";i:1540384440;s:16:\"_EventEndDateUTC\";i:1540384440;s:20:\"_EventCurrencySymbol\";i:1540384440;s:22:\"_EventCurrencyPosition\";i:1540384440;s:10:\"_EventCost\";i:1540384440;s:9:\"_EventURL\";i:1540384440;s:14:\"_EventTimezone\";i:1540384440;s:18:\"_EventTimezoneAbbr\";i:1540384440;}'),
(897, 194, '_EventTimezone', 'UTC-3'),
(5, 6, '_is_includes', 'a:9:{s:9:\"post_type\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:12:\"post_type_qs\";s:4:\"none\";s:13:\"tax_post_type\";a:2:{s:8:\"category\";s:4:\"post\";s:8:\"post_tag\";s:17:\"post,tribe_events\";}s:7:\"tax_rel\";s:3:\"AND\";s:10:\"date_query\";a:2:{s:5:\"after\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}s:6:\"before\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}}s:12:\"has_password\";s:4:\"null\";}'),
(6, 6, '_is_excludes', 'a:0:{}'),
(7, 6, '_is_settings', 'a:4:{s:14:\"posts_per_page\";s:2:\"10\";s:15:\"highlight_color\";s:7:\"#FFFFB9\";s:11:\"fuzzy_match\";s:1:\"2\";s:7:\"disable\";s:1:\"1\";}'),
(8, 6, '_is_locale', 'en_US'),
(36, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 17, '_wp_attached_file', '2018/10/thumb2.png'),
(903, 197, '_EventShowMapLink', '1'),
(904, 197, '_EventShowMap', '1'),
(902, 196, '_edit_lock', '1540395114:1'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1543960293:1'),
(19, 10, 'bajada', 'Pequeña descripción de la noticia en una o dos lineas'),
(22, 12, '_wp_attached_file', '2018/10/thumb1.png'),
(23, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 16, '_edit_lock', '1539108595:1'),
(33, 16, '_edit_last', '1'),
(28, 10, '_thumbnail_id', '12'),
(37, 16, 'bajada', 'Pequeña descripcion de la noticia en una o dos lineas'),
(38, 16, '_thumbnail_id', '17'),
(45, 28, '_is_includes', 'a:13:{s:9:\"post_type\";a:1:{s:4:\"post\";s:4:\"post\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:12:\"post_type_qs\";s:4:\"none\";s:13:\"tax_post_type\";a:2:{s:8:\"category\";s:4:\"post\";s:8:\"post_tag\";s:17:\"post,tribe_events\";}s:9:\"tax_query\";a:1:{s:8:\"category\";a:1:{i:0;s:1:\"2\";}}s:7:\"tax_rel\";s:2:\"OR\";s:16:\"search_tax_title\";s:1:\"1\";s:15:\"search_tax_desp\";s:1:\"1\";s:12:\"custom_field\";a:1:{i:0;s:6:\"bajada\";}s:10:\"date_query\";a:2:{s:5:\"after\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}s:6:\"before\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}}s:12:\"has_password\";s:4:\"null\";}'),
(46, 28, '_is_excludes', 'a:0:{}'),
(47, 28, '_is_settings', 'a:3:{s:14:\"posts_per_page\";s:1:\"6\";s:15:\"highlight_color\";s:7:\"#FFFFB9\";s:11:\"fuzzy_match\";s:1:\"2\";}'),
(48, 28, '_is_locale', 'en_US'),
(49, 29, '_edit_last', '1'),
(50, 29, '_edit_lock', '1540395078:1'),
(51, 30, '_wp_attached_file', '2018/10/thumb3.png'),
(52, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 29, '_thumbnail_id', '30'),
(56, 29, 'bajada', 'Bajada de nota 3'),
(60, 32, '_edit_lock', '1539108622:1'),
(59, 32, '_edit_last', '1'),
(61, 33, '_wp_attached_file', '2018/10/thumb4.png'),
(62, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 32, 'bajada', 'bajada nota 4'),
(64, 32, '_thumbnail_id', '33'),
(68, 35, '_edit_lock', '1539098667:1'),
(67, 35, '_edit_last', '1'),
(69, 35, 'bajada', 'bajada nota que nose que poner'),
(75, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 38, '_wp_attached_file', '2018/10/thumb5.png'),
(76, 35, '_thumbnail_id', '38'),
(81, 40, '_wp_attached_file', '2018/10/thumb6.png'),
(79, 39, '_edit_last', '1'),
(80, 39, '_edit_lock', '1539098659:1'),
(82, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 39, '_thumbnail_id', '40'),
(88, 42, '_edit_last', '1'),
(89, 42, '_edit_lock', '1543945831:1'),
(1252, 240, '_edit_lock', '1541516343:1'),
(1253, 240, '_edit_last', '1'),
(1254, 242, '_wp_attached_file', '2018/11/FELIPE-MIGUEL-1.jpg'),
(1255, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:680;s:4:\"file\";s:27:\"2018/11/FELIPE-MIGUEL-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"FELIPE-MIGUEL-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"FELIPE-MIGUEL-1-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 42, '_thumbnail_id', '33'),
(161, 16, '_wp_old_date', '2018-10-08'),
(171, 73, '_edit_lock', '1539098009:1'),
(170, 73, '_edit_last', '1'),
(231, 42, 'facebook', '1'),
(176, 32, '_bajada', 'field_5bbcc58ba4c0f'),
(177, 32, 'facebook', '1'),
(178, 32, '_facebook', 'field_5bbcc5dda4c11'),
(179, 32, 'twitter', '0'),
(180, 32, '_twitter', 'field_5bbcc5efa4c12'),
(181, 32, 'whatsapp', '0'),
(182, 32, '_whatsapp', 'field_5bbcc5fca4c13'),
(183, 79, 'bajada', 'Bajada nota 4'),
(184, 79, '_bajada', 'field_5bbcc58ba4c0f'),
(185, 79, 'facebook', '1'),
(186, 79, '_facebook', 'field_5bbcc5dda4c11'),
(187, 79, 'twitter', '1'),
(188, 79, '_twitter', 'field_5bbcc5efa4c12'),
(189, 79, 'whatsapp', '0'),
(190, 79, '_whatsapp', 'field_5bbcc5fca4c13'),
(193, 80, 'bajada', 'Bajada nota 4'),
(194, 80, '_bajada', 'field_5bbcc58ba4c0f'),
(195, 80, 'facebook', '1'),
(196, 80, '_facebook', 'field_5bbcc5dda4c11'),
(197, 80, 'twitter', '0'),
(198, 80, '_twitter', 'field_5bbcc5efa4c12'),
(199, 80, 'whatsapp', '0'),
(200, 80, '_whatsapp', 'field_5bbcc5fca4c13'),
(203, 81, 'bajada', 'bajada nota 4'),
(204, 81, '_bajada', 'field_5bbcc58ba4c0f'),
(205, 81, 'facebook', '1'),
(206, 81, '_facebook', 'field_5bbcc5dda4c11'),
(207, 81, 'twitter', '0'),
(208, 81, '_twitter', 'field_5bbcc5efa4c12'),
(209, 81, 'whatsapp', '0'),
(210, 81, '_whatsapp', 'field_5bbcc5fca4c13'),
(232, 42, '_facebook', 'field_5bbcc5dda4c11'),
(230, 42, '_bajada', 'field_5bbcc58ba4c0f'),
(229, 42, 'bajada', 'bajada nota 7'),
(253, 10, '_bajada', 'field_5bbcc58ba4c0f'),
(224, 82, '_edit_lock', '1543947033:1'),
(223, 82, '_edit_last', '1'),
(233, 42, 'twitter', '1'),
(234, 42, '_twitter', 'field_5bbcc5efa4c12'),
(235, 42, 'whatsapp', '1'),
(236, 42, '_whatsapp', 'field_5bbcc5fca4c13'),
(237, 88, 'bajada', 'bajada nota 7'),
(238, 88, '_bajada', 'field_5bbcc58ba4c0f'),
(239, 88, 'facebook', '1'),
(240, 88, '_facebook', 'field_5bbcc5dda4c11'),
(241, 88, 'twitter', '1'),
(242, 88, '_twitter', 'field_5bbcc5efa4c12'),
(243, 88, 'whatsapp', '1'),
(244, 88, '_whatsapp', 'field_5bbcc5fca4c13'),
(350, 121, '_menu_item_object', 'custom'),
(254, 10, 'facebook', '0'),
(255, 10, '_facebook', 'field_5bbcc5dda4c11'),
(256, 10, 'twitter', '0'),
(257, 10, '_twitter', 'field_5bbcc5efa4c12'),
(258, 10, 'whatsapp', '1'),
(259, 10, '_whatsapp', 'field_5bbcc5fca4c13'),
(260, 89, 'bajada', 'Pequeña descripción de la noticia en una o dos lineas'),
(261, 89, '_bajada', 'field_5bbcc58ba4c0f'),
(262, 89, 'facebook', '0'),
(263, 89, '_facebook', 'field_5bbcc5dda4c11'),
(264, 89, 'twitter', '0'),
(265, 89, '_twitter', 'field_5bbcc5efa4c12'),
(266, 89, 'whatsapp', '1'),
(267, 89, '_whatsapp', 'field_5bbcc5fca4c13'),
(888, 194, '_EventAllDay', 'yes'),
(309, 101, '_edit_last', '1'),
(310, 101, '_edit_lock', '1543948896:1'),
(311, 101, 'facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:42:\"https://www.facebook.com/guillermodietrich\";s:6:\"target\";s:0:\"\";}'),
(312, 101, '_facebook', 'field_5bbcc8afa1163'),
(313, 101, 'twitter', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:34:\"https://twitter.com/Guillodietrich\";s:6:\"target\";s:0:\"\";}'),
(314, 101, '_twitter', 'field_5bbcc8bca1164'),
(315, 101, 'instagram', ''),
(316, 101, '_instagram', 'field_5bbcc91fa1166'),
(317, 101, 'linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:52:\"http://ar.linkedin.com/pub/guillo-dietrich/3/6b1/220\";s:6:\"target\";s:0:\"\";}'),
(318, 101, '_linkedin', 'field_5bbcc928a1167'),
(319, 101, 'web', ''),
(320, 101, '_web', 'field_5bbcc8c5a1165'),
(321, 103, '_edit_last', '1'),
(322, 103, '_wp_page_template', 'page-comunidad.php'),
(323, 103, '_edit_lock', '1539964661:1'),
(901, 196, '_edit_last', '1'),
(899, 196, '_EventOrigin', 'events-calendar'),
(898, 194, '_EventTimezoneAbbr', 'UTC-3'),
(891, 194, '_EventStartDateUTC', '2018-11-27 03:00:00'),
(892, 194, '_EventEndDateUTC', '2018-11-28 02:59:59'),
(893, 194, '_EventCurrencySymbol', ''),
(894, 194, '_EventCurrencyPosition', 'prefix'),
(338, 115, '_edit_last', '1'),
(339, 115, '_edit_lock', '1539964653:1'),
(340, 115, '_wp_page_template', 'page-quienessomos.php'),
(890, 194, '_EventEndDate', '2018-11-27 23:59:59'),
(889, 194, '_EventStartDate', '2018-11-27 00:00:00'),
(344, 119, '_edit_last', '1'),
(345, 119, '_edit_lock', '1539698854:1'),
(346, 119, '_wp_page_template', 'page-contacto.php'),
(347, 121, '_menu_item_type', 'custom'),
(348, 121, '_menu_item_menu_item_parent', '0'),
(349, 121, '_menu_item_object_id', '121'),
(351, 121, '_menu_item_target', ''),
(352, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(353, 121, '_menu_item_xfn', ''),
(354, 121, '_menu_item_url', 'http://localhost/G25/'),
(576, 169, '_menu_item_xfn', ''),
(574, 169, '_menu_item_target', ''),
(575, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(573, 169, '_menu_item_object', 'custom'),
(572, 169, '_menu_item_object_id', '169'),
(934, 199, '_EventShowMap', '1'),
(365, 123, '_menu_item_type', 'post_type'),
(366, 123, '_menu_item_menu_item_parent', '0'),
(367, 123, '_menu_item_object_id', '103'),
(368, 123, '_menu_item_object', 'page'),
(369, 123, '_menu_item_target', ''),
(370, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(371, 123, '_menu_item_xfn', ''),
(372, 123, '_menu_item_url', ''),
(933, 199, '_EventShowMapLink', '1'),
(374, 124, '_menu_item_type', 'post_type'),
(375, 124, '_menu_item_menu_item_parent', '0'),
(376, 124, '_menu_item_object_id', '119'),
(377, 124, '_menu_item_object', 'page'),
(378, 124, '_menu_item_target', ''),
(379, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 124, '_menu_item_xfn', ''),
(381, 124, '_menu_item_url', ''),
(877, 195, '_EventEndDate', '2018-11-27 23:59:59'),
(878, 195, '_EventStartDateUTC', '2018-11-27 03:00:00'),
(490, 153, '_wp_page_template', 'page-comonosfinanciamos.php'),
(489, 153, '_edit_lock', '1540563241:4'),
(488, 153, '_edit_last', '4'),
(935, 199, '_EventAllDay', 'yes'),
(392, 126, '_menu_item_type', 'post_type'),
(393, 126, '_menu_item_menu_item_parent', '0'),
(394, 126, '_menu_item_object_id', '115'),
(395, 126, '_menu_item_object', 'page'),
(396, 126, '_menu_item_target', ''),
(397, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(398, 126, '_menu_item_xfn', ''),
(399, 126, '_menu_item_url', ''),
(926, 196, '_EventURL', ''),
(927, 196, '_EventTimezone', 'UTC-3'),
(928, 196, '_EventTimezoneAbbr', 'UTC-3'),
(929, 198, '_EventOrigin', 'events-calendar'),
(930, 198, '_tribe_modified_fields', 'a:18:{s:12:\"_EventOrigin\";i:1540384455;s:10:\"_edit_last\";i:1540384466;s:10:\"post_title\";i:1540384466;s:11:\"post_status\";i:1540384476;s:16:\"tribe_events_cat\";i:1540395276;s:17:\"_EventShowMapLink\";i:1540384476;s:13:\"_EventShowMap\";i:1540384477;s:12:\"_EventAllDay\";i:1540384477;s:15:\"_EventStartDate\";i:1540384477;s:13:\"_EventEndDate\";i:1540384477;s:18:\"_EventStartDateUTC\";i:1540384477;s:16:\"_EventEndDateUTC\";i:1540384477;s:20:\"_EventCurrencySymbol\";i:1540384477;s:22:\"_EventCurrencyPosition\";i:1540384477;s:10:\"_EventCost\";i:1540384477;s:9:\"_EventURL\";i:1540384477;s:14:\"_EventTimezone\";i:1540384477;s:18:\"_EventTimezoneAbbr\";i:1540384477;}'),
(936, 199, '_EventStartDate', '2018-11-21 00:00:00'),
(932, 198, '_edit_lock', '1540395280:1'),
(925, 196, '_EventCost', ''),
(924, 196, '_EventCurrencyPosition', 'prefix'),
(923, 196, '_EventCurrencySymbol', ''),
(922, 196, '_EventEndDateUTC', '2018-12-19 02:59:59'),
(921, 196, '_EventStartDateUTC', '2018-12-18 03:00:00'),
(920, 196, '_EventEndDate', '2018-12-18 23:59:59'),
(919, 196, '_EventStartDate', '2018-12-18 00:00:00'),
(918, 196, '_EventAllDay', 'yes'),
(917, 196, '_EventShowMap', '1'),
(916, 196, '_EventShowMapLink', '1'),
(915, 197, '_EventTimezoneAbbr', 'UTC-3'),
(887, 194, '_EventShowMap', '1'),
(886, 194, '_EventShowMapLink', '1'),
(434, 131, '_edit_last', '1'),
(435, 131, '_edit_lock', '1539964668:1'),
(436, 131, '_wp_page_template', 'page-redfederal.php'),
(437, 133, '_menu_item_type', 'post_type'),
(438, 133, '_menu_item_menu_item_parent', '0'),
(439, 133, '_menu_item_object_id', '131'),
(440, 133, '_menu_item_object', 'page'),
(441, 133, '_menu_item_target', ''),
(442, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(443, 133, '_menu_item_xfn', ''),
(444, 133, '_menu_item_url', ''),
(852, 189, '_EventShowMap', '1'),
(851, 189, '_EventShowMapLink', '1'),
(448, 137, '_edit_last', '1'),
(449, 137, '_edit_lock', '1541516529:1'),
(450, 137, 'facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:40:\"https://www.facebook.com/BullrichEsteban\";s:6:\"target\";s:0:\"\";}'),
(451, 137, '_facebook', 'field_5bbcc8afa1163'),
(452, 137, 'twitter', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:35:\"https://twitter.com/estebanbullrich\";s:6:\"target\";s:0:\"\";}'),
(453, 137, '_twitter', 'field_5bbcc8bca1164'),
(454, 137, 'instagram', ''),
(455, 137, '_instagram', 'field_5bbcc91fa1166'),
(456, 137, 'linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://goo.gl/3GaQee\";s:6:\"target\";s:0:\"\";}'),
(457, 137, '_linkedin', 'field_5bbcc928a1167'),
(458, 137, 'web', ''),
(459, 137, '_web', 'field_5bbcc8c5a1165'),
(460, 146, '_edit_last', '1'),
(461, 146, '_edit_lock', '1539709544:1'),
(464, 146, 'fecha', '20181115'),
(465, 146, '_fecha', 'field_5bc61934f3d82'),
(466, 146, 'correo', 'nose@gmail.com'),
(467, 146, '_correo', 'field_5bc619a5f3d83'),
(468, 146, 'web', ''),
(469, 146, '_web', 'field_5bc619d1f3d84'),
(931, 198, '_edit_last', '1'),
(896, 194, '_EventURL', ''),
(895, 194, '_EventCost', ''),
(869, 194, '_EventOrigin', 'events-calendar'),
(870, 194, '_tribe_modified_fields', 'a:17:{s:12:\"_EventOrigin\";i:1540384385;s:10:\"_edit_last\";i:1540384396;s:10:\"post_title\";i:1540384396;s:11:\"post_status\";i:1540384403;s:17:\"_EventShowMapLink\";i:1540384403;s:13:\"_EventShowMap\";i:1540384403;s:12:\"_EventAllDay\";i:1540384403;s:15:\"_EventStartDate\";i:1540384403;s:13:\"_EventEndDate\";i:1540384403;s:18:\"_EventStartDateUTC\";i:1540384403;s:16:\"_EventEndDateUTC\";i:1540384403;s:20:\"_EventCurrencySymbol\";i:1540384403;s:22:\"_EventCurrencyPosition\";i:1540384403;s:10:\"_EventCost\";i:1540384403;s:9:\"_EventURL\";i:1540384403;s:14:\"_EventTimezone\";i:1540384404;s:18:\"_EventTimezoneAbbr\";i:1540384404;}'),
(871, 194, '_edit_last', '1'),
(872, 194, '_edit_lock', '1540395077:1'),
(873, 195, '_EventShowMapLink', '1'),
(874, 195, '_EventShowMap', '1'),
(875, 195, '_EventAllDay', 'yes'),
(876, 195, '_EventStartDate', '2018-11-27 00:00:00'),
(506, 158, '_menu_item_type', 'custom'),
(507, 158, '_menu_item_menu_item_parent', '0'),
(508, 158, '_menu_item_object_id', '158'),
(509, 158, '_menu_item_object', 'custom'),
(510, 158, '_menu_item_target', '_blank'),
(511, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(512, 158, '_menu_item_xfn', ''),
(513, 158, '_menu_item_url', 'https://docs.google.com/forms/d/e/1FAIpQLSfGslEVasE-U0yM4ZYK5U86ntFfr9tJxqXIWarLziSzazrWow/viewform?c=0&w=1'),
(1044, 208, '_menu_item_xfn', ''),
(1045, 208, '_menu_item_url', ''),
(1107, 221, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1047, 209, '_menu_item_type', 'post_type'),
(1048, 209, '_menu_item_menu_item_parent', '0'),
(1049, 209, '_menu_item_object_id', '103'),
(1050, 209, '_menu_item_object', 'page'),
(1051, 209, '_menu_item_target', ''),
(1052, 209, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1053, 209, '_menu_item_xfn', ''),
(1054, 209, '_menu_item_url', ''),
(1106, 221, '_menu_item_target', ''),
(1065, 211, '_menu_item_type', 'custom'),
(1066, 211, '_menu_item_menu_item_parent', '0'),
(1067, 211, '_menu_item_object_id', '211'),
(1068, 211, '_menu_item_object', 'custom'),
(1069, 211, '_menu_item_target', ''),
(1070, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1071, 211, '_menu_item_xfn', ''),
(1072, 211, '_menu_item_url', 'http://localhost/G25/'),
(1105, 221, '_menu_item_object', 'page'),
(1074, 212, '_menu_item_type', 'custom'),
(1075, 212, '_menu_item_menu_item_parent', '0'),
(1076, 212, '_menu_item_object_id', '212'),
(1077, 212, '_menu_item_object', 'custom'),
(879, 195, '_EventEndDateUTC', '2018-11-28 02:59:59'),
(880, 195, '_EventCurrencySymbol', ''),
(881, 195, '_EventCurrencyPosition', 'prefix'),
(882, 195, '_EventCost', ''),
(883, 195, '_EventURL', ''),
(884, 195, '_EventTimezone', 'UTC-3'),
(885, 195, '_EventTimezoneAbbr', 'UTC-3'),
(577, 169, '_menu_item_url', 'http://localhost/G25/agenda/'),
(570, 169, '_menu_item_type', 'custom'),
(571, 169, '_menu_item_menu_item_parent', '0'),
(1041, 208, '_menu_item_object', 'page'),
(1042, 208, '_menu_item_target', ''),
(1043, 208, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1040, 208, '_menu_item_object_id', '115'),
(1013, 202, '_EventCurrencySymbol', ''),
(1014, 202, '_EventCurrencyPosition', 'prefix'),
(1015, 202, '_EventCost', ''),
(1016, 202, '_EventURL', ''),
(1017, 202, '_EventTimezone', 'UTC-3'),
(1019, 202, '_EventDuration', '3600'),
(1018, 202, '_EventTimezoneAbbr', 'UTC-3'),
(1020, 206, '_menu_item_type', 'post_type'),
(1021, 206, '_menu_item_menu_item_parent', '0'),
(1022, 206, '_menu_item_object_id', '131'),
(1023, 206, '_menu_item_object', 'page'),
(1024, 206, '_menu_item_target', ''),
(1025, 206, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1026, 206, '_menu_item_xfn', ''),
(1027, 206, '_menu_item_url', ''),
(1104, 221, '_menu_item_object_id', '153'),
(1029, 207, '_menu_item_type', 'post_type'),
(1030, 207, '_menu_item_menu_item_parent', '0'),
(1031, 207, '_menu_item_object_id', '119'),
(1032, 207, '_menu_item_object', 'page'),
(1033, 207, '_menu_item_target', ''),
(1034, 207, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1035, 207, '_menu_item_xfn', ''),
(1036, 207, '_menu_item_url', ''),
(1038, 208, '_menu_item_type', 'post_type'),
(1039, 208, '_menu_item_menu_item_parent', '0'),
(863, 189, '_EventTimezoneAbbr', 'UTC-3'),
(860, 189, '_EventCost', ''),
(861, 189, '_EventURL', ''),
(862, 189, '_EventTimezone', 'UTC-3'),
(859, 189, '_EventCurrencyPosition', 'prefix'),
(858, 189, '_EventCurrencySymbol', ''),
(857, 189, '_EventEndDateUTC', '2018-11-01 02:59:59'),
(856, 189, '_EventStartDateUTC', '2018-10-31 03:00:00'),
(855, 189, '_EventEndDate', '2018-10-31 23:59:59'),
(854, 189, '_EventStartDate', '2018-10-31 00:00:00'),
(853, 189, '_EventAllDay', 'yes'),
(782, 183, '_EventOrigin', 'events-calendar'),
(783, 183, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1540296570;s:10:\"_edit_last\";i:1540296583;s:10:\"post_title\";i:1540384374;s:11:\"post_status\";i:1540296593;s:16:\"tribe_events_cat\";i:1540307393;s:12:\"post_content\";i:1540379931;s:17:\"_EventShowMapLink\";i:1540392487;s:13:\"_EventShowMap\";i:1540392487;s:12:\"_EventAllDay\";i:1540296594;s:15:\"_EventStartDate\";i:1540392487;s:13:\"_EventEndDate\";i:1540392487;s:18:\"_EventStartDateUTC\";i:1540392487;s:16:\"_EventEndDateUTC\";i:1540392487;s:20:\"_EventCurrencySymbol\";i:1540296594;s:22:\"_EventCurrencyPosition\";i:1540296594;s:10:\"_EventCost\";i:1540296594;s:9:\"_EventURL\";i:1540296594;s:14:\"_EventTimezone\";i:1540296594;s:18:\"_EventTimezoneAbbr\";i:1540296594;s:8:\"post_tag\";i:1540403570;}'),
(784, 183, '_edit_last', '1'),
(785, 183, '_edit_lock', '1540403570:1'),
(786, 184, '_EventShowMapLink', '1'),
(787, 184, '_EventShowMap', '1'),
(788, 184, '_EventAllDay', 'yes'),
(789, 184, '_EventStartDate', '2018-10-23 00:00:00'),
(790, 184, '_EventEndDate', '2018-10-23 23:59:59'),
(791, 184, '_EventStartDateUTC', '2018-10-23 03:00:00'),
(792, 184, '_EventEndDateUTC', '2018-10-24 02:59:59'),
(793, 184, '_EventCurrencySymbol', ''),
(794, 184, '_EventCurrencyPosition', 'prefix'),
(795, 184, '_EventCost', ''),
(796, 184, '_EventURL', ''),
(797, 184, '_EventTimezone', 'UTC-3'),
(798, 184, '_EventTimezoneAbbr', 'UTC-3'),
(799, 183, '_EventShowMapLink', ''),
(800, 183, '_EventShowMap', ''),
(801, 183, '_EventAllDay', 'yes'),
(802, 183, '_EventStartDate', '2018-10-27 00:00:00'),
(803, 183, '_EventEndDate', '2018-10-27 23:59:59'),
(804, 183, '_EventStartDateUTC', '2018-10-27 03:00:00'),
(805, 183, '_EventEndDateUTC', '2018-10-28 02:59:59'),
(806, 183, '_EventCurrencySymbol', ''),
(807, 183, '_EventCurrencyPosition', 'prefix'),
(808, 183, '_EventCost', ''),
(809, 183, '_EventURL', ''),
(810, 183, '_EventTimezone', 'UTC-3'),
(811, 183, '_EventTimezoneAbbr', 'UTC-3'),
(812, 185, '_EventOrigin', 'events-calendar'),
(813, 185, '_tribe_modified_fields', 'a:19:{s:12:\"_EventOrigin\";i:1540296651;s:10:\"_edit_last\";i:1540296658;s:10:\"post_title\";i:1540384381;s:11:\"post_status\";i:1540296667;s:12:\"post_content\";i:1540296667;s:17:\"_EventShowMapLink\";i:1540296667;s:13:\"_EventShowMap\";i:1540296667;s:12:\"_EventAllDay\";i:1540296667;s:15:\"_EventStartDate\";i:1540379781;s:13:\"_EventEndDate\";i:1540379781;s:18:\"_EventStartDateUTC\";i:1540379781;s:16:\"_EventEndDateUTC\";i:1540379781;s:20:\"_EventCurrencySymbol\";i:1540296667;s:22:\"_EventCurrencyPosition\";i:1540296667;s:10:\"_EventCost\";i:1540296667;s:9:\"_EventURL\";i:1540296667;s:14:\"_EventTimezone\";i:1540296667;s:18:\"_EventTimezoneAbbr\";i:1540296667;s:16:\"tribe_events_cat\";i:1540390581;}'),
(814, 185, '_edit_last', '1'),
(815, 185, '_edit_lock', '1540395181:1'),
(816, 186, '_EventShowMapLink', '1'),
(817, 186, '_EventShowMap', '1'),
(818, 186, '_EventAllDay', 'yes'),
(819, 186, '_EventStartDate', '2018-10-24 00:00:00'),
(820, 186, '_EventEndDate', '2018-10-24 23:59:59'),
(821, 186, '_EventStartDateUTC', '2018-10-24 03:00:00'),
(822, 186, '_EventEndDateUTC', '2018-10-25 02:59:59'),
(823, 186, '_EventCurrencySymbol', ''),
(824, 186, '_EventCurrencyPosition', 'prefix'),
(825, 186, '_EventCost', ''),
(826, 186, '_EventURL', ''),
(827, 186, '_EventTimezone', 'UTC-3'),
(828, 186, '_EventTimezoneAbbr', 'UTC-3'),
(829, 185, '_EventShowMapLink', '1'),
(830, 185, '_EventShowMap', '1'),
(831, 185, '_EventAllDay', 'yes'),
(832, 185, '_EventStartDate', '2018-10-28 00:00:00'),
(833, 185, '_EventEndDate', '2018-10-28 23:59:59'),
(834, 185, '_EventStartDateUTC', '2018-10-28 03:00:00'),
(835, 185, '_EventEndDateUTC', '2018-10-29 02:59:59'),
(836, 185, '_EventCurrencySymbol', ''),
(837, 185, '_EventCurrencyPosition', 'prefix'),
(838, 185, '_EventCost', ''),
(839, 185, '_EventURL', ''),
(840, 185, '_EventTimezone', 'UTC-3'),
(841, 185, '_EventTimezoneAbbr', 'UTC-3'),
(905, 197, '_EventAllDay', 'yes'),
(906, 197, '_EventStartDate', '2018-12-18 00:00:00'),
(907, 197, '_EventEndDate', '2018-12-18 23:59:59'),
(908, 197, '_EventStartDateUTC', '2018-12-18 03:00:00'),
(909, 197, '_EventEndDateUTC', '2018-12-19 02:59:59'),
(910, 197, '_EventCurrencySymbol', ''),
(911, 197, '_EventCurrencyPosition', 'prefix'),
(912, 197, '_EventCost', ''),
(913, 197, '_EventURL', ''),
(914, 197, '_EventTimezone', 'UTC-3'),
(1012, 202, '_EventEndDateUTC', '2018-12-31 17:30:00'),
(985, 200, '_EventCost', ''),
(986, 200, '_EventURL', ''),
(987, 200, '_EventTimezone', 'UTC-3'),
(988, 200, '_EventTimezoneAbbr', 'UTC-3'),
(989, 202, '_EventOrigin', 'events-calendar'),
(990, 202, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1540384530;s:10:\"_edit_last\";i:1540384541;s:10:\"post_title\";i:1540384541;s:11:\"post_status\";i:1540384549;s:16:\"tribe_events_cat\";i:1540400126;s:17:\"_EventShowMapLink\";i:1540384549;s:13:\"_EventShowMap\";i:1540384549;s:12:\"_EventAllDay\";i:1540390709;s:15:\"_EventStartDate\";i:1540390709;s:13:\"_EventEndDate\";i:1540390709;s:18:\"_EventStartDateUTC\";i:1540390709;s:16:\"_EventEndDateUTC\";i:1540390709;s:20:\"_EventCurrencySymbol\";i:1540384549;s:22:\"_EventCurrencyPosition\";i:1540384549;s:10:\"_EventCost\";i:1540384549;s:9:\"_EventURL\";i:1540384549;s:14:\"_EventTimezone\";i:1540384549;s:18:\"_EventTimezoneAbbr\";i:1540384549;s:8:\"post_tag\";i:1540403526;s:14:\"_EventDuration\";i:1540390709;}'),
(991, 202, '_edit_last', '1'),
(992, 202, '_edit_lock', '1540403526:1'),
(993, 203, '_EventShowMapLink', '1'),
(994, 203, '_EventShowMap', '1'),
(995, 203, '_EventAllDay', 'yes'),
(996, 203, '_EventStartDate', '2018-12-31 00:00:00'),
(997, 203, '_EventEndDate', '2018-12-31 23:59:59'),
(998, 203, '_EventStartDateUTC', '2018-12-31 03:00:00'),
(999, 203, '_EventEndDateUTC', '2019-01-01 02:59:59'),
(1000, 203, '_EventCurrencySymbol', ''),
(1001, 203, '_EventCurrencyPosition', 'prefix'),
(1002, 203, '_EventCost', ''),
(1003, 203, '_EventURL', ''),
(1004, 203, '_EventTimezone', 'UTC-3'),
(1005, 203, '_EventTimezoneAbbr', 'UTC-3'),
(1006, 202, '_EventShowMapLink', '1'),
(1007, 202, '_EventShowMap', '1'),
(1009, 202, '_EventStartDate', '2018-12-31 13:30:00'),
(1010, 202, '_EventEndDate', '2018-12-31 14:30:00'),
(1011, 202, '_EventStartDateUTC', '2018-12-31 16:30:00'),
(984, 200, '_EventCurrencyPosition', 'prefix'),
(982, 200, '_EventEndDateUTC', '2018-11-27 02:59:59'),
(983, 200, '_EventCurrencySymbol', ''),
(975, 201, '_EventTimezoneAbbr', 'UTC-3'),
(976, 200, '_EventShowMapLink', '1'),
(977, 200, '_EventShowMap', '1'),
(978, 200, '_EventAllDay', 'yes'),
(979, 200, '_EventStartDate', '2018-11-26 00:00:00'),
(980, 200, '_EventEndDate', '2018-11-26 23:59:59'),
(981, 200, '_EventStartDateUTC', '2018-11-26 03:00:00'),
(973, 201, '_EventURL', ''),
(974, 201, '_EventTimezone', 'UTC-3'),
(972, 201, '_EventCost', ''),
(970, 201, '_EventCurrencySymbol', ''),
(971, 201, '_EventCurrencyPosition', 'prefix'),
(969, 201, '_EventEndDateUTC', '2018-11-27 02:59:59'),
(968, 201, '_EventStartDateUTC', '2018-11-26 03:00:00'),
(966, 201, '_EventStartDate', '2018-11-26 00:00:00'),
(967, 201, '_EventEndDate', '2018-11-26 23:59:59'),
(965, 201, '_EventAllDay', 'yes'),
(963, 201, '_EventShowMapLink', '1'),
(964, 201, '_EventShowMap', '1'),
(962, 200, '_edit_lock', '1540403518:1'),
(961, 200, '_edit_last', '1'),
(950, 198, '_EventEndDate', '2018-11-21 23:59:59'),
(951, 198, '_EventStartDateUTC', '2018-11-21 03:00:00'),
(952, 198, '_EventEndDateUTC', '2018-11-22 02:59:59'),
(953, 198, '_EventCurrencySymbol', ''),
(954, 198, '_EventCurrencyPosition', 'prefix'),
(955, 198, '_EventCost', ''),
(956, 198, '_EventURL', ''),
(957, 198, '_EventTimezone', 'UTC-3'),
(958, 198, '_EventTimezoneAbbr', 'UTC-3'),
(959, 200, '_EventOrigin', 'events-calendar'),
(960, 200, '_tribe_modified_fields', 'a:19:{s:12:\"_EventOrigin\";i:1540384483;s:10:\"_edit_last\";i:1540384504;s:10:\"post_title\";i:1540384505;s:11:\"post_status\";i:1540384511;s:16:\"tribe_events_cat\";i:1540395311;s:17:\"_EventShowMapLink\";i:1540384511;s:13:\"_EventShowMap\";i:1540384511;s:12:\"_EventAllDay\";i:1540384511;s:15:\"_EventStartDate\";i:1540384511;s:13:\"_EventEndDate\";i:1540384511;s:18:\"_EventStartDateUTC\";i:1540384511;s:16:\"_EventEndDateUTC\";i:1540384511;s:20:\"_EventCurrencySymbol\";i:1540384511;s:22:\"_EventCurrencyPosition\";i:1540384511;s:10:\"_EventCost\";i:1540384511;s:9:\"_EventURL\";i:1540384511;s:14:\"_EventTimezone\";i:1540384511;s:18:\"_EventTimezoneAbbr\";i:1540384511;s:8:\"post_tag\";i:1540403518;}'),
(947, 198, '_EventShowMap', '1'),
(948, 198, '_EventAllDay', 'yes'),
(949, 198, '_EventStartDate', '2018-11-21 00:00:00'),
(937, 199, '_EventEndDate', '2018-11-21 23:59:59'),
(938, 199, '_EventStartDateUTC', '2018-11-21 03:00:00'),
(939, 199, '_EventEndDateUTC', '2018-11-22 02:59:59'),
(940, 199, '_EventCurrencySymbol', ''),
(941, 199, '_EventCurrencyPosition', 'prefix'),
(942, 199, '_EventCost', ''),
(943, 199, '_EventURL', ''),
(944, 199, '_EventTimezone', 'UTC-3'),
(945, 199, '_EventTimezoneAbbr', 'UTC-3'),
(946, 198, '_EventShowMapLink', '1'),
(1078, 212, '_menu_item_target', ''),
(1079, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1080, 212, '_menu_item_xfn', ''),
(1081, 212, '_menu_item_url', 'http://localhost/G25/agenda/'),
(1103, 221, '_menu_item_menu_item_parent', '0'),
(1102, 221, '_menu_item_type', 'post_type'),
(1095, 121, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1096, 126, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1097, 123, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1098, 169, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1099, 133, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1100, 158, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1101, 124, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1108, 221, '_menu_item_xfn', ''),
(1109, 221, '_menu_item_url', ''),
(1112, 211, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1111, 221, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1113, 208, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1114, 209, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1115, 212, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1116, 206, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1117, 207, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1118, 222, '_menu_item_type', 'custom'),
(1119, 222, '_menu_item_menu_item_parent', '0'),
(1120, 222, '_menu_item_object_id', '222'),
(1121, 222, '_menu_item_object', 'custom'),
(1122, 222, '_menu_item_target', ''),
(1123, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1124, 222, '_menu_item_xfn', ''),
(1125, 222, '_menu_item_url', 'http://localhost/G25/'),
(1182, 228, '_menu_item_target', ''),
(1127, 222, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1128, 223, '_menu_item_type', 'post_type'),
(1129, 223, '_menu_item_menu_item_parent', '0'),
(1130, 223, '_menu_item_object_id', '103'),
(1131, 223, '_menu_item_object', 'page'),
(1132, 223, '_menu_item_target', ''),
(1133, 223, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1134, 223, '_menu_item_xfn', ''),
(1135, 223, '_menu_item_url', ''),
(1180, 228, '_menu_item_object_id', '228'),
(1137, 223, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1138, 224, '_menu_item_type', 'post_type'),
(1139, 224, '_menu_item_menu_item_parent', '0'),
(1140, 224, '_menu_item_object_id', '115'),
(1141, 224, '_menu_item_object', 'page'),
(1142, 224, '_menu_item_target', ''),
(1143, 224, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1144, 224, '_menu_item_xfn', ''),
(1145, 224, '_menu_item_url', ''),
(1181, 228, '_menu_item_object', 'custom'),
(1147, 224, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1148, 225, '_menu_item_type', 'post_type'),
(1149, 225, '_menu_item_menu_item_parent', '0'),
(1150, 225, '_menu_item_object_id', '131'),
(1151, 225, '_menu_item_object', 'page'),
(1152, 225, '_menu_item_target', ''),
(1153, 225, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1154, 225, '_menu_item_xfn', ''),
(1155, 225, '_menu_item_url', ''),
(1157, 225, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1158, 226, '_menu_item_type', 'custom'),
(1159, 226, '_menu_item_menu_item_parent', '0'),
(1160, 226, '_menu_item_object_id', '226'),
(1161, 226, '_menu_item_object', 'custom'),
(1162, 226, '_menu_item_target', '_blank'),
(1163, 226, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1164, 226, '_menu_item_xfn', ''),
(1165, 226, '_menu_item_url', 'https://docs.google.com/forms/d/e/1FAIpQLSfGslEVasE-U0yM4ZYK5U86ntFfr9tJxqXIWarLziSzazrWow/viewform?c=0&w=1'),
(1178, 228, '_menu_item_type', 'custom'),
(1167, 226, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1168, 227, '_menu_item_type', 'custom'),
(1169, 227, '_menu_item_menu_item_parent', '0'),
(1170, 227, '_menu_item_object_id', '227'),
(1171, 227, '_menu_item_object', 'custom'),
(1172, 227, '_menu_item_target', ''),
(1173, 227, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1174, 227, '_menu_item_xfn', ''),
(1175, 227, '_menu_item_url', 'http://localhost/G25/agenda/'),
(1179, 228, '_menu_item_menu_item_parent', '0'),
(1177, 227, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1183, 228, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1184, 228, '_menu_item_xfn', ''),
(1185, 228, '_menu_item_url', 'http://localhost/G25/'),
(1187, 228, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1188, 229, '_menu_item_type', 'post_type'),
(1189, 229, '_menu_item_menu_item_parent', '0'),
(1190, 229, '_menu_item_object_id', '103'),
(1191, 229, '_menu_item_object', 'page'),
(1192, 229, '_menu_item_target', ''),
(1193, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1194, 229, '_menu_item_xfn', ''),
(1195, 229, '_menu_item_url', ''),
(1197, 229, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1198, 230, '_menu_item_type', 'post_type'),
(1199, 230, '_menu_item_menu_item_parent', '0'),
(1200, 230, '_menu_item_object_id', '115'),
(1201, 230, '_menu_item_object', 'page'),
(1202, 230, '_menu_item_target', ''),
(1203, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1204, 230, '_menu_item_xfn', ''),
(1205, 230, '_menu_item_url', ''),
(1342, 264, '_edit_lock', '1543931752:1'),
(1207, 230, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1208, 231, '_menu_item_type', 'post_type'),
(1209, 231, '_menu_item_menu_item_parent', '0'),
(1210, 231, '_menu_item_object_id', '131'),
(1211, 231, '_menu_item_object', 'page'),
(1212, 231, '_menu_item_target', ''),
(1213, 231, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1214, 231, '_menu_item_xfn', ''),
(1215, 231, '_menu_item_url', ''),
(1341, 262, '_edit_lock', '1543931614:1'),
(1217, 231, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1218, 232, '_menu_item_type', 'custom'),
(1219, 232, '_menu_item_menu_item_parent', '0'),
(1220, 232, '_menu_item_object_id', '232'),
(1221, 232, '_menu_item_object', 'custom'),
(1222, 232, '_menu_item_target', ''),
(1223, 232, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1224, 232, '_menu_item_xfn', ''),
(1225, 232, '_menu_item_url', 'http://localhost/G25/agenda/'),
(1340, 259, '_edit_lock', '1543931562:1'),
(1227, 232, 'wpfront-user-role-editor-nav-menu-data', 'O:8:\"stdClass\":1:{s:4:\"type\";i:1;}'),
(1339, 257, '_edit_lock', '1543931373:1'),
(1248, 237, '_wp_attached_file', '2018/10/Esteban-Bullrich.jpg'),
(1249, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:680;s:4:\"file\";s:28:\"2018/10/Esteban-Bullrich.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Esteban-Bullrich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Esteban-Bullrich-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1366104084\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1240, 137, '_thumbnail_id', '237'),
(1241, 137, 'cargo', 'Senador Nacional – Provincia de Buenos Aires'),
(1242, 137, '_cargo', 'field_5bc9f68e4ba89'),
(1250, 239, '_wp_attached_file', '2018/10/Guillo-Dietrich.jpg'),
(1260, 240, '_facebook', 'field_5bbcc8afa1163'),
(1256, 240, '_thumbnail_id', '242'),
(1257, 240, 'cargo', 'Jefe de Gabinete de Ministros del Gobierno de la Ciudad de Buenos Aires'),
(1258, 240, '_cargo', 'field_5bc9f68e4ba89'),
(1259, 240, 'facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:39:\"https://www.facebook.com/FelipeMiguelBA\";s:6:\"target\";s:0:\"\";}'),
(1245, 101, '_thumbnail_id', '239'),
(1246, 101, 'cargo', 'Ministro de Transporte de la Nación'),
(1247, 101, '_cargo', 'field_5bc9f68e4ba89'),
(1251, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:680;s:4:\"file\";s:27:\"2018/10/Guillo-Dietrich.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Guillo-Dietrich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Guillo-Dietrich-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1366103021\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1261, 240, 'twitter', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:34:\"https://twitter.com/FelipeMiguelBA\";s:6:\"target\";s:0:\"\";}'),
(1262, 240, '_twitter', 'field_5bbcc8bca1164'),
(1263, 240, 'instagram', ''),
(1264, 240, '_instagram', 'field_5bbcc91fa1166'),
(1265, 240, 'linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:43:\"https://www.linkedin.com/in/felipemiguelba/\";s:6:\"target\";s:0:\"\";}'),
(1266, 240, '_linkedin', 'field_5bbcc928a1167'),
(1267, 240, 'web', ''),
(1268, 240, '_web', 'field_5bbcc8c5a1165'),
(1271, 244, '_edit_lock', '1541516599:1'),
(1272, 244, '_edit_last', '1'),
(1273, 245, '_wp_attached_file', '2018/11/Franco-Moccia-1.jpg'),
(1274, 245, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:680;s:4:\"file\";s:27:\"2018/11/Franco-Moccia-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Franco-Moccia-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Franco-Moccia-1-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1366102738\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1275, 244, '_thumbnail_id', '245'),
(1276, 244, 'cargo', 'Ministro de Desarrollo Urbano y Transporte del Gobierno de la Ciudad de Buenos Aires'),
(1277, 244, '_cargo', 'field_5bc9f68e4ba89'),
(1278, 244, 'facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:43:\"https://www.facebook.com/FrancoMocciaCiudad\";s:6:\"target\";s:0:\"\";}'),
(1279, 244, '_facebook', 'field_5bbcc8afa1163'),
(1280, 244, 'twitter', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:32:\"https://twitter.com/francomoccia\";s:6:\"target\";s:0:\"\";}'),
(1281, 244, '_twitter', 'field_5bbcc8bca1164'),
(1282, 244, 'instagram', ''),
(1283, 244, '_instagram', 'field_5bbcc91fa1166'),
(1284, 244, 'linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:20:\"http://goo.gl/6MOvDe\";s:6:\"target\";s:0:\"\";}'),
(1285, 244, '_linkedin', 'field_5bbcc928a1167'),
(1286, 244, 'web', ''),
(1287, 244, '_web', 'field_5bbcc8c5a1165'),
(1288, 246, '_edit_lock', '1541516679:1'),
(1289, 246, '_edit_last', '1'),
(1290, 247, '_wp_attached_file', '2018/11/Juan-Curutchet.jpg'),
(1291, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:680;s:4:\"file\";s:26:\"2018/11/Juan-Curutchet.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Juan-Curutchet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Juan-Curutchet-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1366104574\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1292, 246, '_thumbnail_id', '247'),
(1293, 246, 'cargo', 'Presidente del Banco Provincia de Buenos Aires'),
(1294, 246, '_cargo', 'field_5bc9f68e4ba89'),
(1295, 246, 'facebook', ''),
(1296, 246, '_facebook', 'field_5bbcc8afa1163'),
(1297, 246, 'twitter', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:33:\"https://twitter.com/juancurutchet\";s:6:\"target\";s:0:\"\";}'),
(1298, 246, '_twitter', 'field_5bbcc8bca1164'),
(1299, 246, 'instagram', ''),
(1300, 246, '_instagram', 'field_5bbcc91fa1166'),
(1301, 246, 'linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:42:\"https://www.linkedin.com/in/juancurutchet/\";s:6:\"target\";s:0:\"\";}'),
(1302, 246, '_linkedin', 'field_5bbcc928a1167'),
(1303, 246, 'web', ''),
(1304, 246, '_web', 'field_5bbcc8c5a1165'),
(1305, 248, '_edit_lock', '1541517153:1'),
(1306, 248, '_edit_last', '1'),
(1330, 254, '_wp_attached_file', '2018/11/Juanjo-Mendez2017-e1541517324250.jpg'),
(1331, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:457;s:4:\"file\";s:44:\"2018/11/Juanjo-Mendez2017-e1541517324250.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Juanjo-Mendez2017-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Juanjo-Mendez2017-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1332, 248, '_thumbnail_id', '254'),
(1312, 248, 'cargo', 'Secretario de Transporte del Gobierno de la Ciudad de Buenos Aires'),
(1313, 248, '_cargo', 'field_5bc9f68e4ba89'),
(1314, 248, 'facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:38:\"https://www.facebook.com/mendezjuanjo/\";s:6:\"target\";s:0:\"\";}'),
(1315, 248, '_facebook', 'field_5bbcc8afa1163'),
(1316, 248, 'twitter', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:28:\"https://twitter.com/juanjom/\";s:6:\"target\";s:0:\"\";}'),
(1317, 248, '_twitter', 'field_5bbcc8bca1164'),
(1318, 248, 'instagram', ''),
(1319, 248, '_instagram', 'field_5bbcc91fa1166'),
(1320, 248, 'linkedin', ''),
(1333, 254, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:595;s:6:\"height\";i:680;s:4:\"file\";s:21:\"Juanjo-Mendez2017.jpg\";}s:18:\"full-1541517281670\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:457;s:4:\"file\";s:36:\"Juanjo-Mendez2017-e1541517241268.jpg\";}s:18:\"full-1541517324250\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:457;s:4:\"file\";s:36:\"Juanjo-Mendez2017-e1541517281670.jpg\";}}'),
(1321, 248, '_linkedin', 'field_5bbcc928a1167'),
(1322, 248, 'web', ''),
(1323, 248, '_web', 'field_5bbcc8c5a1165'),
(1360, 267, '_EventOrigin', 'events-calendar'),
(1361, 267, '_tribe_modified_fields', 'a:1:{s:12:\"_EventOrigin\";i:1543934679;}'),
(1362, 267, '_edit_lock', '1543945504:1'),
(1364, 268, 'bajada', 'bajada nota 7'),
(1365, 268, '_bajada', 'field_5bbcc58ba4c0f'),
(1366, 268, 'facebook', '1'),
(1367, 268, '_facebook', 'field_5bbcc5dda4c11'),
(1368, 268, 'twitter', '1'),
(1369, 268, '_twitter', 'field_5bbcc5efa4c12'),
(1370, 268, 'whatsapp', '1'),
(1371, 268, '_whatsapp', 'field_5bbcc5fca4c13'),
(1413, 279, '_edit_lock', '1543947576:1'),
(1412, 101, '_nombre_y_apellido', 'field_5c06c1e564c53'),
(1411, 101, 'nombre_y_apellido', 'Guillermo Dietrich'),
(1410, 278, '_edit_lock', '1543946852:1'),
(1408, 275, '_edit_lock', '1543946708:1'),
(1409, 276, '_edit_lock', '1543946796:1'),
(1406, 273, '_edit_lock', '1543946512:1'),
(1407, 274, '_edit_lock', '1543946688:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_posts`
--

CREATE TABLE `g25_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ;

--
-- Volcado de datos para la tabla `g25_posts`
--

INSERT INTO `g25_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2018-10-16 11:10:26', '2018-10-16 14:10:26', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=124', 7, 'nav_menu_item', '', 0),
(6, 1, '2018-10-08 10:32:31', '2018-10-08 13:32:31', 'post\npage\n1\n1\n1\nnone\npost\npost,tribe_events\nAND\nday\nmonth\nyear\nday\nmonth\nyear\nnull\n10\n#FFFFB9\n2\n1', 'Default Search Form', '', 'publish', 'closed', 'closed', '', 'default-search-form', '', '', '2018-10-08 12:59:46', '2018-10-08 15:59:46', '', 0, 'http://localhost/G25/?post_type=is_search_form&#038;p=6', 0, 'is_search_form', '', 0),
(17, 1, '2018-10-08 12:34:25', '2018-10-08 15:34:25', '', 'thumb2', '', 'inherit', 'open', 'closed', '', 'thumb2', '', '', '2018-10-08 12:34:25', '2018-10-08 15:34:25', '', 16, 'http://localhost/G25/wp-content/uploads/2018/10/thumb2.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-10-08 11:20:19', '2018-10-08 14:20:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-12 aligncenter\" src=\"http://localhost/G25/wp-content/uploads/2018/10/thumb1.png\" alt=\"\" width=\"394\" height=\"306\" />\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'publish', 'open', 'open', '', 'si-vivis-en-el-exterior-tambien-podes-ser-parte-del-cambio', '', '', '2018-10-09 15:57:26', '2018-10-09 18:57:26', '', 0, 'http://localhost/G25/?p=10', 0, 'post', '', 0),
(12, 1, '2018-10-08 11:23:30', '2018-10-08 14:23:30', '', 'thumb1', '', 'inherit', 'open', 'closed', '', 'thumb1', '', '', '2018-10-08 11:23:30', '2018-10-08 14:23:30', '', 10, 'http://localhost/G25/wp-content/uploads/2018/10/thumb1.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2018-10-16 11:10:26', '2018-10-16 14:10:26', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=123', 3, 'nav_menu_item', '', 0),
(16, 1, '2018-10-07 12:34:34', '2018-10-07 15:34:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'publish', 'open', 'open', '', 'si-vivis-en-el-exterior-tambien-podes-ser-parte-del-cambio-2', '', '', '2018-10-09 15:09:54', '2018-10-09 18:09:54', '', 0, 'http://localhost/G25/?p=16', 2, 'post', '', 0),
(121, 1, '2018-10-16 11:10:26', '2018-10-16 14:10:26', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=121', 1, 'nav_menu_item', '', 0),
(119, 1, '2018-10-16 11:06:35', '2018-10-16 14:06:35', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2018-10-16 11:06:35', '2018-10-16 14:06:35', '', 0, 'http://localhost/G25/?page_id=119', 0, 'page', '', 0),
(28, 1, '2018-10-08 12:55:41', '2018-10-08 15:55:41', 'post\n1\n1\n1\nnone\npost\npost,tribe_events\n2\nOR\n1\n1\nbajada\nday\nmonth\nyear\nday\nmonth\nyear\nnull\n6\n#FFFFB9\n2', 'nota', '', 'publish', 'closed', 'closed', '', 'nota', '', '', '2018-10-09 12:42:31', '2018-10-09 15:42:31', '', 0, 'http://localhost/G25/?post_type=is_search_form&#038;p=28', 0, 'is_search_form', '', 0),
(29, 1, '2018-10-08 14:05:08', '2018-10-08 17:05:08', 'Parrafo 1\r\n\r\nParrafo 2', 'Nota 3 Agenda', '', 'publish', 'open', 'open', '', 'nota-3', '', '', '2018-10-24 12:31:17', '2018-10-24 15:31:17', '', 0, 'http://localhost/G25/?p=29', 6, 'post', '', 0),
(30, 1, '2018-10-08 14:04:51', '2018-10-08 17:04:51', '', 'thumb3', '', 'inherit', 'open', 'closed', '', 'thumb3', '', '', '2018-10-08 14:04:51', '2018-10-08 17:04:51', '', 29, 'http://localhost/G25/wp-content/uploads/2018/10/thumb3.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-10-08 14:06:25', '2018-10-08 17:06:25', 'Parrafo de nota 4\r\n\r\nParrafo segundo de nota 4', 'Nota 4', '', 'publish', 'open', 'open', '', 'nota-4', '', '', '2018-10-09 15:10:22', '2018-10-09 18:10:22', '', 0, 'http://localhost/G25/?p=32', 5, 'post', '', 0),
(33, 1, '2018-10-08 14:06:07', '2018-10-08 17:06:07', '', 'thumb4', '', 'inherit', 'open', 'closed', '', 'thumb4', '', '', '2018-10-08 14:06:07', '2018-10-08 17:06:07', '', 32, 'http://localhost/G25/wp-content/uploads/2018/10/thumb4.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-10-08 14:07:09', '2018-10-08 17:07:09', 'no se que poner', 'Nota 5', '', 'publish', 'open', 'open', '', 'nota-5', '', '', '2018-10-09 12:24:27', '2018-10-09 15:24:27', '', 0, 'http://localhost/G25/?p=35', 4, 'post', '', 0),
(115, 1, '2018-10-16 11:05:43', '2018-10-16 14:05:43', '', 'Quienes Somos', '', 'publish', 'closed', 'closed', '', 'quienes-somos', '', '', '2018-10-19 12:57:33', '2018-10-19 15:57:33', '', 0, 'http://localhost/G25/?page_id=115', 0, 'page', '', 0),
(38, 1, '2018-10-08 14:08:48', '2018-10-08 17:08:48', '', 'thumb5', '', 'inherit', 'open', 'closed', '', 'thumb5', '', '', '2018-10-08 14:08:48', '2018-10-08 17:08:48', '', 35, 'http://localhost/G25/wp-content/uploads/2018/10/thumb5.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2018-10-08 14:10:10', '2018-10-08 17:10:10', 'prueba nota 6', 'Nota 6', '', 'publish', 'open', 'open', '', 'nota-6', '', '', '2018-10-09 12:24:19', '2018-10-09 15:24:19', '', 0, 'http://localhost/G25/?p=39', 3, 'post', '', 0),
(40, 1, '2018-10-08 14:09:58', '2018-10-08 17:09:58', '', 'thumb6', '', 'inherit', 'open', 'closed', '', 'thumb6', '', '', '2018-10-08 14:09:58', '2018-10-08 17:09:58', '', 39, 'http://localhost/G25/wp-content/uploads/2018/10/thumb6.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2018-10-08 14:11:08', '2018-10-08 17:11:08', 'no se que poner', 'Nota 7', '', 'publish', 'open', 'open', '', 'nota-nueva-pagina', '', '', '2018-12-04 14:50:05', '2018-12-04 17:50:05', '', 0, 'http://localhost/G25/?p=42', 1, 'post', '', 0),
(240, 1, '2018-11-06 12:00:36', '2018-11-06 15:00:36', '', 'Felipe Miguel', '', 'publish', 'closed', 'closed', '', 'felipe-miguel', '', '', '2018-11-06 12:00:36', '2018-11-06 15:00:36', '', 0, 'http://localhost/G25/?post_type=comunidad&#038;p=240', 2, 'comunidad', '', 0),
(159, 1, '2018-10-19 12:23:17', '2018-10-19 15:23:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:100;}', 'Cargo (100 Caracteres)', 'cargo', 'publish', 'closed', 'closed', '', 'field_5bc9f68e4ba89', '', '', '2018-12-04 15:12:44', '2018-12-04 18:12:44', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=159', 0, 'acf-field', '', 0),
(158, 1, '2018-10-19 11:27:43', '2018-10-19 14:27:43', '', 'Ser Fiscal', '', 'publish', 'closed', 'closed', '', 'ser-fiscal', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=158', 6, 'nav_menu_item', '', 0),
(169, 1, '2018-10-22 14:01:17', '2018-10-22 17:01:17', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=169', 4, 'nav_menu_item', '', 0),
(73, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"category:nota\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Meta Nota', 'meta-nota', 'publish', 'closed', 'closed', '', 'group_5bbcc587061ae', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 0, 'http://localhost/G25/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Bajada resumen de la nota\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:100;}', 'bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_5bbcc58ba4c0f', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5bbcc5dda4c11', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5bbcc5efa4c12', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=76', 2, 'acf-field', '', 0),
(77, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_5bbcc5fca4c13', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(82, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"comunidad\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Meta Comunidad', 'meta-comunidad', 'publish', 'closed', 'closed', '', 'group_5bbcc8a06f6c3', '', '', '2018-12-04 15:12:45', '2018-12-04 18:12:45', '', 0, 'http://localhost/G25/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5bbcc8afa1163', '', '', '2018-12-04 15:12:44', '2018-12-04 18:12:44', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=83', 1, 'acf-field', '', 0),
(84, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5bbcc8bca1164', '', '', '2018-12-04 15:12:44', '2018-12-04 18:12:44', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=84', 2, 'acf-field', '', 0),
(85, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5bbcc91fa1166', '', '', '2018-12-04 15:12:44', '2018-12-04 18:12:44', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=85', 3, 'acf-field', '', 0),
(86, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_5bbcc928a1167', '', '', '2018-12-04 15:12:45', '2018-12-04 18:12:45', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=86', 4, 'acf-field', '', 0),
(137, 1, '2018-11-06 12:00:04', '2018-11-06 15:00:04', '', 'Esteban Bullrich', '', 'publish', 'closed', 'closed', '', 'prueba', '', '', '2018-11-06 12:02:09', '2018-11-06 15:02:09', '', 0, 'http://localhost/G25/?post_type=comunidad&#038;p=137', 1, 'comunidad', '', 0),
(87, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Web', 'web', 'publish', 'closed', 'closed', '', 'field_5bbcc8c5a1165', '', '', '2018-12-04 15:12:45', '2018-12-04 18:12:45', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=87', 5, 'acf-field', '', 0),
(221, 1, '2018-10-29 11:08:42', '2018-10-29 14:08:42', ' ', '', '', 'publish', 'closed', 'closed', '', '221', '', '', '2018-12-04 10:46:48', '2018-12-04 13:46:48', '', 0, 'http://localhost/G25/?p=221', 1, 'nav_menu_item', '', 0),
(183, 1, '2018-10-23 12:09:53', '2018-10-23 15:09:53', 'sdfadfas\r\n\r\nasdf\r\n\r\n<img class=\"alignnone size-full wp-image-12\" src=\"http://localhost/G25/wp-content/uploads/2018/10/thumb1.png\" alt=\"\" width=\"246\" height=\"191\" />\r\n\r\nasdfsdfasdfsdfadfsa', 'Evento 1', '', 'publish', 'closed', 'closed', '', 'evento-hoy', '', '', '2018-10-24 14:52:50', '2018-10-24 17:52:50', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=183', 0, 'tribe_events', '', 0),
(185, 1, '2018-10-23 12:11:06', '2018-10-23 15:11:06', 'nose', 'Evento 2', '', 'publish', 'closed', 'closed', '', 'evento-manana', '', '', '2018-10-24 12:33:01', '2018-10-24 15:33:01', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=185', 0, 'tribe_events', '', 0),
(101, 1, '2018-10-11 14:47:53', '2018-10-11 17:47:53', 'No se que poner', 'Guillermo Dietrich Empiezo a agregar porque me gusta', '', 'publish', 'closed', 'closed', '', 'diego-armando-maradona', '', '', '2018-12-04 15:13:16', '2018-12-04 18:13:16', '', 0, 'http://localhost/G25/?post_type=comunidad&#038;p=101', 0, 'comunidad', '', 0),
(103, 1, '2018-10-16 11:03:13', '2018-10-16 14:03:13', '', 'Comunidad', '', 'publish', 'closed', 'closed', '', 'comunidad-g25', '', '', '2018-10-19 12:57:41', '2018-10-19 15:57:41', '', 0, 'http://localhost/G25/?page_id=103', 0, 'page', '', 0),
(126, 1, '2018-10-16 11:10:26', '2018-10-16 14:10:26', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=126', 2, 'nav_menu_item', '', 0),
(153, 4, '2018-10-19 11:24:27', '2018-10-19 14:24:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis venenatis ullamcorper orci, quis euismod felis. In vitae velit sagittis, gravida nisl vel, auctor ligula. Integer aliquam sollicitudin metus vitae lacinia. Proin pellentesque bibendum congue. Ut in viverra enim. Pellentesque bibendum elementum aliquam. Proin fermentum tincidunt tortor quis varius. Integer in quam malesuada, sodales magna in, dapibus purus.\r\n\r\nDonec nec magna at arcu molestie porttitor vitae nec nibh. Maecenas hendrerit egestas risus, eget volutpat massa lacinia nec. Nullam rutrum ac sem ut vehicula. Nullam ut turpis dictum, hendrerit erat tincidunt, feugiat lacus. Praesent pellentesque dolor id pulvinar vestibulum. Maecenas porttitor sodales lacus, a molestie dui egestas placerat. Quisque sollicitudin urna mi, quis aliquet dolor laoreet vel. Curabitur aliquet tincidunt justo. Etiam maximus, urna sit amet convallis congue, augue neque accumsan risus, eget consequat lectus dolor ac nunc. Etiam ac orci lorem. Ut sed velit sit amet mi iaculis facilisis vitae nec felis. Praesent sit amet neque massa. Nulla nec purus at urna pretium suscipit. In velit quam, faucibus sit amet nisi eget, molestie vulputate diam. Sed scelerisque velit vitae diam suscipit pellentesque.\r\n\r\nMauris id mauris quis mi hendrerit hendrerit. In pharetra risus mauris, in tempus lorem suscipit a. Nunc lacinia ex quis vestibulum malesuada. Fusce volutpat nisi ac purus pellentesque, vel sagittis magna aliquam. Sed tristique et lacus ut faucibus. Curabitur erat turpis, iaculis sit amet metus vel, suscipit gravida mauris. Pellentesque fringilla orci rutrum risus accumsan venenatis. Sed pharetra, lorem a faucibus porta, elit ex tristique quam, vitae sodales enim quam ut risus. Donec dolor lectus, facilisis et ornare id, mollis sed nisl. Ut nec dui at mauris iaculis lobortis eget eget dui.\r\n\r\nQuisque egestas aliquam fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer sed enim lacinia, rutrum felis quis, molestie lorem. Duis sollicitudin venenatis odio, in mollis eros ullamcorper et. Nunc in sapien ipsum. Etiam at eleifend elit. Aenean sodales hendrerit justo, sed venenatis ipsum consectetur in. Etiam fringilla scelerisque felis a lobortis. Ut tincidunt semper varius. Aenean volutpat congue faucibus.', 'Como nos Financiamos', '', 'publish', 'closed', 'closed', '', 'como-nos-financiamos', '', '', '2018-10-26 11:15:28', '2018-10-26 14:15:28', '', 0, 'http://localhost/G25/?page_id=153', 0, 'page', '', 0),
(131, 1, '2018-10-16 11:29:17', '2018-10-16 14:29:17', '', 'Red Federal', '', 'publish', 'closed', 'closed', '', 'red-federal', '', '', '2018-10-19 12:57:48', '2018-10-19 15:57:48', '', 0, 'http://localhost/G25/?page_id=131', 0, 'page', '', 0),
(133, 1, '2018-10-16 11:30:13', '2018-10-16 14:30:13', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2018-12-04 10:47:06', '2018-12-04 13:47:06', '', 0, 'http://localhost/G25/?p=133', 5, 'nav_menu_item', '', 0),
(212, 1, '2018-10-25 14:00:53', '2018-10-25 17:00:53', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda-2', '', '', '2018-12-04 10:47:53', '2018-12-04 13:47:53', '', 0, 'http://localhost/G25/?p=212', 4, 'nav_menu_item', '', 0),
(211, 1, '2018-10-25 14:00:52', '2018-10-25 17:00:52', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio-2', '', '', '2018-12-04 10:47:53', '2018-12-04 13:47:53', '', 0, 'http://localhost/G25/?p=211', 1, 'nav_menu_item', '', 0),
(209, 1, '2018-10-25 14:00:52', '2018-10-25 17:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '209', '', '', '2018-12-04 10:47:53', '2018-12-04 13:47:53', '', 0, 'http://localhost/G25/?p=209', 3, 'nav_menu_item', '', 0),
(208, 1, '2018-10-25 14:00:52', '2018-10-25 17:00:52', ' ', '', '', 'publish', 'closed', 'closed', '', '208', '', '', '2018-12-04 10:47:53', '2018-12-04 13:47:53', '', 0, 'http://localhost/G25/?p=208', 2, 'nav_menu_item', '', 0),
(207, 1, '2018-10-25 14:00:53', '2018-10-25 17:00:53', ' ', '', '', 'publish', 'closed', 'closed', '', '207', '', '', '2018-12-04 10:47:53', '2018-12-04 13:47:53', '', 0, 'http://localhost/G25/?p=207', 6, 'nav_menu_item', '', 0),
(206, 1, '2018-10-25 14:00:53', '2018-10-25 17:00:53', ' ', '', '', 'publish', 'closed', 'closed', '', '206', '', '', '2018-12-04 10:47:53', '2018-12-04 13:47:53', '', 0, 'http://localhost/G25/?p=206', 5, 'nav_menu_item', '', 0),
(146, 1, '2018-10-16 13:59:12', '2018-10-16 16:59:12', 'no se que poner', 'Evento 1', '', 'publish', 'closed', 'closed', '', 'evento-1', '', '', '2018-10-16 14:05:04', '2018-10-16 17:05:04', '', 0, 'http://localhost/G25/?post_type=agenda&#038;p=146', 0, 'agenda', '', 0),
(194, 1, '2018-10-24 12:33:23', '2018-10-24 15:33:23', '', 'Evento 3', '', 'publish', 'closed', 'closed', '', 'evento-3', '', '', '2018-10-24 12:33:23', '2018-10-24 15:33:23', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=194', 0, 'tribe_events', '', 0),
(196, 1, '2018-10-24 12:34:00', '2018-10-24 15:34:00', '', 'Evento 4', '', 'publish', 'closed', 'closed', '', 'evento-4', '', '', '2018-10-24 12:34:00', '2018-10-24 15:34:00', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=196', 0, 'tribe_events', '', 0),
(198, 1, '2018-10-24 12:34:36', '2018-10-24 15:34:36', '', 'Evento 5', '', 'publish', 'closed', 'closed', '', 'evento-5', '', '', '2018-10-24 12:34:36', '2018-10-24 15:34:36', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=198', 0, 'tribe_events', '', 0),
(200, 1, '2018-10-24 12:35:11', '2018-10-24 15:35:11', '', 'Evento 6', '', 'publish', 'closed', 'closed', '', 'evento-6', '', '', '2018-10-24 14:51:58', '2018-10-24 17:51:58', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=200', 0, 'tribe_events', '', 0),
(202, 1, '2018-10-24 12:35:49', '2018-10-24 15:35:49', '', 'Evento 7', '', 'publish', 'closed', 'closed', '', 'evento-7', '', '', '2018-10-24 14:52:06', '2018-10-24 17:52:06', '', 0, 'http://localhost/G25/?post_type=tribe_events&#038;p=202', 0, 'tribe_events', '', 0),
(257, 1, '2018-12-04 10:49:11', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:49:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=257', 0, 'comunidad', '', 0),
(222, 1, '2018-10-31 11:09:19', '2018-10-31 14:09:19', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio-3', '', '', '2018-12-04 10:46:01', '2018-12-04 13:46:01', '', 0, 'http://localhost/G25/?p=222', 1, 'nav_menu_item', '', 0),
(223, 1, '2018-10-31 11:09:20', '2018-10-31 14:09:20', ' ', '', '', 'publish', 'closed', 'closed', '', '223', '', '', '2018-12-04 10:46:02', '2018-12-04 13:46:02', '', 0, 'http://localhost/G25/?p=223', 3, 'nav_menu_item', '', 0),
(224, 1, '2018-10-31 11:09:19', '2018-10-31 14:09:19', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2018-12-04 10:46:01', '2018-12-04 13:46:01', '', 0, 'http://localhost/G25/?p=224', 2, 'nav_menu_item', '', 0),
(225, 1, '2018-10-31 11:09:20', '2018-10-31 14:09:20', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2018-12-04 10:46:02', '2018-12-04 13:46:02', '', 0, 'http://localhost/G25/?p=225', 5, 'nav_menu_item', '', 0),
(226, 1, '2018-10-31 11:09:20', '2018-10-31 14:09:20', '', 'Ser Fiscal', '', 'publish', 'closed', 'closed', '', 'ser-fiscal-2', '', '', '2018-12-04 10:46:02', '2018-12-04 13:46:02', '', 0, 'http://localhost/G25/?p=226', 6, 'nav_menu_item', '', 0),
(227, 1, '2018-10-31 11:09:20', '2018-10-31 14:09:20', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda-3', '', '', '2018-12-04 10:46:02', '2018-12-04 13:46:02', '', 0, 'http://localhost/G25/?p=227', 4, 'nav_menu_item', '', 0),
(228, 1, '2018-10-31 11:10:55', '2018-10-31 14:10:55', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio-4', '', '', '2018-12-04 10:47:30', '2018-12-04 13:47:30', '', 0, 'http://localhost/G25/?p=228', 1, 'nav_menu_item', '', 0),
(229, 1, '2018-10-31 11:10:56', '2018-10-31 14:10:56', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2018-12-04 10:47:30', '2018-12-04 13:47:30', '', 0, 'http://localhost/G25/?p=229', 3, 'nav_menu_item', '', 0),
(230, 1, '2018-10-31 11:10:56', '2018-10-31 14:10:56', ' ', '', '', 'publish', 'closed', 'closed', '', '230', '', '', '2018-12-04 10:47:30', '2018-12-04 13:47:30', '', 0, 'http://localhost/G25/?p=230', 2, 'nav_menu_item', '', 0),
(231, 1, '2018-10-31 11:10:56', '2018-10-31 14:10:56', ' ', '', '', 'publish', 'closed', 'closed', '', '231', '', '', '2018-12-04 10:47:30', '2018-12-04 13:47:30', '', 0, 'http://localhost/G25/?p=231', 5, 'nav_menu_item', '', 0),
(232, 1, '2018-10-31 11:10:56', '2018-10-31 14:10:56', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda-4', '', '', '2018-12-04 10:47:30', '2018-12-04 13:47:30', '', 0, 'http://localhost/G25/?p=232', 4, 'nav_menu_item', '', 0),
(259, 1, '2018-12-04 10:49:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:49:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=259', 0, 'comunidad', '', 0),
(237, 1, '2018-11-06 11:49:35', '2018-11-06 14:49:35', '', 'Esteban-Bullrich', '', 'inherit', 'closed', 'closed', '', 'esteban-bullrich', '', '', '2018-11-06 11:49:35', '2018-11-06 14:49:35', '', 137, 'http://localhost/G25/wp-content/uploads/2018/10/Esteban-Bullrich.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2018-12-04 10:49:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:49:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=258', 0, 'comunidad', '', 0),
(238, 1, '2018-11-06 11:54:58', '2018-11-06 14:54:58', '', 'Guillermo Dietrich', '', 'inherit', 'closed', 'closed', '', '101-autosave-v1', '', '', '2018-11-06 11:54:58', '2018-11-06 14:54:58', '', 101, 'http://localhost/G25/101-autosave-v1/', 0, 'revision', '', 0),
(239, 1, '2018-11-06 11:55:05', '2018-11-06 14:55:05', '', 'Guillo-Dietrich', '', 'inherit', 'closed', 'closed', '', 'guillo-dietrich', '', '', '2018-11-06 11:55:05', '2018-11-06 14:55:05', '', 101, 'http://localhost/G25/wp-content/uploads/2018/10/Guillo-Dietrich.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2018-11-06 12:00:23', '2018-11-06 15:00:23', '', 'FELIPE-MIGUEL', '', 'inherit', 'closed', 'closed', '', 'felipe-miguel', '', '', '2018-11-06 12:00:23', '2018-11-06 15:00:23', '', 240, 'http://localhost/G25/wp-content/uploads/2018/11/FELIPE-MIGUEL-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2018-11-06 12:04:40', '2018-11-06 15:04:40', '', 'Franco Moccia', '', 'publish', 'closed', 'closed', '', 'franco-moccia', '', '', '2018-11-06 12:04:40', '2018-11-06 15:04:40', '', 0, 'http://localhost/G25/?post_type=comunidad&#038;p=244', 4, 'comunidad', '', 0),
(245, 1, '2018-11-06 12:04:26', '2018-11-06 15:04:26', '', 'Franco-Moccia', '', 'inherit', 'closed', 'closed', '', 'franco-moccia', '', '', '2018-11-06 12:04:26', '2018-11-06 15:04:26', '', 244, 'http://localhost/G25/wp-content/uploads/2018/11/Franco-Moccia-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2018-11-06 12:06:27', '2018-11-06 15:06:27', '', 'Juan E. Curutchet', '', 'publish', 'closed', 'closed', '', 'juan-e-curutchet', '', '', '2018-11-06 12:06:27', '2018-11-06 15:06:27', '', 0, 'http://localhost/G25/?post_type=comunidad&#038;p=246', 3, 'comunidad', '', 0),
(247, 1, '2018-11-06 12:06:12', '2018-11-06 15:06:12', '', 'Juan-Curutchet', '', 'inherit', 'closed', 'closed', '', 'juan-curutchet', '', '', '2018-11-06 12:06:12', '2018-11-06 15:06:12', '', 246, 'http://localhost/G25/wp-content/uploads/2018/11/Juan-Curutchet.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2018-11-06 12:09:34', '2018-11-06 15:09:34', '', 'Juan José Méndez', '', 'publish', 'closed', 'closed', '', 'ramon-lanus', '', '', '2018-11-06 12:13:31', '2018-11-06 15:13:31', '', 0, 'http://localhost/G25/?post_type=comunidad&#038;p=248', 5, 'comunidad', '', 0),
(254, 1, '2018-11-06 12:12:42', '2018-11-06 15:12:42', '', 'Juanjo-Mendez2017', '', 'inherit', 'closed', 'closed', '', 'juanjo-mendez2017', '', '', '2018-11-06 12:12:42', '2018-11-06 15:12:42', '', 248, 'http://localhost/G25/wp-content/uploads/2018/11/Juanjo-Mendez2017.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2018-11-06 12:13:00', '2018-11-06 15:13:00', '', 'Juan JOSÉ MÉNDEZ', '', 'inherit', 'closed', 'closed', '', '248-autosave-v1', '', '', '2018-11-06 12:13:00', '2018-11-06 15:13:00', '', 248, 'http://localhost/G25/248-autosave-v1/', 0, 'revision', '', 0),
(260, 1, '2018-12-04 10:52:43', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:52:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=260', 0, 'comunidad', '', 0),
(261, 1, '2018-12-04 10:53:06', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:53:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=261', 0, 'comunidad', '', 0),
(262, 1, '2018-12-04 10:53:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:53:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=262', 0, 'comunidad', '', 0),
(263, 1, '2018-12-04 10:53:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:53:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=263', 0, 'comunidad', '', 0),
(264, 1, '2018-12-04 10:53:45', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 10:53:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=264', 0, 'comunidad', '', 0),
(275, 1, '2018-12-04 15:04:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:04:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=275', 0, 'comunidad', '', 0),
(266, 1, '2018-12-04 14:42:41', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 14:42:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=266', 0, 'post', '', 0),
(267, 1, '2018-12-04 14:44:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 14:44:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=tribe_events&p=267', 0, 'tribe_events', '', 0),
(268, 1, '2018-12-04 14:50:05', '2018-12-04 17:50:05', 'no se que poner', 'Nota 7', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-12-04 14:50:05', '2018-12-04 17:50:05', '', 42, 'http://localhost/G25/42-revision-v1/', 0, 'revision', '', 0),
(273, 1, '2018-12-04 15:00:31', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:00:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=273', 0, 'comunidad', '', 0),
(274, 1, '2018-12-04 15:04:28', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:04:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=274', 0, 'comunidad', '', 0),
(271, 1, '2018-12-04 15:00:07', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:00:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=271', 0, 'comunidad', '', 0),
(272, 1, '2018-12-04 15:00:24', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:00:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=272', 0, 'comunidad', '', 0),
(276, 1, '2018-12-04 15:05:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:05:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=276', 0, 'comunidad', '', 0),
(279, 1, '2018-12-04 15:19:16', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:19:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=279', 0, 'comunidad', '', 0),
(280, 1, '2018-12-04 15:22:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:22:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=280', 0, 'post', '', 0),
(278, 1, '2018-12-04 15:06:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 15:06:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=278', 0, 'comunidad', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_termmeta`
--

CREATE TABLE `g25_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_terms`
--

CREATE TABLE `g25_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ;

--
-- Volcado de datos para la tabla `g25_terms`
--

INSERT INTO `g25_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'nota', 'nota', 0),
(8, 'G25 Capital Federal', 'g25-capital-federal', 0),
(4, 'Congresos', 'congresos', 0),
(14, 'G25 - Capital Federal', 'g25-capital-federal', 0),
(7, 'G25 Cordoba', 'g25-cordoba', 0),
(9, 'destacado', 'destacado', 0),
(10, 'MP-ConFiscal-ConContacto', 'mp-confiscal-concontacto', 0),
(11, 'G25 Cordoba', 'g25-cordoba', 0),
(15, 'G25 - Cordoba', 'g25-cordoba', 0),
(18, 'destacado', 'destacado', 0),
(19, 'G25 - Buenos Aires', 'g25-buenos-aires', 0),
(20, 'MP-SinFiscal-ConContacto', 'mp-sinfiscal-concontacto', 0),
(21, 'Footer-ConFinancia', 'footer-confinancia', 0),
(22, 'Footer-SinFinancia', 'footer-sinfinancia', 0),
(23, 'MP-ConFiscal-SinContacto', 'mp-confiscal-sincontacto', 0),
(24, 'MP-SinFiscal-SinContacto', 'mp-sinfiscal-sincontacto', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_term_relationships`
--

CREATE TABLE `g25_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ;

--
-- Volcado de datos para la tabla `g25_term_relationships`
--

INSERT INTO `g25_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(198, 14, 0),
(16, 8, 0),
(16, 4, 0),
(10, 4, 0),
(42, 8, 0),
(29, 4, 0),
(10, 7, 0),
(29, 7, 0),
(32, 7, 0),
(35, 8, 0),
(39, 8, 0),
(208, 20, 0),
(10, 9, 0),
(16, 9, 0),
(32, 2, 0),
(42, 2, 0),
(39, 2, 0),
(35, 2, 0),
(29, 2, 0),
(10, 2, 0),
(16, 2, 0),
(121, 10, 0),
(126, 10, 0),
(123, 10, 0),
(169, 10, 0),
(185, 15, 0),
(124, 10, 0),
(133, 10, 0),
(146, 11, 0),
(211, 20, 0),
(158, 10, 0),
(183, 14, 0),
(183, 18, 0),
(202, 15, 0),
(200, 14, 0),
(209, 20, 0),
(212, 20, 0),
(206, 20, 0),
(207, 20, 0),
(221, 21, 0),
(222, 23, 0),
(224, 23, 0),
(223, 23, 0),
(227, 23, 0),
(225, 23, 0),
(226, 23, 0),
(228, 24, 0),
(230, 24, 0),
(229, 24, 0),
(232, 24, 0),
(231, 24, 0),
(42, 9, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_term_taxonomy`
--

CREATE TABLE `g25_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ;

--
-- Volcado de datos para la tabla `g25_term_taxonomy`
--

INSERT INTO `g25_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 7),
(8, 8, 'category', '', 2, 4),
(4, 4, 'post_tag', '', 0, 3),
(15, 15, 'tribe_events_cat', '', 0, 2),
(7, 7, 'category', '', 2, 3),
(9, 9, 'category', '', 0, 3),
(10, 10, 'nav_menu', '', 0, 7),
(11, 11, 'geografico', '', 0, 1),
(14, 14, 'tribe_events_cat', '', 0, 3),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'tribe_events_cat', '', 0, 0),
(20, 20, 'nav_menu', '', 0, 6),
(21, 21, 'nav_menu', '', 0, 1),
(22, 22, 'nav_menu', '', 0, 0),
(23, 23, 'nav_menu', '', 0, 6),
(24, 24, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_usermeta`
--

CREATE TABLE `g25_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ;

--
-- Volcado de datos para la tabla `g25_usermeta`
--

INSERT INTO `g25_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Administrador'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'g25_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'g25_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"7f307e08410976c42b25df6d2b7937f4e50498cec2209e3054e3f04566f05415\";a:4:{s:10:\"expiration\";i:1544103687;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1543930887;}s:64:\"1157e6a1892ccfb952f3c8c97422762362226ffb7a5bd45f30a1166d96544e10\";a:4:{s:10:\"expiration\";i:1544132182;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1543959382;}s:64:\"92ebc5656a78cc7ff4a572de74fdcdc7f48a79aefb89086326ef15aa1f8d119d\";a:4:{s:10:\"expiration\";i:1544132208;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1543959408;}}'),
(32, 1, 'tribe_setDefaultNavMenuBoxes', '1'),
(33, 1, 'nav_menu_recently_edited', '10'),
(34, 1, 'closedpostboxes_page', 'a:0:{}'),
(35, 1, 'metaboxhidden_page', 'a:5:{i:0;s:23:\"acf-group_5bbcc8a06f6c3\";i:1;s:23:\"acf-group_5bbcc587061ae\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";}'),
(36, 1, 'closedpostboxes_tribe_events', 'a:0:{}'),
(37, 1, 'metaboxhidden_tribe_events', 'a:9:{i:0;s:26:\"tribe_events_event_options\";i:1;s:12:\"postimagediv\";i:2;s:23:\"acf-group_5bbcc8a06f6c3\";i:3;s:23:\"acf-group_5bbcc587061ae\";i:4;s:11:\"postexcerpt\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}'),
(111, 4, 'session_tokens', 'a:1:{s:64:\"64745750829fa773b7b3a01166ff374b8725aaf39d396d66c6cb80a94aba9d9f\";a:4:{s:10:\"expiration\";i:1540736551;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1540563751;}}'),
(40, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(64, 3, 'nickname', 'autor'),
(41, 1, 'tribe-dismiss-notice', 'tribe-events-gutenberg'),
(94, 4, 'show_admin_bar_front', 'true'),
(17, 1, 'g25_dashboard_quick_press_last_post_id', '266'),
(18, 1, 'show_try_gutenberg_panel', '0'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'tribe-dismiss-notice', 'tribe-events-utc-timezone'),
(21, 1, 'tribe-dismiss-notice', 'php-deprecated'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(24, 1, 'g25_user-settings', 'libraryContent=browse&posts_list_mode=list&editor_expand=on&editor=tinymce&post_dfw=off'),
(25, 1, 'g25_user-settings-time', '1540393847'),
(26, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(27, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:22:\"tribe_dashboard_widget\";i:1;s:17:\"dashboard_primary\";}'),
(30, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(31, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(28, 1, 'manageedit-postcolumnshidden', 'a:1:{i:0;s:8:\"comments\";}'),
(29, 1, 'edit_post_per_page', '20'),
(95, 4, 'locale', ''),
(38, 1, 'closedpostboxes_comunidad', 'a:0:{}'),
(39, 1, 'metaboxhidden_comunidad', 'a:2:{i:0;s:23:\"acf-group_5bbcc587061ae\";i:1;s:7:\"slugdiv\";}'),
(96, 4, 'g25_capabilities', 'a:2:{s:17:\"g25_administrador\";b:1;s:6:\"author\";b:1;}'),
(93, 4, 'use_ssl', '0'),
(92, 4, 'admin_color', 'fresh'),
(91, 4, 'comment_shortcuts', 'false'),
(90, 4, 'syntax_highlighting', 'true'),
(89, 4, 'rich_editing', 'true'),
(88, 4, 'description', ''),
(87, 4, 'last_name', ''),
(86, 4, 'first_name', 'Administrador G25'),
(85, 4, 'nickname', 'adming25'),
(84, 1, 'metaboxhidden_wpfront-user-role-editor-add-new', 'a:1:{i:0;s:18:\"postbox-Deprecated\";}'),
(83, 1, 'closedpostboxes_wpfront-user-role-editor-add-new', 'a:0:{}'),
(65, 3, 'first_name', 'Autor'),
(66, 3, 'last_name', ''),
(67, 3, 'description', ''),
(68, 3, 'rich_editing', 'true'),
(69, 3, 'syntax_highlighting', 'true'),
(70, 3, 'comment_shortcuts', 'false'),
(71, 3, 'admin_color', 'fresh'),
(72, 3, 'use_ssl', '0'),
(73, 3, 'show_admin_bar_front', 'true'),
(74, 3, 'locale', ''),
(75, 3, 'g25_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(76, 3, 'g25_user_level', '2'),
(77, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(79, 3, 'g25_dashboard_quick_press_last_post_id', '216'),
(80, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(81, 3, 'tribe-dismiss-notice', 'tribe-events-gutenberg'),
(97, 4, 'g25_user_level', '2'),
(98, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(100, 4, 'g25_dashboard_quick_press_last_post_id', '218'),
(101, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(102, 4, 'tribe-dismiss-notice', 'tribe-events-gutenberg'),
(103, 4, 'show_welcome_panel', '0'),
(104, 4, 'nav_menu_recently_edited', '20'),
(105, 4, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(106, 4, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:\"add-post-type-comunidad\";i:1;s:26:\"add-post-type-tribe_events\";i:2;s:12:\"add-post_tag\";}'),
(107, 4, 'tribe_setDefaultNavMenuBoxes', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_users`
--

CREATE TABLE `g25_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ;

--
-- Volcado de datos para la tabla `g25_users`
--

INSERT INTO `g25_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B2wYUwpic8XUYeOfu.a5GbkxqD5IGr1', 'admin', 'tanomartin05@gmail.com', '', '2018-10-08 13:22:47', '1539035494:$P$B.xu41cqEAd3Wy1HwuOjq.c7.0YqS..', 0, 'admin'),
(4, 'adming25', '$P$B0VoJt59/.mbRTnAlgHk4Jz2Q7aJt40', 'adming25', 'adming25@gmail.com', '', '2018-10-26 14:02:19', '', 0, 'Administrador G25'),
(3, 'autor', '$P$BzOZQjaH.Q7w7aMSlFfa7SpxucVm01/', 'autor', 'tanomartin05@yahoo.com.ar', '', '2018-10-26 13:28:59', '', 0, 'Autor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_wpfront_ure_login_redirect`
--

CREATE TABLE `g25_wpfront_ure_login_redirect` (
  `id` bigint(20) NOT NULL,
  `role` varchar(250) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `deny_wpadmin` tinyint(1) DEFAULT NULL,
  `disable_toolbar` tinyint(1) DEFAULT NULL,
  `logout_url` varchar(2000) NOT NULL DEFAULT ''
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g25_wpfront_ure_options`
--

CREATE TABLE `g25_wpfront_ure_options` (
  `id` bigint(20) NOT NULL,
  `option_name` varchar(250) DEFAULT NULL,
  `option_value` longtext
) ;

--
-- Volcado de datos para la tabla `g25_wpfront_ure_options`
--

INSERT INTO `g25_wpfront_ure_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'g25_wpfront_ure_options-db-version', '2.14.1'),
(2, 'attachment_capabilities_processed', '1'),
(3, 'user_permission_capabilities_processed', '1'),
(4, 'g25_wpfront_ure_login_redirect-db-version', '2.14.1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `g25_commentmeta`
--
ALTER TABLE `g25_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `g25_comments`
--
ALTER TABLE `g25_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `g25_links`
--
ALTER TABLE `g25_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `g25_options`
--
ALTER TABLE `g25_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `g25_postmeta`
--
ALTER TABLE `g25_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `g25_posts`
--
ALTER TABLE `g25_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `g25_termmeta`
--
ALTER TABLE `g25_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `g25_terms`
--
ALTER TABLE `g25_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `g25_term_relationships`
--
ALTER TABLE `g25_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `g25_term_taxonomy`
--
ALTER TABLE `g25_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `g25_usermeta`
--
ALTER TABLE `g25_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `g25_users`
--
ALTER TABLE `g25_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `g25_wpfront_ure_login_redirect`
--
ALTER TABLE `g25_wpfront_ure_login_redirect`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `g25_wpfront_ure_options`
--
ALTER TABLE `g25_wpfront_ure_options`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `g25_commentmeta`
--
ALTER TABLE `g25_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_comments`
--
ALTER TABLE `g25_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_links`
--
ALTER TABLE `g25_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_options`
--
ALTER TABLE `g25_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_postmeta`
--
ALTER TABLE `g25_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_posts`
--
ALTER TABLE `g25_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_termmeta`
--
ALTER TABLE `g25_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_terms`
--
ALTER TABLE `g25_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_term_taxonomy`
--
ALTER TABLE `g25_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_usermeta`
--
ALTER TABLE `g25_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_users`
--
ALTER TABLE `g25_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_wpfront_ure_login_redirect`
--
ALTER TABLE `g25_wpfront_ure_login_redirect`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `g25_wpfront_ure_options`
--
ALTER TABLE `g25_wpfront_ure_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
