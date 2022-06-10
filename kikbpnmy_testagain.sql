-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2022 at 09:22 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kikbpnmy_testagain`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_notes`
--

CREATE TABLE `additional_notes` (
  `id` int(11) NOT NULL,
  `notes` text,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additional_notes`
--

INSERT INTO `additional_notes` (`id`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 16, '2021-07-12 00:10:49', '2021-08-12 00:39:32'),
(4, '<p>testing notes space</p>', 17, '2021-07-15 03:35:27', '2021-07-15 03:35:27'),
(5, '<p><strong>Ronnie</strong></p>\r\n<p>i will contact him yesterday</p>\r\n<p><strong>Abdul basit</strong></p>\r\n<p>he contacted me. and will buy package</p>', 19, '2021-07-16 14:12:35', '2021-07-16 14:13:34'),
(6, NULL, 21, '2021-07-19 16:50:55', '2021-08-17 19:29:11'),
(7, NULL, 43, '2021-11-24 03:19:36', '2021-11-24 03:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(11) NOT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `field_name`, `field_value`, `created_at`, `updated_at`) VALUES
(1, 'WISE_API_KEY_LIVE', '7ed299fc-7a0b-4cc6-b1d0-8a593be3856d', '2021-08-06 09:00:03', '2021-08-06 09:00:03'),
(7, 'WISE_API_URL_LIVE', 'https://api.transferwise.com/', '2021-08-06 09:18:30', '2021-08-06 09:18:30'),
(3, 'WISE_PROFILE_ID_LIVE', '21860793', '2021-08-06 09:00:03', '2021-08-06 09:13:12'),
(4, 'WISE_API_KEY_TEST', '3570f922-8e5d-4ebd-80fb-c47e0ead0386', '2021-08-06 09:00:11', '2021-08-06 09:02:38'),
(5, 'WISE_PROFILE_ID_TEST', '16241504', '2021-08-06 09:00:11', '2021-08-06 09:13:23'),
(6, 'WISE_ENV', 'TEST', '2021-08-06 09:00:11', '2021-08-06 09:03:36'),
(8, 'WISE_API_URL_TEST', 'https://api.sandbox.transferwise.tech/', '2021-08-06 09:18:30', '2021-08-06 09:18:30'),
(9, 'WISE_CURRENCY_LIVE', 'USD', '2021-08-06 09:23:21', '2021-08-06 09:23:21'),
(10, 'WISE_CURRENCY_TEST', 'GBP', '2021-08-06 09:23:21', '2021-08-06 09:23:21'),
(11, 'TWILIO_ACCOUNT_SID', 'AC6f5af7ae85d580716ee2d179e36ab84e', '2021-08-09 19:17:30', '2021-08-09 19:17:30'),
(12, 'TWILIO_AUTH_TOKEN', '55adc69a9159dabf0d29367322607ccf', '2021-08-09 19:17:30', '2021-08-09 19:17:30'),
(13, 'GOOGLE_RECAPTCHA_KEY', '6Lfx7PobAAAAAMI8R52T8Oq7k9E34meCLH5ycXJO', '2021-08-09 19:18:08', '2021-08-13 14:30:38'),
(14, 'GOOGLE_RECAPTCHA_SECRET', '6Lfx7PobAAAAAEZ34gMnJCzYZl1CNT0vtv-Ns_A5', '2021-08-09 19:18:08', '2021-08-13 14:30:50'),
(15, 'TWILIO_NUMBER', '+13012055083', '2021-08-09 19:18:08', '2021-08-09 19:18:08'),
(17, 'CDYNE_LICENSE_KEY', '8760a4dd-e40f-4ea1-930e-03e3efcce037', '2021-08-09 19:18:08', '2021-08-09 19:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address_1` text,
  `address_2` text,
  `city` varchar(125) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `user_id`, `first_name`, `last_name`, `address_1`, `address_2`, `city`, `postal_code`, `country`, `phone`, `state`, `created_at`, `updated_at`) VALUES
