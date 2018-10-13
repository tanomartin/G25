-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2018 a las 03:31:30
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

--
-- Volcado de datos para la tabla `g25_comments`
--

INSERT INTO `g25_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-08 10:22:47', '2018-10-08 13:22:47', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visitá la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
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
(29, 'rewrite_rules', 'a:238:{s:28:\"event-aggregator/(insert)/?$\";s:53:\"index.php?tribe-aggregator=1&tribe-action=$matches[1]\";s:25:\"(?:event)/([^/]+)/ical/?$\";s:56:\"index.php?ical=1&name=$matches[1]&post_type=tribe_events\";s:28:\"(?:events)/(?:page)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:41:\"(?:events)/(?:featured)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&paged=$matches[1]\";s:38:\"(?:events)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]\";s:51:\"(?:events)/(?:featured)/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&feed=$matches[1]\";s:23:\"(?:events)/(?:month)/?$\";s:51:\"index.php?post_type=tribe_events&eventDisplay=month\";s:36:\"(?:events)/(?:month)/(?:featured)/?$\";s:62:\"index.php?post_type=tribe_events&eventDisplay=month&featured=1\";s:37:\"(?:events)/(?:month)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:37:\"(?:events)/(?:list)/(?:page)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:50:\"(?:events)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1&paged=$matches[1]\";s:22:\"(?:events)/(?:list)/?$\";s:50:\"index.php?post_type=tribe_events&eventDisplay=list\";s:35:\"(?:events)/(?:list)/(?:featured)/?$\";s:61:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1\";s:23:\"(?:events)/(?:today)/?$\";s:49:\"index.php?post_type=tribe_events&eventDisplay=day\";s:36:\"(?:events)/(?:today)/(?:featured)/?$\";s:60:\"index.php?post_type=tribe_events&eventDisplay=day&featured=1\";s:27:\"(?:events)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:40:\"(?:events)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:84:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]&featured=1\";s:33:\"(?:events)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]\";s:46:\"(?:events)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:82:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:26:\"(?:events)/(?:featured)/?$\";s:43:\"index.php?post_type=tribe_events&featured=1\";s:13:\"(?:events)/?$\";s:53:\"index.php?post_type=tribe_events&eventDisplay=default\";s:18:\"(?:events)/ical/?$\";s:39:\"index.php?post_type=tribe_events&ical=1\";s:31:\"(?:events)/(?:featured)/ical/?$\";s:50:\"index.php?post_type=tribe_events&ical=1&featured=1\";s:38:\"(?:events)/(\\d{4}-\\d{2}-\\d{2})/ical/?$\";s:78:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]\";s:47:\"(?:events)/(\\d{4}-\\d{2}-\\d{2})/ical/featured/?$\";s:89:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:60:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:73:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:55:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$\";s:80:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month\";s:68:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/(?:featured)/?$\";s:91:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&featured=1\";s:69:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:82:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:54:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list\";s:67:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/?$\";s:90:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1\";s:55:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day\";s:68:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/(?:featured)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&featured=1\";s:73:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:86:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:59:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$\";s:102:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:72:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:113:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:65:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:78:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:50:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2\";s:63:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&feed=rss2\";s:50:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$\";s:68:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1\";s:63:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/ical/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&ical=1\";s:75:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]\";s:88:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&feed=$matches[2]\";s:58:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/?$\";s:93:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=default\";s:45:\"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/?$\";s:82:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=default\";s:44:\"(?:events)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:57:\"(?:events)/(?:tag)/([^/]+)/(?:featured)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:39:\"(?:events)/(?:tag)/([^/]+)/(?:month)/?$\";s:67:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month\";s:52:\"(?:events)/(?:tag)/([^/]+)/(?:month)/(?:featured)/?$\";s:78:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&featured=1\";s:53:\"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:66:\"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:38:\"(?:events)/(?:tag)/([^/]+)/(?:list)/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list\";s:51:\"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:featured)/?$\";s:77:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1\";s:39:\"(?:events)/(?:tag)/([^/]+)/(?:today)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day\";s:52:\"(?:events)/(?:tag)/([^/]+)/(?:today)/(?:featured)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&featured=1\";s:57:\"(?:events)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:70:\"(?:events)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:43:\"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$\";s:89:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:56:\"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:100:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:49:\"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:62:\"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:34:\"(?:events)/(?:tag)/([^/]+)/feed/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2\";s:47:\"(?:events)/(?:tag)/([^/]+)/(?:featured)/feed/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2&featured=1\";s:34:\"(?:events)/(?:tag)/([^/]+)/ical/?$\";s:55:\"index.php?post_type=tribe_events&tag=$matches[1]&ical=1\";s:47:\"(?:events)/(?:tag)/([^/]+)/(?:featured)/ical/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&ical=1\";s:59:\"(?:events)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]\";s:72:\"(?:events)/(?:tag)/([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&feed=$matches[2]\";s:42:\"(?:events)/(?:tag)/([^/]+)/(?:featured)/?$\";s:59:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1\";s:29:\"(?:events)/(?:tag)/([^/]+)/?$\";s:69:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=default\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"event/?$\";s:32:\"index.php?post_type=tribe_events\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=tribe_events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"venue/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"venue/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"venue/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"venue/([^/]+)/embed/?$\";s:44:\"index.php?tribe_venue=$matches[1]&embed=true\";s:26:\"venue/([^/]+)/trackback/?$\";s:38:\"index.php?tribe_venue=$matches[1]&tb=1\";s:34:\"venue/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&paged=$matches[2]\";s:41:\"venue/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&cpage=$matches[2]\";s:30:\"venue/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?tribe_venue=$matches[1]&page=$matches[2]\";s:22:\"venue/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"venue/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"venue/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"organizer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"organizer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"organizer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"organizer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"organizer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"organizer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"organizer/([^/]+)/embed/?$\";s:48:\"index.php?tribe_organizer=$matches[1]&embed=true\";s:30:\"organizer/([^/]+)/trackback/?$\";s:42:\"index.php?tribe_organizer=$matches[1]&tb=1\";s:38:\"organizer/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&paged=$matches[2]\";s:45:\"organizer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]\";s:34:\"organizer/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?tribe_organizer=$matches[1]&page=$matches[2]\";s:26:\"organizer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"organizer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"organizer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"organizer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"organizer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"organizer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:45:\"index.php?tribe_events=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:39:\"index.php?tribe_events=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?tribe_events=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"events/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:49:\"events/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:30:\"events/category/(.+?)/embed/?$\";s:49:\"index.php?tribe_events_cat=$matches[1]&embed=true\";s:42:\"events/category/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]\";s:24:\"events/category/(.+?)/?$\";s:38:\"index.php?tribe_events_cat=$matches[1]\";s:41:\"deleted_event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"deleted_event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"deleted_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"deleted_event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"deleted_event/([^/]+)/embed/?$\";s:46:\"index.php?deleted_event=$matches[1]&embed=true\";s:34:\"deleted_event/([^/]+)/trackback/?$\";s:40:\"index.php?deleted_event=$matches[1]&tb=1\";s:42:\"deleted_event/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&paged=$matches[2]\";s:49:\"deleted_event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&cpage=$matches[2]\";s:38:\"deleted_event/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?deleted_event=$matches[1]&page=$matches[2]\";s:30:\"deleted_event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"deleted_event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"deleted_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"deleted_event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:41:\"add-search-to-menu/add-search-to-menu.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:43:\"the-events-calendar/the-events-calendar.php\";i:3;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(94, 'g25_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:101:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:74:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:30:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:13:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:17:\"edit_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_AR', 'yes'),
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
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:7:{i:1539390171;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1539390223;a:1:{s:39:\"tribe_aggregator_process_insert_records\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:17:\"tribe-every15mins\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1539393771;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1539436996;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539437920;a:1:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1539440313;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539007324;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(171, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/es_AR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_AR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/es_AR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1539387722;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(147, 'fs_debug_mode', '', 'yes'),
(148, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:2086;a:3:{s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:11:\"plugin_data\";a:1:{s:18:\"add-search-to-menu\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}s:17:\"install_timestamp\";i:1539005545;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";s:5:\"4.1.2\";s:14:\"plugin_version\";s:5:\"4.1.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1539005545;s:7:\"version\";s:5:\"4.1.2\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1539005558;s:7:\"version\";s:5:\"4.1.2\";}}}s:13:\"file_slug_map\";a:1:{s:41:\"add-search-to-menu/add-search-to-menu.php\";s:18:\"add-search-to-menu\";}s:7:\"plugins\";a:1:{s:18:\"add-search-to-menu\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:12:\"Ivory Search\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:7:\"version\";s:5:\"4.1.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_e05b040b84ff5014d0f0955127743\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2086\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}s:9:\"unique_id\";s:32:\"5ae55e1071506e204917dda6c496e91f\";}', 'yes'),
(348, '_site_transient_timeout_theme_roots', '1539389529', 'no'),
(349, '_site_transient_theme_roots', 'a:1:{s:3:\"g25\";s:7:\"/themes\";}', 'no'),
(146, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:36:\"add-search-to-menu/includes/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.1.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1539120793;s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";}}s:7:\"abspath\";s:56:\"C:\\Program Files (x86)\\EasyPHP-Devserver-17\\eds-www\\G25/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:8:\"sdk_path\";s:36:\"add-search-to-menu/includes/freemius\";s:7:\"version\";s:5:\"2.1.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1539120793;}}', 'yes'),
(123, '_site_transient_timeout_browser_472ebe51f5f5af98892f0d581467503c', '1539609797', 'no'),
(124, '_site_transient_browser_472ebe51f5f5af98892f0d581467503c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'fs_api_cache', 'a:1:{s:30:\"get:/v1/plugins/2086/info.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":14:{s:9:\"plugin_id\";s:4:\"2086\";s:3:\"url\";s:24:\"https://ivorysearch.com/\";s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";N;s:15:\"card_banner_url\";N;s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:3:\"254\";s:7:\"created\";s:19:\"2018-05-16 09:30:54\";s:7:\"updated\";s:19:\"2018-06-27 15:53:25\";s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/2086/icons/41754c5d23d11f794625602703d88539.jpg\";}s:7:\"created\";i:1539005550;s:9:\"timestamp\";i:1539610350;}}', 'yes'),
(150, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(153, 'widget_is_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'dismissed_update_core', 'a:1:{s:11:\"4.9.8|es_AR\";b:1;}', 'no'),
(166, 'ivory_search', 'a:5:{i:0;b:0;i:1;b:0;i:2;b:0;s:21:\"dismiss_admin_notices\";i:1;s:10:\"menu_style\";s:7:\"default\";}', 'yes'),
(344, 'category_children', 'a:1:{i:2;a:2:{i:0;i:7;i:1;i:8;}}', 'yes'),
(182, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1539387729;s:7:\"checked\";a:1:{s:3:\"g25\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(160, 'tribe_events_calendar_options', 'a:6:{s:14:\"schema-version\";s:8:\"4.6.24.1\";s:27:\"recurring_events_are_hidden\";s:6:\"hidden\";s:21:\"previous_ecp_versions\";a:2:{i:0;s:1:\"0\";i:1;s:6:\"4.6.24\";}s:18:\"latest_ecp_version\";s:8:\"4.6.24.1\";s:39:\"last-update-message-the-events-calendar\";s:6:\"4.6.24\";s:24:\"front_page_event_archive\";b:0;}', 'yes'),
(161, 'widget_tribe-events-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'tribe_last_save_post', '1539389547', 'yes'),
(177, 'theme_mods_g25', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:10;}}', 'yes'),
(179, 'current_theme', 'G25', 'yes'),
(180, 'theme_switched', '', 'yes');
INSERT INTO `g25_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(316, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1539387729;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:5:\"4.1.3\";s:43:\"the-events-calendar/the-events-calendar.php\";s:8:\"4.6.24.1\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"add-search-to-menu/add-search-to-menu.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/add-search-to-menu\";s:4:\"slug\";s:18:\"add-search-to-menu\";s:6:\"plugin\";s:41:\"add-search-to-menu/add-search-to-menu.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/add-search-to-menu/\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/plugin/add-search-to-menu.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-256x256.jpg?rev=1920729\";s:2:\"1x\";s:71:\"https://ps.w.org/add-search-to-menu/assets/icon-128x128.jpg?rev=1920729\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/add-search-to-menu/assets/banner-1544x500.jpg?rev=1920729\";s:2:\"1x\";s:73:\"https://ps.w.org/add-search-to-menu/assets/banner-772x250.jpg?rev=1920729\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"the-events-calendar/the-events-calendar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/the-events-calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:6:\"plugin\";s:43:\"the-events-calendar/the-events-calendar.php\";s:11:\"new_version\";s:8:\"4.6.24.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/the-events-calendar/\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/plugin/the-events-calendar.4.6.24.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-256x256.png?rev=1679210\";s:2:\"1x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-128x128.png?rev=1679210\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/the-events-calendar/assets/banner-1544x500.png?rev=1907269\";s:2:\"1x\";s:74:\"https://ps.w.org/the-events-calendar/assets/banner-772x250.png?rev=1907269\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(317, 'acf_version', '5.7.7', 'yes'),
(255, '_site_transient_timeout_browser_c91c259fd5f3fa8303f885fec872baad', '1539640317', 'no'),
(256, '_site_transient_browser_c91c259fd5f3fa8303f885fec872baad', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(351, '_transient_timeout_tribe_aggregator_services_list', '1539475245', 'no'),
(352, '_transient_tribe_aggregator_services_list', 'a:1:{s:6:\"origin\";a:1:{i:0;O:8:\"stdClass\":2:{s:2:\"id\";s:3:\"csv\";s:4:\"name\";s:8:\"CSV File\";}}}', 'no'),
(341, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

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
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_is_includes', 'a:9:{s:9:\"post_type\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:12:\"post_type_qs\";s:4:\"none\";s:13:\"tax_post_type\";a:2:{s:8:\"category\";s:4:\"post\";s:8:\"post_tag\";s:17:\"post,tribe_events\";}s:7:\"tax_rel\";s:3:\"AND\";s:10:\"date_query\";a:2:{s:5:\"after\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}s:6:\"before\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}}s:12:\"has_password\";s:4:\"null\";}'),
(6, 6, '_is_excludes', 'a:0:{}'),
(7, 6, '_is_settings', 'a:4:{s:14:\"posts_per_page\";s:2:\"10\";s:15:\"highlight_color\";s:7:\"#FFFFB9\";s:11:\"fuzzy_match\";s:1:\"2\";s:7:\"disable\";s:1:\"1\";}'),
(8, 6, '_is_locale', 'en_US'),
(36, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 17, '_wp_attached_file', '2018/10/thumb2.png'),
(14, 1, '_wp_trash_meta_time', '1539008302'),
(13, 1, '_wp_trash_meta_status', 'publish'),
(15, 1, '_wp_desired_post_slug', 'hola-mundo'),
(16, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1539388918:1'),
(19, 10, 'bajada', 'Pequeña descripción de la noticia en una o dos lineas'),
(22, 12, '_wp_attached_file', '2018/10/thumb1.png'),
(23, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 16, '_edit_lock', '1539098692:1'),
(33, 16, '_edit_last', '1'),
(28, 10, '_thumbnail_id', '12'),
(37, 16, 'bajada', 'Pequeña descripcion de la noticia en una o dos lineas'),
(38, 16, '_thumbnail_id', '17'),
(45, 28, '_is_includes', 'a:13:{s:9:\"post_type\";a:1:{s:4:\"post\";s:4:\"post\";}s:12:\"search_title\";s:1:\"1\";s:14:\"search_content\";s:1:\"1\";s:14:\"search_excerpt\";s:1:\"1\";s:12:\"post_type_qs\";s:4:\"none\";s:13:\"tax_post_type\";a:2:{s:8:\"category\";s:4:\"post\";s:8:\"post_tag\";s:17:\"post,tribe_events\";}s:9:\"tax_query\";a:1:{s:8:\"category\";a:1:{i:0;s:1:\"2\";}}s:7:\"tax_rel\";s:2:\"OR\";s:16:\"search_tax_title\";s:1:\"1\";s:15:\"search_tax_desp\";s:1:\"1\";s:12:\"custom_field\";a:1:{i:0;s:6:\"bajada\";}s:10:\"date_query\";a:2:{s:5:\"after\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}s:6:\"before\";a:3:{s:3:\"day\";s:3:\"day\";s:5:\"month\";s:5:\"month\";s:4:\"year\";s:4:\"year\";}}s:12:\"has_password\";s:4:\"null\";}'),
(46, 28, '_is_excludes', 'a:0:{}'),
(47, 28, '_is_settings', 'a:3:{s:14:\"posts_per_page\";s:1:\"6\";s:15:\"highlight_color\";s:7:\"#FFFFB9\";s:11:\"fuzzy_match\";s:1:\"2\";}'),
(48, 28, '_is_locale', 'en_US'),
(49, 29, '_edit_last', '1'),
(50, 29, '_edit_lock', '1539098677:1'),
(51, 30, '_wp_attached_file', '2018/10/thumb3.png'),
(52, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:246;s:6:\"height\";i:191;s:4:\"file\";s:18:\"2018/10/thumb3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"thumb3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 29, '_thumbnail_id', '30'),
(56, 29, 'bajada', 'Bajada de nota 3'),
(60, 32, '_edit_lock', '1539389545:1'),
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
(98, 45, '_edit_lock', '1539099095:1'),
(88, 42, '_edit_last', '1'),
(89, 42, '_edit_lock', '1539389536:1'),
(90, 43, '_wp_attached_file', '2018/10/img-nota.png'),
(91, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:553;s:6:\"height\";i:254;s:4:\"file\";s:20:\"2018/10/img-nota.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img-nota-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img-nota-300x138.png\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 42, '_thumbnail_id', '33'),
(97, 45, '_edit_last', '1'),
(161, 16, '_wp_old_date', '2018-10-08'),
(171, 73, '_edit_lock', '1539098009:1'),
(170, 73, '_edit_last', '1'),
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
(224, 82, '_edit_lock', '1539389826:1'),
(223, 82, '_edit_last', '1'),
(244, 89, '_menu_item_type', 'custom'),
(229, 10, '_bajada', 'field_5bbcc58ba4c0f'),
(230, 10, 'facebook', '1'),
(231, 10, '_facebook', 'field_5bbcc5dda4c11'),
(232, 10, 'twitter', '1'),
(233, 10, '_twitter', 'field_5bbcc5efa4c12'),
(234, 10, 'whatsapp', '1'),
(235, 10, '_whatsapp', 'field_5bbcc5fca4c13'),
(236, 88, 'bajada', 'Pequeña descripción de la noticia en una o dos lineas'),
(237, 88, '_bajada', 'field_5bbcc58ba4c0f'),
(238, 88, 'facebook', '1'),
(239, 88, '_facebook', 'field_5bbcc5dda4c11'),
(240, 88, 'twitter', '1'),
(241, 88, '_twitter', 'field_5bbcc5efa4c12'),
(242, 88, 'whatsapp', '1'),
(243, 88, '_whatsapp', 'field_5bbcc5fca4c13'),
(245, 89, '_menu_item_menu_item_parent', '0'),
(246, 89, '_menu_item_object_id', '89'),
(247, 89, '_menu_item_object', 'custom'),
(248, 89, '_menu_item_target', ''),
(249, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 89, '_menu_item_xfn', ''),
(251, 89, '_menu_item_url', 'http://localhost/G25/'),
(252, 89, '_menu_item_orphaned', '1539292091'),
(253, 90, '_menu_item_type', 'post_type'),
(254, 90, '_menu_item_menu_item_parent', '0'),
(255, 90, '_menu_item_object_id', '2'),
(256, 90, '_menu_item_object', 'page'),
(257, 90, '_menu_item_target', ''),
(258, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 90, '_menu_item_xfn', ''),
(260, 90, '_menu_item_url', ''),
(261, 90, '_menu_item_orphaned', '1539292091'),
(262, 91, '_edit_last', '1'),
(263, 91, '_wp_page_template', 'page-comunidad.php'),
(264, 91, '_edit_lock', '1539292032:1'),
(265, 93, '_menu_item_type', 'custom'),
(266, 93, '_menu_item_menu_item_parent', '0'),
(267, 93, '_menu_item_object_id', '93'),
(268, 93, '_menu_item_object', 'custom'),
(269, 93, '_menu_item_target', ''),
(270, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(271, 93, '_menu_item_xfn', ''),
(272, 93, '_menu_item_url', 'http://localhost/G25/'),
(274, 94, '_menu_item_type', 'post_type'),
(275, 94, '_menu_item_menu_item_parent', '0'),
(276, 94, '_menu_item_object_id', '91'),
(277, 94, '_menu_item_object', 'page'),
(278, 94, '_menu_item_target', ''),
(279, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 94, '_menu_item_xfn', ''),
(281, 94, '_menu_item_url', '');

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
(1, 1, '2018-10-08 10:22:47', '2018-10-08 13:22:47', 'Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, ¡y comenzá a escribir!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2018-10-08 11:18:22', '2018-10-08 14:18:22', '', 0, 'http://localhost/G25/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-08 10:22:47', '2018-10-08 13:22:47', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Buenos Aires, tengo un gato llamado Piquico y me encantan tomar mate (amargo)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Medias XYZ se fundó en 1971, y ha estado produciendo medias de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi sos nuevo en WordPress deberías ir a <a href=\"http://localhost/G25/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Divertite!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-10-08 10:22:47', '2018-10-08 13:22:47', '', 0, 'http://localhost/G25/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-08 10:22:47', '2018-10-08 13:22:47', '<h2>Quiénes somos</h2><p>La dirección de nuestra web es: http://localhost/G25.</p><h2>Qué datos personales recogemos y por qué</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador, para ayudar a la detección de spam.</p><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible en https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil será visible para el público en el contexto de su comentario.</p><h3>Multimedia</h3><p>Si subís imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><h3>Formularios de contacto</h3><h3>Cookies</h3><p>Si dejás un comentario en nuestro sitio, podés optar por guardar tu nombre, dirección de correo electrónico y sitio web en las cookies. Estos son para tu conveniencia para que no tengas que volver a ingresar tus datos cuando dejés otro comentario. Estas cookies durarán un año.</p><p>Si tenés una cuenta e iniciás sesión en este sitio, configuraremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se descarta al cerrar el navegador.</p><p>Cuando iniciás sesión, también configuraremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización en pantalla. Las cookies de inicio de sesión duran dos días y las cookies de opciones de pantalla duran un año. Si seleccionás &quot;Recordarme&quot;, tu inicio de sesión se mantendrá durante dos semanas. Si cerrás la sesión, se eliminarán las cookies de inicio de sesión.</p><p>Si editás o publicás un artículo, se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID de publicación del artículo que acabás de editar. Caduca después de 1 día.</p><h3>Contenido embebido desde otros sitios web</h3><p>Los artículos en este sitio pueden incluir contenido incrustado (por ejemplo, videos, imágenes, artículos, etc.). El contenido incrustado de otros sitios web se comporta de la misma manera que si el visitante hubiera visitado el otro sitio web.</p><p>Estos sitios web pueden recopilar tus datos, utilizar cookies, incrustar un sistema de seguimiento de terceros y supervisar su interacción con ese contenido incrustado, incluyendo el rastreo de tu interacción con el contenido incrustado si tenés una cuenta y estás conectado a ese sitio web.</p><h3>Estadísticas</h3><h2>Con quién compartimos datos</h2><h2>Cuánto tiempo guardamos tus datos</h2><p>Si dejás un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar cualquier comentario de seguimiento de forma automática en lugar de mantenerlos en una cola de moderación.</p><p>Para los usuarios que se registran en nuestro sitio web (si corresponde), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores del sitio web también pueden ver y editar esa información.</p><h2>Qué derechos tenés sobre tus datos</h2><p>Si tenés una cuenta en este sitio o has dejado comentarios, podés solicitar un archivo exportado de los datos personales tuyos que tenemos, incluidos los datos que nos hayas proporcionado. También podés solicitar que borremos cualquier dato personal tuyo que tengamos. Esto no incluye datos que estamos obligados a mantener para fines administrativos, legales o de seguridad.</p><h2>Adónde enviamos tus datos</h2><p>Los comentarios de los visitantes se pueden verificar a través de un servicio automático de detección de spam.</p><h2>Tu información de contacto</h2><h2>Información adicional</h2><h3>Cómo protegemos tus datos</h3><h3>¿Qué procedimientos de violación de datos tenemos en marcha?</h3><h3>De quiénes (terceros) recibimos datos</h3><h3>Qué toma de decisiones y/o perfiles automatizados se realizan con los datos del usuario</h3><h3>Requisitos de divulgación regulatoria de la industria</h3>', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2018-10-08 10:22:47', '2018-10-08 13:22:47', '', 0, 'http://localhost/G25/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-10-08 10:23:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 10:23:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=4', 0, 'post', '', 0),
(6, 1, '2018-10-08 10:32:31', '2018-10-08 13:32:31', 'post\npage\n1\n1\n1\nnone\npost\npost,tribe_events\nAND\nday\nmonth\nyear\nday\nmonth\nyear\nnull\n10\n#FFFFB9\n2\n1', 'Default Search Form', '', 'publish', 'closed', 'closed', '', 'default-search-form', '', '', '2018-10-08 12:59:46', '2018-10-08 15:59:46', '', 0, 'http://localhost/G25/?post_type=is_search_form&#038;p=6', 0, 'is_search_form', '', 0),
(17, 1, '2018-10-08 12:34:25', '2018-10-08 15:34:25', '', 'thumb2', '', 'inherit', 'open', 'closed', '', 'thumb2', '', '', '2018-10-08 12:34:25', '2018-10-08 15:34:25', '', 16, 'http://localhost/G25/wp-content/uploads/2018/10/thumb2.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2018-10-08 12:34:34', '2018-10-08 15:34:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-10-08 12:34:34', '2018-10-08 15:34:34', '', 16, 'http://localhost/G25/16-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-10-08 11:18:22', '2018-10-08 14:18:22', 'Bienvenido a WordPress. Esta es tu primera entrada. Editala o borrala, ¡y comenzá a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-08 11:18:22', '2018-10-08 14:18:22', '', 1, 'http://localhost/G25/2018/10/08/1-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-10-08 11:20:19', '2018-10-08 14:20:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-12 aligncenter\" src=\"http://localhost/G25/wp-content/uploads/2018/10/thumb1.png\" alt=\"\" width=\"394\" height=\"306\" />\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'publish', 'open', 'open', '', 'si-vivis-en-el-exterior-tambien-podes-ser-parte-del-cambio', '', '', '2018-10-12 21:01:58', '2018-10-13 00:01:58', '', 0, 'http://localhost/G25/?p=10', 0, 'post', '', 0),
(11, 1, '2018-10-08 11:20:19', '2018-10-08 14:20:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-10-08 11:20:19', '2018-10-08 14:20:19', '', 10, 'http://localhost/G25/2018/10/08/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-10-08 11:23:30', '2018-10-08 14:23:30', '', 'thumb1', '', 'inherit', 'open', 'closed', '', 'thumb1', '', '', '2018-10-08 11:23:30', '2018-10-08 14:23:30', '', 10, 'http://localhost/G25/wp-content/uploads/2018/10/thumb1.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2018-10-08 11:23:32', '2018-10-08 14:23:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\n\n&nbsp;\n\n&nbsp;\n\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\n\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-10-08 11:23:32', '2018-10-08 14:23:32', '', 10, 'http://localhost/G25/2018/10/08/10-autosave-v1/', 0, 'revision', '', 0),
(14, 1, '2018-10-08 11:24:17', '2018-10-08 14:24:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-12 aligncenter\" src=\"http://localhost/G25/wp-content/uploads/2018/10/thumb1.png\" alt=\"\" width=\"394\" height=\"306\" />\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-10-08 11:24:17', '2018-10-08 14:24:17', '', 10, 'http://localhost/G25/2018/10/08/10-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-10-08 12:14:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:14:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=15', 0, 'post', '', 0),
(16, 1, '2018-10-07 12:34:34', '2018-10-07 15:34:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'publish', 'open', 'open', '', 'si-vivis-en-el-exterior-tambien-podes-ser-parte-del-cambio-2', '', '', '2018-10-09 12:24:52', '2018-10-09 15:24:52', '', 0, 'http://localhost/G25/?p=16', 0, 'post', '', 0),
(19, 1, '2018-10-08 12:44:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:44:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=19', 0, 'post', '', 0),
(20, 1, '2018-10-08 12:44:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:44:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=20', 0, 'post', '', 0),
(21, 1, '2018-10-08 12:45:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:45:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=21', 0, 'post', '', 0),
(22, 1, '2018-10-08 12:45:30', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:45:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=22', 0, 'post', '', 0),
(23, 1, '2018-10-08 12:45:56', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:45:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=23', 0, 'post', '', 0),
(24, 1, '2018-10-08 12:47:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:47:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=24', 0, 'post', '', 0),
(25, 1, '2018-10-08 12:47:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:47:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=25', 0, 'post', '', 0),
(26, 1, '2018-10-08 12:52:14', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:52:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=26', 0, 'post', '', 0),
(27, 1, '2018-10-08 12:52:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 12:52:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=27', 0, 'post', '', 0),
(28, 1, '2018-10-08 12:55:41', '2018-10-08 15:55:41', 'post\n1\n1\n1\nnone\npost\npost,tribe_events\n2\nOR\n1\n1\nbajada\nday\nmonth\nyear\nday\nmonth\nyear\nnull\n6\n#FFFFB9\n2', 'nota', '', 'publish', 'closed', 'closed', '', 'nota', '', '', '2018-10-09 12:42:31', '2018-10-09 15:42:31', '', 0, 'http://localhost/G25/?post_type=is_search_form&#038;p=28', 0, 'is_search_form', '', 0),
(29, 1, '2018-10-08 14:05:08', '2018-10-08 17:05:08', 'Parrafo 1\r\n\r\nParrafo 2', 'Nota 3', '', 'publish', 'open', 'open', '', 'nota-3', '', '', '2018-10-09 12:24:37', '2018-10-09 15:24:37', '', 0, 'http://localhost/G25/?p=29', 0, 'post', '', 0),
(30, 1, '2018-10-08 14:04:51', '2018-10-08 17:04:51', '', 'thumb3', '', 'inherit', 'open', 'closed', '', 'thumb3', '', '', '2018-10-08 14:04:51', '2018-10-08 17:04:51', '', 29, 'http://localhost/G25/wp-content/uploads/2018/10/thumb3.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-10-08 14:05:08', '2018-10-08 17:05:08', 'Parrafo 1\r\n\r\nParrafo 2', 'Nota 3', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-10-08 14:05:08', '2018-10-08 17:05:08', '', 29, 'http://localhost/G25/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-10-08 14:06:25', '2018-10-08 17:06:25', 'Parrafo de nota 4\r\n\r\nParrafo segundo de nota 4', 'Nota 4', '', 'publish', 'open', 'open', '', 'nota-4', '', '', '2018-10-12 21:12:25', '2018-10-13 00:12:25', '', 0, 'http://localhost/G25/?p=32', 0, 'post', '', 0),
(33, 1, '2018-10-08 14:06:07', '2018-10-08 17:06:07', '', 'thumb4', '', 'inherit', 'open', 'closed', '', 'thumb4', '', '', '2018-10-08 14:06:07', '2018-10-08 17:06:07', '', 32, 'http://localhost/G25/wp-content/uploads/2018/10/thumb4.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-10-08 14:06:25', '2018-10-08 17:06:25', 'Parrafo de nota 4\r\n\r\nParrafo segundo de nota 4', 'Nota 4', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-10-08 14:06:25', '2018-10-08 17:06:25', '', 32, 'http://localhost/G25/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-10-08 14:07:09', '2018-10-08 17:07:09', 'no se que poner', 'Nota 5', '', 'publish', 'open', 'open', '', 'nota-5', '', '', '2018-10-09 12:24:27', '2018-10-09 15:24:27', '', 0, 'http://localhost/G25/?p=35', 0, 'post', '', 0),
(36, 1, '2018-10-08 14:07:09', '2018-10-08 17:07:09', 'no se que poner', 'Nota 5', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-10-08 14:07:09', '2018-10-08 17:07:09', '', 35, 'http://localhost/G25/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-10-08 14:07:21', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 14:07:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=37', 0, 'post', '', 0),
(38, 1, '2018-10-08 14:08:48', '2018-10-08 17:08:48', '', 'thumb5', '', 'inherit', 'open', 'closed', '', 'thumb5', '', '', '2018-10-08 14:08:48', '2018-10-08 17:08:48', '', 35, 'http://localhost/G25/wp-content/uploads/2018/10/thumb5.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2018-10-08 14:10:10', '2018-10-08 17:10:10', 'prueba nota 6', 'Nota 6', '', 'publish', 'open', 'open', '', 'nota-6', '', '', '2018-10-09 12:24:19', '2018-10-09 15:24:19', '', 0, 'http://localhost/G25/?p=39', 0, 'post', '', 0),
(40, 1, '2018-10-08 14:09:58', '2018-10-08 17:09:58', '', 'thumb6', '', 'inherit', 'open', 'closed', '', 'thumb6', '', '', '2018-10-08 14:09:58', '2018-10-08 17:09:58', '', 39, 'http://localhost/G25/wp-content/uploads/2018/10/thumb6.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-10-08 14:10:10', '2018-10-08 17:10:10', 'prueba nota 6', 'Nota 6', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-10-08 14:10:10', '2018-10-08 17:10:10', '', 39, 'http://localhost/G25/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-10-08 14:11:08', '2018-10-08 17:11:08', 'no se que poner', 'Nota 7', '', 'publish', 'open', 'open', '', 'nota-nueva-pagina', '', '', '2018-10-12 21:12:16', '2018-10-13 00:12:16', '', 0, 'http://localhost/G25/?p=42', 0, 'post', '', 0),
(43, 1, '2018-10-08 14:10:59', '2018-10-08 17:10:59', '', 'img-nota', '', 'inherit', 'open', 'closed', '', 'img-nota', '', '', '2018-10-08 14:10:59', '2018-10-08 17:10:59', '', 42, 'http://localhost/G25/wp-content/uploads/2018/10/img-nota.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-10-08 14:11:08', '2018-10-08 17:11:08', 'no se que poner', 'Nota Nueva Pagina', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-10-08 14:11:08', '2018-10-08 17:11:08', '', 42, 'http://localhost/G25/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-10-08 14:35:21', '2018-10-08 17:35:21', '', 'comunidad 1', '', 'publish', 'open', 'open', '', 'comunidad-1', '', '', '2018-10-09 11:06:22', '2018-10-09 14:06:22', '', 0, 'http://localhost/G25/?p=45', 0, 'post', '', 0),
(46, 1, '2018-10-08 14:35:21', '2018-10-08 17:35:21', '', 'comunidad 1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-08 14:35:21', '2018-10-08 17:35:21', '', 45, 'http://localhost/G25/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-10-08 20:20:30', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-08 20:20:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=47', 0, 'post', '', 0),
(48, 1, '2018-10-09 10:45:53', '2018-10-09 13:45:53', 'no se que poner', 'Nota 7', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-10-09 10:45:53', '2018-10-09 13:45:53', '', 42, 'http://localhost/G25/42-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-10-09 11:05:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:05:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=49', 0, 'post', '', 0),
(50, 1, '2018-10-09 11:15:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:15:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=50', 0, 'post', '', 0),
(51, 1, '2018-10-09 11:19:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:19:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=51', 0, 'post', '', 0),
(52, 1, '2018-10-09 11:19:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:19:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=52', 0, 'post', '', 0),
(53, 1, '2018-10-09 11:26:39', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:26:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=53', 0, 'post', '', 0),
(54, 1, '2018-10-09 11:28:13', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:28:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=54', 0, 'post', '', 0),
(55, 1, '2018-10-09 11:28:27', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:28:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=55', 0, 'post', '', 0),
(56, 1, '2018-10-09 11:29:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:29:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=56', 0, 'post', '', 0),
(57, 1, '2018-10-09 11:35:59', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:35:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=57', 0, 'post', '', 0),
(58, 1, '2018-10-09 11:36:13', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:36:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=58', 0, 'post', '', 0),
(59, 1, '2018-10-09 11:37:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:37:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=59', 0, 'post', '', 0),
(60, 1, '2018-10-09 11:37:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:37:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=60', 0, 'post', '', 0),
(61, 1, '2018-10-09 11:38:20', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:38:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=61', 0, 'post', '', 0),
(62, 1, '2018-10-09 11:39:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:39:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=62', 0, 'post', '', 0),
(63, 1, '2018-10-09 11:40:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:40:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=63', 0, 'post', '', 0),
(64, 1, '2018-10-09 11:41:11', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:41:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=64', 0, 'post', '', 0),
(65, 1, '2018-10-09 11:41:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:41:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=65', 0, 'post', '', 0),
(66, 1, '2018-10-09 11:42:18', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:42:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=66', 0, 'post', '', 0),
(67, 1, '2018-10-09 11:42:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:42:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=67', 0, 'post', '', 0),
(68, 1, '2018-10-09 11:42:59', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:42:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=68', 0, 'post', '', 0),
(69, 1, '2018-10-09 11:43:16', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:43:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=69', 0, 'post', '', 0),
(70, 1, '2018-10-09 11:43:27', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:43:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=70', 0, 'post', '', 0),
(71, 1, '2018-10-09 11:45:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:45:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=71', 0, 'post', '', 0),
(72, 1, '2018-10-09 11:47:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 11:47:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=72', 0, 'post', '', 0),
(73, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"category:nota\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Meta Nota', 'meta-nota', 'publish', 'closed', 'closed', '', 'group_5bbcc587061ae', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 0, 'http://localhost/G25/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:25:\"Bajada resumen de la nota\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:100;}', 'bajada', 'bajada', 'publish', 'closed', 'closed', '', 'field_5bbcc58ba4c0f', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5bbcc5dda4c11', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5bbcc5efa4c12', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=76', 2, 'acf-field', '', 0),
(77, 1, '2018-10-09 12:15:36', '2018-10-09 15:15:36', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_5bbcc5fca4c13', '', '', '2018-10-09 12:15:36', '2018-10-09 15:15:36', '', 73, 'http://localhost/G25/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2018-10-09 12:16:03', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-09 12:16:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=78', 0, 'post', '', 0),
(79, 1, '2018-10-09 12:18:30', '2018-10-09 15:18:30', 'Parrafo de nota 4\r\n\r\nParrafo segundo de nota 4', 'Nota 4', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-10-09 12:18:30', '2018-10-09 15:18:30', '', 32, 'http://localhost/G25/32-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-10-09 12:21:22', '2018-10-09 15:21:22', 'Parrafo de nota 4\r\n\r\nParrafo segundo de nota 4', 'Nota 4', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-10-09 12:21:22', '2018-10-09 15:21:22', '', 32, 'http://localhost/G25/32-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-10-09 12:23:47', '2018-10-09 15:23:47', 'Parrafo de nota 4\r\n\r\nParrafo segundo de nota 4', 'Nota 4', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-10-09 12:23:47', '2018-10-09 15:23:47', '', 32, 'http://localhost/G25/32-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"comunidad\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Meta Comunidad', 'meta-comunidad', 'publish', 'closed', 'closed', '', 'group_5bbcc8a06f6c3', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 0, 'http://localhost/G25/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5bbcc8afa1163', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=83', 1, 'acf-field', '', 0),
(84, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5bbcc8bca1164', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=84', 2, 'acf-field', '', 0),
(85, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5bbcc91fa1166', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=85', 3, 'acf-field', '', 0),
(86, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_5bbcc928a1167', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=86', 4, 'acf-field', '', 0),
(87, 1, '2018-10-09 12:29:11', '2018-10-09 15:29:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'web', 'web', 'publish', 'closed', 'closed', '', 'field_5bbcc8c5a1165', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 82, 'http://localhost/G25/?post_type=acf-field&#038;p=87', 5, 'acf-field', '', 0),
(88, 1, '2018-10-09 18:44:50', '2018-10-09 21:44:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in viverra elit, nec convallis diam. Duis vel ex laoreet, varius nisi vitae, rutrum ligula. Praesent a maximus lacus. Aenean efficitur nunc dui, at pharetra ante pellentesque ut. Praesent porttitor dignissim nisl, a eleifend eros tincidunt nec. Aenean in urna ut velit tempor bibendum quis id elit. Phasellus vitae purus a est rhoncus accumsan eu in ex. Proin tincidunt, quam id maximus tristique, neque sapien sodales sem, quis vulputate orci metus nec dolor. Vivamus ut maximus sapien. Quisque non augue arcu. Ut consequat metus vel mauris pellentesque mollis non non turpis.\r\n\r\n&nbsp;\r\n\r\n<img class=\"wp-image-12 aligncenter\" src=\"http://localhost/G25/wp-content/uploads/2018/10/thumb1.png\" alt=\"\" width=\"394\" height=\"306\" />\r\n\r\nAliquam et urna ut erat fermentum ornare non eu lacus. Morbi scelerisque, libero non semper malesuada, mauris sapien sollicitudin est, in cursus erat turpis ac sapien. Praesent est purus, posuere a ullamcorper semper, aliquet id erat. In hac habitasse platea dictumst. Fusce fringilla nunc id elit consequat, et molestie augue ornare. Nam turpis leo, mollis ac ligula ut, maximus convallis lacus. Sed aliquam libero ut elit convallis convallis. In consectetur at est id dapibus. Sed nunc nisl, tincidunt eget dolor vitae, viverra imperdiet eros.\r\n\r\nNunc quam mi, placerat id turpis sed, gravida pulvinar nulla. Vivamus et eros vel augue varius tincidunt eu scelerisque est. Curabitur suscipit placerat magna, quis bibendum dolor sodales eu. Sed nec gravida ante. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam sit amet pellentesque nulla, vitae gravida massa. Nullam ac nisi in nunc dictum luctus et at purus. Phasellus blandit nunc odio, a porttitor elit egestas sit amet. Nulla convallis scelerisque fringilla. Vestibulum pharetra nulla non ipsum tincidunt imperdiet. Morbi fermentum sit amet elit at faucibus. Morbi elit turpis, elementum et sapien quis, viverra blandit lorem. Ut vulputate quis leo a dignissim. Maecenas interdum semper justo, sit amet mattis libero imperdiet sed. Mauris congue fermentum risus ut fermentum.', 'Si vivis en el exterior tambien podes ser parte del cambio', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-10-09 18:44:50', '2018-10-09 21:44:50', '', 10, 'http://localhost/G25/10-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-10-11 18:08:11', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-11 18:08:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2018-10-11 18:08:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-11 18:08:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2018-10-11 18:08:52', '2018-10-11 21:08:52', '', 'Comunidad', '', 'publish', 'closed', 'closed', '', 'comunidad', '', '', '2018-10-11 18:08:52', '2018-10-11 21:08:52', '', 0, 'http://localhost/G25/?page_id=91', 0, 'page', '', 0),
(92, 1, '2018-10-11 18:08:52', '2018-10-11 21:08:52', '', 'Comunidad', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-10-11 18:08:52', '2018-10-11 21:08:52', '', 91, 'http://localhost/G25/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-10-11 18:10:30', '2018-10-11 21:10:30', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-10-11 18:11:05', '2018-10-11 21:11:05', '', 0, 'http://localhost/G25/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2018-10-11 18:10:30', '2018-10-11 21:10:30', ' ', '', '', 'publish', 'closed', 'closed', '', '94', '', '', '2018-10-11 18:11:05', '2018-10-11 21:11:05', '', 0, 'http://localhost/G25/?p=94', 2, 'nav_menu_item', '', 0),
(97, 1, '2018-10-11 18:27:19', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-11 18:27:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=97', 0, 'comunidad', '', 0),
(96, 1, '2018-10-11 18:26:45', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-11 18:26:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=96', 0, 'comunidad', '', 0),
(98, 1, '2018-10-12 21:19:19', '2018-10-13 00:19:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:50;}', 'cargo', 'cargo', 'publish', 'closed', 'closed', '', 'field_5bc139cf8efb6', '', '', '2018-10-12 21:19:19', '2018-10-13 00:19:19', '', 82, 'http://localhost/G25/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2018-10-12 21:19:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-12 21:19:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/G25/?post_type=comunidad&p=99', 0, 'comunidad', '', 0);

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
(7, 'G25 Cordoba', 'g25-cordoba', 0),
(9, 'destacado', 'destacado', 0),
(10, 'Principal', 'principal', 0);

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
(1, 1, 0),
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
(42, 9, 0),
(16, 9, 0),
(32, 2, 0),
(42, 2, 0),
(39, 2, 0),
(35, 2, 0),
(29, 2, 0),
(10, 2, 0),
(16, 2, 0),
(32, 9, 0),
(93, 10, 0),
(94, 10, 0),
(45, 1, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 7),
(8, 8, 'category', '', 2, 4),
(4, 4, 'post_tag', '', 0, 3),
(7, 7, 'category', '', 2, 3),
(9, 9, 'category', '', 0, 3),
(10, 10, 'nav_menu', '', 0, 2);

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
(2, 1, 'first_name', ''),
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
(16, 1, 'session_tokens', 'a:5:{s:64:\"f993dcef9156ac06775d292513bc9423c458884e264f1c8e847a5f9bfd3cd771\";a:4:{s:10:\"expiration\";i:1539464298;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539291498;}s:64:\"83b43774ceb885e09c4ac7b6ce937f1f3faabe554b9d8c263b39c4afd8a38b91\";a:4:{s:10:\"expiration\";i:1539464316;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539291516;}s:64:\"117915265d599aaf931dff3974801a46835ab5081e942691297a063f26f1dc1a\";a:4:{s:10:\"expiration\";i:1539464337;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539291537;}s:64:\"9d635dd45a994fad20527b51b91cd3de0100c076d1dad90807c0b86b1f4897f3\";a:4:{s:10:\"expiration\";i:1539561610;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539388810;}s:64:\"5a5efc56a17a26a7ed2d27e4b56c8bb9db19038ea536848182e1c6dfc34f256f\";a:4:{s:10:\"expiration\";i:1539561639;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539388839;}}'),
(17, 1, 'g25_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'show_try_gutenberg_panel', '0'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'tribe-dismiss-notice', 'tribe-events-utc-timezone'),
(21, 1, 'tribe-dismiss-notice', 'php-deprecated'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(24, 1, 'g25_user-settings', 'libraryContent=browse&posts_list_mode=list&editor_expand=on'),
(25, 1, 'g25_user-settings-time', '1539099610'),
(26, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(27, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:22:\"tribe_dashboard_widget\";i:1;s:17:\"dashboard_primary\";}'),
(28, 1, 'manageedit-postcolumnshidden', 'a:1:{i:0;s:8:\"comments\";}'),
(29, 1, 'edit_post_per_page', '20'),
(30, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(31, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:\"add-post-type-comunidad\";i:1;s:26:\"add-post-type-tribe_events\";i:2;s:12:\"add-post_tag\";}'),
(32, 1, 'tribe_setDefaultNavMenuBoxes', '1');

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
(1, 'admin', '$P$B2wYUwpic8XUYeOfu.a5GbkxqD5IGr1', 'admin', 'tanomartin05@gmail.com', '', '2018-10-08 13:22:47', '1539035494:$P$B.xu41cqEAd3Wy1HwuOjq.c7.0YqS..', 0, 'admin');

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
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
