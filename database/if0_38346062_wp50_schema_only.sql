-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql105.infinityfree.com
-- Generation Time: Apr 23, 2025 at 04:25 PM
-- Server version: 10.6.21-MariaDB
-- PHP Version: 7.2.22



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38346062_wp50`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpji_actionscheduler_actions`
--

CREATE TABLE `wpji_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_actionscheduler_actions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_actionscheduler_claims`
--

CREATE TABLE `wpji_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_actionscheduler_groups`
--

CREATE TABLE `wpji_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_actionscheduler_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_actionscheduler_logs`
--

CREATE TABLE `wpji_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_actionscheduler_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_bv_activities_store`
--

CREATE TABLE `wpji_bv_activities_store` (
  `id` bigint(20) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `username` text DEFAULT '',
  `request_id` text DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `event_type` varchar(60) NOT NULL DEFAULT '',
  `event_data` mediumtext NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_bv_activities_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_bv_fw_requests`
--

CREATE TABLE `wpji_bv_fw_requests` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 1388516401,
  `path` varchar(100) NOT NULL DEFAULT '',
  `host` varchar(100) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL DEFAULT '',
  `resp_code` int(6) NOT NULL DEFAULT 0,
  `category` int(1) NOT NULL DEFAULT 4,
  `referer` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(200) NOT NULL DEFAULT '',
  `filenames` text DEFAULT NULL,
  `query_string` text DEFAULT NULL,
  `rules_info` text DEFAULT NULL,
  `request_id` varchar(200) DEFAULT NULL,
  `matched_rules` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_bv_fw_requests`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_bv_ip_store`
--

CREATE TABLE `wpji_bv_ip_store` (
  `id` bigint(20) NOT NULL,
  `start_ip_range` varbinary(16) NOT NULL,
  `end_ip_range` varbinary(16) NOT NULL,
  `is_fw` tinyint(1) NOT NULL,
  `is_lp` tinyint(1) NOT NULL,
  `type` int(1) NOT NULL,
  `is_v6` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=binary;

--
-- Dumping data for table `wpji_bv_ip_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_bv_lp_requests`
--

CREATE TABLE `wpji_bv_lp_requests` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `message` varchar(100) NOT NULL DEFAULT '',
  `category` int(1) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL DEFAULT 1388516401,
  `request_id` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_bv_lp_requests`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_bv_php_error_store`
--

CREATE TABLE `wpji_bv_php_error_store` (
  `id` bigint(20) NOT NULL,
  `data` mediumtext NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_bv_php_error_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_ac_log`
--

CREATE TABLE `wpji_cleantalk_ac_log` (
  `id` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `ua` varchar(40) NOT NULL,
  `entries` int(11) DEFAULT 0,
  `interval_start` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_connection_reports`
--

CREATE TABLE `wpji_cleantalk_connection_reports` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `lib_report` text DEFAULT NULL,
  `failed_work_urls` varchar(255) DEFAULT NULL,
  `request_content` text DEFAULT NULL,
  `sent_on` int(11) DEFAULT NULL,
  `js_block` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_sessions`
--

CREATE TABLE `wpji_cleantalk_sessions` (
  `id` varchar(64) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` text DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_cleantalk_sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_sfw`
--

CREATE TABLE `wpji_cleantalk_sfw` (
  `id` int(11) NOT NULL,
  `network` int(10) UNSIGNED NOT NULL,
  `mask` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_sfw_logs`
--

CREATE TABLE `wpji_cleantalk_sfw_logs` (
  `id` varchar(40) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `status` enum('PASS_SFW','DENY_SFW','PASS_SFW__BY_WHITELIST','PASS_SFW__BY_COOKIE','DENY_ANTICRAWLER','PASS_ANTICRAWLER','DENY_ANTICRAWLER_UA','PASS_ANTICRAWLER_UA','DENY_ANTIFLOOD','PASS_ANTIFLOOD','DENY_ANTIFLOOD_UA','PASS_ANTIFLOOD_UA') DEFAULT NULL,
  `all_entries` int(11) NOT NULL,
  `blocked_entries` int(11) NOT NULL,
  `entries_timestamp` int(11) NOT NULL,
  `ua_id` int(11) DEFAULT NULL,
  `ua_name` varchar(1024) NOT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `network` varchar(20) DEFAULT NULL,
  `first_url` varchar(100) DEFAULT NULL,
  `last_url` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_sfw_personal`
--

CREATE TABLE `wpji_cleantalk_sfw_personal` (
  `id` int(11) NOT NULL,
  `network` int(10) UNSIGNED NOT NULL,
  `mask` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_cleantalk_sfw_personal`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_spamscan_logs`
--

CREATE TABLE `wpji_cleantalk_spamscan_logs` (
  `id` int(11) NOT NULL,
  `scan_type` varchar(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `finish_time` datetime NOT NULL,
  `count_to_scan` int(11) DEFAULT NULL,
  `found_spam` int(11) DEFAULT NULL,
  `found_bad` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_cleantalk_spamscan_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_ua_bl`
--

CREATE TABLE `wpji_cleantalk_ua_bl` (
  `id` int(11) NOT NULL,
  `ua_template` varchar(255) DEFAULT NULL,
  `ua_status` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_cleantalk_wc_spam_orders`
--

CREATE TABLE `wpji_cleantalk_wc_spam_orders` (
  `id` int(11) NOT NULL,
  `order_details` text DEFAULT NULL,
  `customer_details` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_commentmeta`
--

CREATE TABLE `wpji_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_comments`
--

CREATE TABLE `wpji_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_antibot`
--

CREATE TABLE `wpji_defender_antibot` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(45) NOT NULL,
  `unlocked` tinyint(1) DEFAULT NULL,
  `unlocked_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_audit_log`
--

CREATE TABLE `wpji_defender_audit_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `action_type` varchar(255) NOT NULL,
  `site_url` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `synced` int(11) NOT NULL,
  `ttl` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_email_log`
--

CREATE TABLE `wpji_defender_email_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_lockout`
--

CREATE TABLE `wpji_defender_lockout` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `lockout_message` text DEFAULT NULL,
  `release_time` int(11) DEFAULT NULL,
  `lock_time` int(11) DEFAULT NULL,
  `lock_time_404` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `attempt_404` int(11) DEFAULT NULL,
  `meta` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_defender_lockout`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_lockout_log`
--

CREATE TABLE `wpji_defender_lockout_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `log` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `tried` varchar(255) DEFAULT NULL,
  `country_iso_code` char(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_quarantine`
--

CREATE TABLE `wpji_defender_quarantine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `defender_scan_item_id` int(10) UNSIGNED DEFAULT NULL,
  `file_hash` char(53) NOT NULL,
  `file_full_path` text NOT NULL,
  `file_original_name` tinytext NOT NULL,
  `file_extension` varchar(16) DEFAULT NULL,
  `file_mime_type` varchar(64) DEFAULT NULL,
  `file_rw_permission` smallint(5) UNSIGNED DEFAULT NULL,
  `file_owner` varchar(255) DEFAULT NULL,
  `file_group` varchar(255) DEFAULT NULL,
  `file_version` varchar(32) DEFAULT NULL,
  `file_category` tinyint(3) UNSIGNED DEFAULT 0,
  `file_modified_time` datetime NOT NULL,
  `source_slug` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_scan`
--

CREATE TABLE `wpji_defender_scan` (
  `id` int(11) UNSIGNED NOT NULL,
  `percent` float NOT NULL,
  `total_tasks` tinyint(4) NOT NULL,
  `task_checkpoint` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `is_automation` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_defender_scan`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_scan_item`
--

CREATE TABLE `wpji_defender_scan_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `raw_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_defender_unlockout`
--

CREATE TABLE `wpji_defender_unlockout` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `type` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(16) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_e_events`
--

CREATE TABLE `wpji_e_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_data` text DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_e_events`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_links`
--

CREATE TABLE `wpji_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_mo2f_user_login_info`
--

CREATE TABLE `wpji_mo2f_user_login_info` (
  `session_id` mediumtext NOT NULL,
  `mo2f_login_message` mediumtext NOT NULL,
  `mo2f_current_user_id` tinyint(4) NOT NULL,
  `mo2f_1stfactor_status` mediumtext NOT NULL,
  `mo_2factor_login_status` mediumtext NOT NULL,
  `mo2f_transactionId` mediumtext NOT NULL,
  `mo_2_factor_kba_questions` longtext NOT NULL,
  `mo2f_rba_status` longtext NOT NULL,
  `secret_ga` mediumtext NOT NULL,
  `ga_qrCode` mediumtext NOT NULL,
  `ts_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_mo2f_user_login_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_options`
--

CREATE TABLE `wpji_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_postmeta`
--

CREATE TABLE `wpji_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_postmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_posts`
--

CREATE TABLE `wpji_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_termmeta`
--

CREATE TABLE `wpji_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_terms`
--

CREATE TABLE `wpji_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_terms`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_term_relationships`
--

CREATE TABLE `wpji_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_term_relationships`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_term_taxonomy`
--

CREATE TABLE `wpji_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_term_taxonomy`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_usermeta`
--

CREATE TABLE `wpji_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_usermeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_users`
--

CREATE TABLE `wpji_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `auth_secret` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_user_registration_sessions`
--

CREATE TABLE `wpji_user_registration_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_admin_notes`
--

CREATE TABLE `wpji_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_admin_notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_admin_note_actions`
--

CREATE TABLE `wpji_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_admin_note_actions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_category_lookup`
--

CREATE TABLE `wpji_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_category_lookup`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_customer_lookup`
--

CREATE TABLE `wpji_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_customer_lookup`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_download_log`
--

CREATE TABLE `wpji_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_orders`
--

CREATE TABLE `wpji_wc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_orders_meta`
--

CREATE TABLE `wpji_wc_orders_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_orders_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_order_addresses`
--

CREATE TABLE `wpji_wc_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_order_addresses`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_order_coupon_lookup`
--

CREATE TABLE `wpji_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_order_operational_data`
--

CREATE TABLE `wpji_wc_order_operational_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_via` varchar(100) DEFAULT NULL,
  `woocommerce_version` varchar(20) DEFAULT NULL,
  `prices_include_tax` tinyint(1) DEFAULT NULL,
  `coupon_usages_are_counted` tinyint(1) DEFAULT NULL,
  `download_permission_granted` tinyint(1) DEFAULT NULL,
  `cart_hash` varchar(100) DEFAULT NULL,
  `new_order_email_sent` tinyint(1) DEFAULT NULL,
  `order_key` varchar(100) DEFAULT NULL,
  `order_stock_reduced` tinyint(1) DEFAULT NULL,
  `date_paid_gmt` datetime DEFAULT NULL,
  `date_completed_gmt` datetime DEFAULT NULL,
  `shipping_tax_amount` decimal(26,8) DEFAULT NULL,
  `shipping_total_amount` decimal(26,8) DEFAULT NULL,
  `discount_tax_amount` decimal(26,8) DEFAULT NULL,
  `discount_total_amount` decimal(26,8) DEFAULT NULL,
  `recorded_sales` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_order_operational_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_order_product_lookup`
--

CREATE TABLE `wpji_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_order_stats`
--

CREATE TABLE `wpji_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_order_tax_lookup`
--

CREATE TABLE `wpji_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_product_attributes_lookup`
--

CREATE TABLE `wpji_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_product_download_directories`
--

CREATE TABLE `wpji_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_product_download_directories`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_product_meta_lookup`
--

CREATE TABLE `wpji_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `global_unique_id` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_product_meta_lookup`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_rate_limits`
--

CREATE TABLE `wpji_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_rate_limits`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_reserved_stock`
--

CREATE TABLE `wpji_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_tax_rate_classes`
--

CREATE TABLE `wpji_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_wc_tax_rate_classes`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_wc_webhooks`
--

CREATE TABLE `wpji_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_api_keys`
--

CREATE TABLE `wpji_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wpji_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wpji_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_log`
--

CREATE TABLE `wpji_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_order_itemmeta`
--

CREATE TABLE `wpji_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_woocommerce_order_itemmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_order_items`
--

CREATE TABLE `wpji_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_woocommerce_order_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wpji_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_woocommerce_payment_tokenmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_payment_tokens`
--

CREATE TABLE `wpji_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_woocommerce_payment_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_sessions`
--

CREATE TABLE `wpji_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_woocommerce_sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_shipping_zones`
--

CREATE TABLE `wpji_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wpji_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wpji_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_tax_rates`
--

CREATE TABLE `wpji_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_woocommerce_tax_rate_locations`
--

CREATE TABLE `wpji_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_yoast_indexable`
--

CREATE TABLE `wpji_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_yoast_indexable`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_yoast_indexable_hierarchy`
--

CREATE TABLE `wpji_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_yoast_indexable_hierarchy`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_yoast_migrations`
--

CREATE TABLE `wpji_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpji_yoast_migrations`
--


-- --------------------------------------------------------

--
-- Table structure for table `wpji_yoast_primary_term`
--

CREATE TABLE `wpji_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpji_yoast_seo_links`
--

CREATE TABLE `wpji_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpji_actionscheduler_actions`
--
ALTER TABLE `wpji_actionscheduler_actions`

--
-- Indexes for table `wpji_actionscheduler_claims`
--
ALTER TABLE `wpji_actionscheduler_claims`

--
-- Indexes for table `wpji_actionscheduler_groups`
--
ALTER TABLE `wpji_actionscheduler_groups`

--
-- Indexes for table `wpji_actionscheduler_logs`
--
ALTER TABLE `wpji_actionscheduler_logs`

--
-- Indexes for table `wpji_bv_activities_store`
--
ALTER TABLE `wpji_bv_activities_store`

--
-- Indexes for table `wpji_bv_fw_requests`
--
ALTER TABLE `wpji_bv_fw_requests`

--
-- Indexes for table `wpji_bv_ip_store`
--
ALTER TABLE `wpji_bv_ip_store`

--
-- Indexes for table `wpji_bv_lp_requests`
--
ALTER TABLE `wpji_bv_lp_requests`

--
-- Indexes for table `wpji_bv_php_error_store`
--
ALTER TABLE `wpji_bv_php_error_store`

--
-- Indexes for table `wpji_cleantalk_ac_log`
--
ALTER TABLE `wpji_cleantalk_ac_log`

--
-- Indexes for table `wpji_cleantalk_connection_reports`
--
ALTER TABLE `wpji_cleantalk_connection_reports`

--
-- Indexes for table `wpji_cleantalk_sessions`
--
ALTER TABLE `wpji_cleantalk_sessions`

--
-- Indexes for table `wpji_cleantalk_sfw`
--
ALTER TABLE `wpji_cleantalk_sfw`

--
-- Indexes for table `wpji_cleantalk_sfw_logs`
--
ALTER TABLE `wpji_cleantalk_sfw_logs`

--
-- Indexes for table `wpji_cleantalk_sfw_personal`
--
ALTER TABLE `wpji_cleantalk_sfw_personal`

--
-- Indexes for table `wpji_cleantalk_spamscan_logs`
--
ALTER TABLE `wpji_cleantalk_spamscan_logs`

--
-- Indexes for table `wpji_cleantalk_ua_bl`
--
ALTER TABLE `wpji_cleantalk_ua_bl`

--
-- Indexes for table `wpji_cleantalk_wc_spam_orders`
--
ALTER TABLE `wpji_cleantalk_wc_spam_orders`

--
-- Indexes for table `wpji_commentmeta`
--
ALTER TABLE `wpji_commentmeta`

--
-- Indexes for table `wpji_comments`
--
ALTER TABLE `wpji_comments`

--
-- Indexes for table `wpji_defender_antibot`
--
ALTER TABLE `wpji_defender_antibot`

--
-- Indexes for table `wpji_defender_audit_log`
--
ALTER TABLE `wpji_defender_audit_log`

--
-- Indexes for table `wpji_defender_email_log`
--
ALTER TABLE `wpji_defender_email_log`

--
-- Indexes for table `wpji_defender_lockout`
--
ALTER TABLE `wpji_defender_lockout`

--
-- Indexes for table `wpji_defender_lockout_log`
--
ALTER TABLE `wpji_defender_lockout_log`

--
-- Indexes for table `wpji_defender_quarantine`
--
ALTER TABLE `wpji_defender_quarantine`

--
-- Indexes for table `wpji_defender_scan`
--
ALTER TABLE `wpji_defender_scan`

--
-- Indexes for table `wpji_defender_scan_item`
--
ALTER TABLE `wpji_defender_scan_item`

--
-- Indexes for table `wpji_defender_unlockout`
--
ALTER TABLE `wpji_defender_unlockout`

--
-- Indexes for table `wpji_e_events`
--
ALTER TABLE `wpji_e_events`

--
-- Indexes for table `wpji_links`
--
ALTER TABLE `wpji_links`

--
-- Indexes for table `wpji_mo2f_user_login_info`
--
ALTER TABLE `wpji_mo2f_user_login_info`

--
-- Indexes for table `wpji_options`
--
ALTER TABLE `wpji_options`

--
-- Indexes for table `wpji_postmeta`
--
ALTER TABLE `wpji_postmeta`

--
-- Indexes for table `wpji_posts`
--
ALTER TABLE `wpji_posts`

--
-- Indexes for table `wpji_termmeta`
--
ALTER TABLE `wpji_termmeta`

--
-- Indexes for table `wpji_terms`
--
ALTER TABLE `wpji_terms`

--
-- Indexes for table `wpji_term_relationships`
--
ALTER TABLE `wpji_term_relationships`

--
-- Indexes for table `wpji_term_taxonomy`
--
ALTER TABLE `wpji_term_taxonomy`

--
-- Indexes for table `wpji_usermeta`
--
ALTER TABLE `wpji_usermeta`

--
-- Indexes for table `wpji_users`
--
ALTER TABLE `wpji_users`

--
-- Indexes for table `wpji_user_registration_sessions`
--
ALTER TABLE `wpji_user_registration_sessions`

--
-- Indexes for table `wpji_wc_admin_notes`
--
ALTER TABLE `wpji_wc_admin_notes`

--
-- Indexes for table `wpji_wc_admin_note_actions`
--
ALTER TABLE `wpji_wc_admin_note_actions`

--
-- Indexes for table `wpji_wc_category_lookup`
--
ALTER TABLE `wpji_wc_category_lookup`

--
-- Indexes for table `wpji_wc_customer_lookup`
--
ALTER TABLE `wpji_wc_customer_lookup`

--
-- Indexes for table `wpji_wc_download_log`
--
ALTER TABLE `wpji_wc_download_log`

--
-- Indexes for table `wpji_wc_orders`
--
ALTER TABLE `wpji_wc_orders`

--
-- Indexes for table `wpji_wc_orders_meta`
--
ALTER TABLE `wpji_wc_orders_meta`

--
-- Indexes for table `wpji_wc_order_addresses`
--
ALTER TABLE `wpji_wc_order_addresses`

--
-- Indexes for table `wpji_wc_order_coupon_lookup`
--
ALTER TABLE `wpji_wc_order_coupon_lookup`

--
-- Indexes for table `wpji_wc_order_operational_data`
--
ALTER TABLE `wpji_wc_order_operational_data`

--
-- Indexes for table `wpji_wc_order_product_lookup`
--
ALTER TABLE `wpji_wc_order_product_lookup`

--
-- Indexes for table `wpji_wc_order_stats`
--
ALTER TABLE `wpji_wc_order_stats`

--
-- Indexes for table `wpji_wc_order_tax_lookup`
--
ALTER TABLE `wpji_wc_order_tax_lookup`

--
-- Indexes for table `wpji_wc_product_attributes_lookup`
--
ALTER TABLE `wpji_wc_product_attributes_lookup`

--
-- Indexes for table `wpji_wc_product_download_directories`
--
ALTER TABLE `wpji_wc_product_download_directories`

--
-- Indexes for table `wpji_wc_product_meta_lookup`
--
ALTER TABLE `wpji_wc_product_meta_lookup`

--
-- Indexes for table `wpji_wc_rate_limits`
--
ALTER TABLE `wpji_wc_rate_limits`

--
-- Indexes for table `wpji_wc_reserved_stock`
--
ALTER TABLE `wpji_wc_reserved_stock`

--
-- Indexes for table `wpji_wc_tax_rate_classes`
--
ALTER TABLE `wpji_wc_tax_rate_classes`

--
-- Indexes for table `wpji_wc_webhooks`
--
ALTER TABLE `wpji_wc_webhooks`

--
-- Indexes for table `wpji_woocommerce_api_keys`
--
ALTER TABLE `wpji_woocommerce_api_keys`

--
-- Indexes for table `wpji_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wpji_woocommerce_attribute_taxonomies`

--
-- Indexes for table `wpji_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpji_woocommerce_downloadable_product_permissions`

--
-- Indexes for table `wpji_woocommerce_log`
--
ALTER TABLE `wpji_woocommerce_log`

--
-- Indexes for table `wpji_woocommerce_order_itemmeta`
--
ALTER TABLE `wpji_woocommerce_order_itemmeta`

--
-- Indexes for table `wpji_woocommerce_order_items`
--
ALTER TABLE `wpji_woocommerce_order_items`

--
-- Indexes for table `wpji_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wpji_woocommerce_payment_tokenmeta`

--
-- Indexes for table `wpji_woocommerce_payment_tokens`
--
ALTER TABLE `wpji_woocommerce_payment_tokens`

--
-- Indexes for table `wpji_woocommerce_sessions`
--
ALTER TABLE `wpji_woocommerce_sessions`

--
-- Indexes for table `wpji_woocommerce_shipping_zones`
--
ALTER TABLE `wpji_woocommerce_shipping_zones`

--
-- Indexes for table `wpji_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wpji_woocommerce_shipping_zone_locations`

--
-- Indexes for table `wpji_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wpji_woocommerce_shipping_zone_methods`

--
-- Indexes for table `wpji_woocommerce_tax_rates`
--
ALTER TABLE `wpji_woocommerce_tax_rates`

--
-- Indexes for table `wpji_woocommerce_tax_rate_locations`
--
ALTER TABLE `wpji_woocommerce_tax_rate_locations`

--
-- Indexes for table `wpji_yoast_indexable`
--
ALTER TABLE `wpji_yoast_indexable`

--
-- Indexes for table `wpji_yoast_indexable_hierarchy`
--
ALTER TABLE `wpji_yoast_indexable_hierarchy`

--
-- Indexes for table `wpji_yoast_migrations`
--
ALTER TABLE `wpji_yoast_migrations`

--
-- Indexes for table `wpji_yoast_primary_term`
--
ALTER TABLE `wpji_yoast_primary_term`

--
-- Indexes for table `wpji_yoast_seo_links`
--
ALTER TABLE `wpji_yoast_seo_links`

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpji_actionscheduler_actions`
--
ALTER TABLE `wpji_actionscheduler_actions`

--
-- AUTO_INCREMENT for table `wpji_actionscheduler_claims`
--
ALTER TABLE `wpji_actionscheduler_claims`

--
-- AUTO_INCREMENT for table `wpji_actionscheduler_groups`
--
ALTER TABLE `wpji_actionscheduler_groups`

--
-- AUTO_INCREMENT for table `wpji_actionscheduler_logs`
--
ALTER TABLE `wpji_actionscheduler_logs`

--
-- AUTO_INCREMENT for table `wpji_bv_activities_store`
--
ALTER TABLE `wpji_bv_activities_store`

--
-- AUTO_INCREMENT for table `wpji_bv_fw_requests`
--
ALTER TABLE `wpji_bv_fw_requests`

--
-- AUTO_INCREMENT for table `wpji_bv_ip_store`
--
ALTER TABLE `wpji_bv_ip_store`

--
-- AUTO_INCREMENT for table `wpji_bv_lp_requests`
--
ALTER TABLE `wpji_bv_lp_requests`

--
-- AUTO_INCREMENT for table `wpji_bv_php_error_store`
--
ALTER TABLE `wpji_bv_php_error_store`

--
-- AUTO_INCREMENT for table `wpji_cleantalk_connection_reports`
--
ALTER TABLE `wpji_cleantalk_connection_reports`

--
-- AUTO_INCREMENT for table `wpji_cleantalk_sfw`
--
ALTER TABLE `wpji_cleantalk_sfw`

--
-- AUTO_INCREMENT for table `wpji_cleantalk_sfw_personal`
--
ALTER TABLE `wpji_cleantalk_sfw_personal`

--
-- AUTO_INCREMENT for table `wpji_cleantalk_spamscan_logs`
--
ALTER TABLE `wpji_cleantalk_spamscan_logs`

--
-- AUTO_INCREMENT for table `wpji_cleantalk_wc_spam_orders`
--
ALTER TABLE `wpji_cleantalk_wc_spam_orders`

--
-- AUTO_INCREMENT for table `wpji_commentmeta`
--
ALTER TABLE `wpji_commentmeta`

--
-- AUTO_INCREMENT for table `wpji_comments`
--
ALTER TABLE `wpji_comments`

--
-- AUTO_INCREMENT for table `wpji_defender_antibot`
--
ALTER TABLE `wpji_defender_antibot`

--
-- AUTO_INCREMENT for table `wpji_defender_audit_log`
--
ALTER TABLE `wpji_defender_audit_log`

--
-- AUTO_INCREMENT for table `wpji_defender_email_log`
--
ALTER TABLE `wpji_defender_email_log`

--
-- AUTO_INCREMENT for table `wpji_defender_lockout`
--
ALTER TABLE `wpji_defender_lockout`

--
-- AUTO_INCREMENT for table `wpji_defender_lockout_log`
--
ALTER TABLE `wpji_defender_lockout_log`

--
-- AUTO_INCREMENT for table `wpji_defender_quarantine`
--
ALTER TABLE `wpji_defender_quarantine`

--
-- AUTO_INCREMENT for table `wpji_defender_scan`
--
ALTER TABLE `wpji_defender_scan`

--
-- AUTO_INCREMENT for table `wpji_defender_scan_item`
--
ALTER TABLE `wpji_defender_scan_item`

--
-- AUTO_INCREMENT for table `wpji_defender_unlockout`
--
ALTER TABLE `wpji_defender_unlockout`

--
-- AUTO_INCREMENT for table `wpji_e_events`
--
ALTER TABLE `wpji_e_events`

--
-- AUTO_INCREMENT for table `wpji_links`
--
ALTER TABLE `wpji_links`

--
-- AUTO_INCREMENT for table `wpji_options`
--
ALTER TABLE `wpji_options`

--
-- AUTO_INCREMENT for table `wpji_postmeta`
--
ALTER TABLE `wpji_postmeta`

--
-- AUTO_INCREMENT for table `wpji_posts`
--
ALTER TABLE `wpji_posts`

--
-- AUTO_INCREMENT for table `wpji_termmeta`
--
ALTER TABLE `wpji_termmeta`

--
-- AUTO_INCREMENT for table `wpji_terms`
--
ALTER TABLE `wpji_terms`

--
-- AUTO_INCREMENT for table `wpji_term_taxonomy`
--
ALTER TABLE `wpji_term_taxonomy`

--
-- AUTO_INCREMENT for table `wpji_usermeta`
--
ALTER TABLE `wpji_usermeta`

--
-- AUTO_INCREMENT for table `wpji_users`
--
ALTER TABLE `wpji_users`

--
-- AUTO_INCREMENT for table `wpji_user_registration_sessions`
--
ALTER TABLE `wpji_user_registration_sessions`

--
-- AUTO_INCREMENT for table `wpji_wc_admin_notes`
--
ALTER TABLE `wpji_wc_admin_notes`

--
-- AUTO_INCREMENT for table `wpji_wc_admin_note_actions`
--
ALTER TABLE `wpji_wc_admin_note_actions`

--
-- AUTO_INCREMENT for table `wpji_wc_customer_lookup`
--
ALTER TABLE `wpji_wc_customer_lookup`

--
-- AUTO_INCREMENT for table `wpji_wc_download_log`
--
ALTER TABLE `wpji_wc_download_log`

--
-- AUTO_INCREMENT for table `wpji_wc_orders_meta`
--
ALTER TABLE `wpji_wc_orders_meta`

--
-- AUTO_INCREMENT for table `wpji_wc_order_addresses`
--
ALTER TABLE `wpji_wc_order_addresses`

--
-- AUTO_INCREMENT for table `wpji_wc_order_operational_data`
--
ALTER TABLE `wpji_wc_order_operational_data`

--
-- AUTO_INCREMENT for table `wpji_wc_product_download_directories`
--
ALTER TABLE `wpji_wc_product_download_directories`

--
-- AUTO_INCREMENT for table `wpji_wc_rate_limits`
--
ALTER TABLE `wpji_wc_rate_limits`

--
-- AUTO_INCREMENT for table `wpji_wc_tax_rate_classes`
--
ALTER TABLE `wpji_wc_tax_rate_classes`

--
-- AUTO_INCREMENT for table `wpji_wc_webhooks`
--
ALTER TABLE `wpji_wc_webhooks`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_api_keys`
--
ALTER TABLE `wpji_woocommerce_api_keys`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wpji_woocommerce_attribute_taxonomies`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpji_woocommerce_downloadable_product_permissions`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_log`
--
ALTER TABLE `wpji_woocommerce_log`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_order_itemmeta`
--
ALTER TABLE `wpji_woocommerce_order_itemmeta`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_order_items`
--
ALTER TABLE `wpji_woocommerce_order_items`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wpji_woocommerce_payment_tokenmeta`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_payment_tokens`
--
ALTER TABLE `wpji_woocommerce_payment_tokens`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_sessions`
--
ALTER TABLE `wpji_woocommerce_sessions`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_shipping_zones`
--
ALTER TABLE `wpji_woocommerce_shipping_zones`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wpji_woocommerce_shipping_zone_locations`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wpji_woocommerce_shipping_zone_methods`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_tax_rates`
--
ALTER TABLE `wpji_woocommerce_tax_rates`

--
-- AUTO_INCREMENT for table `wpji_woocommerce_tax_rate_locations`
--
ALTER TABLE `wpji_woocommerce_tax_rate_locations`

--
-- AUTO_INCREMENT for table `wpji_yoast_indexable`
--
ALTER TABLE `wpji_yoast_indexable`

--
-- AUTO_INCREMENT for table `wpji_yoast_migrations`
--
ALTER TABLE `wpji_yoast_migrations`

--
-- AUTO_INCREMENT for table `wpji_yoast_primary_term`
--
ALTER TABLE `wpji_yoast_primary_term`

--
-- AUTO_INCREMENT for table `wpji_yoast_seo_links`
--
ALTER TABLE `wpji_yoast_seo_links`

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