(1, 3, 'sdv', 'sdv', 'sdv', 'sdv', 'sdv', 'sdv', 'sdv', 'sdv', 'sdv', '2021-06-28 04:00:36', '2021-06-28 04:00:36'),
(2, 4, 'sdbsdb', 'sdb', 'sdbsdb', 'sdb', 'sdbsdb', 'bsdb', 'sdb', 'sdb', 'sdb', '2021-06-28 04:03:07', '2021-06-28 04:03:07'),
(3, 5, 'sdvsdv', 'sdv', 'sdvsdv', 'sdvsd', 'vsdvs', 'dvsdv', 'sdvsdv', 'sdvdsvsd', 'vsdvds', '2021-06-28 04:08:01', '2021-06-28 04:08:01'),
(4, 6, 'sdvdsv', 'sdvsd', 'vsdvsd', 'vsdvds', 'vsdv', 'dsvsdv', 'vsdvsdv', 'sdvsd', 'vsdv', '2021-06-28 04:08:53', '2021-06-28 04:08:53'),
(5, 15, 'fbsdb', 'sdvsd', 'vsd', 'vsdv', 'vds', 'vsdv', 'sdvsd', 'vsdvsd', 'vsdv', '2021-06-28 14:50:21', '2021-06-28 14:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `bulk_sms_email`
--

CREATE TABLE `bulk_sms_email` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `message` text,
  `contact_file` varchar(255) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulk_sms_email`
--

INSERT INTO `bulk_sms_email` (`id`, `user_id`, `subject`, `project_code`, `message`, `contact_file`, `type`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, 'dsv sdvsdv', '1639051927.csv', 'sms', '2021-12-09 12:12:07', '2021-12-09 12:24:40'),
(3, 16, '', '', 'ascasc', '1639503494.csv', 'sms', '2021-12-14 17:38:14', '2021-12-14 17:38:14'),
(4, 16, '', 'svsdv', 'sdvsdv', '1639503518.csv', 'sms', '2021-12-14 17:38:38', '2021-12-14 17:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact_generators`
--

CREATE TABLE `contact_generators` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_key` varchar(120) DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `mobile_b2b` text,
  `price` varchar(100) DEFAULT '0',
  `downloadable` int(11) DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `is_file_complete` int(11) NOT NULL DEFAULT '0',
  `contact_file` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_generators`
--

INSERT INTO `contact_generators` (`id`, `user_id`, `search_key`, `key_word`, `mobile_b2b`, `price`, `downloadable`, `status`, `notes`, `is_file_complete`, `contact_file`, `created_at`, `updated_at`) VALUES
(1, 16, '123GF', NULL, NULL, '0', 1, 1, '250 contacts have been updated', 1, 'contact_1627159268.xlsx', '2021-06-29 14:42:49', '2021-07-06 00:41:08'),
(2, 16, '123AC', NULL, NULL, '0', 1, 1, NULL, 1, 'contact_1625052292.txt', '2021-06-29 14:42:49', '2021-07-24 21:02:29'),
(3, 16, '386', NULL, NULL, '0', 1, 0, '220 Contacts have been generated', 0, NULL, '2021-07-01 17:57:28', '2021-07-25 22:20:08'),
(4, 17, '386', NULL, NULL, '0', 1, 0, NULL, 0, NULL, '2021-07-06 17:50:27', '2021-07-06 17:50:27'),
(7, 16, '252565', NULL, 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-11 16:21:48', '2021-07-11 16:21:48'),
(8, 16, '584515', NULL, 'B2B # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-11 16:35:49', '2021-07-11 16:35:49'),
(9, 16, '12545', NULL, 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-14 13:06:00', '2021-07-14 13:06:00'),
(10, 16, '201', NULL, 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-14 13:08:59', '2021-07-14 13:08:59'),
(11, 20, '123456', NULL, 'Both', '5', 1, 1, NULL, 0, 'contact_1626274619.docx', '2021-07-14 18:08:28', '2021-07-14 21:25:18'),
(12, 20, '2525', NULL, 'Mobile # ONLY', '4', 0, 1, NULL, 0, 'contact_1626283662.sql', '2021-07-14 21:26:51', '2021-07-14 21:27:42'),
(13, 20, '2525', NULL, 'Mobile # ONLY', '0', 1, 1, NULL, 0, 'contact_1626283743.sql', '2021-07-14 21:28:43', '2021-07-14 21:29:03'),
(14, 19, '987654321', NULL, 'Mobile # ONLY', '4', 0, 1, NULL, 0, 'contact_1626430102.xlsx', '2021-07-16 14:07:26', '2021-07-16 14:08:22'),
(15, 19, '987654321', NULL, 'Mobile # ONLY', '0', 1, 1, NULL, 0, 'contact_1626430283.xlsx', '2021-07-16 14:10:46', '2021-07-16 14:11:23'),
(16, 21, '321', NULL, 'All', '0', 1, 0, NULL, 0, NULL, '2021-07-18 16:48:52', '2021-07-18 16:48:52'),
(17, 23, '502', NULL, 'All', '0', 0, 1, NULL, 0, 'contact_1626721289.xlsx', '2021-07-18 23:09:15', '2021-07-19 23:01:29'),
(18, 16, '325,528,478', NULL, 'All', '0', 1, 0, NULL, 0, NULL, '2021-07-19 15:26:07', '2021-07-19 15:26:07'),
(19, 24, '304,501,786', NULL, 'All', '0', 1, 0, NULL, 0, NULL, '2021-07-19 15:56:00', '2021-07-19 15:56:00'),
(20, 16, 'sdds', 'sdsds', 'All', '0', 1, 0, NULL, 0, NULL, '2021-07-19 18:08:42', '2021-07-19 18:08:42'),
(21, 21, '386, 407, 929, 11218,NY,FL', 'restaraunt,', 'All', '0', 1, 0, NULL, 0, NULL, '2021-07-19 20:43:46', '2021-07-19 20:43:46'),
(22, 21, '386, 407, 929, 11218,NY,FL', 'restaraunt,', 'B2B # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-19 20:44:42', '2021-07-19 20:44:42'),
(23, 17, '945, 589', 'Hotel', 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-19 21:06:05', '2021-07-19 21:06:05'),
(24, 21, '386, 407, 929, 11218,NY,FL', 'car deaslership', 'B2B # ONLY', '3', 0, 1, NULL, 0, 'contact_1626715631.xlsx', '2021-07-19 21:13:28', '2021-07-19 21:27:11'),
(25, 21, '386, 407, 929, 11218,NY,FL', 'biz opp, mlm', 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-19 21:17:26', '2021-07-19 21:17:26'),
(26, 17, '929, 11218, ny', 'ecommerce', 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-19 22:07:13', '2021-07-19 22:07:13'),
(27, 17, 'ny,fl', 'home business, ecommerce', 'Mobile # ONLY', '1', 0, 1, NULL, 0, 'contact_1626720407.xlsx', '2021-07-19 22:14:54', '2021-07-19 22:46:47'),
(28, 21, '929, 11218, ny', 'biz opp, mlm', 'Mobile # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-20 03:51:34', '2021-07-20 03:51:34'),
(29, 21, '321', 'restaraunt,', 'B2B # ONLY', '0', 1, 0, NULL, 0, NULL, '2021-07-20 04:00:18', '2021-07-20 04:00:18'),
(30, 17, '929, 11218, ny', 'biz opp, mlm', 'Mobile # ONLY', '0', 0, 1, NULL, 0, 'contact_1626776558.xlsx', '2021-07-20 14:18:44', '2021-07-20 14:22:38'),
(33, 16, 'ascas', 'acasc', '[\"All\",\"Mobile # ONLY\",\"B2B # ONLY\",\"Mobile # Heavy\",\"Email only\",\"Email Heavy\"]', '0', 1, 1, 'contact done', 1, 'contact_1626798766.PNG', '2021-07-20 16:33:07', '2021-07-24 21:02:34'),
(34, 21, '386, 407, 929, 11218,NY,FL', 'home business, ecommerce', '[\"Mobile # Heavy\",\"Email Heavy\"]', '1', 0, 0, '100 being generated', 0, NULL, '2021-07-20 19:07:56', '2021-07-22 19:09:53'),
(35, 21, '407', NULL, '[\"Mobile # ONLY\"]', '5', 0, 1, 'test nomtes', 0, 'contact_1626887960.xlsx', '2021-07-21 19:08:34', '2021-07-21 21:19:20'),
(40, 31, '321', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-07-22 19:29:58', '2021-07-22 19:29:58'),
(45, 28, 'colorado', 'photographer', '[\"B2B # ONLY\"]', '0', 1, 1, '250 Contacts have been generated', 0, 'contact_1627152244.xlsx', '2021-07-24 22:42:17', '2021-07-24 22:44:04'),
(46, 17, '929, 11218, ny', 'cell phone stoes', '', '0', 1, 0, NULL, 0, NULL, '2021-07-26 16:01:43', '2021-07-26 16:01:43'),
(47, 33, 'VA', NULL, '[\"All\",\"B2B # ONLY\"]', '0', 1, 0, NULL, 0, NULL, '2021-07-26 17:02:26', '2021-07-26 17:02:26'),
(48, 16, '2525', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-13 14:22:29', '2021-08-13 14:22:29'),
(49, 21, '386, 407, 929, 11218,NY,FL', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-13 14:25:04', '2021-08-13 14:25:04'),
(50, 16, '12525', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-13 14:27:26', '2021-08-13 14:27:26'),
(51, 16, '2525', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-13 18:26:44', '2021-08-13 18:26:44'),
(52, 16, '25252555', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-13 18:32:17', '2021-08-13 18:32:17'),
(53, 21, '702', NULL, '[\"Mobile # ONLY\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-14 17:15:40', '2021-08-14 17:15:40'),
(54, 21, '321, 407, 11218, UT, TX', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-08-14 17:19:38', '2021-08-14 17:19:38'),
(55, 21, '929, 32725, co', NULL, '[\"All\",\"Mobile #\"]', '5', 0, 0, '3 contacts have been generated', 0, NULL, '2021-08-17 14:10:29', '2021-08-17 14:12:34'),
(56, 21, '928', NULL, '[\"All\",\"Mobile #\"]', '5', 0, 1, '37', 0, 'contact_1629196536.xlsx', '2021-08-17 14:27:23', '2021-08-17 14:35:36'),
(57, 21, '929, 11218, ny', NULL, '[\"All\"]', '2', 0, 0, '13', 0, NULL, '2021-09-25 15:45:40', '2021-09-25 16:03:49'),
(58, 21, '321', NULL, '[\"All\"]', '2', 0, 0, 'sdsad', 0, NULL, '2021-10-01 12:21:52', '2021-10-11 02:18:25'),
(59, 39, '41129', 'Private contractors', '[\"All\",\"B2B # ONLY\"]', '0', 1, 0, NULL, 0, NULL, '2021-10-09 16:42:50', '2021-10-09 16:42:50'),
(60, 21, '603', NULL, '[\"All\"]', '0', 0, 0, '2 contacts have been generated', 0, NULL, '2021-10-15 09:35:47', '2021-10-17 09:03:43'),
(61, 21, 'co', NULL, '[\"All\"]', '0', 1, 1, 'Totally 250 contacts have been generated', 1, 'contact_1634988180.csv', '2021-10-23 11:01:35', '2021-10-23 11:23:00'),
(62, 41, 'CO', NULL, '[\"All\"]', '10', 0, 1, 'Totally 250 contacts have been generated', 1, 'contact_1634994018.csv', '2021-10-23 12:23:43', '2021-10-23 13:00:18'),
(63, 21, 'ct', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-10-23 17:00:32', '2021-10-23 17:00:32'),
(64, 21, 'ca', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-11-06 20:17:57', '2021-11-06 20:17:57'),
(65, 43, '68901', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-11-17 02:32:58', '2021-11-17 02:32:58'),
(66, 43, '86520', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-11-17 02:33:59', '2021-11-17 02:33:59'),
(67, 16, '95667', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-11-19 16:37:27', '2021-11-19 16:37:27'),
(68, 16, '94040', NULL, '[\"All\"]', '0', 1, 0, NULL, 0, NULL, '2021-11-19 16:48:56', '2021-11-19 16:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `sender_id` bigint(25) DEFAULT NULL,
  `rcvr_id` bigint(25) DEFAULT NULL,
  `customer_support` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `rcvr_id`, `customer_support`, `created_at`, `updated_at`) VALUES
(19, 16, 2, NULL, '2021-10-28 13:38:09', '2021-10-28 13:38:09'),
(20, 16, 4, NULL, '2021-11-03 10:33:44', '2021-11-03 10:33:44'),
(21, 21, 16, NULL, '2021-11-06 15:52:53', '2021-11-06 15:52:53'),
(22, 19, 16, NULL, '2021-11-14 12:11:35', '2021-11-14 12:11:35'),
(23, 43, 23, NULL, '2021-11-24 03:24:14', '2021-11-24 03:24:14'),
(24, 49, 16, NULL, '2021-11-27 11:40:40', '2021-11-27 11:40:40'),
(25, 49, 21, NULL, '2021-11-27 11:42:47', '2021-11-27 11:42:47'),
(26, 43, 31, NULL, '2021-12-03 02:38:43', '2021-12-03 02:38:43'),
(27, 43, 39, NULL, '2021-12-03 02:40:23', '2021-12-03 02:40:23'),
(29, 16, 1, 1, '2021-12-08 13:31:59', '2021-12-08 13:31:59'),
(30, 21, 18, 1, '2021-12-13 12:02:56', '2021-12-13 12:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `custom_package_requests`
--

CREATE TABLE `custom_package_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `answer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_package_requests`
--

INSERT INTO `custom_package_requests` (`id`, `user_id`, `package_name`, `answer`, `created_at`, `updated_at`) VALUES
(1, 16, 'Custom Biz Opp Leads', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-07-13 12:27:21', '2021-07-13 08:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `user_id` bigint(25) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(255) NOT NULL DEFAULT 'primary',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `start`, `end`, `title`, `color`, `created_at`, `updated_at`) VALUES
(35, NULL, '2021-10-01', '2021-10-02', '1-oct', '2021-10-01', '2021-10-29 11:52:12', '2021-10-29 11:52:12'),
(47, NULL, '2021-09-30', '2021-10-01', 'thkkkk', '2021-09-30', '2021-10-29 12:20:50', '2021-10-29 12:20:50'),
(48, NULL, '2021-10-05', '2021-10-06', 'good', '2021-10-05', '2021-10-29 12:36:07', '2021-10-29 12:36:07'),
(50, NULL, '2021-10-07', '2021-10-08', 'oky bye', '2021-10-07', '2021-10-29 12:37:06', '2021-10-29 12:37:06'),
(51, NULL, '2021-11-03', '2021-11-04', 'oky', '2021-11-03', '2021-10-29 12:37:47', '2021-10-29 12:37:47'),
(52, 16, '2021-10-01', '2021-10-02', 'oky', '2021-10-01', '2021-10-29 12:42:37', '2021-10-29 12:42:37'),
(54, 16, '2021-09-27', '2021-09-28', 'bye', '2021-09-27', '2021-10-29 14:43:28', '2021-10-29 14:43:28'),
(55, 16, '2021-09-27', '2021-09-28', 'hm', '2021-09-27', '2021-10-29 14:43:56', '2021-10-29 14:43:56'),
(56, 21, '2021-11-13', '2021-11-14', 'test event nov 13 606', '2021-11-13', '2021-11-13 11:07:00', '2021-11-13 11:07:00'),
(61, 16, '2021-11-18', '2021-11-19', 'new', '2021-11-18', '2021-11-14 11:09:54', '2021-11-14 11:09:54'),
(63, 16, '2021-11-20', '2021-11-21', 'cscsdc', '2021-11-20', '2021-11-14 11:13:58', '2021-11-14 11:13:58'),
(64, 16, '2021-11-23', '2021-11-24', 'basit', '2021-11-23', '2021-11-14 11:14:58', '2021-11-14 11:14:58'),
(66, 16, '2021-11-25', '2021-11-26', 'basit2', '2021-11-25', '2021-11-14 11:17:48', '2021-11-14 11:17:48'),
(67, 16, '2021-11-26', '2021-11-27', 'ascsac', '2021-11-26', '2021-11-14 11:22:08', '2021-11-14 11:22:08'),
(69, 16, '2021-11-29', '2021-11-30', 'test', '2021-11-29', '2021-11-14 11:43:16', '2021-11-14 11:43:16'),
(71, 16, '2021-11-30', '2021-12-01', 'test1', '2021-11-30', '2021-11-14 11:50:37', '2021-11-14 11:50:37'),
(74, 21, '2021-11-19', '2021-11-20', 'test event nov 19 4:55pm', '2021-11-19', '2021-11-19 21:55:48', '2021-11-19 21:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-image.png',
  `name` text COLLATE utf8mb4_unicode_ci,
  `fileable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileable_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `file`, `name`, `fileable_type`, `fileable_id`, `created_at`, `updated_at`) VALUES
(4, '1637948591194.png', '4l.png', 'App\\Funnel', 6, '2021-11-26 13:43:11', '2021-11-26 13:43:11'),
(5, '1637948591336.png', '4s.png', 'App\\Funnel', 6, '2021-11-26 13:43:11', '2021-11-26 13:43:11'),
(6, '1637948591525.png', '5l.png', 'App\\Funnel', 6, '2021-11-26 13:43:11', '2021-11-26 13:43:11'),
(7, '1637948698435.png', '4s.png', 'App\\Funnel', 7, '2021-11-26 13:44:58', '2021-11-26 13:44:58'),
(8, '1637948698949.png', '5l.png', 'App\\Funnel', 7, '2021-11-26 13:44:58', '2021-11-26 13:44:58'),
(9, '1637948721803.png', '4s.png', 'App\\Funnel', 8, '2021-11-26 13:45:21', '2021-11-26 13:45:21'),
(10, '1637948721664.png', '5l.png', 'App\\Funnel', 8, '2021-11-26 13:45:21', '2021-11-26 13:45:21'),
(11, '1637948721335.png', '6l.png', 'App\\Funnel', 8, '2021-11-26 13:45:21', '2021-11-26 13:45:21'),
(12, 'army_capture.png', 'Army Capture', 'App\\FunnelType', 1, '2021-11-26 18:09:32', '2021-11-26 18:09:32'),
(13, 'army_landing.png', 'Army Landing', 'App\\FunnelType', 1, '2021-11-26 18:09:32', '2021-11-26 18:09:32'),
(14, 'interior_capture.png', 'Interior Capture', 'App\\FunnelType', 2, '2021-11-26 18:12:04', '2021-11-26 18:12:04'),
(15, 'interior_landing.png', 'Interior Landing', 'App\\FunnelType', 2, '2021-11-26 18:12:04', '2021-11-26 18:12:04'),
(16, 'marketing-and-productivity-capture-software.png', 'marketing-and-productivity-capture-software', 'App\\FunnelType', 3, '2021-11-26 18:13:37', '2021-11-26 18:13:37'),
(17, 'marketing-and-productivity-software-landing.png', 'marketing-and-productivity-software-landing', 'App\\FunnelType', 3, '2021-11-26 18:13:37', '2021-11-26 18:13:37'),
(18, 'Pizza_capture.png', 'Pizza_capture', 'App\\FunnelType', 4, '2021-11-26 18:14:47', '2021-11-26 18:14:47'),
(19, 'pizza_landing.png', 'pizza_landing', 'App\\FunnelType', 4, '2021-11-26 18:14:47', '2021-11-26 18:14:47'),
(20, 'productivity-software-capture.png', 'productivity-software-capture', 'App\\FunnelType', 5, '2021-11-26 18:16:01', '2021-11-26 18:16:01'),
(21, 'productivity-software-landing.png', 'productivity-software-landing', 'App\\FunnelType', 5, '2021-11-26 18:16:01', '2021-11-26 18:16:01'),
(22, 'car-sales-capture.png', 'car-sales-capture', 'App\\FunnelType', 6, '2021-11-26 18:16:44', '2021-11-26 18:16:44'),
(23, 'car-sales-landing.png', 'car-sales-landing', 'App\\FunnelType', 6, '2021-11-26 18:16:44', '2021-11-26 18:16:44'),
(24, '1637951223838.png', '1l.png', 'App\\Funnel', 9, '2021-11-26 14:27:03', '2021-11-26 14:27:03'),
(25, '1637951223114.png', '1s.png', 'App\\Funnel', 9, '2021-11-26 14:27:03', '2021-11-26 14:27:03'),
(26, '1637951223793.docx', 'Unicargo.docx', 'App\\Funnel', 9, '2021-11-26 14:27:03', '2021-11-26 14:27:03'),
(27, '1637951248737.png', 'This is it Smart Homes (1).png', 'App\\Funnel', 10, '2021-11-26 14:27:28', '2021-11-26 14:27:28'),
(28, '1637951248540.pdf', 'sample.pdf', 'App\\Funnel', 10, '2021-11-26 14:27:28', '2021-11-26 14:27:28'),
(30, '1638013855755.webp', '2492-01-600x600.webp', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55'),
(31, '1638013855671.webp', '2501-01-611901917-600x600.webp', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55'),
(32, '1638013855609.webp', '2525-01-203192422-600x600.webp', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55'),
(33, '1638013855102.webp', '2629-01-556488863-600x600.webp', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55'),
(34, '1638013855196.webp', '2630-01-843252315-600x600.webp', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55'),
(35, '1638013855866.webp', '2631-01-110295496-600x600.webp', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55'),
(36, '1638013855193.txt', 'Blackberry.txt', 'App\\Funnel', 12, '2021-11-27 11:50:55', '2021-11-27 11:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `funnels`
--

CREATE TABLE `funnels` (
  `id` bigint(25) NOT NULL,
  `funnel_id` bigint(25) UNSIGNED DEFAULT NULL,
  `user_id` bigint(25) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funnels`
--

INSERT INTO `funnels` (`id`, `funnel_id`, `user_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 2, 16, 'Shaine Bell', 'Nulla veniam in id', '2021-11-26 13:43:11', '2021-11-26 13:43:11'),
(9, 6, 16, 'Garth Beck', 'Doloremque quos quib', '2021-11-26 14:27:03', '2021-11-26 14:27:03'),
(10, 4, 16, 'Lyle Campos', 'Architecto qui ut re', '2021-11-26 14:27:28', '2021-11-26 14:27:28'),
(11, 4, 16, 'sample funnel', 'sdknksldn sddklvnslkvnkds', '2021-11-26 19:13:40', '2021-11-26 19:13:40'),
(12, 4, 16, 'sample funnel from basit', 'undefined', '2021-11-27 11:50:55', '2021-11-27 11:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `funnel_types`
--

CREATE TABLE `funnel_types` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funnel_types`
--

INSERT INTO `funnel_types` (`id`, `name`) VALUES
(1, 'One'),
(2, 'Two'),
(3, 'Three'),
(4, 'Four'),
(5, 'Five'),
(6, 'Six');

-- --------------------------------------------------------

--
-- Table structure for table `gigy_project`
--

CREATE TABLE `gigy_project` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` text,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `images` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gigy_project`
--

INSERT INTO `gigy_project` (`id`, `user_id`, `project_name`, `project_description`, `start_date`, `end_date`, `budget`, `images`, `created_at`, `updated_at`) VALUES
(2, 16, 'sample project', 'klsdnvklsdnv sdlknvldskvslv lskd vk', '01 Nov, 2021', '17 Nov, 2021', '17 Nov, 2021', '[\"1637155419.2167-01-244761072-600x600.webp\",\"1637155419.2170-01-244761072-600x600.webp\",\"1637155419.2213-01-626081355-600x600.webp\",\"1637155419.2214-01-218101583-600x600.webp\"]', '2021-11-17 13:23:39', '2021-11-17 13:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `goole_drive_files`
--

CREATE TABLE `goole_drive_files` (
  `id` bigint(25) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extra` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `owner_id` bigint(25) NOT NULL,
  `name` varchar(255) DEFAULT 'No Name',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `owner_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 16, 'First Group', '2021-11-02 11:14:40', '2021-11-02 13:45:30'),
(4, 21, 'test groupn 1119', '2021-11-06 15:20:03', '2021-11-06 15:20:03'),
(5, 21, 'max and basit', '2021-11-27 12:13:46', '2021-11-27 12:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `group_id` bigint(25) DEFAULT NULL,
  `user_id` bigint(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_id`, `user_id`) VALUES
(4, 3, 4),
(10, 2, 2),
(11, 2, 3),
(12, 2, 4),
(13, 4, 3),
(14, 4, 16),
(17, 5, 16),
(18, 5, 48);

-- --------------------------------------------------------

--
-- Table structure for table `group_messages`
--

CREATE TABLE `group_messages` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `group_id` bigint(25) NOT NULL,
  `sender_id` bigint(25) NOT NULL,
  `body` text,
  `media` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_messages`
--

INSERT INTO `group_messages` (`id`, `group_id`, `sender_id`, `body`, `media`, `created_at`, `updated_at`) VALUES
(2, 2, 16, 'hi', NULL, '2021-11-02 12:17:24', '2021-11-02 12:17:24'),
(3, 2, 16, 'hmm', NULL, '2021-11-02 12:18:34', '2021-11-02 12:18:34'),
(4, 2, 16, 'thek h', NULL, '2021-11-02 12:20:20', '2021-11-02 12:20:20'),
(5, 3, 16, 'acha?', NULL, '2021-11-02 12:24:17', '2021-11-02 12:24:17'),
(6, 2, 16, 'jm', NULL, '2021-11-02 12:27:19', '2021-11-02 12:27:19'),
(7, 3, 16, 'oky', NULL, '2021-11-02 12:38:14', '2021-11-02 12:38:14'),
(8, 3, 16, 'jj', NULL, '2021-11-02 12:39:07', '2021-11-02 12:39:07'),
(9, 3, 16, 'uuu', NULL, '2021-11-02 12:40:51', '2021-11-02 12:40:51'),
(10, 3, 16, 'nbb', NULL, '2021-11-02 12:42:02', '2021-11-02 12:42:02'),
(11, 3, 16, 'hhojksjkadjkhajkf', '1635874932.png', '2021-11-02 12:42:12', '2021-11-02 12:42:12'),
(12, 3, 16, 'hjasjajsha', '1635875044.jpg', '2021-11-02 12:44:04', '2021-11-02 12:44:04'),
(13, 3, 16, 'acha?', '1635875089.jpg', '2021-11-02 12:44:49', '2021-11-02 12:44:49'),
(14, 2, 3, 'sure', NULL, '2021-11-02 12:52:58', '2021-11-02 12:52:58'),
(15, 4, 21, 'hello testing group msg', NULL, '2021-11-06 15:20:16', '2021-11-06 15:20:16'),
(16, 4, 21, 'testing group msg image', '1636212038.png', '2021-11-06 15:20:38', '2021-11-06 15:20:38'),
(17, 4, 16, 'test reply grpup', NULL, '2021-11-06 15:21:02', '2021-11-06 15:21:02'),
(18, 4, 16, 'test reply group', NULL, '2021-11-06 15:21:13', '2021-11-06 15:21:13'),
(19, 4, 16, 'test group eply enter', NULL, '2021-11-06 15:21:55', '2021-11-06 15:21:55'),
(20, 5, 21, 'group chat test', NULL, '2021-11-27 12:14:23', '2021-11-27 12:14:23'),
(21, 5, 21, 'hi max hi basit', NULL, '2021-11-27 12:38:30', '2021-11-27 12:38:30'),
(22, 5, 48, 'Yes, sir.. I am on..', NULL, '2021-11-27 12:51:15', '2021-11-27 12:51:15'),
(23, 5, 21, 'lovely!  THANK YOU MAX', NULL, '2021-11-27 13:00:05', '2021-11-27 13:00:05'),
(24, 5, 21, 'MAX MEET BASIT, BASIT MEET MAX =)', NULL, '2021-11-27 13:00:35', '2021-11-27 13:00:35'),
(25, 5, 48, 'Where is the Basit?? Basit are you on??', NULL, '2021-11-27 13:04:43', '2021-11-27 13:04:43'),
(26, 5, 21, 'still working on getting comfortable using this crm chat', NULL, '2021-11-27 15:16:41', '2021-11-27 15:16:41'),
(27, 5, 48, 'yes, Sir...', NULL, '2021-11-27 16:40:08', '2021-11-27 16:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(25) UNSIGNED NOT NULL,
  `conversation_id` bigint(25) DEFAULT NULL,
  `rcvr_id` bigint(25) DEFAULT NULL,
  `sender_id` bigint(25) DEFAULT NULL,
  `body` text,
  `media` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `rcvr_id`, `sender_id`, `body`, `media`, `created_at`, `updated_at`) VALUES
(63, 19, 2, 16, 'ok', '1635446289.png', '2021-10-28 13:38:09', '2021-10-28 13:38:09'),
(64, 19, 16, 2, 'thanks', NULL, '2021-10-28 13:38:21', '2021-10-28 13:38:21'),
(65, 19, 2, 16, 'hm', NULL, '2021-10-28 13:52:46', '2021-10-28 13:52:46'),
(66, 19, 2, 16, 'hm', NULL, '2021-10-28 13:52:52', '2021-10-28 13:52:52'),
(67, 19, 2, 16, 'd', NULL, '2021-10-28 14:04:34', '2021-10-28 14:04:34'),
(68, 19, 2, 16, 'hm', NULL, '2021-10-28 14:09:56', '2021-10-28 14:09:56'),
(69, 19, 2, 16, 'hmm', NULL, '2021-10-29 10:23:51', '2021-10-29 10:23:51'),
(70, 20, 4, 16, 'hi', NULL, '2021-11-03 10:33:44', '2021-11-03 10:33:44'),
(72, 21, 21, 16, 'ok Ronnie', NULL, '2021-11-06 15:55:45', '2021-11-06 15:55:45'),
(73, 21, 21, 16, 'Thanks', NULL, '2021-11-06 15:55:49', '2021-11-06 15:55:49'),
(74, 21, 16, 21, 'please only replies here', NULL, '2021-11-06 15:56:48', '2021-11-06 15:56:48'),
(76, 21, 21, 16, 'i will also make it like that, so we don\'t have to refresh the page to see the new message', NULL, '2021-11-06 15:57:42', '2021-11-06 15:57:42'),
(77, 21, 21, 16, 'i will work on this too', NULL, '2021-11-06 15:57:54', '2021-11-06 15:57:54'),
(78, 21, 16, 21, 'ok =)', NULL, '2021-11-06 16:01:56', '2021-11-06 16:01:56'),
(79, 21, 16, 21, 'ty', NULL, '2021-11-06 16:01:58', '2021-11-06 16:01:58'),
(81, 21, 16, 21, 'i put the fee on you so that way you have motivation for our wallet solution...', NULL, '2021-11-06 16:06:38', '2021-11-06 16:06:38'),
(82, 21, 16, 21, 'the new line of text already shows without refresh it just needs to scroll down upon the the newly sent msg', NULL, '2021-11-06 16:07:15', '2021-11-06 16:07:15'),
(83, 21, 21, 16, 'ok Ronnie. Thank you so much', NULL, '2021-11-06 16:19:36', '2021-11-06 16:19:36'),
(86, 21, 16, 21, 'i try to send the doc file but i dont think its works', '1636217429.png', '2021-11-06 16:50:29', '2021-11-06 16:50:29'),
(87, 21, 16, 21, 'also when i click Open it opens 404 ERROR page...', '1636217495.png', '2021-11-06 16:51:35', '2021-11-06 16:51:35'),
(88, 21, 16, 21, 'oops', NULL, '2021-11-06 16:51:46', '2021-11-06 16:51:46'),
(89, 21, 16, 21, 'wrong screenshot', NULL, '2021-11-06 16:51:54', '2021-11-06 16:51:54'),
(90, 21, 16, 21, 'this', '1636217567.png', '2021-11-06 16:52:47', '2021-11-06 16:52:47'),
(91, 21, 16, 21, 'also, i go to another page then return this one and another file is downloading everytime...', NULL, '2021-11-06 16:55:33', '2021-11-06 16:55:33'),
(92, 21, 16, 21, 'a lot of adjustments neccessary here, so there we do chatting here to learn the user experience and what must improve', NULL, '2021-11-06 16:56:32', '2021-11-06 16:56:32'),
(93, 21, 16, 21, 'so therefore*', NULL, '2021-11-06 16:56:52', '2021-11-06 16:56:52'),
(95, 21, 21, 16, 'i have to work more into chat platform so we can use it like slack', NULL, '2021-11-06 17:17:18', '2021-11-06 17:17:18'),
(98, 21, 21, 16, 'ok my friend', NULL, '2021-11-06 17:20:31', '2021-11-06 17:20:31'),
(100, 21, 21, 16, ':)', NULL, '2021-11-06 17:20:43', '2021-11-06 17:20:43'),
(101, 21, 16, 21, 'phone module: on dial pad, MUTE, HOLD, TRANSFER.', NULL, '2021-11-06 19:51:40', '2021-11-06 19:51:40'),
(102, 19, 2, 16, 'hi', NULL, '2021-11-08 11:07:19', '2021-11-08 11:07:19'),
(103, 19, 2, 16, 'hi 2', NULL, '2021-11-08 11:14:43', '2021-11-08 11:14:43'),
(104, 21, 16, 21, 'so which part of the module are you going to work on first?', NULL, '2021-11-08 15:02:30', '2021-11-08 15:02:30'),
(105, 21, 16, 21, 'so basit i think notification ding is first order of business on the chat module right?', NULL, '2021-11-08 15:12:59', '2021-11-08 15:12:59'),
(106, 21, 21, 16, 'hi', NULL, '2021-11-10 18:56:28', '2021-11-10 18:56:28'),
(107, 21, 21, 16, 'hi again', NULL, '2021-11-13 10:19:54', '2021-11-13 10:19:54'),
(108, 21, 16, 21, 'hi thanks', NULL, '2021-11-13 10:21:02', '2021-11-13 10:21:02'),
(109, 22, 16, 19, 'hi', NULL, '2021-11-14 12:11:35', '2021-11-14 12:11:35'),
(110, 22, 16, 19, 'hi again', NULL, '2021-11-14 13:31:31', '2021-11-14 13:31:31'),
(111, 22, 16, 19, 'hi2', NULL, '2021-11-14 13:32:22', '2021-11-14 13:32:22'),
(112, 22, 19, 16, 'What', NULL, '2021-11-24 02:02:45', '2021-11-24 02:02:45'),
(113, 22, 19, 16, 'I’m confused why are u sending me money and how in heck do I have your info for whatever this acct is ??', NULL, '2021-11-24 02:40:04', '2021-11-24 02:40:04'),
(114, 23, 23, 43, 'I have pending withdrawal how long does it take once funds are in account on ACG to get withdrawal of funds to posted card for payment', NULL, '2021-11-24 03:24:14', '2021-11-24 03:24:14'),
(115, 21, 16, 21, 'alright great', NULL, '2021-11-25 18:47:24', '2021-11-25 18:47:24'),
(116, 21, 16, 21, 'we need to use this now...', NULL, '2021-11-25 18:47:47', '2021-11-25 18:47:47'),
(117, 21, 16, 21, 'the group feature works right?', NULL, '2021-11-25 18:50:18', '2021-11-25 18:50:18'),
(118, 24, 16, 49, 'hi abdul', NULL, '2021-11-27 11:40:40', '2021-11-27 11:40:40'),
(119, 24, 16, 49, 'again', NULL, '2021-11-27 11:40:56', '2021-11-27 11:40:56'),
(120, 24, 16, 49, 'task', NULL, '2021-11-27 11:41:02', '2021-11-27 11:41:02'),
(121, 24, 16, 49, 'good morning', NULL, '2021-11-27 11:41:13', '2021-11-27 11:41:13'),
(122, 25, 21, 49, 'hi ronnie', NULL, '2021-11-27 11:42:47', '2021-11-27 11:42:47'),
(124, 21, 16, 21, 'you can access it?', NULL, '2021-11-27 12:23:04', '2021-11-27 12:23:04'),
(125, 21, 16, 21, 'ok... i\'ll include the pay for that on next week... i dont know if 3 hours seems right for that activity...', NULL, '2021-11-27 14:10:14', '2021-11-27 14:10:14'),
(126, 23, 23, 43, 'Why is my withdrawal funds not IN my bank account???', NULL, '2021-12-03 02:34:43', '2021-12-03 02:34:43'),
(127, 26, 31, 43, 'Why can’t I receive my withdrawal Ed funds into my bank account? I have been waiting for them. Please help', NULL, '2021-12-03 02:38:43', '2021-12-03 02:38:43'),
(128, 26, 31, 43, 'Why can’t I receive my withdrawal Ed funds into my bank account? I have been waiting for them. Please help', NULL, '2021-12-03 02:38:45', '2021-12-03 02:38:45'),
(129, 27, 39, 43, 'Why can’t I get my funds withdrawals and put into my bank please help', NULL, '2021-12-03 02:40:23', '2021-12-03 02:40:23'),
(130, 27, 39, 43, 'Why can’t I get my funds withdrawals and put into my bank please help', NULL, '2021-12-03 02:40:26', '2021-12-03 02:40:26'),
(131, 29, 1, 16, 'hi support', NULL, '2021-12-08 13:31:59', '2021-12-08 13:31:59'),
(132, 30, 18, 21, 'test cusgomer req', '1639396976.csv', '2021-12-13 12:02:56', '2021-12-13 12:02:56'),
(133, 30, 21, 18, 'test support reply', NULL, '2021-12-13 12:04:44', '2021-12-13 12:04:44'),
(134, 30, 18, 21, 'test reply 2', NULL, '2021-12-13 12:05:26', '2021-12-13 12:05:26'),
(135, 29, 1, 16, 'problem', '1639397356.PNG', '2021-12-13 12:09:16', '2021-12-13 12:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('12b5beb3-c638-4f94-93f5-a327746e435d', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":23,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"lovely!  THANK YOU MAX\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 13:00:05', '2021-11-27 14:02:05'),
('13f071c5-7bda-4201-a64c-937f786e1d85', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":124,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Junier Astudillo\",\"msg\":\"you can access it?\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 12:23:04', '2021-11-27 14:02:05'),
('14515392-1f89-4577-a6af-8572bc987bf3', 'App\\Notifications\\ChatNotification', 'App\\User', 19, '{\"msg_id\":112,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Abdul Basit\",\"msg\":\"What\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-11-24 02:02:45', '2021-11-24 02:02:45'),
('1a40d204-4bb0-465b-ae65-d0cb2347ff36', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":116,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from No name\",\"msg\":\"we need to use this now...\",\"type\":\"private\",\"attachment\":null}', '2021-11-25 20:30:21', '2021-11-25 18:47:47', '2021-11-25 20:30:21'),
('228ffc2e-49a7-4459-b3b9-3bdea5125328', 'App\\Notifications\\ChatNotification', 'App\\User', 21, '{\"msg_id\":122,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Guest ID16380-13205\",\"msg\":\"hi ronnie\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 11:55:02', '2021-11-27 11:42:47', '2021-11-27 11:55:02'),
('24666a57-7d09-47ba-a3a4-7eeb288499ed', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":111,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from No name\",\"msg\":\"hi2\",\"type\":\"private\",\"attachment\":null}', '2021-11-14 13:32:26', '2021-11-14 13:32:22', '2021-11-14 13:32:26'),
('2afb4033-8020-44a0-ac0d-9f7c1a321d80', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":110,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from No name\",\"msg\":\"hi again\",\"type\":\"private\",\"attachment\":null}', '2021-11-14 13:31:38', '2021-11-14 13:31:31', '2021-11-14 13:31:38'),
('309688c8-3d73-465f-a531-bb74f8e22d7b', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":120,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Guest ID16380-13205\",\"msg\":\"task\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 11:43:49', '2021-11-27 11:41:02', '2021-11-27 11:43:49'),
('341d4764-e3d2-4ddb-b01c-2c0d31620a5b', 'App\\Notifications\\ChatNotification', 'App\\User', 19, '{\"msg_id\":113,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Abdul Basit\",\"msg\":\"I\\u2019m confused why are u sending me money and how in heck do I have your info for whatever this acct is ??\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-11-24 02:40:04', '2021-11-24 02:40:04'),
('3f622762-7166-4fc8-a985-2a9a9aeb14de', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":26,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"still working on getting comfortable using this crm chat\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 16:38:58', '2021-11-27 15:16:41', '2021-11-27 16:38:58'),
('420f4b35-a8d8-4121-ba82-86fc77774f8f', 'App\\Notifications\\ChatNotification', 'App\\User', 31, '{\"msg_id\":127,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Debra Shriner\",\"msg\":\"Why can\\u2019t I receive my withdrawal Ed funds into my bank account? I have been waiting for them. Please help\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-12-03 02:38:43', '2021-12-03 02:38:43'),
('4401e953-d574-4899-9c38-55f9224cf0a9', 'App\\Notifications\\ChatNotification', 'App\\User', 23, '{\"msg_id\":114,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Debra Shriner\",\"msg\":\"I have pending withdrawal how long does it take once funds are in account on ACG to get withdrawal of funds to posted card for payment\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-11-24 03:24:14', '2021-11-24 03:24:14'),
('4403caad-29a8-40e4-806f-a5599d7b54f9', 'App\\Notifications\\ChatNotification', 'App\\User', 23, '{\"msg_id\":126,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Debra Shriner\",\"msg\":\"Why is my withdrawal funds not IN my bank account???\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-12-03 02:34:43', '2021-12-03 02:34:43'),
('468499db-c556-4b2f-9ac7-80f8997d63b3', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":23,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"lovely!  THANK YOU MAX\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:07:57', '2021-11-27 13:00:05', '2021-11-27 14:07:57'),
('48ed0f1c-d858-49ee-9f1c-3682eeaac59f', 'App\\Notifications\\ChatNotification', 'App\\User', 18, '{\"msg_id\":132,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Junier Astudillo\",\"msg\":\"test cusgomer req\",\"type\":\"private\",\"attachment\":\"1639396976.csv\"}', '2021-12-13 12:04:31', '2021-12-13 12:02:56', '2021-12-13 12:04:31'),
('52e1d5a5-1060-4110-9023-8769ce8cb870', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":119,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Guest ID16380-13205\",\"msg\":\"again\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 11:43:49', '2021-11-27 11:40:56', '2021-11-27 11:43:49'),
('69af9f17-0fbb-43b0-8adc-836efce57005', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":26,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"still working on getting comfortable using this crm chat\",\"type\":\"group\",\"attachment\":null}', '2021-11-28 17:56:11', '2021-11-27 15:16:41', '2021-11-28 17:56:11'),
('6c24955f-7d7b-43d5-ab2c-669c5ceff037', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":27,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"yes, Sir...\",\"type\":\"group\",\"attachment\":null}', '2021-11-28 17:56:11', '2021-11-27 16:40:08', '2021-11-28 17:56:11'),
('7003102a-38bd-47c1-931e-5b5b0f558d72', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":20,\"redirect_route\":\"chat\",\"notification\":\"No name has sent a new message in max and basit\",\"msg\":\"group chat test\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 12:14:23', '2021-11-27 14:02:05'),
('750679f7-5b0f-440a-b9a6-3c44d76b3ce2', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":22,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"Yes, sir.. I am on..\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 12:54:38', '2021-11-27 12:51:15', '2021-11-27 12:54:38'),
('7bcb5155-d43b-4c33-830e-24b079331c9e', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":117,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from No name\",\"msg\":\"the group feature works right?\",\"type\":\"private\",\"attachment\":null}', '2021-11-25 20:30:21', '2021-11-25 18:50:18', '2021-11-25 20:30:21'),
('7d89b43d-6378-4171-9996-1cd737a6d4f2', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":22,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"Yes, sir.. I am on..\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 12:51:15', '2021-11-27 14:02:05'),
('8415c715-5d93-4489-a50f-ca244984a917', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":118,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Guest ID16380-13205\",\"msg\":\"hi abdul\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 11:43:49', '2021-11-27 11:40:40', '2021-11-27 11:43:49'),
('86d29a0a-8a3b-4f1b-84f7-72cc915d5e28', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":20,\"redirect_route\":\"chat\",\"notification\":\"No name has sent a new message in max and basit\",\"msg\":\"group chat test\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 12:15:30', '2021-11-27 12:14:23', '2021-11-27 12:15:30'),
('910c842c-3ac4-4ecb-b851-e30f81f8e601', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":26,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"still working on getting comfortable using this crm chat\",\"type\":\"group\",\"attachment\":null}', '2021-11-29 19:23:25', '2021-11-27 15:16:41', '2021-11-29 19:23:25'),
('9241f123-8257-433d-a926-871eef6a6cec', 'App\\Notifications\\ChatNotification', 'App\\User', 21, '{\"msg_id\":133,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Customer Support\",\"msg\":\"test support reply\",\"type\":\"private\",\"attachment\":null}', '2021-12-13 12:05:04', '2021-12-13 12:04:44', '2021-12-13 12:05:04'),
('9877b599-738d-4c45-a4a9-2d6326724fff', 'App\\Notifications\\ChatNotification', 'App\\User', 1, '{\"msg_id\":135,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Abdul Basit\",\"msg\":\"problem\",\"type\":\"private\",\"attachment\":\"1639397356.PNG\"}', '2021-12-14 17:39:29', '2021-12-13 12:09:16', '2021-12-14 17:39:29'),
('a1f831a9-f838-47d0-aa56-5ccea83f2309', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":25,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"Where is the Basit?? Basit are you on??\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:07:57', '2021-11-27 13:04:43', '2021-11-27 14:07:57'),
('a2d57bc3-2ee5-4a5b-ad91-c76a1c971d0e', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":21,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"hi max hi basit\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 12:38:30', '2021-11-27 14:02:05'),
('b26c9f4c-10f9-48e8-990a-b4b481ea7f92', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":24,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"MAX MEET BASIT, BASIT MEET MAX =)\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 13:00:35', '2021-11-27 14:02:05'),
('b2ec8330-9d26-4b12-82ec-0bf1bf909f37', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":21,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"hi max hi basit\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:07:57', '2021-11-27 12:38:30', '2021-11-27 14:07:57'),
('b3b69dc1-3ab8-4935-86f5-d83390e2c612', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":25,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"Where is the Basit?? Basit are you on??\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:10:07', '2021-11-27 13:04:43', '2021-11-27 14:10:07'),
('b51e9a33-72f1-4a52-b235-b98c20c64c42', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":25,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"Where is the Basit?? Basit are you on??\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 13:04:43', '2021-11-27 14:02:05'),
('ba3893f9-bb1b-481a-a65b-020e7ef3004f', 'App\\Notifications\\ChatNotification', 'App\\User', 39, '{\"msg_id\":129,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Debra Shriner\",\"msg\":\"Why can\\u2019t I get my funds withdrawals and put into my bank please help\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-12-03 02:40:23', '2021-12-03 02:40:23'),
('bb4f0ab7-43ef-4344-a34a-a8f8e6a17d67', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":23,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"lovely!  THANK YOU MAX\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 13:01:27', '2021-11-27 13:00:05', '2021-11-27 13:01:27'),
('bfc027ff-56b0-4ec5-82d8-b4c45ecd6232', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":123,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Junier Astudillo\",\"msg\":\"i sent you 105$.\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 14:02:05', '2021-11-27 12:22:56', '2021-11-27 14:02:05'),
('c00f52f3-1294-4906-9e95-a3382aaef27e', 'App\\Notifications\\ChatNotification', 'App\\User', 1, '{\"msg_id\":131,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Abdul Basit\",\"msg\":\"hi support\",\"type\":\"private\",\"attachment\":null}', '2021-12-09 16:07:52', '2021-12-08 13:31:59', '2021-12-09 16:07:52'),
('c1137ee9-a09e-4710-8d28-8f372a80c9ed', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":27,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"yes, Sir...\",\"type\":\"group\",\"attachment\":null}', '2021-11-29 04:23:12', '2021-11-27 16:40:08', '2021-11-29 04:23:12'),
('c2f44968-e3e0-4c63-b1d9-73b536fe2e41', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":125,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Junier Astudillo\",\"msg\":\"ok... i\'ll include the pay for that on next week... i dont know if 3 hours seems right for that activity...\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 14:30:07', '2021-11-27 14:10:14', '2021-11-27 14:30:07'),
('d0efbdc6-98f7-414a-a250-16f7dc8d625f', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":24,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"MAX MEET BASIT, BASIT MEET MAX =)\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:07:57', '2021-11-27 13:00:35', '2021-11-27 14:07:57'),
('d2b0c5b8-59b0-4839-b9aa-b766ebae5fe1', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":121,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Guest ID16380-13205\",\"msg\":\"good morning\",\"type\":\"private\",\"attachment\":null}', '2021-11-27 11:43:49', '2021-11-27 11:41:13', '2021-11-27 11:43:49'),
('d2f83eb6-6d30-41db-87ff-0ec939f8cdc4', 'App\\Notifications\\ChatNotification', 'App\\User', 18, '{\"msg_id\":134,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Junier Astudillo\",\"msg\":\"test reply 2\",\"type\":\"private\",\"attachment\":null}', '2021-12-13 12:05:46', '2021-12-13 12:05:26', '2021-12-13 12:05:46'),
('d3ec06ed-21d0-45d6-bff6-c5e89308ebaa', 'App\\Notifications\\ChatNotification', 'App\\User', 31, '{\"msg_id\":128,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Debra Shriner\",\"msg\":\"Why can\\u2019t I receive my withdrawal Ed funds into my bank account? I have been waiting for them. Please help\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-12-03 02:38:45', '2021-12-03 02:38:45'),
('d64aa6eb-1f74-42ed-815f-d29920303958', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":20,\"redirect_route\":\"chat\",\"notification\":\"No name has sent a new message in max and basit\",\"msg\":\"group chat test\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 12:35:47', '2021-11-27 12:14:23', '2021-11-27 12:35:47'),
('d6cef37b-1406-4e40-a2ab-a5a53182eee5', 'App\\Notifications\\ChatNotification', 'App\\User', 39, '{\"msg_id\":130,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from Debra Shriner\",\"msg\":\"Why can\\u2019t I get my funds withdrawals and put into my bank please help\",\"type\":\"private\",\"attachment\":null}', NULL, '2021-12-03 02:40:26', '2021-12-03 02:40:26'),
('d72fc29a-59da-4885-b83b-109e104c33d3', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":21,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"hi max hi basit\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 12:50:29', '2021-11-27 12:38:30', '2021-11-27 12:50:29'),
('dcadeb27-cc21-4f4c-acac-7b2cacc7d7fa', 'App\\Notifications\\GroupChatNotification', 'App\\User', 21, '{\"group_id\":22,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"Yes, sir.. I am on..\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 14:07:57', '2021-11-27 12:51:15', '2021-11-27 14:07:57'),
('dfae18d2-9115-4ec8-835a-59965427ddcb', 'App\\Notifications\\ChatNotification', 'App\\User', 16, '{\"msg_id\":115,\"redirect_route\":\"chat\",\"notification\":\"You have received a new message from No name\",\"msg\":\"alright great\",\"type\":\"private\",\"attachment\":null}', '2021-11-25 20:30:21', '2021-11-25 18:47:24', '2021-11-25 20:30:21'),
('e1587b61-03b3-4a37-8560-324a67091eb2', 'App\\Notifications\\GroupChatNotification', 'App\\User', 16, '{\"group_id\":27,\"redirect_route\":\"chat\",\"notification\":\"Max Loskor has sent a new message in max and basit\",\"msg\":\"yes, Sir...\",\"type\":\"group\",\"attachment\":null}', '2021-11-29 19:23:24', '2021-11-27 16:40:08', '2021-11-29 19:23:24'),
('f01d976a-e481-49a0-8ae9-665901663032', 'App\\Notifications\\GroupChatNotification', 'App\\User', 48, '{\"group_id\":24,\"redirect_route\":\"chat\",\"notification\":\"Junier Astudillo has sent a new message in max and basit\",\"msg\":\"MAX MEET BASIT, BASIT MEET MAX =)\",\"type\":\"group\",\"attachment\":null}', '2021-11-27 13:01:27', '2021-11-27 13:00:35', '2021-11-27 13:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `pacakages`
--

CREATE TABLE `pacakages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `price` bigint(20) NOT NULL DEFAULT '0',
  `per` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pacakages`
--

INSERT INTO `pacakages` (`id`, `package_tag_id`, `title`, `description`, `price`, `per`) VALUES
(9, 1, 'Starter 1', NULL, 20, 'unlimited'),
(10, 1, 'Starter 2', NULL, 50, 'unlimited'),
(11, 1, 'Starter 3', NULL, 130, 'unlimited'),
(13, 2, 'UNLIMITED CONTACT GENERATION', 'Enjoy All You Can Use:', 300, 'monthly');

-- --------------------------------------------------------

--
-- Table structure for table `pacakge_items`
--

CREATE TABLE `pacakge_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` varchar(250) DEFAULT NULL,
  `is_unlimited` tinyint(10) DEFAULT '1',
  `price` bigint(250) DEFAULT '0',
  `per` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pacakge_items`
--

INSERT INTO `pacakge_items` (`id`, `package_id`, `product_id`, `qty`, `is_unlimited`, `price`, `per`) VALUES
(12, 9, 1, '500', 0, 0, NULL),
(13, 9, 2, '498', 0, 0, NULL),
(14, 9, 3, '500', 0, 0, NULL),
(15, 9, 4, '500', 0, 0, NULL),
(16, 10, 1, '1500', 0, 0, NULL),
(17, 10, 2, '1499', 0, 0, NULL),
(18, 10, 3, '1499', 0, 0, NULL),
(19, 10, 4, '1499', 0, 0, NULL),
(20, 11, 1, '4500', 0, 0, NULL),
(21, 11, 2, '4500', 0, 0, NULL),
(22, 11, 3, '4500', 0, 0, NULL),
(23, 11, 4, '4500', 0, 0, NULL),
(25, 13, 1, '1', 1, 100, 'monthly');

-- --------------------------------------------------------

--
-- Table structure for table `pacakge_tags`
--

CREATE TABLE `pacakge_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `sub_title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pacakge_tags`
--

INSERT INTO `pacakge_tags` (`id`, `title`, `sub_title`) VALUES
(1, 'STARTER', NULL),
(2, 'UNLIMITED', 'Enjoy All You Can Use:\r\n\r\n'),
(3, 'LEADS', 'All the Business You Can Handle\r\n\r\n'),
(4, 'PROSPECTS', 'Engage Your Visitor and Increase Conversations\r\n\r\n'),
(5, 'SALES FUNNELS', 'Enjoy All You Can Use:\r\n\r\n'),
(6, 'CAPTURE PAGES', 'Engage Your Visitor and Increase Conversations\r\n\r\n'),
(7, 'PHONE NUMBERS', NULL),
(8, 'RVM & IVR', NULL),
(9, 'ABSOLUTELY DONE FOR YOU', ' In-House Virtual Assistance'),
(10, 'CUSTOM CUSTOMER SUPPORT', NULL),
(11, 'AUTOMATION', NULL),
(12, 'List Cleaner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('deb.shriner51@aol.com', '$2y$10$m04pqk5xv4zMchkt4RW4lOmvaCEiPGIF2HXzIKHJRA8pc/0QOKX9a', '2021-11-29 11:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `reference`, `gateway`, `amount`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, 'paypal', NULL, '2021-09-27 18:13:07', '2021-09-27 18:13:07'),
(2, 16, 'PAYID-MFJAT3I1DE26412XS025993V', 'paypal', 300, '2021-09-27 18:14:04', '2021-09-27 18:14:05'),
(3, 16, 'PAYID-MFJAUCI96B888165N210471U', 'paypal', 300, '2021-09-27 18:14:32', '2021-09-27 18:14:33'),
(4, 16, 'PAYID-MFJAVEY33N00838FB749183E', 'paypal', 300, '2021-09-27 18:16:51', '2021-09-27 18:16:51'),
(5, 16, 'PAYID-MFJAYSY6SA44924NH418242L', 'paypal', 300, '2021-09-27 18:24:10', '2021-09-27 18:24:11'),
(6, 16, 'PAYID-MFJAZAA9M095242FP380524V', 'paypal', 300, '2021-09-27 18:25:03', '2021-09-27 18:25:04'),
(7, 16, 'PAYID-MFJA3ZI6U818273B45771148', 'paypal', 300, '2021-09-27 18:31:01', '2021-09-27 18:31:02'),
(8, 16, 'PAYID-MFJA5GQ1FT27718CF964145J', 'paypal', 300, '2021-09-27 18:34:01', '2021-09-27 18:34:02'),
(9, 16, 'PAYID-MFJA5PI0YM03297C0534990P', 'paypal', 300, '2021-09-27 18:34:36', '2021-09-27 18:34:37'),
(10, 16, 'PAYID-MFJA5XI1VG53495UD2025216', 'paypal', 300, '2021-09-27 18:35:08', '2021-09-27 18:35:09'),
(11, 16, 'PAYID-MFJA6HQ52W915792G229792L', 'paypal', 300, '2021-09-27 18:36:13', '2021-09-27 18:36:14'),
(12, 16, 'PAYID-MFJA6IA8R2559951F320241X', 'paypal', 300, '2021-09-27 18:36:15', '2021-09-27 18:36:16'),
(13, 16, 'PAYID-MFJA76A09B85417FU057202L', 'paypal', 300, '2021-09-27 18:39:51', '2021-09-27 18:39:52'),
(14, 16, 'PAYID-MFJA76Q4A528485S09510322', 'paypal', 300, '2021-09-27 18:39:54', '2021-09-27 18:39:54'),
(15, 16, NULL, 'paypal', NULL, '2021-09-27 18:43:00', '2021-09-27 18:43:00'),
(16, 16, 'PAYID-MFJBB5Q0S957830DF3658329', 'paypal', 300, '2021-09-27 18:44:05', '2021-09-27 18:44:06'),
(17, 16, NULL, 'paypal', NULL, '2021-09-27 18:46:27', '2021-09-27 18:46:27'),
(18, 16, NULL, 'paypal', NULL, '2021-09-27 18:49:39', '2021-09-27 18:49:39'),
(19, 16, 'PAYID-MFJBFDI2BK49739JF752804H', 'paypal', 300, '2021-09-27 18:50:52', '2021-09-27 18:50:53'),
(20, 16, NULL, 'paypal', NULL, '2021-09-27 18:59:11', '2021-09-27 18:59:11'),
(21, 16, NULL, 'paypal', NULL, '2021-09-27 18:59:56', '2021-09-27 18:59:56'),
(22, 16, NULL, 'paypal', NULL, '2021-09-27 19:02:06', '2021-09-27 19:02:06'),
(23, 16, NULL, 'paypal', NULL, '2021-09-27 19:23:55', '2021-09-27 19:23:55'),
(24, 16, NULL, 'paypal', NULL, '2021-09-27 19:25:29', '2021-09-27 19:25:29'),
(25, 16, NULL, 'paypal', NULL, '2021-09-27 19:27:28', '2021-09-27 19:27:28'),
(26, 16, NULL, 'paypal', NULL, '2021-09-27 19:27:46', '2021-09-27 19:27:46'),
(27, 16, NULL, 'paypal', NULL, '2021-09-27 19:27:46', '2021-09-27 19:27:46'),
(28, 16, NULL, 'paypal', NULL, '2021-09-27 19:29:49', '2021-09-27 19:29:49'),
(29, 16, NULL, 'paypal', NULL, '2021-09-27 19:32:09', '2021-09-27 19:32:09'),
(30, 16, 'PAYID-MFJBZJQ2EJ17982EG3273644', 'paypal', 300, '2021-09-27 19:33:57', '2021-09-27 19:33:58'),
(31, 16, 'PAYID-MFJBZQI62A196004R3268051', 'paypal', 300, '2021-09-27 19:34:25', '2021-09-27 19:34:25'),
(32, 16, 'PAYID-MFJB2JI8RF930741L1347924', 'paypal', 300, '2021-09-27 19:36:04', '2021-09-27 19:36:05'),
(33, 16, 'PAYID-MFJB2NA14J1502615397833E', 'paypal', 300, '2021-09-27 19:36:20', '2021-09-27 19:36:20'),
(34, 16, 'PAYID-MFJB2RI6L099406A7673590X', 'paypal', 300, '2021-09-27 19:36:36', '2021-09-27 19:36:37'),
(35, 16, 'PAYID-MFJB22Q8RH84431DB195481K', 'paypal', 300, '2021-09-27 19:37:14', '2021-09-27 19:37:14'),
(36, 16, 'PAYID-MFJB3BI65F67901Y50946315', 'paypal', 300, '2021-09-27 19:37:40', '2021-09-27 19:37:41'),
(37, 16, NULL, 'paypal', NULL, '2021-09-27 19:50:01', '2021-09-27 19:50:01'),
(38, 16, NULL, 'paypal', NULL, '2021-09-27 19:50:15', '2021-09-27 19:50:15'),
(39, 16, NULL, 'paypal', NULL, '2021-09-27 19:50:22', '2021-09-27 19:50:22'),
(40, 16, NULL, 'paypal', NULL, '2021-09-27 19:50:31', '2021-09-27 19:50:31'),
(41, 16, NULL, 'paypal', NULL, '2021-09-27 19:50:45', '2021-09-27 19:50:45'),
(42, 16, 'PAYID-MFJCCMI2NX42865KC708974F', 'paypal', 300, '2021-09-27 19:53:20', '2021-09-27 19:53:21'),
(43, 16, 'PAYID-MFJCCNA47X68985WD702161T', 'paypal', 300, '2021-09-27 19:53:23', '2021-09-27 19:53:24'),
(44, 16, 'PAYID-MFJCD3I0EN04319PK824874X', 'paypal', 300, '2021-09-27 19:56:28', '2021-09-27 19:56:29'),
(45, 16, 'PAYID-MFJCEPA3D8766881B1639319', 'paypal', 300, '2021-09-27 19:57:47', '2021-09-27 19:57:48'),
(46, 16, NULL, 'paypal', NULL, '2021-09-27 21:17:24', '2021-09-27 21:17:24'),
(47, 16, 'PAYID-MFJEJ3Q573430795J415780E', 'paypal', 300, '2021-09-27 22:25:49', '2021-09-27 22:25:50'),
(48, 16, NULL, 'paypal', NULL, '2021-09-29 17:14:32', '2021-09-29 17:14:32'),
(49, 16, NULL, 'paypal', NULL, '2021-09-29 17:30:40', '2021-09-29 17:30:40'),
(50, 16, NULL, 'paypal', NULL, '2021-09-29 17:30:41', '2021-09-29 17:30:41'),
(51, 16, NULL, 'paypal', NULL, '2021-09-29 17:31:47', '2021-09-29 17:31:47'),
(52, 16, NULL, 'paypal', NULL, '2021-09-29 17:34:12', '2021-09-29 17:34:12'),
(53, 16, NULL, 'paypal', NULL, '2021-09-29 17:38:14', '2021-09-29 17:38:14'),
(54, 16, NULL, 'paypal', NULL, '2021-09-29 17:41:52', '2021-09-29 17:41:52'),
(55, 16, NULL, 'paypal', NULL, '2021-09-29 17:44:30', '2021-09-29 17:44:30'),
(56, 16, NULL, 'paypal', NULL, '2021-09-29 17:46:03', '2021-09-29 17:46:03'),
(57, 16, NULL, 'paypal', NULL, '2021-09-29 17:46:40', '2021-09-29 17:46:40'),
(58, 16, NULL, 'paypal', NULL, '2021-09-29 17:48:41', '2021-09-29 17:48:41'),
(59, 16, NULL, 'paypal', NULL, '2021-09-29 17:49:47', '2021-09-29 17:49:47'),
(60, 16, NULL, 'paypal', NULL, '2021-09-29 17:50:34', '2021-09-29 17:50:34'),
(61, 16, NULL, 'paypal', NULL, '2021-09-29 17:51:04', '2021-09-29 17:51:04'),
(62, 16, NULL, 'paypal', NULL, '2021-09-29 17:51:19', '2021-09-29 17:51:19'),
(63, 16, NULL, 'paypal', NULL, '2021-09-29 17:51:47', '2021-09-29 17:51:47'),
(64, 16, NULL, 'paypal', NULL, '2021-09-29 17:53:09', '2021-09-29 17:53:09'),
(65, 16, NULL, 'paypal', NULL, '2021-09-29 17:53:30', '2021-09-29 17:53:30'),
(66, 16, NULL, 'paypal', NULL, '2021-09-29 17:54:15', '2021-09-29 17:54:15'),
(67, 16, NULL, 'paypal', NULL, '2021-09-29 17:54:47', '2021-09-29 17:54:47'),
(68, 16, 'PAYID-MFKKRDA8RC61777FL3486145', 'paypal', 300, '2021-09-29 17:55:23', '2021-09-29 17:55:24'),
(69, 16, NULL, 'paypal', NULL, '2021-09-29 17:56:01', '2021-09-29 17:56:01'),
(70, 16, NULL, 'paypal', NULL, '2021-09-29 17:56:10', '2021-09-29 17:56:10'),
(71, 16, NULL, 'paypal', NULL, '2021-09-29 17:56:43', '2021-09-29 17:56:43'),
(72, 16, NULL, 'paypal', NULL, '2021-09-29 17:57:38', '2021-09-29 17:57:38'),
(73, 16, NULL, 'paypal', NULL, '2021-09-29 18:02:10', '2021-09-29 18:02:10'),
(74, 16, NULL, 'paypal', NULL, '2021-09-29 18:02:38', '2021-09-29 18:02:38'),
(75, 16, NULL, 'paypal', NULL, '2021-09-29 18:02:44', '2021-09-29 18:02:44'),
(76, 16, NULL, 'paypal', NULL, '2021-09-29 18:06:34', '2021-09-29 18:06:34'),
(77, 16, 'PAYID-MFKKW3Q1WT0973725897632R', 'paypal', 300, '2021-09-29 18:07:41', '2021-09-29 18:07:42'),
(78, 16, 'PAYID-MFKKXHI4YX59751S2862615M', 'paypal', 300, '2021-09-29 18:08:28', '2021-09-29 18:08:29'),
(79, 16, NULL, 'paypal', NULL, '2021-09-29 18:09:49', '2021-09-29 18:09:49'),
(80, 16, NULL, 'paypal', NULL, '2021-09-29 18:10:24', '2021-09-29 18:10:24'),
(81, 16, NULL, 'paypal', NULL, '2021-09-29 18:11:42', '2021-09-29 18:11:42'),
(82, 16, 'PAYID-MFLPPQQ5T450200XB231071T', 'paypal', 300, '2021-10-01 11:57:53', '2021-10-01 11:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_request_sent`
--

CREATE TABLE `payment_request_sent` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_user_id` int(11) NOT NULL,
  `requested_amount` varchar(100) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_request_sent`
--

INSERT INTO `payment_request_sent` (`id`, `user_id`, `requested_user_id`, `requested_amount`, `description`, `created_at`, `updated_at`) VALUES
(1, 43, 43, '7590', NULL, '2021-11-24 02:49:47', '2021-11-24 02:49:47'),
(2, 43, 43, '7590', NULL, '2021-11-24 02:49:48', '2021-11-24 02:49:48'),
(3, 43, 17, '2800', 'Bill by Abdul Basit', '2021-11-24 03:20:44', '2021-11-24 03:20:44'),
(4, 43, 21, '4800', 'Bill due', '2021-11-24 03:22:20', '2021-11-24 03:22:20'),
(5, 43, 21, '4800', 'Bill due', '2021-11-24 03:22:22', '2021-11-24 03:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(250) UNSIGNED NOT NULL,
  `title` varchar(291) DEFAULT NULL,
  `extra` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `extra`) VALUES
(1, 'Contacts', NULL),
(2, 'Minutes', NULL),
(3, 'SMS/MMS', NULL),
(4, 'Email', NULL),
(5, 'Mobile #s', NULL),
(6, 'B2B #s', NULL),
(7, 'Leads', NULL),
(8, 'Prospects', NULL),
(9, 'Sale Funnels', NULL),
(10, 'Bizop Capture', NULL),
(11, 'Phone Numbers', NULL),
(12, 'Virtual Assistance', NULL),
(13, 'Customer Support', NULL),
(14, 'Automation', NULL),
(15, 'List Cleaner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_management_members`
--

CREATE TABLE `task_management_members` (
  `id` int(11) NOT NULL,
  `task_management_id` int(11) NOT NULL,
  `team_member_name` text,
  `team_member_avatar` varchar(255) DEFAULT 'avatar-1.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_management_members`
--

INSERT INTO `task_management_members` (`id`, `task_management_id`, `team_member_name`, `team_member_avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'sdvdsv', '1629573485.jpg', '2021-08-22 05:18:05', '2021-08-22 05:18:05'),
(2, 1, 'sdvsdv', '1629573485.jpeg', '2021-08-22 05:18:05', '2021-08-22 05:18:05'),
(3, 2, 'Basit', '1629991740.jpg', '2021-08-27 01:29:00', '2021-08-27 01:29:00'),
(4, 2, 'Saher', '1629991740.jpg', '2021-08-27 01:29:00', '2021-08-27 01:29:00'),
(5, 2, 'Zobia', '1629991740.jpg', '2021-08-27 01:29:00', '2021-08-27 01:29:00'),
(6, 3, 'devdsv', 'avatar-1.png', '2021-09-07 17:40:23', '2021-09-07 17:40:23'),
(7, 4, 'ronnie', '1631014884.png', '2021-09-07 17:41:24', '2021-09-07 17:41:24'),
(8, 4, NULL, 'avatar-1.png', '2021-09-07 17:41:24', '2021-09-07 17:41:24'),
(9, 5, NULL, 'avatar-1.png', '2021-09-12 00:43:55', '2021-09-12 00:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test_data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `test_data`, `created_at`, `updated_at`) VALUES
(2, '{\"data\":\"abdul basit\",\"data1\":\"waheed\"}', '2021-10-13 11:06:01', '2021-10-13 11:06:01'),
(3, '{\"MessageSid\":\"2afb539b-4d48-4890-9720-55241813a75d\",\"SmsSid\":\"2afb539b-4d48-4890-9720-55241813a75d\",\"AccountSid\":\"8ce390f9-1f15-46ce-b97c-c87985a93a03\",\"From\":\"+12026777191\",\"To\":\"+12026777147\",\"Body\":\"hi\",\"NumMedia\":\"0\",\"NumSegments\":\"1\"}', '2021-10-13 11:09:16', '2021-10-13 11:09:16'),
(4, 'asdfasdasdasd', '2021-10-24 14:59:10', '2021-10-24 14:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referrer_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'avatar-1.png',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `package_validation` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `guest` int(11) NOT NULL DEFAULT '0',
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_account` int(11) DEFAULT '0',
  `total_contacts` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remaining_contacts` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referrer_id`, `payment_id`, `username`, `first_name`, `last_name`, `company_name`, `email`, `email_verified_at`, `password`, `profile_image`, `website`, `current_package`, `package_validation`, `type`, `guest`, `account_type`, `affiliate_account`, `total_contacts`, `remaining_contacts`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Basit', NULL, NULL, 'admin@automatedcontactgenerator.com', NULL, '$2y$10$O61exVy9XgyCagJBHszQOeyq93czUtuSFx30Xr8DUkjbM0T9DCAyO', 'avatar-1.png', 'text4pay', 'free', NULL, 'admin', 0, NULL, 0, '0', '0', NULL, '2021-05-24 09:14:00', '2021-11-19 20:10:57'),
(2, NULL, 'ch_3JkV7vKFNCF64zKP1qb6oshP', 'user_rehan', 'Rehan', NULL, NULL, 'user@email.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'text4pay', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-05-24 16:27:16', '2021-10-14 14:41:48'),
(3, NULL, NULL, 'sdsvd', 'Hamza', NULL, NULL, 'h@mail.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'text4pay', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-06-28 04:00:36', '2021-06-28 04:00:36'),
(4, NULL, NULL, 'sdsdvs', 'Usama', NULL, NULL, 'sdsdvs@dfb.dfb', NULL, '$2y$10$gTkniVwVQRgCbzT8lK3KJ.whHoUCwSIFKVutRc4Tr3//cfIlN7D42', 'avatar-1.png', 'text4pay', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-06-28 04:03:07', '2021-06-28 04:03:07'),
(5, NULL, 'ch_1J7GRhKuGDN8tiVq6cL6dEdL', 'dsdsv', NULL, NULL, NULL, 'dsvsdv@th.yul', NULL, '$2y$10$bpiPK0IbYm5SEtP4UrjHNuRmitYfAFcjTJ1DIpWnVhpMt7wqKaJQS', 'avatar-1.png', 'text4pay', 'PRODUCTS', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-06-28 04:08:01', '2021-06-28 04:08:01'),
(6, 16, 'ch_1J7GSWKuGDN8tiVquQ31QdLa', 'asdvsa', NULL, NULL, NULL, 'asvasv@sdfb.dfb', NULL, '$2y$10$Xcl80UBxd.RrJxzRPvT/0eGJ.P7is94m8KjeiPedzbpK.jDGwP4K.', 'avatar-1.png', 'text4pay', 'PRODUCTS', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-06-28 04:08:53', '2021-06-28 04:08:53'),
(14, 16, NULL, 'ascasc@sdfv.dfb', NULL, NULL, NULL, 'ascasc@sdfv.dfb', NULL, '$2y$10$poIMaPMaQ4Fk2EhAzaLz1el8uSk0g0vWpOs0Q8zEPE2ZDpMO2/5iO', 'avatar-1.png', 'text4pay', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-06-28 14:35:17', '2021-06-28 14:35:17'),
(15, 16, 'ch_1J7QTIKuGDN8tiVqbfcR53VT', 'dvsdv', NULL, NULL, NULL, 'dvsvd@ser.fgnrtn', NULL, '$2y$10$51bSiEvkUfXIwpGCCQ6ojeYYIoXT4vE0af2BkpO6D1nWzvCDv6Jge', 'avatar-1.png', 'text4pay', 'unlimited', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-06-28 14:50:21', '2021-06-28 14:50:21'),
(16, 0, 'ch_3JjqHEKFNCF64zKP0YZ7ZJcS', 'abdulbasit', 'Abdul', 'Basit', NULL, 'abdulbasit3398@gmail.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', '1628626435.jpg', 'automatedcontactgenerator', '2', '2028-09-19', 'user', 0, NULL, 1, '0', '0', NULL, '2021-06-29 13:20:53', '2021-10-12 19:04:41'),
(17, 0, NULL, 'test account', NULL, NULL, NULL, 'ronnie.hudson811@gmail.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-03 19:54:01', '2021-07-15 05:47:08'),
(18, NULL, NULL, NULL, 'Customer', 'Support', NULL, 'virtualassistance@gmail.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'text4pay', 'free', NULL, 'staff', 0, NULL, 0, '0', '0', NULL, '2021-05-24 09:14:00', '2021-05-24 09:14:00'),
(19, 0, 'ch_3JkVOOKFNCF64zKP0U8GgtEG', 'test', NULL, NULL, NULL, 'test@gmail.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'text4pay', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-11 12:27:40', '2021-10-14 14:58:48'),
(20, 0, 'ch_3JkVr4KFNCF64zKP0IYe95sC', 'test1', NULL, NULL, NULL, 'test1@gmail.com', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'text4pay', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-11 12:28:16', '2021-10-14 15:28:26'),
(21, 0, 'ch_3JknefKFNCF64zKP1eh57wXl', 'ronnie.hudson43', 'Junier', 'Astudillo', NULL, 'ronnie.hudson43@gmail.com', NULL, '$2y$10$fT0IITglfPTutPv1N2cEAO.rhyU8XQSWP.vGzHiGCPZTLaMuGcEZi', '1628881802.jpg', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-16 23:53:12', '2021-11-27 12:19:53'),
(22, 21, NULL, 'referraltest', NULL, NULL, NULL, 'mamaangieproducts@gmail.com', NULL, '$2y$10$Y47335CNDupTwnvZO/ydUObOo7.hk.VDMuW3bmiUEElL9uaZlCaeW', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-17 05:16:39', '2021-07-26 17:16:19'),
(23, 21, NULL, 'jmill777777@gmail.com', NULL, NULL, NULL, 'jmill777777@gmail.com', NULL, '$2y$10$BMwdBo6ajdn9WewmoJ6.G.uWRVz7htIORL0AqkFuiV95SywoGxEUy', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-18 22:57:58', '2021-07-18 23:02:15'),
(24, 0, NULL, 'Minitest1', NULL, NULL, NULL, 'minitest1@gmail.com', NULL, '$2y$10$VG8fH.ipvdJa04wEwam8ZOvqJbNRVCx9rdDiW/I1ITUc9pbyKV.c6', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-19 15:55:30', '2021-07-19 15:55:30'),
(27, 21, NULL, 'Cbillick54', NULL, NULL, NULL, 'cbillick54@me.com', NULL, '$2y$10$dkYGkY56iwXFU.YHp9G2WO6LIKO2BW0Mqlp3v3G618cc5JIAikq3O', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-21 17:44:08', '2021-07-21 17:44:08'),
(28, 0, 'ch_1JGpeNKuGDN8tiVq2bGn93Tp', 'demo account', NULL, NULL, NULL, 'demoaccount@automatedcontactgenerator.com', NULL, '$2y$10$1YKK//AcceryFUf8bNjgCuaQ7cmykJ4M1uqupp3RAhnwNl/xO91EO', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-21 19:41:02', '2021-07-24 22:32:40'),
(29, 0, NULL, 'user demo', NULL, NULL, NULL, 'userdemo@automatedcontactgenerator.com', NULL, '$2y$10$ur0exGPR5QDrhdxxeMtUK.yCRogphltiBFEEOJdBOBAZPM3ipOr.2', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-21 21:05:52', '2021-07-21 21:05:52'),
(30, 0, NULL, 'jarstickme', NULL, NULL, NULL, 'jarstickme@gmail.com', NULL, '$2y$10$Kc.4InYsRtrzF5dcqw9wkeaaD3QSsECZxV2cJfcLMvemSnvgRBHPy', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-22 17:29:31', '2021-07-22 17:29:31'),
(31, 0, NULL, 'admin@auto-texter.app', NULL, NULL, NULL, 'admin@auto-texter.app', NULL, '$2y$10$WpylQfmyl0kvHZae.b8Kde0uA5AEXvIaZLkE0i3HjNYMI0wquUwIG', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-22 19:22:57', '2021-07-22 19:22:57'),
(32, 21, NULL, 'AdjusterLouisiana@gmail.com', NULL, NULL, NULL, 'AdjusterLouisiana@gmail.com', NULL, '$2y$10$5XadtAJLtjErMnLg7PRwZubVsjgu7jWmUbxFOC56O14ht7YJEf13S', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-07-22 21:20:04', '2021-07-22 21:20:04'),
(33, 21, NULL, 'fcycmikep', NULL, NULL, NULL, 'fcycmikep@yahoo.com', NULL, '$2y$10$oM50FXesWXm9/HDNEuqWouHUfBsXl7Wjzv.KmS.cy8Kk63rrYG/r2', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-26 16:52:07', '2021-07-26 16:52:07'),
(34, 0, NULL, NULL, 'Test1', 'Test last', 'company name', 'testdffvdkn@sdffv.dsv', NULL, '$2y$10$8.zkNQ9eqqkg52zzD0XcceZCwzjBDHVQvQH5XrK9XQrbtILBz0GHa', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-07-29 20:22:34', '2021-07-29 20:26:17'),
(35, 0, NULL, NULL, 'test', 'test', 'test', 'testtest@test.com', NULL, '$2y$10$K.s0UWeIIcMNr0HUMAX0BehsxUMbBrQbcfmEzclJJuEhUR29SKMye', '1628626340.jpg', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-08-09 14:26:32', '2021-08-11 00:12:20'),
(36, 0, NULL, NULL, 'Sinclair', 'Knowles', NULL, 'sircoakley@gmail.com', NULL, '$2y$10$IkjI9J36YpFi0keozSjkXedEv5xJe7JxwPL3eSIY3RWrAYCb0B6Pu', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-08-14 22:15:10', '2021-08-14 22:15:10'),
(37, 16, NULL, NULL, 'bilal', 'bilal', NULL, 'bilal@bilal.com', NULL, '$2y$10$.BizqxF58BE1.TvrtYfXVu5dcFGnnXW.ePgLyiqM8iGEr/RlcgRWi', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-09-14 19:13:28', '2021-09-14 19:13:28'),
(38, 0, NULL, 'sdbdsb', 'sdbds', 'bdbdsb', 'thtrh', 'dsbdsb@rsh.tj', NULL, '$2y$10$tOub4sxPtQ3NFJRg6jjTjeAGv4zB419JPLQ9bu0yZmFcyTHwMpd2K', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-09-15 17:33:38', '2021-09-15 17:33:38'),
(39, 0, NULL, 'naterucker36', 'William', 'Rucker', NULL, 'naterucker36@gmail.com', NULL, '$2y$10$TFshMbx2uOIT85q86Q8Cx..MY9xEOKqwwgK.GnY/PSnL2sRw3EjTG', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-10-06 19:34:58', '2021-10-06 19:34:58'),
(40, 0, NULL, NULL, 'sample', 'sample', 'sample', 'sample_user', NULL, '$2y$10$dVj9RfkSoz/cCtN/C6p5f.qrZPNRMJsxIrkRGJ7EsZk.IDY4Pps1W', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-10-08 16:37:56', '2021-10-08 16:37:56'),
(41, 0, NULL, NULL, 'Rakesh', 'C', NULL, 'testautomated98@gmail.com', NULL, '$2y$10$.RbWvvrGidAiwu9KrFSNH.1ey2T.80Ur/Tn19ONfhLUvWSEY80mKy', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-10-23 12:22:59', '2021-10-23 12:22:59'),
(42, 16, NULL, NULL, 'Guest', 'ID16369-97365', '', 'GuestID16369-97365', NULL, '$2y$10$8J5DbASC8o5miVA7/6eZ3u4DVWt7dfsCXfAD7jWbf1kNB9u8bxpKq', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-15 17:29:25', '2021-11-15 17:29:25'),
(43, 0, NULL, NULL, 'Debra', 'Shriner', 'PersonalAdventures', 'deb.shriner51@aol.com', NULL, '$2y$10$sClBK81OkJnMiZs4JrCEzOcA9h7WlYulmL1DdWmf3EYEYe9BVNfxu', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 1, '0', '0', NULL, '2021-11-16 06:06:47', '2021-11-22 18:17:22'),
(44, 21, NULL, NULL, 'Guest', 'ID16374-27140', '', 'GuestID16374-27140', NULL, '$2y$10$F0RFayOtAgvz6EB.yozGIOFWi7tPlh.NB06LaxC5KK/S3jHivvO4G', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-20 16:52:20', '2021-11-20 16:52:20'),
(45, 16, NULL, NULL, 'Debra', 'Shriner', NULL, 'Deb.Shriner52@aol.com', NULL, '$2y$10$vt.6ciSAsB9/mcx40IKSkeUPCMI3eYlpI8zbpRqv6nNZ1bHMYOjGC', 'avatar-1.png', NULL, 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-24 02:28:16', '2021-11-24 02:28:16'),
(46, 42, NULL, NULL, 'Guest', 'ID16379-58214', '', 'GuestID16379-58214', NULL, '$2y$10$x9RplCyNE870A1GHbfx.2OyWduvM4vZiVkOiP97kMye1gWj2Z2YjC', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-26 20:23:34', '2021-11-26 20:23:34'),
(47, 42, NULL, NULL, 'Guest', 'ID16379-77218', '', 'GuestID16379-77218', NULL, '$2y$10$HFBDPH0EM.2Lif86imLmruto5K2yH0ajHCiZZJv1grZt7JFctUA1y', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-27 01:40:18', '2021-11-27 01:40:18'),
(48, 0, NULL, NULL, 'Max', 'Loskor', 'Max Loskor', 'yeasinalam1720@gmail.com', NULL, '$2y$10$uBwx4nwK0XVLVgbAV2C7rOztrkIflhXy9khge0VpkKbcx2fQV1Yuu', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-27 06:20:47', '2021-11-27 06:20:47'),
(49, 42, NULL, NULL, 'Guest', 'ID16380-13205', '', 'GuestID16380-13205', NULL, '$2y$10$t/q5g1ZpbXGz6w2Fm5DDCeydG7ckHP7TwatkuMbAZFq4va.ir/rTK', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-27 11:40:05', '2021-11-27 11:40:05'),
(50, 42, NULL, NULL, 'Guest', 'ID16381-22116', '', 'GuestID16381-22116', NULL, '$2y$10$10GW3y9mLf3GUsfdKi1k7uZAwrDYtUJop1tSvawHHKegp.0fkZW1.', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-28 17:55:16', '2021-11-28 17:55:16'),
(51, 42, NULL, NULL, 'Guest', 'ID16381-93635', '', 'GuestID16381-93635', NULL, '$2y$10$3Dhb/OJEvn037jqP.pORVukDbknG1fXj50i6xmv.ZnUBhwvAAWqr2', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-29 13:47:15', '2021-11-29 13:47:15'),
(52, 42, NULL, NULL, 'Guest', 'ID16381-93726', '', 'GuestID16381-93726', NULL, '$2y$10$UnqXtoz.GVlCnghLgdAzaOz.VtKliP8f2NLQFzBO7ElYEV3DK3b2W', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-29 13:48:46', '2021-11-29 13:48:46'),
(53, 42, NULL, NULL, 'Guest', 'ID16381-93728', '', 'GuestID16381-93728', NULL, '$2y$10$Ar6BUjLyqvkTCycx.ZaAReCDD6WpTQ/upG/Y1d.ZtQpppC9TpEpoW', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-11-29 13:48:48', '2021-11-29 13:48:48'),
(54, 42, NULL, NULL, 'Guest', 'ID16383-79102', '', 'GuestID16383-79102', NULL, '$2y$10$3ItxB.e3Wf9ijZ6koeoGtO.az3v.13rRhrk4sG.Uxu5OzLQYtxCnq', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-01 17:18:22', '2021-12-01 17:18:22'),
(55, 0, NULL, NULL, 'Rakesh', 'C', NULL, 'automatedmail98@gmail.com', NULL, '$2y$10$LqwUV9i4pSjLEwfOWr8shuq442XGCGRyDZuDbcmLij77M59pmLWdC', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-02 08:45:00', '2021-12-02 08:45:00'),
(56, 0, NULL, NULL, 'Jodian', 'Lewis', NULL, 'lewisjodian26@gmail.com', NULL, '$2y$10$KgsQcd143tJXn1cJ9iupHuOR0iAucfy9k1FGXh2.tHIeoun9PHE9y', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-03 13:21:15', '2021-12-03 13:21:15'),
(57, 42, NULL, NULL, 'Guest', 'ID16385-64839', '', 'GuestID16385-64839', NULL, '$2y$10$u40AOyS0trXNlu.WPuzhK.TV3xo8lbF73kjGBqsAr5CRlv40LwfBK', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-03 20:53:59', '2021-12-03 20:53:59'),
(58, 42, NULL, NULL, 'Guest', 'ID16386-42997', '', 'GuestID16386-42997', NULL, '$2y$10$D7Mr0bYYSWPjQtS/VH1IReswr5qD7issTKWdvqNkrzjIXdw/zjZ2S', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-04 18:36:37', '2021-12-04 18:36:37'),
(59, 42, NULL, NULL, 'Guest', 'ID16386-47498', '', 'GuestID16386-47498', NULL, '$2y$10$aWikHN6/BTTlLbWrFazs/OkqFFTyr7Hi/ZWayNh6yOBXghWd8BY3K', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-04 19:51:38', '2021-12-04 19:51:38'),
(60, 42, NULL, NULL, 'Guest', 'ID16387-29857', '', 'GuestID16387-29857', NULL, '$2y$10$bDb7sNNJHFTubSd0.PqtgO3sxSuGlgGWTF0OxfPP5Pw.G4wYDPAci', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-05 18:44:17', '2021-12-05 18:44:17'),
(61, 0, NULL, NULL, 'Guest', 'ID16389-71102', '', 'GuestID16389-71102', NULL, '$2y$10$lvQ4zcfgGSZHlgGcjmET5.oE9pU/mcXRbkJfD/sOAoWKZOMpRh/3S', 'avatar-1.png', 'automatedcontactgenerator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-08 13:45:02', '2021-12-08 13:45:02'),
(62, 0, NULL, NULL, 'Guest', 'ID16389-91342', '', 'GuestID16389-91342', NULL, '$2y$10$qZabWiv7X0oXukaUHj3I7ONC2kwPEvzcoRghWjf9wF7REWWuevDWG', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-08 19:22:22', '2021-12-08 19:22:22'),
(63, 0, NULL, NULL, 'Guest', 'ID16395-01947', '', 'GuestID16395-01947', NULL, '$2y$10$8kopz4MLmU/f4szm2ybZSuEBerbXYt9y1oCZohJXCdlswtpRx8ALm', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-14 17:12:27', '2021-12-14 17:12:27'),
(64, 0, NULL, NULL, 'Guest', 'ID16395-30690', '', 'GuestID16395-30690', NULL, '$2y$10$glJny9qwF2Xm3a8Ass0KwOPmNtb2R1Tdap02tZpRsF5/bYCfJo3fa', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 01:11:31', '2021-12-15 01:11:31'),
(65, 0, NULL, NULL, 'Guest', 'ID16395-74503', '', 'GuestID16395-74503', NULL, '$2y$10$KzaKR3gmBl5hwbH/mSkitOG57NRPf8h4yTDl9YDoH3mVu3xs1P0Vu', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 13:21:43', '2021-12-15 13:21:43'),
(66, 0, NULL, NULL, 'Guest', 'ID16395-74530', '', 'GuestID16395-74530', NULL, '$2y$10$sdN3RtDajQfjxNh4iOc3AONqaZYemt1.GNX8qKBpxqOlhDLfJocfG', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 13:22:11', '2021-12-15 13:22:11'),
(67, 0, NULL, NULL, 'Guest', 'ID16395-74591', '', 'GuestID16395-74591', NULL, '$2y$10$F7JOQIK0PuX24rprn.cEqed9dJwj3sZKWNl0fUVQ4Kfb7uFdLLw3C', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 13:23:11', '2021-12-15 13:23:11'),
(68, 0, NULL, NULL, 'Guest', 'ID16395-74661', '', 'GuestID16395-74661', NULL, '$2y$10$6g13MiP3/YzsF7XN6j9Y1OkUNiC6v8vnGt1HN6xz8oBq9EAX6Luzm', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 13:24:21', '2021-12-15 13:24:21'),
(69, 0, NULL, NULL, 'Guest', 'ID16395-74732', '', 'GuestID16395-74732', NULL, '$2y$10$fZ8hkwMUX51l6s5foDWDCeWADo9YpBG6zAt6vsmj8MmpRFkfEM2E.', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 13:25:32', '2021-12-15 13:25:32'),
(70, 0, NULL, NULL, 'Guest', 'ID16395-74787', '', 'GuestID16395-74787', NULL, '$2y$10$uzmTzf./2Ka.IVHNhSkEH.WEuu0f0YFdbqiF1zQ.umE63S9r2N2OO', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-15 13:26:27', '2021-12-15 13:26:27'),
(71, 0, NULL, NULL, 'Guest', 'ID16396-80573', '', 'GuestID16396-80573', NULL, '$2y$10$K7jKRzh.XoD7rzWXr1LDIumvRHGLfCtY/p7hsbjGeEKEs7pWgTqPO', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-16 18:49:33', '2021-12-16 18:49:33'),
(72, 0, NULL, NULL, 'Guest', 'ID16397-75075', '', 'GuestID16397-75075', NULL, '$2y$10$caYW719zm5OI17xYNb.EiOC6gMPxrD3IFhpMiswli9/Ay7NqKPAfe', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-17 21:04:35', '2021-12-17 21:04:35'),
(73, 0, NULL, NULL, 'Guest', 'ID16398-50784', '', 'GuestID16398-50784', NULL, '$2y$10$5WsInck02ntoYBJfuFyoxO8VxSHsJRz1mph.KR9nqbkn7yfHrY4j.', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-18 18:06:24', '2021-12-18 18:06:24'),
(74, 0, NULL, NULL, 'Guest', 'ID16401-12317', '', 'GuestID16401-12317', NULL, '$2y$10$WdKz406P4sXFDPOLv2CnCOonsp9RUNVCY7sn7GWnO1kT8KTATzX4q', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-21 18:45:17', '2021-12-21 18:45:17'),
(75, 0, NULL, NULL, 'Guest', 'ID16401-12461', '', 'GuestID16401-12461', NULL, '$2y$10$7kQwQmO5uQnEA2JUvZK18uvyAi27oUUIXqepMeTBywYpKfTVhD38C', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-21 18:47:41', '2021-12-21 18:47:41'),
(76, 0, NULL, NULL, 'Guest', 'ID16401-12571', '', 'GuestID16401-12571', NULL, '$2y$10$1vrK18ZL29lq9ajspY.awOmmQDdQw.Goh.rWt6C6Gnm/RwLvLOuFO', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-21 18:49:31', '2021-12-21 18:49:31'),
(77, 0, NULL, NULL, 'Guest', 'ID16401-13358', '', 'GuestID16401-13358', NULL, '$2y$10$Zu6C9TQscH4ZEaHDd4QDS.w8L9ZrN.cRzMamSTOcsCi6OdNCuWD.m', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-21 19:02:39', '2021-12-21 19:02:39'),
(78, 0, NULL, NULL, 'Guest', 'ID16401-13383', '', 'GuestID16401-13383', NULL, '$2y$10$92hjSchMmGXD.Fwfb4svDe/G9oTlndgP2fvg2FhmnIw.GvP2XMUpC', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-21 19:03:03', '2021-12-21 19:03:03'),
(79, 0, NULL, NULL, 'Guest', 'ID16401-16829', '', 'GuestID16401-16829', NULL, '$2y$10$2gUEj8ASbrIvF6mQT621zOajGxI7O0wtly8EAJssNRLTLRCa/oHfm', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-21 20:00:29', '2021-12-21 20:00:29'),
(80, 0, NULL, NULL, 'Guest', 'ID16401-33460', '', 'GuestID16401-33460', NULL, '$2y$10$PA1Ig7t/6XqBeHiEixvdkeJruyWL9Ii0IHoHAt0JzGCv118c05Tau', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-22 00:37:40', '2021-12-22 00:37:40'),
(81, 0, NULL, NULL, 'Guest', 'ID16401-82222', '', 'GuestID16401-82222', NULL, '$2y$10$S9ZIYeFQQwn0n3ad2m7c2OKPZnCHTyTSFZJa/C9oL7Me0s453ll3u', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-22 14:10:22', '2021-12-22 14:10:22'),
(82, 0, NULL, NULL, 'Guest', 'ID16401-98734', '', 'GuestID16401-98734', NULL, '$2y$10$FcBMZnYujcQD4hqynvzme.rIosUl6KGXFWPxMNfGXNRgQZVP3Z9f.', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-22 18:45:34', '2021-12-22 18:45:34'),
(83, 0, NULL, NULL, 'Guest', 'ID16401-99087', '', 'GuestID16401-99087', NULL, '$2y$10$xJmDYcB2NG9BOSDEYJK1/.o9N0tVORHmweUFENVLck3km7by9T5UG', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-22 18:51:27', '2021-12-22 18:51:27'),
(84, 0, NULL, NULL, 'ascascasc', 'ascasc', 'ascasc', 'ascascascasc', NULL, '$2y$10$gpOCdRk2GyXlo9helzJvpeU9ZhcA5AE4U45vLN3eDQf3fNM4uS01K', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-22 19:07:45', '2021-12-22 19:07:45'),
(89, 0, NULL, NULL, 'Guest', 'ID16402-48867', '', 'GuestID16402-48867', NULL, '$2y$10$UcqwFqkNIGX/VFnMq/1umeNSS88Ac.noVBMXckwNaLwK2nB.Dkwhy', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-23 08:41:07', '2021-12-23 08:41:07'),
(90, 0, NULL, NULL, 'Guest', 'ID16402-48917', '', 'GuestID16402-48917', NULL, '$2y$10$Z6DmEryf3sq2IwCgUKUwlOW6x2rwz2VOnT.g7jYEHQbCSE80feWCW', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-23 08:41:57', '2021-12-23 08:41:57'),
(91, 0, NULL, NULL, 'Guest', 'ID16402-49065', '', 'GuestID16402-49065', NULL, '$2y$10$bhVgS91XxsjHWPVG8oOKHOaEuDag75Q7u5c.VBb2Waz1qoHqticMu', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-23 08:44:25', '2021-12-23 08:44:25'),
(92, 0, NULL, NULL, 'Guest', 'ID16402-67874', '', 'GuestID16402-67874', NULL, '$2y$10$nnoS1pOH3KiTugw/QVLyPOcaOr91EwtYPez.FUs1Qhw/FhYnWNQCW', 'avatar-1.png', 'Automated Contact Generator', 'free', NULL, 'user', 0, NULL, 0, '0', '0', NULL, '2021-12-23 13:57:54', '2021-12-23 13:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE `user_bank_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attr_name` text,
  `attr_value` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_bank_details`
--

INSERT INTO `user_bank_details` (`id`, `user_id`, `attr_name`, `attr_value`, `created_at`, `updated_at`) VALUES
(1, 16, 'account_holder_name', 'Abdul basit', '2021-07-29 15:09:10', '2021-07-29 15:09:10'),
(3, 16, 'bank_name', 'United Bank Limited1', '2021-07-29 19:16:32', '2021-08-01 21:25:18'),
(4, 16, 'account_number', '1385', '2021-07-29 19:16:32', '2021-07-29 19:16:32'),
(5, 16, 'routing_number', '12121', '2021-07-29 19:16:32', '2021-09-24 11:58:28'),
(6, 16, 'card_holder_name', 'Abdul Basit1', '2021-07-29 19:16:32', '2021-08-01 21:24:45'),
(7, 16, 'card_number', '12341234123412341234', '2021-07-29 19:16:32', '2021-07-29 19:16:32'),
(8, 16, 'card_expiry', '02/2024', '2021-07-29 19:16:32', '2021-07-29 19:16:32'),
(9, 16, 'card_cvc', '547', '2021-07-29 19:16:32', '2021-07-29 19:17:03'),
(10, 43, 'bank_name', 'Trius bank acct', '2021-11-17 03:09:13', '2021-12-03 02:26:51'),
(11, 43, 'account_holder_name', 'Debra  A Shriner', '2021-11-17 03:09:13', '2021-12-03 02:26:51'),
(12, 43, 'account_number', '7080801666276', '2021-11-17 03:09:13', '2021-12-03 02:26:51'),
(13, 43, 'routing_number', '304982400', '2021-11-17 03:09:13', '2021-12-03 02:26:51'),
(14, 43, 'card_holder_name', 'Debra  A Shriner', '2021-11-17 03:10:47', '2021-12-03 02:29:54'),
(15, 43, 'card_number', '4258 0700 0000 2430', '2021-11-17 03:10:47', '2021-12-03 02:29:54'),
(16, 43, 'card_expiry', '03/2004', '2021-11-17 03:10:47', '2021-12-03 02:29:54'),
(17, 43, 'card_cvc', '318', '2021-11-17 03:10:47', '2021-12-03 02:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_number` varchar(100) DEFAULT NULL,
  `expiration_month` varchar(5) DEFAULT NULL,
  `expiration_year` varchar(5) DEFAULT NULL,
  `card_cvc` varchar(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cards`
--

INSERT INTO `user_cards` (`id`, `user_id`, `card_number`, `expiration_month`, `expiration_year`, `card_cvc`, `created_at`, `updated_at`) VALUES
(1, 16, '4242424242424242', '12', '2024', '123', '2021-07-28 16:12:15', '2021-07-28 16:12:15'),
(2, 21, '4985031085575229', '08', '2025', '476', '2021-09-25 13:44:25', '2021-09-25 13:44:25'),
(3, 16, '378282246310005', '5', '2024', '333', '2021-09-27 18:24:10', '2021-09-27 18:24:10'),
(4, 16, '378734493671000', '12', '2025', '212', '2021-09-27 18:34:01', '2021-09-27 18:34:01'),
(5, 16, '2223000048400011', '1', '2026', '145', '2021-09-27 18:39:51', '2021-09-27 18:39:51'),
(6, 16, '2221000000000009', '7', '2024', '333', '2021-09-27 18:43:00', '2021-09-27 18:43:00'),
(7, 16, '2223016768739313', '7', '2024', '333', '2021-09-27 18:59:11', '2021-09-27 18:59:11'),
(8, 16, '5105105105105100', '5', '2025', '333', '2021-09-27 19:02:06', '2021-09-27 19:02:06'),
(9, 16, '3700 0000 0000 002', '7', '2024', '333', '2021-09-27 19:23:55', '2021-09-27 19:23:55'),
(10, 16, '4242 4242 4242 4242', '04', '2024', '2121', '2021-09-27 19:32:09', '2021-09-27 19:32:09'),
(11, 16, '4242424242424424', '02', '2042', '222', '2021-09-29 17:38:14', '2021-09-29 17:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_clock_status`
--

CREATE TABLE `user_clock_status` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_code` varchar(255) DEFAULT NULL,
  `clock_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_clock_status`
--

INSERT INTO `user_clock_status` (`id`, `user_id`, `job_code`, `clock_status`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, '0', '2021-08-18 01:34:14', '2021-08-18 01:34:14'),
(2, 16, NULL, '1', '2021-08-18 01:34:24', '2021-08-18 01:34:24'),
(3, 16, NULL, '0', '2021-08-18 01:34:48', '2021-08-18 01:34:48'),
(4, 16, NULL, '1', '2021-08-18 01:37:19', '2021-08-18 01:37:19'),
(5, 21, NULL, '1', '2021-08-19 02:41:58', '2021-08-19 02:41:58'),
(6, 21, NULL, '0', '2021-08-19 02:41:58', '2021-08-19 02:41:58'),
(7, 16, NULL, '1', '2021-08-19 16:54:13', '2021-08-19 16:54:13'),
(8, 16, NULL, '0', '2021-08-19 16:54:21', '2021-08-19 16:54:21'),
(9, 16, NULL, '1', '2021-08-19 17:14:29', '2021-08-19 17:14:29'),
(10, 17, NULL, '1', '2021-08-20 08:49:05', '2021-08-20 08:49:05'),
(11, 17, NULL, '0', '2021-08-20 08:49:09', '2021-08-20 08:49:09'),
(12, 16, NULL, '1', '2021-08-21 20:21:58', '2021-08-21 20:21:58'),
(13, 16, NULL, '0', '2021-08-21 22:20:01', '2021-08-21 19:34:30'),
(14, 16, NULL, '1', '2021-08-23 20:30:42', '2021-08-23 19:04:14'),
(15, 16, NULL, '0', '2021-08-23 23:03:36', '2021-08-23 23:03:36'),
(16, 16, NULL, '1', '2021-08-24 14:12:58', '2021-08-24 14:12:58'),
(17, 21, NULL, '1', '2021-08-24 14:53:35', '2021-08-24 14:53:35'),
(18, 21, NULL, '0', '2021-08-24 14:53:36', '2021-08-24 14:53:36'),
(19, 16, 'meeting', '0', '2021-08-24 15:20:54', '2021-08-24 15:20:54'),
(20, 16, NULL, '1', '2021-08-24 16:05:12', '2021-08-24 16:05:12'),
(21, 16, NULL, '0', '2021-08-24 22:55:34', '2021-08-24 18:55:46'),
(22, 16, 'meeting', '1', '2021-08-25 14:23:11', '2021-08-25 14:23:11'),
(23, 21, NULL, '1', '2021-08-25 14:40:44', '2021-08-25 14:40:44'),
(24, 21, NULL, '0', '2021-08-25 14:40:45', '2021-08-25 14:40:45'),
(29, 16, 'abaiodev454-876', '1', '2021-08-25 21:02:33', '2021-08-25 21:02:33'),
(31, 16, 'abaiodev454-876', '1', '2021-08-26 18:44:35', '2021-08-26 18:44:35'),
(30, 16, 'abaiodev454-876', '0', '2021-08-26 20:20:27', '2021-08-26 19:34:57'),
(35, 16, NULL, '1', '2021-09-09 08:02:21', '2021-09-09 08:02:21'),
(33, 16, 'abaiodev454-876', '1', '2021-09-08 12:00:55', '2021-09-08 21:14:52'),
(34, 16, 'abaiodev454-876', '0', '2021-09-08 17:00:55', '2021-09-08 21:15:30'),
(36, 16, NULL, '1', '2021-09-10 07:12:03', '2021-09-10 07:12:03'),
(37, 16, 'meeting', '1', '2021-09-11 18:18:45', '2021-09-11 18:18:45'),
(44, 16, NULL, '1', '2021-09-14 16:58:35', '2021-09-14 16:58:35'),
(43, 16, NULL, '1', '2021-09-13 13:23:14', '2021-09-13 13:23:14'),
(40, 16, NULL, '1', '2021-09-12 07:28:40', '2021-09-12 07:28:40'),
(45, 16, 'meeting', '1', '2021-09-15 12:35:30', '2021-09-15 12:35:30'),
(42, 16, NULL, '0', '2021-09-12 11:59:39', '2021-09-12 11:59:39'),
(46, 16, NULL, '1', '2021-09-15 12:52:17', '2021-09-15 12:52:17'),
(47, 16, NULL, '0', '2021-09-15 12:52:17', '2021-09-15 12:52:17'),
(48, 16, NULL, '1', '2021-09-15 12:52:59', '2021-09-15 12:52:59'),
(49, 16, NULL, '0', '2021-09-15 12:52:59', '2021-09-15 12:52:59'),
(50, 16, NULL, '1', '2021-09-15 12:53:00', '2021-09-15 12:53:00'),
(51, 16, NULL, '0', '2021-09-15 12:53:00', '2021-09-15 12:53:00'),
(52, 16, NULL, '1', '2021-09-15 12:53:01', '2021-09-15 12:53:01'),
(53, 16, NULL, '0', '2021-09-15 12:53:02', '2021-09-15 12:53:02'),
(54, 16, NULL, '1', '2021-09-15 15:50:25', '2021-09-15 15:50:25'),
(55, 16, NULL, '1', '2021-09-16 07:33:27', '2021-09-16 07:33:27'),
(56, 16, NULL, '1', '2021-09-16 08:15:13', '2021-09-16 08:15:13'),
(57, 16, NULL, '0', '2021-09-16 08:15:18', '2021-09-16 08:15:18'),
(58, 16, 'meeting', '0', '2021-09-16 18:26:20', '2021-09-16 18:26:20'),
(59, 16, 'meeting', '1', '2021-09-16 18:26:20', '2021-09-16 18:26:20'),
(60, 16, NULL, '1', '2021-09-16 18:26:37', '2021-09-16 18:26:37'),
(61, 16, 'meeting', '1', '2021-09-17 09:12:05', '2021-09-17 09:12:05'),
(62, 16, NULL, '1', '2021-09-18 15:10:28', '2021-09-18 15:10:28'),
(63, 16, NULL, '1', '2021-09-19 17:39:31', '2021-09-19 17:39:31'),
(64, 16, NULL, '1', '2021-09-20 09:35:38', '2021-09-20 09:35:38'),
(65, 16, NULL, '1', '2021-09-21 16:13:52', '2021-09-21 16:13:52'),
(66, 16, NULL, '1', '2021-09-22 08:24:00', '2021-09-22 08:24:00'),
(67, 16, NULL, '1', '2021-09-22 09:00:43', '2021-09-22 09:00:43'),
(68, 16, NULL, '0', '2021-09-22 09:00:50', '2021-09-22 09:00:50'),
(69, 16, NULL, '1', '2021-09-22 09:05:17', '2021-09-22 09:05:17'),
(70, 16, NULL, '1', '2021-09-22 09:06:39', '2021-09-22 09:06:39'),
(71, 21, NULL, '1', '2021-09-22 09:07:49', '2021-09-22 09:07:49'),
(72, 21, NULL, '1', '2021-09-22 09:08:24', '2021-09-22 09:08:24'),
(73, 21, NULL, '1', '2021-09-22 09:08:52', '2021-09-22 09:08:52'),
(74, 21, NULL, '0', '2021-09-22 09:09:02', '2021-09-22 09:09:02'),
(75, 21, NULL, '1', '2021-09-22 09:09:15', '2021-09-22 09:09:15'),
(76, 21, NULL, '1', '2021-09-22 09:09:25', '2021-09-22 09:09:25'),
(77, 21, NULL, '0', '2021-09-22 09:09:32', '2021-09-22 09:09:32'),
(78, 16, NULL, '1', '2021-09-22 19:23:49', '2021-09-22 19:23:49'),
(79, 16, NULL, '1', '2021-09-24 09:51:28', '2021-09-24 09:51:28'),
(80, 16, NULL, '1', '2021-09-24 11:43:05', '2021-09-24 11:43:05'),
(81, 16, NULL, '1', '2021-09-24 16:51:07', '2021-09-24 16:51:07'),
(82, 16, NULL, '1', '2021-09-25 13:34:55', '2021-09-25 13:34:55'),
(83, 16, NULL, '1', '2021-09-27 15:25:22', '2021-09-27 15:25:22'),
(84, 16, NULL, '1', '2021-09-27 18:30:35', '2021-09-27 18:30:35'),
(85, 16, NULL, '1', '2021-10-01 11:52:27', '2021-10-01 11:52:27'),
(86, 16, NULL, '1', '2021-10-02 16:36:10', '2021-10-02 16:36:10'),
(87, 39, NULL, '1', '2021-10-06 20:39:27', '2021-10-06 20:39:27'),
(88, 39, NULL, '0', '2021-10-06 20:39:28', '2021-10-06 20:39:28'),
(89, 16, NULL, '1', '2021-10-07 10:42:16', '2021-10-07 10:42:16'),
(90, 16, NULL, '1', '2021-10-08 11:53:35', '2021-10-08 11:53:35'),
(91, 16, NULL, '1', '2021-10-09 14:15:12', '2021-10-09 14:15:12'),
(92, 16, NULL, '1', '2021-10-10 13:49:33', '2021-10-10 13:49:33'),
(93, 16, NULL, '1', '2021-10-12 14:23:32', '2021-10-12 14:23:32'),
(94, 16, NULL, '1', '2021-10-14 10:11:20', '2021-10-14 10:11:20'),
(95, 16, NULL, '1', '2021-10-24 13:55:48', '2021-10-24 13:55:48'),
(96, 56, 'SStextsetterjlewis', '1', '2021-12-03 13:22:28', '2021-12-03 13:22:28'),
(97, 56, 'SStextsetterjlewis', '0', '2021-12-03 13:22:34', '2021-12-03 13:22:34'),
(98, 56, 'SStextsetterjlewis', '1', '2021-12-03 14:03:24', '2021-12-03 14:03:24'),
(99, 56, 'SStextsetterjlewis', '0', '2021-12-03 14:42:06', '2021-12-03 14:42:06'),
(100, 56, 'SStextsetterjlewis', '1', '2021-12-03 14:47:03', '2021-12-03 14:47:03'),
(101, 56, 'SStextsetterjlewis', '1', '2021-12-06 14:30:09', '2021-12-06 14:30:09'),
(102, 56, 'SStextsetterjlewis', '0', '2021-12-06 15:50:36', '2021-12-06 15:50:36'),
(103, 56, 'SStextsetterjlewis', '1', '2021-12-06 15:53:48', '2021-12-06 15:53:48'),
(104, 56, 'SStextsetterjlewis', '1', '2021-12-07 14:00:05', '2021-12-07 14:00:05'),
(105, 56, NULL, '1', '2021-12-08 14:00:07', '2021-12-08 14:00:07'),
(106, 56, 'SStextsetterjlewis', '1', '2021-12-09 14:05:37', '2021-12-09 14:05:37'),
(107, 21, NULL, '1', '2021-12-09 17:10:48', '2021-12-09 17:10:48'),
(108, 21, NULL, '0', '2021-12-09 17:10:51', '2021-12-09 17:10:51'),
(109, 56, 'SStextsetterjlewis', '1', '2021-12-13 14:02:03', '2021-12-13 14:02:03'),
(132, 56, 'Stextsetterjlewis', '1', '2021-12-14 15:48:18', '2021-12-14 15:48:18'),
(131, 56, NULL, '0', '2021-12-14 12:54:03', '2021-12-14 12:54:03'),
(130, 16, NULL, '1', '2021-12-13 18:25:03', '2021-12-13 18:25:03'),
(129, 16, NULL, '0', '2021-12-13 17:49:44', '2021-12-13 17:49:44'),
(133, 16, NULL, '0', '2021-12-15 09:21:13', '2021-12-15 09:21:13'),
(134, 56, NULL, '0', '2021-12-15 13:10:55', '2021-12-15 13:10:55'),
(135, 56, 'SStextsetterjlewis', '1', '2021-12-20 14:00:05', '2021-12-20 14:00:05'),
(136, 56, NULL, '0', '2021-12-21 13:16:05', '2021-12-21 13:16:05'),
(137, 56, 'SStextsetterjlewis', '1', '2021-12-22 14:00:20', '2021-12-22 14:00:20'),
(138, 16, NULL, '1', '2021-12-22 15:27:07', '2021-12-22 15:27:07'),
(139, 16, NULL, '0', '2021-12-22 15:27:09', '2021-12-22 15:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_avatar` varchar(255) DEFAULT 'avatar-1.png',
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `us_number_format` varchar(100) DEFAULT NULL,
  `company_name` varchar(220) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contacts`
--

INSERT INTO `user_contacts` (`id`, `user_id`, `contact_avatar`, `contact_name`, `contact_email`, `contact_phone`, `us_number_format`, `company_name`, `notes`, `created_at`, `updated_at`) VALUES
(13, 16, '1629225028.jpg', 'abdul basit', 'abdul@gmail.com', '923247763398', NULL, 'sample company', 'sample company sample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample companysample company', '2021-08-10 00:22:56', '2021-08-17 22:30:28'),
(7, 21, 'avatar-1.png', 'test name', 'testtingon@EMAIL.COM', '5555555', NULL, NULL, 'test notes', '2021-07-20 01:13:55', '2021-09-04 20:53:13'),
(8, 21, 'avatar-1.png', 'elvira santiago', 'ayame51773@Gmail.com', '347-310-3734', '+13473103734', NULL, 'sent email has custom products business\r\nsells custom cups, tshirts etc for about 2 years \r\n\r\nsent: Hi Elvira,\r\nhere is the website i mentioned: \r\nhttp://automatedcontactgenerator.com/\r\ndemo account credentials: \r\nuserdemo@automatedcontactgenerator.com\r\n@ACGuserdemo0\r\n\r\nYou can also make a free account Elvira.\r\nIn addition to software benefits you can also earn nice affiliate commissions from all services by creating a free affiliate account.  \r\nI\'m here to answer any questions you might have.  I\'ll be happy to hear from you, have a great day!\r\n\r\nRonnie', '2021-07-22 18:10:42', '2021-10-22 16:02:35'),
(9, 21, 'avatar-1.png', 'Olivia', 'fastandeasymovers@gmail.com', '+1 (754) 226-5896US', '+17542265896', NULL, NULL, '2021-07-23 00:36:45', '2021-10-22 16:02:52'),
(10, 21, 'avatar-1.png', 'mike with demolition magician', NULL, NULL, NULL, NULL, 'michelle handles, hes also manager.  they have 2 people doing customer support', '2021-07-23 01:02:35', '2021-07-23 01:02:35'),
(11, 21, 'avatar-1.png', 'Jesus', 'jpstrongcraft64@gmail.com', '3184705033', '+13184705033', NULL, 'heavy spanish accent.   doenst do anything for sales and marketing', '2021-07-23 01:15:16', '2021-10-22 16:03:02'),
(12, 16, 'avatar-1.png', 'sdvsd', 'assff@lkvbner.erv', '345345345', NULL, 'fbleb', ';kfdnblkdfnb delbnolrekb', '2021-07-24 21:41:50', '2021-07-24 21:41:50'),
(25, 21, 'avatar-1.png', 'No name', 'ronnie.hudson811@gmail.com', NULL, NULL, NULL, NULL, '2021-08-13 15:01:08', '2021-08-13 15:01:08'),
(24, 21, 'avatar-1.png', 'No name', NULL, '7188728161', '+17188728161', NULL, NULL, '2021-08-13 14:59:00', '2021-10-22 16:03:40'),
(23, 16, 'avatar-1.png', 'No name', 'abdulbasit3398@gmail.com', NULL, NULL, NULL, NULL, '2021-08-11 20:51:10', '2021-08-11 20:51:10'),
(21, 16, 'avatar-1.png', 'No name', NULL, '3476097590', '+13476097590', NULL, NULL, '2021-08-10 01:16:24', '2021-10-22 16:04:11'),
(22, 16, 'avatar-1.png', 'Ronnie', NULL, '7188728161', '+17188728161', NULL, NULL, '2021-08-11 00:17:00', '2021-10-22 19:17:39'),
(26, 21, 'avatar-1.png', 'Brenda	Webb', 'bwebb9625@verizon.net', '8048406520-m', '+18048406520', NULL, '125-140k income and husband more.  wants to be motivated.  tried avon didnt like it.  didnt like  setting up parties.  small biz owner.  currently retired.  was diagnosed with kidney failure 3 years ago. got new kidney june 3.  moved to new place in july.  likes to talk to people...', '2021-09-22 12:41:05', '2021-10-22 16:04:32'),
(27, 21, 'avatar-1.png', 'Brian	Marzo', 'brian.marzo@gmail.com', '7702624683', '+17702624683', NULL, '7702624683	brian.marzo@gmail.com	Brian	Marzo	3107 Ladova Way	Upper Marlboro	MD	20774	98.218.107.13\r\nreal estate agent, RE DEV.  had short talk, sent email for acg marketing', '2021-09-23 20:04:51', '2021-10-22 16:04:40'),
(28, 21, 'avatar-1.png', 'Nayely	Garcia', 'nayely_garcia@live.com', '5109437738', '+15109437738', NULL, '36857 Sycamore St Apt A Newark Ca	Newark	CA	94560	172.56.9.234		\r\nsought home biz before, now has some job, not made connection yet', '2021-09-23 20:45:44', '2021-10-22 16:04:46'),
(29, 21, 'avatar-1.png', 'kelly davis', NULL, '817-243-5651', '+18172435651', NULL, 'kelly davis New Message in (AS-1 Press ONE Transfer) from 817-243-5651\r\nhad to pick up sis from hospital wabted me to xall vack thursday', '2021-09-28 20:45:39', '2021-10-22 16:03:20'),
(30, 21, 'avatar-1.png', 'No name', NULL, '9293747455', '+1', NULL, NULL, '2021-10-02 16:44:58', '2021-10-22 16:03:26'),
(31, 16, 'avatar-1.png', 'No name', NULL, '2026777147', '+12026777147', NULL, NULL, '2021-10-13 11:09:13', '2021-10-22 16:04:54'),
(32, 16, 'avatar-1.png', 'test1@gmail.com', 'test1@gmail.com', '+12029807345', '2029807345', NULL, NULL, '2021-10-25 10:02:33', '2021-10-25 10:02:33'),
(33, 16, 'avatar-1.png', 'ronnie signalwire', 'ronnie.hudson43@gmail.com', '+12029807462', '2029807462', NULL, NULL, '2021-10-25 10:02:54', '2021-10-25 10:03:22'),
(34, 16, 'avatar-1.png', 'No name', NULL, '7188728161, 9293747445', NULL, NULL, NULL, '2021-11-06 15:06:36', '2021-11-06 15:06:36'),
(35, 16, 'avatar-1.png', 'No name', NULL, '3257763368', NULL, NULL, NULL, '2021-11-08 08:35:08', '2021-11-08 08:35:08'),
(36, 16, 'avatar-1.png', 'No name', NULL, '3267763398', NULL, NULL, NULL, '2021-11-08 08:35:08', '2021-11-08 08:35:08'),
(37, 16, 'avatar-1.png', 'No name', NULL, '3277763398', NULL, NULL, NULL, '2021-11-08 08:54:44', '2021-11-08 08:54:44'),
(39, 43, 'avatar-1.png', 'Abdul Basit', 'Abdulbasit3398@gmail.com', NULL, '', NULL, NULL, '2021-11-24 03:12:43', '2021-11-24 03:12:43'),
(40, 43, 'avatar-1.png', 'Abdul', 'Abdul@gmail.com', NULL, '', NULL, NULL, '2021-11-24 03:13:42', '2021-11-24 03:13:42'),
(41, 43, 'avatar-1.png', 'Asset', 'Assff@lkvbner.erv', NULL, '', NULL, NULL, '2021-11-24 03:14:28', '2021-11-24 03:14:28'),
(42, 43, 'avatar-1.png', 'Ronnie Hudson 43', 'Ronnie.hudson43@gmail.com', NULL, '', NULL, NULL, '2021-11-24 03:15:52', '2021-11-24 03:15:52'),
(43, 43, 'avatar-1.png', 'Ronnie Hudson 811', 'Ronnie.Hudson@gmail.com', NULL, '', NULL, NULL, '2021-11-24 03:16:42', '2021-11-24 03:16:42'),
(44, 43, 'avatar-1.png', 'User', 'User@email.com', NULL, '', NULL, NULL, '2021-11-24 03:17:22', '2021-11-24 03:17:22'),
(45, 43, 'avatar-1.png', 'Asvasv', 'Asvasv@esdfb.Dfb', NULL, '', NULL, NULL, '2021-11-24 03:18:23', '2021-11-24 03:18:23'),
(46, 16, 'avatar-1.png', 'wouter', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(47, 16, 'avatar-1.png', 'wouter1', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(48, 16, 'avatar-1.png', 'wouter2', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(49, 16, 'avatar-1.png', 'wouter3', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(50, 16, 'avatar-1.png', 'wouter4', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(51, 16, 'avatar-1.png', 'wouter5', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(52, 16, 'avatar-1.png', 'wouter6', 'wouter@gmail.com', '3214', NULL, 'bolbooks', 'my friend', '2021-11-30 20:27:22', '2021-11-30 20:27:22'),
(53, 21, 'avatar-1.png', 'No name', NULL, '4105333872', NULL, NULL, NULL, '2021-12-08 16:50:43', '2021-12-08 16:50:43'),
(54, 16, 'avatar-1.png', 'No name', NULL, '9257763398', NULL, NULL, NULL, '2021-12-11 13:17:06', '2021-12-11 13:17:06'),
(55, 16, 'avatar-1.png', 'scasc1', 'dfsdf@rddr.dvsdv', '234234', NULL, 'sdvsdv', 'sdvsdvsdvsv', '2021-12-13 11:36:35', '2021-12-13 11:36:35'),
(56, 16, 'avatar-1.png', 'scasc2', 'dfsdf@rddr.dvsdv', '234234', NULL, 'sdvsdv', 'sdvsdvsdvsv', '2021-12-13 11:36:35', '2021-12-13 11:36:35'),
(57, 16, 'avatar-1.png', 'scasc3', 'dfsdf@rddr.dvsdv', '234234', NULL, 'sdvsdv', 'sdvsdvsdvsv', '2021-12-13 11:36:35', '2021-12-13 11:36:35'),
(58, 16, 'avatar-1.png', 'scasc4', 'dfsdf@rddr.dvsdv', '234234', NULL, 'sdvsdv', 'sdvsdvsdvsv', '2021-12-13 11:36:35', '2021-12-13 11:36:35'),
(59, 16, 'avatar-1.png', 'scasc5', 'dfsdf@rddr.dvsdv', '234234', NULL, 'sdvsdv', 'sdvsdvsdvsv', '2021-12-13 11:36:35', '2021-12-13 11:36:35'),
(60, 16, 'avatar-1.png', 'Emmi', 'efererro24@gmail.com', '5734732444', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(61, 16, 'avatar-1.png', 'Jacqueline', 'lallijacki@yahoo.com', '8603721228', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(62, 16, 'avatar-1.png', 'Richard', 'richardlisante@aol.com', '7573377645', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(63, 16, 'avatar-1.png', 'Tom', 'ssgtjlsr@aol.com', '6608829452', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(64, 16, 'avatar-1.png', 'Christine', 'c.m.freves@gmail.com', '3156782205', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(65, 16, 'avatar-1.png', 'Andre', 'patriots509509@gmail.com', '9548257426', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(66, 16, 'avatar-1.png', 'James', 'brumfieldjames69@yahoo.com', '2627206686', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(67, 16, 'avatar-1.png', 'Clark', 'williejoe44@gmail.com', '6623972542', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(68, 16, 'avatar-1.png', 'Dhergham', 'dherghamsami@yahoo.com', '9162548058', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(69, 16, 'avatar-1.png', 'Kasandra', 'ms.yellaboy@gmail.com', '9033629374', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(70, 16, 'avatar-1.png', 'Long', 'long.n2082@gmail.com', '8646437815', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(71, 16, 'avatar-1.png', 'Jimmie', 'jh4819jh@yahoo.com', '2145524255', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(72, 16, 'avatar-1.png', 'Crystal', 'rocha.c1988@me.com', '5597195930', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(73, 16, 'avatar-1.png', 'Regina', 'regina.johnson512@comcast.net', '8652945630', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(74, 16, 'avatar-1.png', 'Karin', 'karady818@aol.com', '6094041556', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(75, 16, 'avatar-1.png', 'Mark', 'maallen001@gmail.com', '7575858414', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(76, 16, 'avatar-1.png', 'Harold', 'hdlil36@aol.com', '9035812134', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(77, 16, 'avatar-1.png', 'Adam', 'adamgutierrez61.ag@gmail.com', '9513378800', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(78, 16, 'avatar-1.png', 'Pamela', 'pamrlalgeorge0349@yahoo.com', '3293280739', NULL, '', '', '2021-12-13 11:40:32', '2021-12-13 11:40:32'),
(79, 21, 'avatar-1.png', 'Emmi', 'efererro24@gmail.com', '5734732444', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(80, 21, 'avatar-1.png', 'Jacqueline', 'lallijacki@yahoo.com', '8603721228', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(81, 21, 'avatar-1.png', 'Richard', 'richardlisante@aol.com', '7573377645', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(82, 21, 'avatar-1.png', 'Tom', 'ssgtjlsr@aol.com', '6608829452', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(83, 21, 'avatar-1.png', 'Christine', 'c.m.freves@gmail.com', '3156782205', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(84, 21, 'avatar-1.png', 'Andre', 'patriots509509@gmail.com', '9548257426', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(85, 21, 'avatar-1.png', 'James', 'brumfieldjames69@yahoo.com', '2627206686', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(86, 21, 'avatar-1.png', 'Clark', 'williejoe44@gmail.com', '6623972542', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(87, 21, 'avatar-1.png', 'Dhergham', 'dherghamsami@yahoo.com', '9162548058', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(88, 21, 'avatar-1.png', 'Kasandra', 'ms.yellaboy@gmail.com', '9033629374', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(89, 21, 'avatar-1.png', 'Long', 'long.n2082@gmail.com', '8646437815', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(90, 21, 'avatar-1.png', 'Jimmie', 'jh4819jh@yahoo.com', '2145524255', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(91, 21, 'avatar-1.png', 'Crystal', 'rocha.c1988@me.com', '5597195930', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(92, 21, 'avatar-1.png', 'Regina', 'regina.johnson512@comcast.net', '8652945630', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(93, 21, 'avatar-1.png', 'Karin', 'karady818@aol.com', '6094041556', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(94, 21, 'avatar-1.png', 'Mark', 'maallen001@gmail.com', '7575858414', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(95, 21, 'avatar-1.png', 'Harold', 'hdlil36@aol.com', '9035812134', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(96, 21, 'avatar-1.png', 'Adam', 'adamgutierrez61.ag@gmail.com', '9513378800', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(97, 21, 'avatar-1.png', 'Pamela', 'pamrlalgeorge0349@yahoo.com', '3293280739', NULL, '', '', '2021-12-13 11:55:27', '2021-12-13 11:55:27'),
(98, 16, 'avatar-1.png', 'No name', NULL, '9487012219', NULL, NULL, NULL, '2021-12-18 18:32:18', '2021-12-18 18:32:18'),
(99, 16, 'avatar-1.png', 'No name', NULL, '9487012229', NULL, NULL, NULL, '2021-12-18 18:32:18', '2021-12-18 18:32:18'),
(100, 16, 'avatar-1.png', 'No name', NULL, '9487012218', NULL, NULL, NULL, '2021-12-18 18:32:18', '2021-12-18 18:32:18'),
(101, 16, 'avatar-1.png', 'No name', NULL, '9487011313', NULL, NULL, NULL, '2021-12-18 18:32:18', '2021-12-18 18:32:18'),
(102, 16, 'avatar-1.png', 'No name', NULL, '12026777191', NULL, NULL, NULL, '2021-12-18 18:32:18', '2021-12-18 18:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_cpanel_email_address`
--

CREATE TABLE `user_cpanel_email_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cpanel_email_address`
--

INSERT INTO `user_cpanel_email_address` (`id`, `user_id`, `email_address`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 70, 'id16395-74787@app.automatedcontactgenerator.com', 'ID16395-74787', 1, '2021-12-15 13:26:28', '2021-12-15 13:26:28'),
(2, 71, 'id16396-80573@app.automatedcontactgenerator.com', 'ID16396-80573', 1, '2021-12-16 18:49:34', '2021-12-16 18:49:34'),
(4, 16, 'abdulbasit33981639762732@app.automatedcontactgenerator.com', 'abdulbasit33981639762733', 1, '2021-12-17 17:38:53', '2021-12-17 17:38:53'),
(5, 72, 'id16397-75075@app.automatedcontactgenerator.com', 'ID16397-75075', 1, '2021-12-17 21:04:36', '2021-12-17 21:04:36'),
(6, 73, 'id16398-50784@app.automatedcontactgenerator.com', 'ID16398-50784', 1, '2021-12-18 18:06:25', '2021-12-18 18:06:25'),
(7, 91, 'id16402-49065@app.automatedcontactgenerator.com', 'ID16402-49065', 1, '2021-12-23 08:44:26', '2021-12-23 08:44:26'),
(8, 92, 'id16402-67874@app.automatedcontactgenerator.com', 'ID16402-67874', 1, '2021-12-23 13:57:55', '2021-12-23 13:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `data` text NOT NULL,
  `column_count` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `user_id`, `data`, `column_count`) VALUES
(2, 16, '{\"heading\":[\"ID\",\"Name\",\"Age\",\"Gender\",\"Notes\"],\"field1\":[\"1\",\"2\",\"basit\"],\"field2\":[\"David McHenry\",\"zohaib\",\"26\"],\"field3\":[\"24\",\"23\",\"male\"],\"field4\":[\"Male\",\"Male\",\"note\"],\"field5\":[\"This is Note\",\"Notes\",\"sdv\"]}', 5),
(3, 21, '{\"heading\":[\"ID\"],\"field2\":[null,null,null,null,null],\"field0\":[null,\"test\",null,null]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(250) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT '0',
  `validity` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `user_id`, `product_name`, `quantity`, `validity`, `created_at`, `updated_at`) VALUES
(6, 16, 'sms_mms', '-1', '2021-08-11', '2021-07-12 16:07:31', '2021-07-12 16:07:31'),
(10, 20, 'contacts', '-1', '2021-08-13', '2021-07-14 21:28:28', '2021-07-14 21:28:28'),
(7, 16, 'phone_calls', '-1', '2021-08-11', '2021-07-12 16:07:31', '2021-07-12 16:07:31'),
(8, 16, 'emails', '-1', '2021-08-11', '2021-07-12 16:07:31', '2021-07-12 16:07:31'),
(9, 16, 'prospects', '50', '-1', '2021-07-13 12:28:26', '2021-07-13 12:28:26'),
(11, 19, 'contacts', '-1', '2021-08-15', '2021-07-16 14:10:28', '2021-07-16 14:10:28'),
(13, 16, 'sms_mms', '1500', '-1', '2021-07-19 17:53:26', '2021-07-19 17:53:26'),
(14, 16, 'phone_calls', '1500', '-1', '2021-07-19 17:53:26', '2021-07-19 17:53:26'),
(15, 16, 'emails', '1500', '-1', '2021-07-19 17:53:26', '2021-07-19 17:53:26'),
(16, 28, 'contacts', '-1', '2021-08-23', '2021-07-24 22:32:40', '2021-07-24 22:32:40'),
(17, 16, 'sms_mms', '1500', '-1', '2021-07-31 18:09:29', '2021-07-31 18:09:29'),
(18, 16, 'phone_calls', '1500', '-1', '2021-07-31 18:09:29', '2021-07-31 18:09:29'),
(19, 16, 'emails', '1500', '-1', '2021-07-31 18:09:29', '2021-07-31 18:09:29'),
(20, 16, 'sms_mms', '1500', '-1', '2021-07-31 18:17:22', '2021-07-31 18:17:22'),
(21, 16, 'phone_calls', '1500', '-1', '2021-07-31 18:17:22', '2021-07-31 18:17:22'),
(22, 16, 'emails', '1500', '-1', '2021-07-31 18:17:22', '2021-07-31 18:17:22'),
(23, 16, 'sms_mms', '1500', '-1', '2021-07-31 18:17:45', '2021-07-31 18:17:45'),
(24, 16, 'phone_calls', '1500', '-1', '2021-07-31 18:17:45', '2021-07-31 18:17:45'),
(25, 16, 'emails', '1500', '-1', '2021-07-31 18:17:45', '2021-07-31 18:17:45'),
(26, 16, 'sms_mms', '1500', '-1', '2021-07-31 18:19:16', '2021-07-31 18:19:16'),
(27, 16, 'phone_calls', '1500', '-1', '2021-07-31 18:19:16', '2021-07-31 18:19:16'),
(28, 16, 'emails', '1500', '-1', '2021-07-31 18:19:16', '2021-07-31 18:19:16'),
(29, 16, 'sms_mms', '1500', '-1', '2021-07-31 18:29:35', '2021-07-31 18:29:35'),
(30, 16, 'phone_calls', '1500', '-1', '2021-07-31 18:29:35', '2021-07-31 18:29:35'),
(31, 16, 'emails', '1500', '-1', '2021-07-31 18:29:35', '2021-07-31 18:29:35'),
(32, 16, 'sms_mms', '1500', '-1', '2021-07-31 18:30:29', '2021-07-31 18:30:29'),
(33, 16, 'phone_calls', '1500', '-1', '2021-07-31 18:30:29', '2021-07-31 18:30:29'),
(34, 16, 'emails', '1500', '-1', '2021-07-31 18:30:29', '2021-07-31 18:30:29'),
(35, 16, 'sms_mms', '1500', '-1', '2021-07-31 22:13:06', '2021-07-31 22:13:06'),
(36, 16, 'phone_calls', '1500', '-1', '2021-07-31 22:13:06', '2021-07-31 22:13:06'),
(37, 16, 'emails', '1500', '-1', '2021-07-31 22:13:06', '2021-07-31 22:13:06'),
(38, 16, 'sms_mms', '1500', '-1', '2021-07-31 22:13:58', '2021-07-31 22:13:58'),
(39, 16, 'phone_calls', '1500', '-1', '2021-07-31 22:13:58', '2021-07-31 22:13:58'),
(40, 16, 'emails', '1500', '-1', '2021-07-31 22:13:58', '2021-07-31 22:13:58'),
(41, 16, 'sms_mms', '1500', '-1', '2021-07-31 22:14:26', '2021-07-31 22:14:26'),
(42, 16, 'phone_calls', '1500', '-1', '2021-07-31 22:14:26', '2021-07-31 22:14:26'),
(43, 16, 'emails', '1500', '-1', '2021-07-31 22:14:26', '2021-07-31 22:14:26'),
(44, 16, 'sms_mms', '1500', '-1', '2021-07-31 22:24:03', '2021-07-31 22:24:03'),
(45, 16, 'phone_calls', '1500', '-1', '2021-07-31 22:24:03', '2021-07-31 22:24:03'),
(46, 16, 'emails', '1500', '-1', '2021-07-31 22:24:03', '2021-07-31 22:24:03'),
(47, 16, 'sms_mms', '1500', '-1', '2021-07-31 22:27:11', '2021-07-31 22:27:11'),
(48, 16, 'phone_calls', '1500', '-1', '2021-07-31 22:27:11', '2021-07-31 22:27:11'),
(49, 16, 'emails', '1500', '-1', '2021-07-31 22:27:11', '2021-07-31 22:27:11'),
(50, 16, 'sms_mms', '-1', '2021-11-11', '2021-10-12 19:03:21', '2021-10-12 19:03:21'),
(51, 16, 'phone_calls', '-1', '2021-11-11', '2021-10-12 19:03:21', '2021-10-12 19:03:21'),
(52, 16, 'emails', '-1', '2021-11-11', '2021-10-12 19:03:21', '2021-10-12 19:03:21'),
(53, 16, 'sms_mms', '-1', '2021-11-11', '2021-10-12 19:04:41', '2021-10-12 19:04:41'),
(54, 16, 'phone_calls', '-1', '2021-11-11', '2021-10-12 19:04:41', '2021-10-12 19:04:41'),
(55, 16, 'emails', '-1', '2021-11-11', '2021-10-12 19:04:41', '2021-10-12 19:04:41'),
(56, 2, 'sms_mms', '-1', '2021-11-13', '2021-10-14 14:41:48', '2021-10-14 14:41:48'),
(57, 2, 'phone_calls', '-1', '2021-11-13', '2021-10-14 14:41:48', '2021-10-14 14:41:48'),
(58, 2, 'emails', '-1', '2021-11-13', '2021-10-14 14:41:48', '2021-10-14 14:41:48'),
(59, 19, 'sms_mms', '-1', '2021-11-13', '2021-10-14 14:55:53', '2021-10-14 14:55:53'),
(60, 19, 'phone_calls', '-1', '2021-11-13', '2021-10-14 14:55:53', '2021-10-14 14:55:53'),
(61, 19, 'emails', '-1', '2021-11-13', '2021-10-14 14:55:53', '2021-10-14 14:55:53'),
(62, 19, 'sms_mms', '-1', '2021-11-13', '2021-10-14 14:58:01', '2021-10-14 14:58:01'),
(63, 19, 'phone_calls', '-1', '2021-11-13', '2021-10-14 14:58:01', '2021-10-14 14:58:01'),
(64, 19, 'emails', '-1', '2021-11-13', '2021-10-14 14:58:01', '2021-10-14 14:58:01'),
(65, 19, 'sms_mms', '-1', '2021-11-13', '2021-10-14 14:58:48', '2021-10-14 14:58:48'),
(66, 19, 'phone_calls', '-1', '2021-11-13', '2021-10-14 14:58:48', '2021-10-14 14:58:48'),
(67, 19, 'emails', '-1', '2021-11-13', '2021-10-14 14:58:48', '2021-10-14 14:58:48'),
(68, 20, 'sms_mms', '-1', '2021-11-13', '2021-10-14 15:28:26', '2021-10-14 15:28:26'),
(69, 20, 'phone_calls', '-1', '2021-11-13', '2021-10-14 15:28:26', '2021-10-14 15:28:26'),
(70, 20, 'emails', '-1', '2021-11-13', '2021-10-14 15:28:26', '2021-10-14 15:28:26'),
(71, 21, 'contacts', '-1', '2022-10-15', '2021-10-15 10:25:33', '2021-10-15 10:25:33'),
(72, 21, 'sms_mms', '-1', '2021-11-14', '2021-10-15 10:28:50', '2021-10-15 10:28:50'),
(73, 21, 'phone_calls', '-1', '2021-11-14', '2021-10-15 10:28:50', '2021-10-15 10:28:50'),
(74, 21, 'emails', '-1', '2021-11-14', '2021-10-15 10:28:50', '2021-10-15 10:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_list_clean_record`
--

CREATE TABLE `user_list_clean_record` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `orignal_file` varchar(255) DEFAULT NULL,
  `clean_file` varchar(255) DEFAULT NULL,
  `no_of_contacts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_list_clean_record`
--

INSERT INTO `user_list_clean_record` (`id`, `user_id`, `orignal_file`, `clean_file`, `no_of_contacts`, `created_at`, `updated_at`) VALUES
(1, 21, 'sample list.xlsx.xlsx', 'sample list.xlsx cleaned.xlsx', 10, '2021-09-13 16:19:17', '2021-09-13 16:19:17'),
(2, 21, 'acg bot flow test sep 17 .xlsx', 'cleaned acg bot flow test sep 17 .xlsx', 100, '2021-09-17 11:55:27', '2021-09-17 11:55:27'),
(3, 16, 'acg bot flow test sep 17 .xlsx', 'cleaned acg bot flow test sep 17 .xlsx', 1, '2021-09-18 20:40:39', '2021-09-18 20:40:39'),
(4, 16, 'acg bot flow test sep 17 .xlsx', 'cleaned acg bot flow test sep 17 .xlsx', 1, '2021-09-19 15:05:39', '2021-09-19 15:05:39'),
(5, 16, 'acg bot flow test sep 17 .xlsx', 'cleaned acg bot flow test sep 17 .xlsx', 2, '2021-09-19 15:37:08', '2021-09-19 15:37:08'),
(6, 21, 'fl usbd 550-648.xlsx', 'cleaned fl usbd 550-648.xlsx', 98, '2021-09-19 16:06:12', '2021-09-19 16:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_package_details`
--

CREATE TABLE `user_package_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_for` varchar(100) DEFAULT 'package',
  `package_name` varchar(125) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `package_price` varchar(25) DEFAULT NULL,
  `total_contacts` varchar(12) DEFAULT '0',
  `package_start_date` varchar(255) DEFAULT NULL,
  `package_end_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_package_details`
--

INSERT INTO `user_package_details` (`id`, `user_id`, `payment_id`, `payment_for`, `package_name`, `product_id`, `package_price`, `total_contacts`, `package_start_date`, `package_end_date`, `created_at`, `updated_at`) VALUES
(2, 16, 'ch_1J899dKuGDN8tiVqAw87XdaT', 'package', '1 week', NULL, '100', '0', '2021-06-30 19:33:01', '2021-07-07 19:33:01', '2021-06-30 14:33:01', '2021-06-30 14:33:01'),
(4, 16, 'ch_1JCNv4KuGDN8tiVqkINuVmno', 'package', 'unlimited_both', NULL, '407', '0', '2021-07-12 12:07:31', '2021-07-12 12:07:31', '2021-07-12 16:07:31', '2021-07-12 16:07:31'),
(5, 16, 'ch_1JCgybKuGDN8tiVqJXT1kLsb', 'package', 'biz_opp_prospects', NULL, '730', '0', '2021-07-13 08:28:26', '2021-07-13 08:28:26', '2021-07-13 12:28:26', '2021-07-13 12:28:26'),
(6, 20, 'ch_1JDBphKuGDN8tiVqcyOUtg03', 'contacts', NULL, 11, '5', '0', NULL, NULL, '2021-07-14 21:25:18', '2021-07-14 21:25:18'),
(7, 20, 'ch_1JDBslKuGDN8tiVqBNfaVkxe', 'package', 'unlimited_contacts', NULL, '300', '0', '2021-07-14 17:28:28', '2021-07-14 17:28:28', '2021-07-14 21:28:28', '2021-07-14 21:28:28'),
(8, 19, 'ch_1JDnzzKuGDN8tiVqqBMwEpks', 'package', 'unlimited_contacts', NULL, '300', '0', '2021-07-16 10:10:28', '2021-07-16 10:10:28', '2021-07-16 14:10:28', '2021-07-16 14:10:28'),
(9, 16, 'ch_1JEuqsKuGDN8tiVqtJmJJAI8', 'package', 'unlimited_contacts', NULL, '300', '0', '2021-07-19 11:41:39', '2021-07-19 11:41:39', '2021-07-19 15:41:39', '2021-07-19 15:41:39'),
(10, 16, 'ch_1JEwuPKuGDN8tiVqDoApzLKv', 'package', '20 usd package', NULL, '20', '0', '2021-07-19 13:53:26', '2021-07-19 13:53:26', '2021-07-19 17:53:26', '2021-07-19 17:53:26'),
(11, 28, 'ch_1JGpeNKuGDN8tiVq2bGn93Tp', 'package', 'unlimited_contacts', NULL, '300', '0', '2021-07-24 18:32:40', '2021-07-24 18:32:40', '2021-07-24 22:32:40', '2021-07-24 22:32:40'),
(12, 16, 'ch_1JJIsWKFNCF64zKPDlRwVOkE', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 14:09:29', '2021-07-31 14:09:29', '2021-07-31 18:09:29', '2021-07-31 18:09:29'),
(13, 16, 'ch_1JJJ09KFNCF64zKPEc1W1MQ5', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 14:17:22', '2021-07-31 14:17:22', '2021-07-31 18:17:22', '2021-07-31 18:17:22'),
(14, 16, 'ch_3JJJ0XKFNCF64zKP0NBG04DF', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 14:17:45', '2021-07-31 14:17:45', '2021-07-31 18:17:45', '2021-07-31 18:17:45'),
(15, 16, 'ch_1JJJ1zKFNCF64zKPvgVpQNL1', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 14:19:16', '2021-07-31 14:19:16', '2021-07-31 18:19:16', '2021-07-31 18:19:16'),
(16, 16, 'ch_1JJJByKFNCF64zKPdSqUblzE', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 14:29:35', '2021-07-31 14:29:35', '2021-07-31 18:29:35', '2021-07-31 18:29:35'),
(17, 16, 'ch_3JJJCqKFNCF64zKP0gCRRJ0N', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 14:30:29', '2021-07-31 14:30:29', '2021-07-31 18:30:29', '2021-07-31 18:30:29'),
(18, 16, 'ch_3JJMgHKFNCF64zKP1lKtjv67', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 18:13:06', '2021-07-31 18:13:06', '2021-07-31 22:13:06', '2021-07-31 22:13:06'),
(19, 16, 'ch_3JJMh7KFNCF64zKP01cDq7SU', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 18:13:58', '2021-07-31 18:13:58', '2021-07-31 22:13:58', '2021-07-31 22:13:58'),
(20, 16, 'ch_3JJMhZKFNCF64zKP0n3tLjKN', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 18:14:26', '2021-07-31 18:14:26', '2021-07-31 22:14:26', '2021-07-31 22:14:26'),
(21, 16, 'wallet', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 18:24:03', '2021-07-31 18:24:03', '2021-07-31 22:24:03', '2021-07-31 22:24:03'),
(22, 16, 'ch_3JJMtuKFNCF64zKP1ACpDACd', 'package', '20 usd package', NULL, '20', '0', '2021-07-31 18:27:11', '2021-07-31 18:27:11', '2021-07-31 22:27:11', '2021-07-31 22:27:11'),
(23, 16, 'ch_3JjqFwKFNCF64zKP09E6rTRK', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-12 19:03:21', '2021-10-12 19:03:21', '2021-10-12 19:03:21', '2021-10-12 19:03:21'),
(24, 16, 'ch_3JjqHEKFNCF64zKP0YZ7ZJcS', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-12 19:04:41', '2021-10-12 19:04:41', '2021-10-12 19:04:41', '2021-10-12 19:04:41'),
(25, 2, 'ch_3JkV7vKFNCF64zKP1qb6oshP', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-14 14:41:48', '2021-10-14 14:41:48', '2021-10-14 14:41:48', '2021-10-14 14:41:48'),
(26, 19, 'ch_3JkVLYKFNCF64zKP1W7vNXPo', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-14 14:55:53', '2021-10-14 14:55:53', '2021-10-14 14:55:53', '2021-10-14 14:55:53'),
(27, 19, 'ch_3JkVNcKFNCF64zKP0eY8dAc8', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-14 14:58:01', '2021-10-14 14:58:01', '2021-10-14 14:58:01', '2021-10-14 14:58:01'),
(28, 19, 'ch_3JkVOOKFNCF64zKP0U8GgtEG', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-14 14:58:48', '2021-10-14 14:58:48', '2021-10-14 14:58:48', '2021-10-14 14:58:48'),
(29, 20, 'ch_3JkVr4KFNCF64zKP0IYe95sC', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-14 15:28:26', '2021-10-14 15:28:26', '2021-10-14 15:28:26', '2021-10-14 15:28:26'),
(30, 21, 'ch_3JknbUKFNCF64zKP0DwbeVTj', 'package', 'unlimited_contacts', NULL, '3000', '0', '2021-10-15 10:25:33', '2021-10-15 10:25:33', '2021-10-15 10:25:33', '2021-10-15 10:25:33'),
(31, 21, 'ch_3JknefKFNCF64zKP1eh57wXl', 'package', 'unlimited_communication', NULL, '300', '0', '2021-10-15 10:28:50', '2021-10-15 10:28:50', '2021-10-15 10:28:50', '2021-10-15 10:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_phone_numbers`
--

CREATE TABLE `user_phone_numbers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_phone_numbers`
--

INSERT INTO `user_phone_numbers` (`id`, `user_id`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, '+12026777191', 1, '2021-10-12 19:03:20', '2021-10-12 19:03:20'),
(2, 2, '+12029807324', 1, '2021-10-14 14:41:47', '2021-10-14 14:41:47'),
(3, 19, '+12029807329', 1, '2021-10-14 14:55:52', '2021-10-14 14:55:52'),
(4, 20, '+12029807345', 1, '2021-10-14 15:28:25', '2021-10-14 15:28:25'),
(5, 21, '+12029807462', 1, '2021-10-15 10:28:48', '2021-10-15 10:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_sms_history`
--

CREATE TABLE `user_sms_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `contact_phone_number` varchar(125) DEFAULT NULL,
  `message_to` varchar(100) DEFAULT NULL,
  `message_from` varchar(100) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `send_receive` varchar(100) NOT NULL DEFAULT 'send',
  `sid` text,
  `subject` text,
  `message` text,
  `media` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sms_history`
--

INSERT INTO `user_sms_history` (`id`, `user_id`, `contact_id`, `contact_phone_number`, `message_to`, `message_from`, `type`, `send_receive`, `sid`, `subject`, `message`, `media`, `created_at`, `updated_at`) VALUES
(37, 21, 30, '+19293747455', '+19293747455', '+12029807462', 'sms', 'send', 'dee490a2-2588-42a8-ae3a-8572a409fb9c', NULL, 'testing mms', '1635273489.png', '2021-10-26 18:38:10', '2021-10-26 18:38:10'),
(36, 21, 30, '+17188728161', '+17188728161', '+12029807462', 'sms', 'send', '69bee219-e04e-46b2-92b4-c1ee2299373b', NULL, 'testing mms', '1635273489.png', '2021-10-26 18:38:10', '2021-10-26 18:38:10'),
(33, 21, 25, NULL, NULL, NULL, 'email', 'send', NULL, 'ronnie', '<p>test email 10 23 1245</p>', NULL, '2021-10-23 16:45:38', '2021-10-23 16:45:38'),
(35, 16, 33, '+12029807462', '+12029807462', '+12026777191', 'sms', 'send', '9a9032d6-99d2-4139-a6c5-3577d2183323', NULL, 'hi from basit', '', '2021-10-25 10:04:06', '2021-10-25 10:04:06'),
(31, 16, 22, '+17188728161', '+12026777191', '+17188728161', 'sms', 'receive', '236a7387-ba04-4135-8deb-5c16d69a4b55', NULL, 'test mms', NULL, '2021-10-23 13:15:55', '2021-10-23 13:15:55'),
(30, 21, 24, '+17188728161', '+17188728161', '+12029807462', 'sms', 'send', '27af825f-f1f2-4f6b-8688-2851fb1590f9', NULL, 'test mms', '1634994869.png', '2021-10-23 13:14:29', '2021-10-23 13:14:29'),
(29, 16, 22, '+17188728161', '+12026777191', '+17188728161', 'sms', 'receive', 'c588a03b-af98-4663-bc25-1209c2e6a45c', NULL, 'good day Basit', NULL, '2021-10-23 11:29:32', '2021-10-23 11:29:32'),
(28, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', '9c46b41d-0b27-4f29-b7c6-d53d9ce28f04', NULL, 'Good morning Ronnie', '', '2021-10-23 11:29:12', '2021-10-23 11:29:12'),
(27, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', 'a3974d7f-c28d-4060-8931-cd5f3e437f0c', NULL, 'Hi Ronnie', '', '2021-10-23 11:27:15', '2021-10-23 11:27:15'),
(26, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', '312422a7-f94a-4d89-bbdf-827042211168', NULL, 'message once again', '', '2021-10-22 18:55:18', '2021-10-22 18:55:18'),
(19, 0, 0, NULL, '+12026777191', '+17188728161', 'sms', 'receive', 'b56f9ea0-2e34-4bd6-937a-b7be7b7ad443', NULL, NULL, NULL, '2021-10-15 10:20:51', '2021-10-15 10:20:51'),
(34, 16, 33, '+12029807345', '+12029807345', '+12026777191', 'sms', 'send', '15d5215b-0ed2-48ce-ad2a-b5c1d4d4d039', NULL, 'hi from basit', '', '2021-10-25 10:04:05', '2021-10-25 10:04:05'),
(21, 0, 0, NULL, '+12029807462', '+17188728161', 'sms', 'receive', '5c5fcc02-2c46-4162-9cdb-ca24b3f1bc6d', NULL, NULL, NULL, '2021-10-15 10:30:14', '2021-10-15 10:30:14'),
(22, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', 'e12721fa-7e1c-41d4-8ab4-7ff13b65b8e0', NULL, 'hello ronnie', '', '2021-10-22 16:44:04', '2021-10-22 17:52:26'),
(23, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', '2135c802-2bf8-4f46-975c-bcb67519cf1b', NULL, 'please reply me when you received this message', '', '2021-10-22 16:44:55', '2021-10-22 17:52:25'),
(24, 16, 22, '+17188728161', '+12026777191', '+17188728161', 'sms', 'receive', '5c5fcc02-2c46-4162-9cdb-ca24b3f1bc6b', NULL, 'reply from Ronnie', NULL, '2021-10-22 16:50:14', '2021-10-22 18:30:47'),
(25, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', 'bf99250d-5250-42fb-a952-2e66e0f1bb2c', NULL, 'message again', '', '2021-10-22 17:52:06', '2021-10-22 17:52:06'),
(38, 16, 35, '+13257763368', '+13257763368', '+12026777191', 'sms', 'send', '2f8973cf-0524-429d-8730-db98f324c554', NULL, 'sample', '', '2021-11-08 08:39:32', '2021-11-08 08:39:32'),
(39, 16, 36, '+13267763398', '+13267763398', '+12026777191', 'sms', 'send', '3c752a8d-2ff7-47cc-ba73-744bd46a09f4', NULL, 'sample', '', '2021-11-08 08:39:32', '2021-11-08 08:39:32'),
(40, 16, 35, '+13257763368', '+13257763368', '+12026777191', 'sms', 'send', '34548402-caa7-4672-8bd0-16a3886d87b6', NULL, 'sample', '', '2021-11-08 08:54:46', '2021-11-08 08:54:46'),
(41, 16, 37, '+13277763398', '+13277763398', '+12026777191', 'sms', 'send', '1d7cd0b6-04bb-404c-9adc-23a40e8315e9', NULL, 'sample', '', '2021-11-08 08:54:47', '2021-11-08 08:54:47'),
(42, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', '6e64f7d4-dbfd-406f-ba14-92512c3b17f6', NULL, 'test', '', '2021-11-19 20:22:10', '2021-11-19 20:22:10'),
(43, 16, 22, '+17188728161', '+17188728161', '+12026777191', 'sms', 'send', '7ddc1fe7-73b6-4a87-b8a3-b7ed9272f960', NULL, 'test1', '', '2021-11-19 20:59:06', '2021-11-19 20:59:06'),
(44, 21, 24, '+17188728161', '+17188728161', '+12029807462', 'sms', 'send', 'a448135d-224a-4794-bbd6-a8afab63b123', NULL, 'test sms nov 19 4:46', '', '2021-11-19 21:46:07', '2021-11-19 21:46:07'),
(45, 21, 24, '+17188728161', '+17188728161', '+12029807462', 'sms', 'send', 'f46d798e-bfbf-4920-8fe9-6c87e1c36f9d', NULL, 'test text 7.33 dec 1', '', '2021-12-02 00:33:13', '2021-12-02 00:33:13'),
(46, 21, 53, '+14105333872', '+14105333872', '+12029807462', 'sms', 'send', 'c657e830-efd9-488a-a8ff-93500e4c9db5', NULL, 'Hi Lucille my name is Ronnie, i have your number because you answered some questions about finding a home business on nov 10.  Are you still open to finding something that works for you?', '', '2021-12-08 16:53:34', '2021-12-08 16:53:34'),
(47, 16, 54, '+19257763398', '+19257763398', '+12026777191', 'sms', 'send', '78170f9a-db86-4c31-a34f-288c170b8d54', NULL, 'hi', '', '2021-12-11 13:21:25', '2021-12-11 13:21:25'),
(48, 21, 25, NULL, NULL, NULL, 'email', 'send', NULL, 'test email dec dec 13', '<p>test email body dec 13</p>', NULL, '2021-12-13 12:16:11', '2021-12-13 12:16:11'),
(49, 16, 23, NULL, NULL, NULL, 'email', 'send', NULL, 'Subject of mail', '<p>dflknvsdv sdlkvnsv sdvnsdvds vlbev ew ewj&nbsp; bwevwe</p>', NULL, '2021-12-17 17:27:53', '2021-12-17 17:27:53'),
(50, 16, 23, NULL, NULL, NULL, 'email', 'send', NULL, 'Subject of mail', '<p>new test mail</p>', NULL, '2021-12-17 17:33:42', '2021-12-17 17:33:42'),
(51, 16, 23, NULL, NULL, NULL, 'email', 'send', NULL, 'again subject', '<p>sdjvlls dvjs dvkj skjd vksdv</p>', NULL, '2021-12-17 17:38:53', '2021-12-17 17:38:53'),
(52, 16, 23, NULL, NULL, NULL, 'email', 'send', NULL, 'scsdc', '<p>dcsdcscsdcsdc</p>', NULL, '2021-12-18 17:27:12', '2021-12-18 17:27:12'),
(53, 16, 98, '+19487012219', '+19487012219', '+12026777191', 'sms', 'send', '76fadb73-3fff-4ebd-8e86-59af099d7c77', NULL, 'sdvsdv', '', '2021-12-18 18:32:25', '2021-12-18 18:32:25'),
(54, 16, 99, '+19487012229', '+19487012229', '+12026777191', 'sms', 'send', 'f31eb678-f05c-4c8a-ab7e-0f8fdf3ded57', NULL, 'sdvsdv', '', '2021-12-18 18:32:26', '2021-12-18 18:32:26'),
(55, 16, 100, '+19487012218', '+19487012218', '+12026777191', 'sms', 'send', '85289fe2-0a15-40e1-b8b5-966524a10711', NULL, 'sdvsdv', '', '2021-12-18 18:32:27', '2021-12-18 18:32:27'),
(56, 16, 101, '+19487011313', '+19487011313', '+12026777191', 'sms', 'send', 'f9dfee4a-59ff-48fd-9720-cc05250b8127', NULL, 'sdvsdv', '', '2021-12-18 18:32:28', '2021-12-18 18:32:28'),
(57, 16, 98, '+19487012219', '+19487012219', '+12026777191', 'sms', 'send', '9dfa897c-3ef7-413c-b557-5f6c402695f7', NULL, 'sdvsdv', '', '2021-12-18 18:32:28', '2021-12-18 18:32:28'),
(58, 16, 102, '+12026777191', '+12026777191', '+12026777191', 'sms', 'send', '2f99632f-b2f0-4cf4-b3f2-83c64a713929', NULL, 'sdvsdv', '', '2021-12-18 18:32:29', '2021-12-18 18:32:29'),
(59, 16, 13, '+13247763398', '+13247763398', '+12026777191', 'sms', 'send', 'deb06140-157a-4bc6-9dee-95802dadc940', NULL, 'sdvsdv', '', '2021-12-18 18:32:29', '2021-12-18 18:32:29'),
(60, 16, 98, '+19487012219', '+19487012219', '+12026777191', 'sms', 'send', '2fafa7e1-9251-4779-92dd-34fad9775eea', NULL, 'sdvsdv', '', '2021-12-18 18:41:15', '2021-12-18 18:41:15'),
(61, 16, 99, '+19487012229', '+19487012229', '+12026777191', 'sms', 'send', '0659ff22-45e1-40f7-b39a-13c89bbc09ca', NULL, 'sdvsdv', '', '2021-12-18 18:41:15', '2021-12-18 18:41:15'),
(62, 16, 100, '+19487012218', '+19487012218', '+12026777191', 'sms', 'send', '2a99371f-8e94-4229-9641-58fdf291e2a0', NULL, 'sdvsdv', '', '2021-12-18 18:41:15', '2021-12-18 18:41:15'),
(63, 16, 101, '+19487011313', '+19487011313', '+12026777191', 'sms', 'send', '4a6af786-20a9-4822-9d61-2215148d3fd8', NULL, 'sdvsdv', '', '2021-12-18 18:41:16', '2021-12-18 18:41:16'),
(64, 16, 98, '+19487012219', '+19487012219', '+12026777191', 'sms', 'send', '2126246c-dedc-4d63-9807-a245a0a9786f', NULL, 'sdvsdv', '', '2021-12-18 18:41:16', '2021-12-18 18:41:16'),
(65, 16, 102, '+12026777191', '+12026777191', '+12026777191', 'sms', 'send', '8da34340-3dcc-4e45-8ddb-39ca4ec686e8', NULL, 'sdvsdv', '', '2021-12-18 18:41:16', '2021-12-18 18:41:16'),
(66, 16, 13, '+13247763398', '+13247763398', '+12026777191', 'sms', 'send', '05547a57-9d76-4fc6-b31a-ae0e79fb80a7', NULL, 'sdvsdv', '', '2021-12-18 18:41:17', '2021-12-18 18:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_task_management`
--

CREATE TABLE `user_task_management` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_name` text NOT NULL,
  `task_description` text NOT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `budget` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_task_management`
--

INSERT INTO `user_task_management` (`id`, `user_id`, `task_name`, `task_description`, `start_date`, `end_date`, `budget`, `created_at`, `updated_at`) VALUES
(1, 16, 'sdvsdv', '<p>sdvsdvsdv</p>', '08/20/2021', '08/20/2021', '43', '2021-08-21 23:18:05', '2021-08-21 23:18:05'),
(2, 16, 'Project management 2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '08/19/2021', '08/31/2021', '500', '2021-08-26 19:29:00', '2021-08-26 19:29:00'),
(3, 16, 'svsdv', '<p>sdvsdvsdv</p>', '09/18/2021', '09/30/2021', '43', '2021-09-07 11:40:23', '2021-09-07 11:40:23'),
(4, 21, 'testbtask 515', '<p>testingf task bnody 525</p>', '09/14/2021', '09/14/2021', '50', '2021-09-07 11:41:24', '2021-09-07 11:41:24'),
(5, 21, '9.12 4 hours', '<p>1. change dashboard to like contacts</p>\r\n<p>2. make the list cleaner have file manager&nbsp;</p>\r\n<p>3.&nbsp; integrate the google drive for cloud storage</p>', '09/12/2021', '09/12/2021', '20', '2021-09-11 18:43:55', '2021-09-11 18:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL DEFAULT '1',
  `withdrawable_funds` varchar(100) DEFAULT NULL,
  `non_withdrawable_funds` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_wallet`
--

INSERT INTO `user_wallet` (`id`, `user_id`, `website_id`, `withdrawable_funds`, `non_withdrawable_funds`, `created_at`, `updated_at`) VALUES
(1, 16, 1, '4', '0', '2021-07-28 16:30:56', '2021-12-24 03:37:21'),
(5, 17, 1, '40', '10', '2021-07-29 13:13:31', '2021-07-29 13:28:35'),
(4, 2, 1, '30', '5', '2021-07-28 23:02:56', '2021-07-28 23:29:04'),
(6, 21, 1, '0', '0', '2021-09-25 13:44:26', '2021-12-10 20:12:22'),
(7, 43, 1, '100', '0', '2021-11-17 02:27:16', '2021-12-24 03:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_withdrawal_request`
--

CREATE TABLE `user_withdrawal_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `currency` varchar(5) NOT NULL DEFAULT '$',
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_withdrawal_request`
--

INSERT INTO `user_withdrawal_request` (`id`, `user_id`, `amount`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 16, 50, '$', 'Complete', '2021-09-23 16:47:24', '2021-09-24 20:52:20'),
(2, 16, 155, '$', 'Complete', '2021-09-25 13:50:23', '2021-09-25 13:59:05'),
(3, 16, 118, '$', 'Complete', '2021-10-15 15:58:21', '2021-10-15 18:13:06'),
(6, 43, 7475, '$', 'Complete', '2021-11-17 03:16:28', '2021-11-27 15:19:13'),
(7, 43, 20, '$', 'Complete', '2021-11-24 02:45:27', '2021-11-27 15:19:24'),
(8, 16, 105, '$', 'Pending', '2021-11-27 15:11:48', '2021-11-27 15:11:48'),
(9, 21, 35, '$', 'Pending', '2021-12-10 20:12:22', '2021-12-10 20:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transection`
--

CREATE TABLE `wallet_transection` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `website_id` int(11) NOT NULL DEFAULT '1',
  `sender_or_recipient` varchar(125) DEFAULT NULL,
  `transection_type` varchar(100) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `currency` varchar(5) NOT NULL DEFAULT '$',
  `funds_type` varchar(100) DEFAULT NULL,
  `previous_balance` varchar(100) DEFAULT NULL,
  `new_balance` varchar(100) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_transection`
--

INSERT INTO `wallet_transection` (`id`, `user_id`, `payment_id`, `payment_mode`, `website_id`, `sender_or_recipient`, `transection_type`, `amount`, `currency`, `funds_type`, `previous_balance`, `new_balance`, `description`, `created_at`, `updated_at`) VALUES
(1, 16, 'ch_1JIBuVKuGDN8tiVqxA6nf34i', 'test', 1, NULL, 'deposit', '20', '$', 'withdrawable', '0', '20', NULL, '2021-07-28 16:30:56', '2021-07-28 16:30:56'),
(2, 16, 'ch_1JIBvRKuGDN8tiVqyECDjvor', 'test', 1, NULL, 'deposit', '10', '$', 'withdrawable', '20', '30', NULL, '2021-07-28 16:31:53', '2021-07-28 16:31:53'),
(7, 16, '0', 'live', 1, '2', 'send', '10', '$', NULL, '30.5205', '20.5205', 'sdvsdv', '2021-07-28 23:02:56', '2021-07-28 23:02:56'),
(8, 2, '0', 'live', 1, NULL, 'receive', '10', '$', NULL, '0', '10', 'sdvsdv', '2021-07-28 23:02:56', '2021-07-28 23:02:56'),
(16, 2, '0', 'live', 1, '16', 'receive', '25', '$', NULL, '10', '35', 'dsvsdv sdvsdv', '2021-07-28 23:29:04', '2021-07-28 23:29:04'),
(15, 16, '0', 'live', 1, '2', 'send', '25', '$', NULL, '30', '5', 'dsvsdv sdvsdv', '2021-07-28 23:29:04', '2021-07-28 23:29:04'),
(17, 16, 'ch_1JIVAPKuGDN8tiVqFymDcSHO', 'test', 1, NULL, 'deposit', '40', '$', 'withdrawable', '0', '40', 'Deposit into Wallet.', '2021-07-29 13:04:38', '2021-07-29 13:04:38'),
(18, 16, '0', 'live', 1, '17', 'send', '10', '$', NULL, '45', '35', 'test payment', '2021-07-29 13:13:31', '2021-07-29 13:13:31'),
(19, 17, '0', 'live', 1, '16', 'receive', '10', '$', NULL, '0', '10', 'test payment', '2021-07-29 13:13:31', '2021-07-29 13:13:31'),
(20, 16, '0', 'live', 1, '17', 'send', '40', '$', NULL, '45', '5', 'test poayment', '2021-07-29 13:28:35', '2021-07-29 13:28:35'),
(21, 17, '0', 'live', 1, '16', 'receive', '40', '$', NULL, '10', '50', 'test poayment', '2021-07-29 13:28:35', '2021-07-29 13:28:35'),
(22, 16, 'ch_1JJJCaKFNCF64zKP946A5MKA', 'test', 1, NULL, 'deposit', '55', '$', 'withdrawable', '0', '55', 'Deposit into Wallet.', '2021-07-31 18:30:13', '2021-07-31 18:30:13'),
(23, 16, 'ch_3JJMioKFNCF64zKP0kwV38vl', 'test', 1, NULL, 'deposit', '20', '$', 'withdrawable', '15', '35', 'Deposit into Wallet.', '2021-07-31 22:15:43', '2021-07-31 22:15:43'),
(24, 16, 'ch_3JLNmuKFNCF64zKP0bKSENKb', 'test', 1, NULL, 'deposit', '10', '$', 'withdrawable', '0', '10', 'Deposit into Wallet.', '2021-08-06 11:48:17', '2021-08-06 11:48:17'),
(25, 16, 'ch_3JLNnEKFNCF64zKP08BP0umH', 'test', 1, NULL, 'deposit', '200', '$', 'withdrawable', '10', '210', 'Deposit into Wallet.', '2021-08-06 11:48:36', '2021-08-06 11:48:36'),
(26, 21, 'ch_3JdbAzKFNCF64zKP0EjllfH6', 'live', 1, NULL, 'deposit', '165', '$', 'withdrawable', '0', '165', 'Deposit into Wallet.', '2021-09-25 13:44:26', '2021-09-25 13:44:26'),
(27, 21, '0', 'live', 1, '16', 'send', '155', '$', NULL, '165', '10', '16.5 hours... 17 hours= 85, plus saher 30, plus tip 40= 155', '2021-09-25 13:49:36', '2021-09-25 13:49:36'),
(28, 16, '0', 'live', 1, '21', 'receive', '155', '$', NULL, '210', '365', '16.5 hours... 17 hours= 85, plus saher 30, plus tip 40= 155', '2021-09-25 13:49:36', '2021-09-25 13:49:36'),
(29, 16, 'PAYID-MFJA3ZI6U818273B45771148', 'test', 1, NULL, 'deposit', '350', '$', 'withdrawable', '600', '950', 'Deposit into Wallet.', '2021-09-27 18:31:02', '2021-09-27 18:31:02'),
(30, 16, 'PAYID-MFJA5GQ1FT27718CF964145J', 'test', 1, NULL, 'deposit', '500', '$', 'withdrawable', '950', '1450', 'Deposit into Wallet.', '2021-09-27 18:34:02', '2021-09-27 18:34:02'),
(31, 16, 'PAYID-MFJA5PI0YM03297C0534990P', 'test', 1, NULL, 'deposit', '350', '$', 'withdrawable', '1450', '1800', 'Deposit into Wallet.', '2021-09-27 18:34:37', '2021-09-27 18:34:37'),
(32, 16, 'PAYID-MFJA5XI1VG53495UD2025216', 'test', 1, NULL, 'deposit', '349', '$', 'withdrawable', '1800', '2149', 'Deposit into Wallet.', '2021-09-27 18:35:09', '2021-09-27 18:35:09'),
(33, 16, 'PAYID-MFJA6HQ52W915792G229792L', 'test', 1, NULL, 'deposit', '366', '$', 'withdrawable', '2149', '2515', 'Deposit into Wallet.', '2021-09-27 18:36:14', '2021-09-27 18:36:14'),
(34, 16, 'PAYID-MFJA6IA8R2559951F320241X', 'test', 1, NULL, 'deposit', '600', '$', 'withdrawable', '2515', '3115', 'Deposit into Wallet.', '2021-09-27 18:36:16', '2021-09-27 18:36:16'),
(35, 16, 'PAYID-MFJA76A09B85417FU057202L', 'test', 1, NULL, 'deposit', '300', '$', 'withdrawable', '3115', '3415', 'Deposit into Wallet.', '2021-09-27 18:39:52', '2021-09-27 18:39:52'),
(36, 16, 'PAYID-MFJA76Q4A528485S09510322', 'test', 1, NULL, 'deposit', '290', '$', 'withdrawable', '3415', '3705', 'Deposit into Wallet.', '2021-09-27 18:39:54', '2021-09-27 18:39:54'),
(37, 16, 'PAYID-MFJBB5Q0S957830DF3658329', 'test', 1, NULL, 'deposit', '333', '$', 'withdrawable', '3705', '4038', 'Deposit into Wallet.', '2021-09-27 18:44:06', '2021-09-27 18:44:06'),
(38, 16, 'PAYID-MFJBFDI2BK49739JF752804H', 'test', 1, NULL, 'deposit', '340', '$', 'withdrawable', '4038', '4378', 'Deposit into Wallet.', '2021-09-27 18:50:53', '2021-09-27 18:50:53'),
(39, 16, 'PAYID-MFJBZJQ2EJ17982EG3273644', 'test', 1, NULL, 'deposit', '10', '$', 'withdrawable', '4378', '4388', 'Deposit into Wallet.', '2021-09-27 19:33:58', '2021-09-27 19:33:58'),
(40, 16, 'PAYID-MFJBZQI62A196004R3268051', 'test', 1, NULL, 'deposit', '340', '$', 'withdrawable', '4388', '4728', 'Deposit into Wallet.', '2021-09-27 19:34:25', '2021-09-27 19:34:25'),
(41, 16, 'PAYID-MFJB2JI8RF930741L1347924', 'test', 1, NULL, 'deposit', '340', '$', 'withdrawable', '4728', '5068', 'Deposit into Wallet.', '2021-09-27 19:36:05', '2021-09-27 19:36:05'),
(42, 16, 'PAYID-MFJB2NA14J1502615397833E', 'test', 1, NULL, 'deposit', '220', '$', 'withdrawable', '5068', '5288', 'Deposit into Wallet.', '2021-09-27 19:36:20', '2021-09-27 19:36:20'),
(43, 16, 'PAYID-MFJB2RI6L099406A7673590X', 'test', 1, NULL, 'deposit', '320', '$', 'withdrawable', '5288', '5608', 'Deposit into Wallet.', '2021-09-27 19:36:37', '2021-09-27 19:36:37'),
(44, 16, 'PAYID-MFJB22Q8RH84431DB195481K', 'test', 1, NULL, 'deposit', '320', '$', 'withdrawable', '5608', '5928', 'Deposit into Wallet.', '2021-09-27 19:37:14', '2021-09-27 19:37:14'),
(45, 16, 'PAYID-MFJB3BI65F67901Y50946315', 'test', 1, NULL, 'deposit', '320', '$', 'withdrawable', '5928', '6248', 'Deposit into Wallet.', '2021-09-27 19:37:41', '2021-09-27 19:37:41'),
(46, 16, 'PAYID-MFJCD3I0EN04319PK824874X', 'test', 1, NULL, 'deposit', '500', '$', 'withdrawable', '6248', '6748', 'Deposit into Wallet.', '2021-09-27 19:56:29', '2021-09-27 19:56:29'),
(47, 16, 'PAYID-MFJCEPA3D8766881B1639319', 'test', 1, NULL, 'deposit', '240', '$', 'withdrawable', '6748', '6988', 'Deposit into Wallet.', '2021-09-27 19:57:48', '2021-09-27 19:57:48'),
(48, 16, 'PAYID-MFJEJ3Q573430795J415780E', 'test', 1, NULL, 'deposit', '10', '$', 'withdrawable', '6988', '6998', 'Deposit into Wallet.', '2021-09-27 22:25:50', '2021-09-27 22:25:50'),
(49, 16, '9S982619D51213629', 'test', 1, NULL, 'deposit', '10', '$', 'withdrawable', '7321', '7331', 'Deposit into Wallet.', '2021-10-03 13:47:54', '2021-10-03 13:47:54'),
(50, 16, '2TW842753A438980S', 'test', 1, NULL, 'deposit', '19', '$', 'withdrawable', '7331', '7350', 'Deposit into Wallet.', '2021-10-06 14:14:36', '2021-10-06 14:14:36'),
(51, 21, '6R088966P2190670M', 'live', 1, NULL, 'deposit', '10', '$', 'withdrawable', '10', '20', 'Deposit into Wallet.', '2021-10-09 15:50:38', '2021-10-09 15:50:38'),
(52, 21, '1DU43042US411840G', 'live', 1, NULL, 'deposit', '125', '$', 'withdrawable', '20', '145', 'Deposit into Wallet.', '2021-10-15 13:56:07', '2021-10-15 13:56:07'),
(53, 21, '0', 'live', 1, '16', 'send', '118', '$', NULL, '145', '27', '12 /5 hours= $63\r\nsaher= 30\r\ntip= 25', '2021-10-15 14:03:12', '2021-10-15 14:03:12'),
(54, 16, '0', 'live', 1, '21', 'receive', '118', '$', NULL, '7350', '7468', '12 /5 hours= $63\r\nsaher= 30\r\ntip= 25', '2021-10-15 14:03:12', '2021-10-15 14:03:12'),
(55, 16, NULL, NULL, 1, NULL, 'withdraw', '300', '$', 'withdrawable', '7300', '7000', 'Funds withdraw.', '2021-10-15 18:08:37', '2021-10-15 18:08:37'),
(56, 21, '1E676212F47861907', 'live', 1, NULL, 'deposit', '10', '$', 'withdrawable', '27', '37', 'Deposit into Wallet.', '2021-10-23 13:24:59', '2021-10-23 13:24:59'),
(57, 21, '3WB00198RB299624G', 'live', 1, NULL, 'deposit', '170', '$', 'withdrawable', '37', '207', 'Deposit into Wallet.', '2021-10-23 13:26:02', '2021-10-23 13:26:02'),
(58, 21, '0', 'live', 1, '16', 'send', '172', '$', NULL, '207', '35', '10 hours 50, saher 30, team 42,  tip 50 \r\nTHANK YOU', '2021-10-23 13:30:55', '2021-10-23 13:30:55'),
(59, 16, '0', 'live', 1, '21', 'receive', '172', '$', NULL, '7000', '7172', '10 hours 50, saher 30, team 42,  tip 50 \r\nTHANK YOU', '2021-10-23 13:30:55', '2021-10-23 13:30:55'),
(60, 16, '11F8010457922490J', 'test', 1, NULL, 'deposit', '10', '$', 'withdrawable', '7172', '7182', 'Deposit into Wallet.', '2021-10-23 14:11:44', '2021-10-23 14:11:44'),
(61, 21, '6JB15197MX5631139', 'live', 1, NULL, 'deposit', '170', '$', 'withdrawable', '35', '205', 'Deposit into Wallet.', '2021-10-23 14:48:08', '2021-10-23 14:48:08'),
(62, 21, '0', 'live', 1, '16', 'send', '172', '$', NULL, '205', '33', '10 hours 50, saher 30, team 42, tip 50 THANK YOU', '2021-10-23 14:49:24', '2021-10-23 14:49:24'),
(63, 16, '0', 'live', 1, '21', 'receive', '172', '$', NULL, '7182', '7354', '10 hours 50, saher 30, team 42, tip 50 THANK YOU', '2021-10-23 14:49:24', '2021-10-23 14:49:24'),
(64, 21, '51B237273P884791M', 'live', 1, NULL, 'deposit', '172', '$', 'withdrawable', '33', '205', 'Deposit into Wallet.', '2021-10-23 15:05:24', '2021-10-23 15:05:24'),
(65, 21, '0', 'live', 1, '16', 'send', '10', '$', NULL, '205', '195', NULL, '2021-10-23 15:06:23', '2021-10-23 15:06:23'),
(66, 16, '0', 'live', 1, '21', 'receive', '10', '$', NULL, '7354', '7364', NULL, '2021-10-23 15:06:23', '2021-10-23 15:06:23'),
(67, 21, '0', 'live', 1, '16', 'send', '160', '$', NULL, '195', '35', '10 hours 50, saher 30, team 42, tip 50 THANK YOU', '2021-10-23 15:06:47', '2021-10-23 15:06:47'),
(68, 16, '0', 'live', 1, '21', 'receive', '160', '$', NULL, '7364', '7524', '10 hours 50, saher 30, team 42, tip 50 THANK YOU', '2021-10-23 15:06:47', '2021-10-23 15:06:47'),
(69, 16, '0', 'live', 1, '43', 'send', '7500', '$', NULL, '7524', '24', NULL, '2021-11-17 02:27:16', '2021-11-17 02:27:16'),
(70, 43, '0', 'live', 1, '16', 'receive', '7500', '$', NULL, '0', '7500', NULL, '2021-11-17 02:27:16', '2021-11-17 02:27:16'),
(71, 43, NULL, NULL, 1, NULL, 'withdraw', '7475', '$', 'withdrawable', '7500', '25', 'Funds withdraw.', '2021-11-17 03:16:28', '2021-11-17 03:16:28'),
(72, 16, '0', 'live', 1, '43', 'send', '20', '$', NULL, '24', '4', 'Pay1', '2021-11-24 02:34:06', '2021-11-24 02:34:06'),
(73, 43, '0', 'live', 1, '16', 'receive', '20', '$', NULL, '25', '45', 'Pay1', '2021-11-24 02:34:06', '2021-11-24 02:34:06'),
(74, 43, NULL, NULL, 1, NULL, 'withdraw', '20', '$', 'withdrawable', '45', '25', 'Funds withdraw.', '2021-11-24 02:45:27', '2021-11-24 02:45:27'),
(75, 21, '9L565141JV105150V', 'live', 1, NULL, 'deposit', '105', '$', 'withdrawable', '35', '140', 'Deposit into Wallet.', '2021-11-27 12:21:04', '2021-11-27 12:21:04'),
(76, 21, '0', 'live', 1, '16', 'send', '105', '$', NULL, '140', '35', '10 hours, plus saher= 80 plus 25 dlr tip= 105', '2021-11-27 12:22:34', '2021-11-27 12:22:34'),
(77, 16, '0', 'live', 1, '21', 'receive', '105', '$', NULL, '4', '109', '10 hours, plus saher= 80 plus 25 dlr tip= 105', '2021-11-27 12:22:34', '2021-11-27 12:22:34'),
(78, 16, NULL, NULL, 1, NULL, 'withdraw', '105', '$', 'withdrawable', '109', '4', 'Funds withdraw.', '2021-11-27 15:11:48', '2021-11-27 15:11:48'),
(79, 21, '2MW56415PX018874L', 'live', 1, NULL, 'deposit', '75', '$', 'withdrawable', '35', '110', 'Deposit into Wallet.', '2021-12-10 20:09:05', '2021-12-10 20:09:05'),
(80, 21, '0', 'live', 1, '16', 'send', '75', '$', NULL, '110', '35', 'for phone module plus tip', '2021-12-10 20:09:52', '2021-12-10 20:09:52'),
(81, 16, '0', 'live', 1, '21', 'receive', '75', '$', NULL, '4', '79', 'for phone module plus tip', '2021-12-10 20:09:52', '2021-12-10 20:09:52'),
(82, 21, NULL, NULL, 1, NULL, 'withdraw', '35', '$', 'withdrawable', '35', '0', 'Funds withdraw.', '2021-12-10 20:12:22', '2021-12-10 20:12:22'),
(83, 16, '0', 'live', 1, '43', 'send', '75.00', '$', NULL, '79', '4', 'Billing', '2021-12-24 03:37:21', '2021-12-24 03:37:21'),
(84, 43, '0', 'live', 1, '16', 'receive', '75.00', '$', NULL, '25', '100', 'Billing', '2021-12-24 03:37:21', '2021-12-24 03:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(11) NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_url`, `created_at`, `updated_at`) VALUES
(1, 'ACG', 'https://automatedcontactgenerator.com/', '2021-07-28 11:35:48', '2021-07-28 11:35:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_notes`
--
ALTER TABLE `additional_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulk_sms_email`
--
ALTER TABLE `bulk_sms_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_generators`
--
ALTER TABLE `contact_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_package_requests`
--
ALTER TABLE `custom_package_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funnels`
--
ALTER TABLE `funnels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funnel_id` (`funnel_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `funnel_types`
--
ALTER TABLE `funnel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gigy_project`
--
ALTER TABLE `gigy_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goole_drive_files`
--
ALTER TABLE `goole_drive_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_messages`
--
ALTER TABLE `group_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pacakages`
--
ALTER TABLE `pacakages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_tag_id` (`package_tag_id`);

--
-- Indexes for table `pacakge_items`
--
ALTER TABLE `pacakge_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `pacakge_tags`
--
ALTER TABLE `pacakge_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_index` (`user_id`);

--
-- Indexes for table `payment_request_sent`
--
ALTER TABLE `payment_request_sent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_management_members`
--
ALTER TABLE `task_management_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_clock_status`
--
ALTER TABLE `user_clock_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cpanel_email_address`
--
ALTER TABLE `user_cpanel_email_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_list_clean_record`
--
ALTER TABLE `user_list_clean_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_package_details`
--
ALTER TABLE `user_package_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_phone_numbers`
--
ALTER TABLE `user_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sms_history`
--
ALTER TABLE `user_sms_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_task_management`
--
ALTER TABLE `user_task_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_withdrawal_request`
--
ALTER TABLE `user_withdrawal_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transection`
--
ALTER TABLE `wallet_transection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_notes`
--
ALTER TABLE `additional_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bulk_sms_email`
--
ALTER TABLE `bulk_sms_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_generators`
--
ALTER TABLE `contact_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `custom_package_requests`
--
ALTER TABLE `custom_package_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `funnels`
--
ALTER TABLE `funnels`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `funnel_types`
--
ALTER TABLE `funnel_types`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gigy_project`
--
ALTER TABLE `gigy_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `goole_drive_files`
--
ALTER TABLE `goole_drive_files`
  MODIFY `id` bigint(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `group_messages`
--
ALTER TABLE `group_messages`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pacakages`
--
ALTER TABLE `pacakages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pacakge_items`
--
ALTER TABLE `pacakge_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pacakge_tags`
--
ALTER TABLE `pacakge_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `payment_request_sent`
--
ALTER TABLE `payment_request_sent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(250) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `task_management_members`
--
ALTER TABLE `task_management_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_bank_details`
--
ALTER TABLE `user_bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_clock_status`
--
ALTER TABLE `user_clock_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user_cpanel_email_address`
--
ALTER TABLE `user_cpanel_email_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_list_clean_record`
--
ALTER TABLE `user_list_clean_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_package_details`
--
ALTER TABLE `user_package_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_phone_numbers`
--
ALTER TABLE `user_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_sms_history`
--
ALTER TABLE `user_sms_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_task_management`
--
ALTER TABLE `user_task_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_withdrawal_request`
--
ALTER TABLE `user_withdrawal_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wallet_transection`
--
ALTER TABLE `wallet_transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
