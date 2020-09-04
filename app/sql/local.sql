-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-08-16 09:34:48','2020-08-16 09:34:48','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10003','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','GameMate','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:20:\"gymfitness_clases/?$\";s:37:\"index.php?post_type=gymfitness_clases\";s:50:\"gymfitness_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:45:\"gymfitness_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:37:\"gymfitness_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=gymfitness_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"gymfitness_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"gymfitness_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"gymfitness_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"gymfitness_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"gymfitness_clases/(.+?)/embed/?$\";s:50:\"index.php?gymfitness_clases=$matches[1]&embed=true\";s:36:\"gymfitness_clases/(.+?)/trackback/?$\";s:44:\"index.php?gymfitness_clases=$matches[1]&tb=1\";s:56:\"gymfitness_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:44:\"gymfitness_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&paged=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&cpage=$matches[2]\";s:40:\"gymfitness_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=14&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:2;s:43:\"gamemate_post_types/gamemate_post_types.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:83:\"C:\\Users\\julia\\Local Sites\\gamemate\\app\\public/wp-content/themes/GameMate/style.css\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','GameMate','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','GameMate','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:11:\"HELLO WORLD\";s:4:\"text\";s:11:\"Hello World\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:8:\"Number 2\";s:4:\"text\";s:8:\"Number 2\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','35','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','14','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1613122457','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar_1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar_2\";a:1:{i:0;s:6:\"text-3\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1599233695;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1599255296;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1599298491;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599299109;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599299112;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599471292;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','SAFH$.wMk>^v)3WeNfOk^0D^y:8s( Sq*/)(g?PZ-d:g,xGAVWmwQL[3vC6.{yu+','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','+]-Gu1^ugX/w,E9fGG:sz~|Q;MIny!Mh=BU{|ae^}r]{]7(vHwWz(/?]$@ZuIC.F','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:1:{s:22:\"bfmjenxHIygeNSKUGxZKH1\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B9xJo2n.Wy5VVwn617kfMIlGukYfvV1\";s:10:\"created_at\";i:1599143963;}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1599230489;s:7:\"checked\";a:1:{s:8:\"GameMate\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1597573282;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (150,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (153,'current_theme','GameMate','yes');
INSERT INTO `wp_options` VALUES (154,'theme_mods_GameMate','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu-principal\";i:2;s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (155,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (162,'recovery_mode_email_last_sent','1599143963','yes');
INSERT INTO `wp_options` VALUES (165,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (172,'_transient_health-check-site-status-result','{\"good\":\"10\",\"recommended\":\"9\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (199,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1599405758','no');
INSERT INTO `wp_options` VALUES (200,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (214,'_site_transient_timeout_browser_c51375c8235cfb78e537fdf97dea9e10','1599576673','no');
INSERT INTO `wp_options` VALUES (215,'_site_transient_browser_c51375c8235cfb78e537fdf97dea9e10','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"80.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (254,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1599225116;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (283,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1599231894;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.0\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.2\";s:43:\"gamemate_post_types/gamemate_post_types.php\";s:5:\"1.0.0\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (284,'acf_version','5.9.0','yes');
INSERT INTO `wp_options` VALUES (309,'_site_transient_timeout_theme_roots','1599232287','no');
INSERT INTO `wp_options` VALUES (310,'_site_transient_theme_roots','a:1:{s:8:\"GameMate\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (311,'category_children','a:0:{}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (4,3,'_wp_trash_meta_time','1597573473');
INSERT INTO `wp_postmeta` VALUES (5,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_time','1597573476');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (9,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,8,'_edit_lock','1599126760:1');
INSERT INTO `wp_postmeta` VALUES (11,1,'_edit_lock','1597579682:1');
INSERT INTO `wp_postmeta` VALUES (12,10,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (13,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (14,10,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (15,10,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (16,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (17,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (18,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (19,10,'_menu_item_url','http://localhost:10003/');
INSERT INTO `wp_postmeta` VALUES (20,10,'_menu_item_orphaned','1597579829');
INSERT INTO `wp_postmeta` VALUES (21,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (22,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (23,11,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (24,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (25,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (26,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (27,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (28,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (29,11,'_menu_item_orphaned','1597579830');
INSERT INTO `wp_postmeta` VALUES (30,12,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (31,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (32,12,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (33,12,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (34,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (35,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (36,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (37,12,'_menu_item_url','http://localhost:10003/');
INSERT INTO `wp_postmeta` VALUES (38,12,'_menu_item_orphaned','1597579870');
INSERT INTO `wp_postmeta` VALUES (39,13,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (40,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (41,13,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (42,13,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (43,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (44,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (45,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (46,13,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (47,13,'_menu_item_orphaned','1597579872');
INSERT INTO `wp_postmeta` VALUES (48,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (49,14,'_edit_lock','1599227403:1');
INSERT INTO `wp_postmeta` VALUES (50,16,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (51,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,16,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (53,16,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (54,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (56,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,16,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (58,16,'_menu_item_orphaned','1597579953');
INSERT INTO `wp_postmeta` VALUES (59,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (60,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (61,17,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (62,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (63,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (64,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (65,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (66,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (67,17,'_menu_item_orphaned','1597579954');
INSERT INTO `wp_postmeta` VALUES (68,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (69,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (70,18,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (71,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (72,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (73,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (74,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (75,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (76,18,'_menu_item_orphaned','1597579991');
INSERT INTO `wp_postmeta` VALUES (77,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (78,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (79,19,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (80,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (81,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (82,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (83,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (84,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (85,19,'_menu_item_orphaned','1597579992');
INSERT INTO `wp_postmeta` VALUES (95,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (96,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (97,21,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (98,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (99,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (100,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (101,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (102,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (104,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (105,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (106,22,'_menu_item_object_id','1');
INSERT INTO `wp_postmeta` VALUES (107,22,'_menu_item_object','post');
INSERT INTO `wp_postmeta` VALUES (108,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (109,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (110,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (111,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (112,22,'_menu_item_orphaned','1597580040');
INSERT INTO `wp_postmeta` VALUES (113,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (114,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (115,24,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (116,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (117,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (118,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (119,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (120,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,24,'_menu_item_orphaned','1597850698');
INSERT INTO `wp_postmeta` VALUES (133,28,'_wp_attached_file','2020/09/2-18.jpg');
INSERT INTO `wp_postmeta` VALUES (134,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:507;s:4:\"file\";s:16:\"2020/09/2-18.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"2-18-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"2-18-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"2-18-768x487.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:16:\"2-18-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:16:\"2-18-350x507.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:16:\"2-18-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"medium_old_300x190\";a:4:{s:4:\"file\";s:16:\"2-18-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (136,8,'_thumbnail_id','28');
INSERT INTO `wp_postmeta` VALUES (137,28,'_edit_lock','1599124874:1');
INSERT INTO `wp_postmeta` VALUES (138,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (139,29,'_edit_lock','1599128343:1');
INSERT INTO `wp_postmeta` VALUES (140,29,'_wp_page_template','page-no-sidebars.php');
INSERT INTO `wp_postmeta` VALUES (141,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (142,31,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (143,31,'_edit_lock','1599128193:1');
INSERT INTO `wp_postmeta` VALUES (144,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,35,'_edit_lock','1599128378:1');
INSERT INTO `wp_postmeta` VALUES (146,35,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (147,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (148,37,'_edit_lock','1599145096:1');
INSERT INTO `wp_postmeta` VALUES (149,37,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (150,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (151,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (152,40,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (153,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (154,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (155,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (156,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (157,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (159,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (160,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (161,41,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (162,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (163,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (164,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (165,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (166,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (168,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (169,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (170,42,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (171,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (172,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (173,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (174,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (175,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (177,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (178,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (179,43,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (180,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (181,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (182,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (183,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (184,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (186,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (187,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (188,44,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (189,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (190,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (191,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (192,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (193,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (195,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (196,47,'_edit_lock','1599145764:1');
INSERT INTO `wp_postmeta` VALUES (199,53,'_wp_attached_file','2020/09/COD.jpg');
INSERT INTO `wp_postmeta` VALUES (200,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1218;s:6:\"height\";i:685;s:4:\"file\";s:15:\"2020/09/COD.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"COD-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"COD-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"COD-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"COD-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:15:\"COD-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:15:\"COD-350x685.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:15:\"COD-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:15:\"COD-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (201,54,'_wp_attached_file','2020/09/CS.jpg');
INSERT INTO `wp_postmeta` VALUES (202,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:820;s:6:\"height\";i:512;s:4:\"file\";s:14:\"2020/09/CS.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"CS-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"CS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"CS-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:14:\"CS-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:14:\"CS-350x512.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:14:\"CS-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (203,55,'_wp_attached_file','2020/09/dota2.png');
INSERT INTO `wp_postmeta` VALUES (204,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1800;s:4:\"file\";s:17:\"2020/09/dota2.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"dota2-700x400.png\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"dota2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"dota2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"dota2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"dota2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"dota2-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"dota2-350x724.png\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:17:\"dota2-400x375.png\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"dota2-966x644.png\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (205,56,'_wp_attached_file','2020/09/F.png');
INSERT INTO `wp_postmeta` VALUES (206,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:573;s:4:\"file\";s:13:\"2020/09/F.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"F-700x400.png\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"F-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"F-768x430.png\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:13:\"F-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:13:\"F-350x573.png\";s:5:\"width\";i:350;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:13:\"F-400x375.png\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"blog\";a:4:{s:4:\"file\";s:13:\"F-966x573.png\";s:5:\"width\";i:966;s:6:\"height\";i:573;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (207,57,'_wp_attached_file','2020/09/FF20.jpg');
INSERT INTO `wp_postmeta` VALUES (208,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:16:\"2020/09/FF20.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"FF20-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"FF20-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"FF20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"FF20-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:16:\"FF20-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:16:\"FF20-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:16:\"FF20-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:16:\"FF20-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (211,59,'_wp_attached_file','2020/09/CTR.jpg');
INSERT INTO `wp_postmeta` VALUES (212,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:15:\"2020/09/CTR.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"CTR-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:15:\"CTR-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:15:\"CTR-350x360.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"boxes\";a:4:{s:4:\"file\";s:15:\"CTR-400x360.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (213,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (214,51,'_edit_lock','1599142460:1');
INSERT INTO `wp_postmeta` VALUES (215,51,'_thumbnail_id','57');
INSERT INTO `wp_postmeta` VALUES (216,51,'start_time','15:00:00');
INSERT INTO `wp_postmeta` VALUES (217,51,'_start_time','field_5f50f6227f365');
INSERT INTO `wp_postmeta` VALUES (218,51,'end_time','18:00:00');
INSERT INTO `wp_postmeta` VALUES (219,51,'_end_time','field_5f50f6b57f366');
INSERT INTO `wp_postmeta` VALUES (220,51,'tournament_days','Monday & Fridays');
INSERT INTO `wp_postmeta` VALUES (221,51,'_tournament_days','field_5f50f6f57f367');
INSERT INTO `wp_postmeta` VALUES (222,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (223,60,'_edit_lock','1599142899:1');
INSERT INTO `wp_postmeta` VALUES (224,60,'_thumbnail_id','55');
INSERT INTO `wp_postmeta` VALUES (225,60,'start_time','15:00:00');
INSERT INTO `wp_postmeta` VALUES (226,60,'_start_time','field_5f50f6227f365');
INSERT INTO `wp_postmeta` VALUES (227,60,'end_time','18:00:00');
INSERT INTO `wp_postmeta` VALUES (228,60,'_end_time','field_5f50f6b57f366');
INSERT INTO `wp_postmeta` VALUES (229,60,'tournament_days','Tuesday & Thrusday');
INSERT INTO `wp_postmeta` VALUES (230,60,'_tournament_days','field_5f50f6f57f367');
INSERT INTO `wp_postmeta` VALUES (231,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (232,61,'_edit_lock','1599142680:1');
INSERT INTO `wp_postmeta` VALUES (233,61,'_thumbnail_id','54');
INSERT INTO `wp_postmeta` VALUES (234,61,'start_time','15:00:00');
INSERT INTO `wp_postmeta` VALUES (235,61,'_start_time','field_5f50f6227f365');
INSERT INTO `wp_postmeta` VALUES (236,61,'end_time','18:00:00');
INSERT INTO `wp_postmeta` VALUES (237,61,'_end_time','field_5f50f6b57f366');
INSERT INTO `wp_postmeta` VALUES (238,61,'tournament_days','Wednesday - Friday');
INSERT INTO `wp_postmeta` VALUES (239,61,'_tournament_days','field_5f50f6f57f367');
INSERT INTO `wp_postmeta` VALUES (240,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (241,62,'_edit_lock','1599142745:1');
INSERT INTO `wp_postmeta` VALUES (242,62,'_thumbnail_id','56');
INSERT INTO `wp_postmeta` VALUES (243,62,'start_time','15:00:00');
INSERT INTO `wp_postmeta` VALUES (244,62,'_start_time','field_5f50f6227f365');
INSERT INTO `wp_postmeta` VALUES (245,62,'end_time','18:00:00');
INSERT INTO `wp_postmeta` VALUES (246,62,'_end_time','field_5f50f6b57f366');
INSERT INTO `wp_postmeta` VALUES (247,62,'tournament_days','Monday & Thrusday');
INSERT INTO `wp_postmeta` VALUES (248,62,'_tournament_days','field_5f50f6f57f367');
INSERT INTO `wp_postmeta` VALUES (249,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (250,63,'_edit_lock','1599142880:1');
INSERT INTO `wp_postmeta` VALUES (251,63,'_thumbnail_id','59');
INSERT INTO `wp_postmeta` VALUES (252,63,'start_time','13:00:00');
INSERT INTO `wp_postmeta` VALUES (253,63,'_start_time','field_5f50f6227f365');
INSERT INTO `wp_postmeta` VALUES (254,63,'end_time','18:00:00');
INSERT INTO `wp_postmeta` VALUES (255,63,'_end_time','field_5f50f6b57f366');
INSERT INTO `wp_postmeta` VALUES (256,63,'tournament_days','Monday & Tuesday');
INSERT INTO `wp_postmeta` VALUES (257,63,'_tournament_days','field_5f50f6f57f367');
INSERT INTO `wp_postmeta` VALUES (258,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (259,64,'_edit_lock','1599144159:1');
INSERT INTO `wp_postmeta` VALUES (260,64,'_thumbnail_id','53');
INSERT INTO `wp_postmeta` VALUES (261,64,'start_time','12:00:00');
INSERT INTO `wp_postmeta` VALUES (262,64,'_start_time','field_5f50f6227f365');
INSERT INTO `wp_postmeta` VALUES (263,64,'end_time','15:00:00');
INSERT INTO `wp_postmeta` VALUES (264,64,'_end_time','field_5f50f6b57f366');
INSERT INTO `wp_postmeta` VALUES (265,64,'tournament_days','Wednesday & Friday');
INSERT INTO `wp_postmeta` VALUES (266,64,'_tournament_days','field_5f50f6f57f367');
INSERT INTO `wp_postmeta` VALUES (267,14,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-08-16 09:34:48','2020-08-16 09:34:48','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-08-16 09:34:48','2020-08-16 09:34:48','',0,'http://localhost:10003/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-08-16 09:34:48','2020-08-16 09:34:48','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-08-16 10:24:36','2020-08-16 10:24:36','',0,'http://localhost:10003/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-08-16 09:34:48','2020-08-16 09:34:48','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10003.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-08-16 10:24:33','2020-08-16 10:24:33','',0,'http://localhost:10003/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-08-16 10:24:33','2020-08-16 10:24:33','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10003.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-08-16 10:24:33','2020-08-16 10:24:33','',3,'http://localhost:10003/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-08-16 10:24:36','2020-08-16 10:24:36','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10003/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-08-16 10:24:36','2020-08-16 10:24:36','',2,'http://localhost:10003/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-08-16 10:26:44','2020-08-16 10:26:44','<div id=\"lipsum\">\r\n\r\nNulla luctus, magna quis imperdiet porta, arcu felis consequat ipsum, eget rutrum felis lectus ut massa. Donec in varius libero. Vestibulum pharetra velit felis, sit amet rutrum enim tristique sed. Morbi vitae elementum nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vel arcu condimentum, consectetur dui at, venenatis lacus. Aliquam gravida feugiat fermentum. Vivamus cursus, sapien nec sodales molestie, mauris libero gravida ante, at malesuada mi urna in ex. Etiam lorem ex, mattis et nibh viverra, facilisis consectetur turpis. Morbi lobortis, velit a tincidunt imperdiet, justo urna pulvinar lacus, nec ultrices metus ante ac metus. Praesent eu diam in mi blandit dignissim. Etiam id blandit tellus, a maximus elit. Proin hendrerit condimentum mauris sit amet semper.\r\n\r\nDuis sagittis ex arcu, quis blandit felis facilisis sit amet. Proin tempus accumsan urna. Proin ut scelerisque ante. Cras in nulla metus. Praesent risus magna, suscipit sed metus quis, laoreet sagittis sem. Quisque a massa semper, eleifend enim id, pharetra felis. Aenean placerat condimentum suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc condimentum sodales euismod. Phasellus egestas, diam at vestibulum aliquam, diam mauris varius augue, at finibus lacus magna eget ipsum.\r\n\r\n</div>','Us','','publish','closed','closed','','us','','','2020-09-03 09:11:44','2020-09-03 09:11:44','',0,'http://localhost:10003/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-08-16 10:26:44','2020-08-16 10:26:44','<div id=\"lipsum\">\r\n\r\nNulla luctus, magna quis imperdiet porta, arcu felis consequat ipsum, eget rutrum felis lectus ut massa. Donec in varius libero. Vestibulum pharetra velit felis, sit amet rutrum enim tristique sed. Morbi vitae elementum nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed vel arcu condimentum, consectetur dui at, venenatis lacus. Aliquam gravida feugiat fermentum. Vivamus cursus, sapien nec sodales molestie, mauris libero gravida ante, at malesuada mi urna in ex. Etiam lorem ex, mattis et nibh viverra, facilisis consectetur turpis. Morbi lobortis, velit a tincidunt imperdiet, justo urna pulvinar lacus, nec ultrices metus ante ac metus. Praesent eu diam in mi blandit dignissim. Etiam id blandit tellus, a maximus elit. Proin hendrerit condimentum mauris sit amet semper.\r\n\r\nDuis sagittis ex arcu, quis blandit felis facilisis sit amet. Proin tempus accumsan urna. Proin ut scelerisque ante. Cras in nulla metus. Praesent risus magna, suscipit sed metus quis, laoreet sagittis sem. Quisque a massa semper, eleifend enim id, pharetra felis. Aenean placerat condimentum suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc condimentum sodales euismod. Phasellus egestas, diam at vestibulum aliquam, diam mauris varius augue, at finibus lacus magna eget ipsum.\r\n\r\n</div>','Us','','inherit','closed','closed','','8-revision-v1','','','2020-08-16 10:26:44','2020-08-16 10:26:44','',8,'http://localhost:10003/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-08-16 12:10:27','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-08-16 12:10:27','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=10',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-08-16 12:10:29','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:10:29','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-08-16 12:11:09','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-08-16 12:11:09','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=12',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-08-16 12:11:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:11:11','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-08-16 12:12:05','2020-08-16 12:12:05','','Home','','publish','closed','closed','','home','','','2020-09-03 15:12:22','2020-09-03 15:12:22','',0,'http://localhost:10003/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-08-16 12:12:05','2020-08-16 12:12:05','','Home','','inherit','closed','closed','','14-revision-v1','','','2020-08-16 12:12:05','2020-08-16 12:12:05','',14,'http://localhost:10003/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-08-16 12:12:32','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:12:32','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=16',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-08-16 12:12:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:12:33','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-08-16 12:13:10','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:13:10','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-08-16 12:13:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:13:11','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-08-16 12:14:36','2020-08-16 12:14:36',' ','','','publish','closed','closed','','21','','','2020-09-03 10:24:44','2020-09-03 10:24:44','',0,'http://localhost:10003/?p=21',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-08-16 12:13:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-16 12:13:59','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-08-19 15:24:57','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-08-19 15:24:57','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-09-01 14:51:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-09-01 14:51:13','0000-00-00 00:00:00','',0,'http://localhost:10003/?p=26',0,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-09-03 09:01:39','2020-09-03 09:01:39','','2-18','','inherit','open','closed','','2-18','','','2020-09-03 09:01:39','2020-09-03 09:01:39','',8,'http://localhost:10003/wp-content/uploads/2020/09/2-18.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-09-03 09:55:22','2020-09-03 09:55:22','Form Here','Contact','','publish','closed','closed','','contact','','','2020-09-03 10:13:32','2020-09-03 10:13:32','',0,'http://localhost:10003/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-09-03 09:55:22','2020-09-03 09:55:22','Form Here','Contact','','inherit','closed','closed','','29-revision-v1','','','2020-09-03 09:55:22','2020-09-03 09:55:22','',29,'http://localhost:10003/29-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-09-03 10:18:15','2020-09-03 10:18:15','Quisque maximus cursus suscipit. Suspendisse ornare felis orci, eu faucibus massa vulputate eu. Sed finibus interdum lectus porttitor facilisis. Pellentesque sed risus at nisi aliquet imperdiet eu nec nunc. Aenean elementum eleifend lorem quis vehicula. Morbi odio mauris, efficitur in dolor sit amet, commodo finibus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula nisl sem, at dictum sapien aliquam non.','Photos','','publish','closed','closed','','blog','','','2020-09-03 10:18:53','2020-09-03 10:18:53','',0,'http://localhost:10003/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-09-03 10:18:15','2020-09-03 10:18:15','','Blog','','inherit','closed','closed','','31-revision-v1','','','2020-09-03 10:18:15','2020-09-03 10:18:15','',31,'http://localhost:10003/31-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-09-03 10:18:39','2020-09-03 10:18:39','Quisque maximus cursus suscipit. Suspendisse ornare felis orci, eu faucibus massa vulputate eu. Sed finibus interdum lectus porttitor facilisis. Pellentesque sed risus at nisi aliquet imperdiet eu nec nunc. Aenean elementum eleifend lorem quis vehicula. Morbi odio mauris, efficitur in dolor sit amet, commodo finibus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula nisl sem, at dictum sapien aliquam non.','Blog','','inherit','closed','closed','','31-revision-v1','','','2020-09-03 10:18:39','2020-09-03 10:18:39','',31,'http://localhost:10003/31-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-09-03 10:18:53','2020-09-03 10:18:53','Quisque maximus cursus suscipit. Suspendisse ornare felis orci, eu faucibus massa vulputate eu. Sed finibus interdum lectus porttitor facilisis. Pellentesque sed risus at nisi aliquet imperdiet eu nec nunc. Aenean elementum eleifend lorem quis vehicula. Morbi odio mauris, efficitur in dolor sit amet, commodo finibus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula nisl sem, at dictum sapien aliquam non.','Photos','','inherit','closed','closed','','31-revision-v1','','','2020-09-03 10:18:53','2020-09-03 10:18:53','',31,'http://localhost:10003/31-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-09-03 10:19:08','2020-09-03 10:19:08','','Blog','','publish','closed','closed','','blog-2','','','2020-09-03 10:21:18','2020-09-03 10:21:18','',0,'http://localhost:10003/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-09-03 10:19:08','2020-09-03 10:19:08','Quisque maximus cursus suscipit. Suspendisse ornare felis orci, eu faucibus massa vulputate eu. Sed finibus interdum lectus porttitor facilisis. Pellentesque sed risus at nisi aliquet imperdiet eu nec nunc. Aenean elementum eleifend lorem quis vehicula. Morbi odio mauris, efficitur in dolor sit amet, commodo finibus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula nisl sem, at dictum sapien aliquam non.','Blog','','inherit','closed','closed','','35-revision-v1','','','2020-09-03 10:19:08','2020-09-03 10:19:08','',35,'http://localhost:10003/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-09-03 10:19:43','2020-09-03 10:19:43','Quisque maximus cursus suscipit. Suspendisse ornare felis orci, eu faucibus massa vulputate eu. Sed finibus interdum lectus porttitor facilisis. Pellentesque sed risus at nisi aliquet imperdiet eu nec nunc. Aenean elementum eleifend lorem quis vehicula. Morbi odio mauris, efficitur in dolor sit amet, commodo finibus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula nisl sem, at dictum sapien aliquam non.','Tournaments','','publish','closed','closed','','tournaments','','','2020-09-03 14:45:40','2020-09-03 14:45:40','',0,'http://localhost:10003/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-09-03 10:19:43','2020-09-03 10:19:43','Quisque maximus cursus suscipit. Suspendisse ornare felis orci, eu faucibus massa vulputate eu. Sed finibus interdum lectus porttitor facilisis. Pellentesque sed risus at nisi aliquet imperdiet eu nec nunc. Aenean elementum eleifend lorem quis vehicula. Morbi odio mauris, efficitur in dolor sit amet, commodo finibus mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi vehicula nisl sem, at dictum sapien aliquam non.','Tournaments','','inherit','closed','closed','','37-revision-v1','','','2020-09-03 10:19:43','2020-09-03 10:19:43','',37,'http://localhost:10003/37-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-09-03 10:21:18','2020-09-03 10:21:18','','Blog','','inherit','closed','closed','','35-revision-v1','','','2020-09-03 10:21:18','2020-09-03 10:21:18','',35,'http://localhost:10003/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-09-03 10:22:57','2020-09-03 10:22:57',' ','','','publish','closed','closed','','40','','','2020-09-03 10:24:43','2020-09-03 10:24:43','',0,'http://localhost:10003/?p=40',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-09-03 10:22:58','2020-09-03 10:22:58',' ','','','publish','closed','closed','','41','','','2020-09-03 10:24:44','2020-09-03 10:24:44','',0,'http://localhost:10003/?p=41',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-09-03 10:22:58','2020-09-03 10:22:58',' ','','','publish','closed','closed','','42','','','2020-09-03 10:24:44','2020-09-03 10:24:44','',0,'http://localhost:10003/?p=42',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-09-03 10:22:59','2020-09-03 10:22:59',' ','','','publish','closed','closed','','43','','','2020-09-03 10:24:44','2020-09-03 10:24:44','',0,'http://localhost:10003/?p=43',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-09-03 10:24:44','2020-09-03 10:24:44',' ','','','publish','closed','closed','','44','','','2020-09-03 10:24:44','2020-09-03 10:24:44','',0,'http://localhost:10003/?p=44',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-09-03 13:41:20','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-09-03 13:41:20','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=gymfitness_clases&p=45',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-09-03 13:41:44','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-09-03 13:41:44','0000-00-00 00:00:00','',0,'http://localhost:10003/?post_type=gymfitness_clases&p=46',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-09-03 14:01:09','2020-09-03 14:01:09','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"gymfitness_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Tournaments','tournaments','publish','closed','closed','','group_5f50f5e3553ab','','','2020-09-03 14:01:10','2020-09-03 14:01:10','',0,'http://localhost:10003/?post_type=acf-field-group&#038;p=47',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-09-03 14:01:09','2020-09-03 14:01:09','a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:28:\"Start time of the Tournament\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"g:i a\";}','Start Time','start_time','publish','closed','closed','','field_5f50f6227f365','','','2020-09-03 14:01:09','2020-09-03 14:01:09','',47,'http://localhost:10003/?post_type=acf-field&p=48',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-09-03 14:01:09','2020-09-03 14:01:09','a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:30:\"The end time of the Tournament\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"H:i:s\";s:13:\"return_format\";s:5:\"g:i a\";}','End Time','end_time','publish','closed','closed','','field_5f50f6b57f366','','','2020-09-03 14:01:09','2020-09-03 14:01:09','',47,'http://localhost:10003/?post_type=acf-field&p=49',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-09-03 14:01:09','2020-09-03 14:01:09','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Days when we have tournaments\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Tournament Days','tournament_days','publish','closed','closed','','field_5f50f6f57f367','','','2020-09-03 14:01:09','2020-09-03 14:01:09','',47,'http://localhost:10003/?post_type=acf-field&p=50',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-09-03 14:16:37','2020-09-03 14:16:37','Tournament 1 Way\r\n\r\nGroups by 4 teams\r\n\r\nTeams min 4 stars\r\n\r\nTeams from any Ligue\r\n\r\n&nbsp;','FIFA 20','','publish','closed','closed','','fifa-20','','','2020-09-03 14:16:37','2020-09-03 14:16:37','',0,'http://localhost:10003/?post_type=gymfitness_clases&#038;p=51',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-09-03 14:12:12','2020-09-03 14:12:12','','COD','','inherit','open','closed','','cod','','','2020-09-03 14:12:12','2020-09-03 14:12:12','',51,'http://localhost:10003/wp-content/uploads/2020/09/COD.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-09-03 14:12:14','2020-09-03 14:12:14','','CS','','inherit','open','closed','','cs','','','2020-09-03 14:12:14','2020-09-03 14:12:14','',51,'http://localhost:10003/wp-content/uploads/2020/09/CS.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-09-03 14:12:16','2020-09-03 14:12:16','','dota2','','inherit','open','closed','','dota2','','','2020-09-03 14:12:16','2020-09-03 14:12:16','',51,'http://localhost:10003/wp-content/uploads/2020/09/dota2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-09-03 14:12:19','2020-09-03 14:12:19','','F','','inherit','open','closed','','f','','','2020-09-03 14:12:19','2020-09-03 14:12:19','',51,'http://localhost:10003/wp-content/uploads/2020/09/F.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-09-03 14:12:21','2020-09-03 14:12:21','','FF20','','inherit','open','closed','','ff20','','','2020-09-03 14:12:21','2020-09-03 14:12:21','',51,'http://localhost:10003/wp-content/uploads/2020/09/FF20.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-09-03 14:13:31','2020-09-03 14:13:31','','CTR','','inherit','open','closed','','ctr','','','2020-09-03 14:13:31','2020-09-03 14:13:31','',51,'http://localhost:10003/wp-content/uploads/2020/09/CTR.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-09-03 14:18:22','2020-09-03 14:18:22','Tournament by Teams\r\n\r\nTournament by Singles\r\n\r\nTournament 5 vs 5\r\n\r\nAny Hero\r\n\r\nAny Strategy','Dota 2','','publish','closed','closed','','dota-2','','','2020-09-03 14:24:02','2020-09-03 14:24:02','',0,'http://localhost:10003/?post_type=gymfitness_clases&#038;p=60',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-09-03 14:20:17','2020-09-03 14:20:17','Tournament by Teams\r\n\r\nTournament By Singles\r\n\r\nAny Map\r\n\r\nAny Weapon\r\n\r\nAny Strategy\r\n\r\n&nbsp;','Counter Strike Global Offensive','','publish','closed','closed','','counter-strike-global-offensive','','','2020-09-03 14:20:17','2020-09-03 14:20:17','',0,'http://localhost:10003/?post_type=gymfitness_clases&#038;p=61',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-09-03 14:21:25','2020-09-03 14:21:25','Tournament by Teams\r\n\r\nTournament By Singles\r\n\r\nAny Map\r\n\r\nAny Weapon\r\n\r\nAny Strategy','Fortnite','','publish','closed','closed','','fortnite','','','2020-09-03 14:21:25','2020-09-03 14:21:25','',0,'http://localhost:10003/?post_type=gymfitness_clases&#038;p=62',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-09-03 14:23:42','2020-09-03 14:23:42','Tournament By Singles\r\n\r\nAny Race\r\n\r\nAny Car\r\n\r\nAny Strategy\r\n\r\nAny Character\r\n\r\n5 Laps each Race','Crash Nitro Fueled','','publish','closed','closed','','crash-nitro-fueled','','','2020-09-03 14:23:42','2020-09-03 14:23:42','',0,'http://localhost:10003/?post_type=gymfitness_clases&#038;p=63',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-09-03 14:25:19','2020-09-03 14:25:19','Tournament by Teams\r\n\r\nTournament Singles\r\n\r\nTournament 5 vs 5\r\n\r\nAny Weapon\r\n\r\nAny Map\r\n\r\nAny Strategy','COD Black Ops','','publish','closed','closed','','cod-black-ops','','','2020-09-03 14:25:19','2020-09-03 14:25:19','',0,'http://localhost:10003/?post_type=gymfitness_clases&#038;p=64',0,'gymfitness_clases','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (40,2,0);
INSERT INTO `wp_term_relationships` VALUES (41,2,0);
INSERT INTO `wp_term_relationships` VALUES (42,2,0);
INSERT INTO `wp_term_relationships` VALUES (43,2,0);
INSERT INTO `wp_term_relationships` VALUES (44,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Romero');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"1264a121c568035f77d01f34c06d3af692420a58a88c141ecbacda499b46d4df\";a:4:{s:10:\"expiration\";i:1599144671;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0\";s:5:\"login\";i:1598971871;}s:64:\"cdc5b74dca5cda2c7de369d08645ea2bbcc1e38ec84155014925edf31f2e4be3\";a:4:{s:10:\"expiration\";i:1599295494;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0\";s:5:\"login\";i:1599122694;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','26');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'meta-box-order_page','a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:57:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'screen_layout_page','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings-time','1599123718');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_page','a:5:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BsEIuV1Vnma9n/JlCS7ripeRRQsjTz0','admin','dev-email@flywheel.local','http://localhost:10003','2020-08-16 09:34:43','',0,'Romero');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-05  1:05:45
