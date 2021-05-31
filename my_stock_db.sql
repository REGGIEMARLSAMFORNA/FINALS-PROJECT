-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 05:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_stock_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `danger_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `danger_level`) VALUES
(1, 'Medical Gloves', 'Helping to protect the hands that heal through an extensive offering of surgical, exam and cleanroom gloves', '2021-05-30 22:52:38', '2021-05-30 23:40:25', NULL, 1000),
(2, 'Enteral Feeding', 'The Cardinal Health Kangaroo nutritional delivery portfolio offers a safe, innovative and complete solution of products that support pediatric and adult enteral feeding needs from the hospital to the home', '2021-05-30 22:52:39', '2021-05-30 23:39:41', NULL, 1000),
(3, 'Durable Medical Equipment', 'Cardinal Health Bathroom Safety, Mobility, and Exam Room Equipment products are designed with both the patient and caregiver in mind', '2021-05-30 22:52:40', '2021-05-30 23:38:26', NULL, 1000),
(4, 'Compression Devices', 'Smart Compression is the next evolution of IPC. It’s designed to move more blood1 to help prevent stasis,1 track compliance2 and educate patients and clinicians about the risk of VTE. All while thinking about the impact on the environment.', '2021-05-30 22:52:40', '2021-05-30 23:37:38', NULL, 1000),
(5, 'Cardinal Health Anesthesia Supplies', 'Quality, reliability, dependability, consistency these aren’t just things you want, these are things you need', '2021-05-30 22:52:41', '2021-05-30 23:36:27', NULL, 1000),
(6, 'Infection Control', 'Every day, you’re tasked to do more with less. To improve productivity with less time, budget and staff. And do it all while you strive to keep your patients safe and improve the quality of care', '2021-05-30 23:40:54', '2021-05-30 23:40:54', NULL, 1000),
(7, 'Laboratory Products and Services', 'We provide hospital labs, independent labs, and physician office labs access to thousands of products from hundreds of manufacturers including thousands of Cardinal Health brand products that provide our customers the savings they need', '2021-05-30 23:41:46', '2021-05-30 23:41:46', NULL, 1000),
(8, 'OEM Medical Specialty Products', 'OEM Patient Care offers our customers and partners a single source for an extensive range of products and customization capabilities. Our team is committed to designing, developing, and delivering high-quality medical components and devices to meet each specification, budget, and schedule', '2021-05-30 23:42:22', '2021-05-30 23:42:22', NULL, 1000),
(9, 'Patient Care', 'You want to provide quality products to care for your patients. Cardinal Health provides just that. Patient care products from slippers to thermal care, grooming to surgical bras and vests – Cardinal Health is Essential to care', '2021-05-30 23:43:04', '2021-05-30 23:43:04', NULL, 1000),
(10, 'Patient Preparation', 'Preparing the patient properly is the first step to a successful procedure. Cardinal Health offers skin prep products including applicators, prep packs and trays to aid in the preoperative skin preparation of every patient', '2021-05-30 23:43:57', '2021-05-31 08:53:59', NULL, 1000);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_03_31_000001_create_permissions_table', 1),
(8, '2020_03_31_000002_create_roles_table', 1),
(9, '2020_03_31_000003_create_users_table', 1),
(10, '2020_03_31_000004_create_assets_table', 1),
(11, '2020_03_31_000005_create_teams_table', 1),
(12, '2020_03_31_000006_create_stocks_table', 1),
(13, '2020_03_31_000007_create_transactions_table', 1),
(14, '2020_03_31_000008_create_permission_role_pivot_table', 1),
(15, '2020_03_31_000009_create_role_user_pivot_table', 1),
(16, '2020_03_31_000010_add_relationship_fields_to_users_table', 1),
(17, '2020_03_31_000011_add_relationship_fields_to_stocks_table', 1),
(18, '2020_03_31_000012_add_relationship_fields_to_transactions_table', 1),
(19, '2020_03_31_102945_make_asset_and_team_unique_in_stocks_table', 1),
(20, '2020_04_01_055439_add_danger_level_field_to_assets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'asset_create', NULL, NULL, NULL),
(18, 'asset_edit', NULL, NULL, NULL),
(19, 'asset_show', NULL, NULL, NULL),
(20, 'asset_delete', NULL, NULL, NULL),
(21, 'asset_access', NULL, NULL, NULL),
(22, 'team_create', NULL, NULL, NULL),
(23, 'team_edit', NULL, NULL, NULL),
(24, 'team_show', NULL, NULL, NULL),
(25, 'team_delete', NULL, NULL, NULL),
(26, 'team_access', NULL, NULL, NULL),
(27, 'stock_create', NULL, NULL, NULL),
(28, 'stock_edit', NULL, NULL, NULL),
(29, 'stock_show', NULL, NULL, NULL),
(30, 'stock_delete', NULL, NULL, NULL),
(31, 'stock_access', NULL, NULL, NULL),
(32, 'transaction_create', NULL, NULL, NULL),
(33, 'transaction_edit', NULL, NULL, NULL),
(34, 'transaction_show', NULL, NULL, NULL),
(35, 'transaction_delete', NULL, NULL, NULL),
(36, 'transaction_access', NULL, NULL, NULL),
(37, 'profile_password_edit', NULL, NULL, NULL),
(38, 'PeopleTools, Security, Permissions and Roles, Permission Lists, General', '2021-05-30 23:20:42', '2021-05-30 23:20:42', NULL),
(39, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Pages', '2021-05-30 23:20:55', '2021-05-30 23:20:55', NULL),
(40, 'PeopleTools, Security, Permissions and Roles, Permission Lists, PeopleTools', '2021-05-30 23:21:03', '2021-05-30 23:21:03', NULL),
(41, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Process', '2021-05-30 23:21:16', '2021-05-30 23:21:16', NULL),
(42, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Sign-on Times', '2021-05-30 23:21:26', '2021-05-30 23:21:26', NULL),
(43, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Component Interface', '2021-05-30 23:21:34', '2021-05-30 23:21:34', NULL),
(44, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Web Libraries', '2021-05-30 23:21:42', '2021-05-30 23:21:42', NULL),
(45, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Web Services', '2021-05-30 23:21:53', '2021-05-30 23:21:53', NULL),
(46, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Personalizations', '2021-05-30 23:22:04', '2021-05-30 23:22:04', NULL),
(47, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Query', '2021-05-30 23:22:17', '2021-05-30 23:22:17', NULL),
(48, 'PeopleTools, Security, Mass Change Operator Security', '2021-05-30 23:22:27', '2021-05-30 23:22:27', NULL),
(49, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Audit', '2021-05-30 23:22:39', '2021-05-30 23:22:39', NULL),
(50, 'PeopleTools, Security, Permissions and Roles, Permission Lists, Search Groups', '2021-05-30 23:22:48', '2021-05-30 23:22:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(3, 38),
(4, 39),
(5, 40),
(6, 41),
(7, 42),
(8, 43),
(9, 45),
(10, 48),
(11, 49),
(12, 50);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL),
(3, 'Medical Assistant', '2021-05-30 23:24:42', '2021-05-30 23:24:42', NULL),
(4, 'Nursing Assistant', '2021-05-30 23:24:58', '2021-05-30 23:24:58', NULL),
(5, 'Home Health Aide', '2021-05-30 23:25:11', '2021-05-30 23:25:11', NULL),
(6, 'Licensed Practical Nurse', '2021-05-30 23:25:29', '2021-05-30 23:25:29', NULL),
(7, 'Physician', '2021-05-30 23:25:42', '2021-05-30 23:25:42', NULL),
(8, 'Therapist', '2021-05-30 23:26:01', '2021-05-30 23:26:01', NULL),
(9, 'Registered Nurse', '2021-05-30 23:26:19', '2021-05-30 23:26:19', NULL),
(10, 'Pharmacy Technician', '2021-05-30 23:26:35', '2021-05-30 23:26:35', NULL),
(11, 'Diagnostic Medical Sonographer', '2021-05-30 23:26:50', '2021-05-30 23:26:50', NULL),
(12, 'Clinical Laboratory Technician', '2021-05-30 23:27:03', '2021-05-30 23:27:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(12, 3),
(13, 4),
(14, 5),
(15, 5),
(16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `current_stock`, `created_at`, `updated_at`, `deleted_at`, `asset_id`, `team_id`) VALUES
(1, 0, '2021-05-30 22:52:38', '2021-05-30 22:52:38', NULL, 1, 1),
(2, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 1, 2),
(3, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 1, 3),
(4, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 1, 4),
(5, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 1, 5),
(6, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 2, 1),
(7, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 2, 2),
(8, 0, '2021-05-30 22:52:39', '2021-05-30 22:52:39', NULL, 2, 3),
(9, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 2, 4),
(10, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 2, 5),
(11, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 3, 1),
(12, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 3, 2),
(13, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 3, 3),
(14, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 3, 4),
(15, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 3, 5),
(16, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 4, 1),
(17, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 4, 2),
(18, 0, '2021-05-30 22:52:40', '2021-05-30 22:52:40', NULL, 4, 3),
(19, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 4, 4),
(20, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 4, 5),
(21, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 5, 1),
(22, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 5, 2),
(23, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 5, 3),
(24, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 5, 4),
(25, 0, '2021-05-30 22:52:41', '2021-05-30 22:52:41', NULL, 5, 5),
(26, 0, '2021-05-30 23:20:02', '2021-05-30 23:20:02', NULL, 1, 6),
(27, 0, '2021-05-30 23:20:02', '2021-05-30 23:20:02', NULL, 2, 6),
(28, 0, '2021-05-30 23:20:02', '2021-05-30 23:20:02', NULL, 3, 6),
(29, 0, '2021-05-30 23:20:02', '2021-05-30 23:20:02', NULL, 4, 6),
(30, 0, '2021-05-30 23:20:02', '2021-05-30 23:20:02', NULL, 5, 6),
(31, 0, '2021-05-30 23:20:14', '2021-05-30 23:20:14', NULL, 1, 7),
(32, 0, '2021-05-30 23:20:14', '2021-05-30 23:20:14', NULL, 2, 7),
(33, 0, '2021-05-30 23:20:14', '2021-05-30 23:20:14', NULL, 3, 7),
(34, 0, '2021-05-30 23:20:14', '2021-05-30 23:20:14', NULL, 4, 7),
(35, 0, '2021-05-30 23:20:14', '2021-05-30 23:20:14', NULL, 5, 7),
(36, 0, '2021-05-30 23:28:33', '2021-05-30 23:28:33', NULL, 1, 8),
(37, 0, '2021-05-30 23:28:33', '2021-05-30 23:28:33', NULL, 2, 8),
(38, 0, '2021-05-30 23:28:34', '2021-05-30 23:28:34', NULL, 3, 8),
(39, 0, '2021-05-30 23:28:34', '2021-05-30 23:28:34', NULL, 4, 8),
(40, 0, '2021-05-30 23:28:34', '2021-05-30 23:28:34', NULL, 5, 8),
(41, 0, '2021-05-30 23:29:15', '2021-05-30 23:29:15', NULL, 1, 9),
(42, 0, '2021-05-30 23:29:15', '2021-05-30 23:29:15', NULL, 2, 9),
(43, 0, '2021-05-30 23:29:15', '2021-05-30 23:29:15', NULL, 3, 9),
(44, 0, '2021-05-30 23:29:15', '2021-05-30 23:29:15', NULL, 4, 9),
(45, 0, '2021-05-30 23:29:15', '2021-05-30 23:29:15', NULL, 5, 9),
(46, 0, '2021-05-30 23:29:34', '2021-05-30 23:29:34', NULL, 1, 10),
(47, 0, '2021-05-30 23:29:34', '2021-05-30 23:29:34', NULL, 2, 10),
(48, 0, '2021-05-30 23:29:34', '2021-05-30 23:29:34', NULL, 3, 10),
(49, 0, '2021-05-30 23:29:34', '2021-05-30 23:29:34', NULL, 4, 10),
(50, 0, '2021-05-30 23:29:34', '2021-05-30 23:29:34', NULL, 5, 10),
(51, 0, '2021-05-30 23:40:54', '2021-05-30 23:40:54', NULL, 6, 1),
(52, 0, '2021-05-30 23:40:54', '2021-05-30 23:40:54', NULL, 6, 2),
(53, 0, '2021-05-30 23:40:54', '2021-05-30 23:40:54', NULL, 6, 3),
(54, 0, '2021-05-30 23:40:54', '2021-05-30 23:40:54', NULL, 6, 4),
(55, 0, '2021-05-30 23:40:54', '2021-05-30 23:40:54', NULL, 6, 5),
(56, 0, '2021-05-30 23:40:55', '2021-05-30 23:40:55', NULL, 6, 6),
(57, 0, '2021-05-30 23:40:55', '2021-05-30 23:40:55', NULL, 6, 7),
(58, 0, '2021-05-30 23:40:55', '2021-05-30 23:40:55', NULL, 6, 8),
(59, 0, '2021-05-30 23:40:55', '2021-05-30 23:40:55', NULL, 6, 9),
(60, 0, '2021-05-30 23:40:55', '2021-05-30 23:40:55', NULL, 6, 10),
(61, 0, '2021-05-30 23:41:46', '2021-05-30 23:41:46', NULL, 7, 1),
(62, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 2),
(63, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 3),
(64, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 4),
(65, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 5),
(66, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 6),
(67, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 7),
(68, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 8),
(69, 0, '2021-05-30 23:41:47', '2021-05-30 23:41:47', NULL, 7, 9),
(70, 0, '2021-05-30 23:41:48', '2021-05-30 23:41:48', NULL, 7, 10),
(71, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 1),
(72, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 2),
(73, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 3),
(74, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 4),
(75, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 5),
(76, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 6),
(77, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 7),
(78, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 8),
(79, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 9),
(80, 0, '2021-05-30 23:42:23', '2021-05-30 23:42:23', NULL, 8, 10),
(81, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 1),
(82, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 2),
(83, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 3),
(84, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 4),
(85, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 5),
(86, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 6),
(87, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 7),
(88, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 8),
(89, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 9),
(90, 0, '2021-05-30 23:43:05', '2021-05-30 23:43:05', NULL, 9, 10),
(91, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 1),
(92, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 2),
(93, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 3),
(94, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 4),
(95, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 5),
(96, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 6),
(97, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 7),
(98, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 8),
(99, 0, '2021-05-30 23:43:57', '2021-05-30 23:43:57', NULL, 10, 9),
(100, 0, '2021-05-30 23:43:58', '2021-05-30 23:43:58', NULL, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Capitol University Medical Center', '2021-05-30 22:52:34', '2021-05-30 23:19:44', NULL),
(2, 'Maria Reyna-Xavier University Hospital', '2021-05-30 22:52:36', '2021-05-30 23:19:30', NULL),
(3, 'Cagayan de Oro Polymedic Medical Plaza', '2021-05-30 22:52:37', '2021-05-30 23:19:09', NULL),
(4, 'Northern Mindanao Medical Center', '2021-05-30 22:52:37', '2021-05-30 23:18:45', NULL),
(5, 'Cagayan de Oro Medical Center', '2021-05-30 22:52:38', '2021-05-30 23:18:30', NULL),
(6, 'Sabal Hospital', '2021-05-30 23:20:01', '2021-05-30 23:20:01', NULL),
(7, 'Madonna and Child Hospital', '2021-05-30 23:20:14', '2021-05-30 23:20:14', NULL),
(8, 'Cagayan De Oro Medical Center Oncology/Cancer Center', '2021-05-30 23:28:33', '2021-05-30 23:28:33', NULL),
(9, 'J.R. Borja General Hospital', '2021-05-30 23:29:15', '2021-05-30 23:29:15', NULL),
(10, 'ACE Medical Center CDO', '2021-05-30 23:29:34', '2021-05-30 23:29:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `team_id`) VALUES
(1, 'Admin', 'reggiebersabal@gmail.com', NULL, '$2y$10$0TPvKitQ35Pd0mc2ZDmPl.RsNXTfbOZdXbyMLrn8GjWEzhdIAqCsm', 'rcZdVUpmOgVwK96kvLlpDyyays4xGRsPXq7BbSCRyIP6LoXNno5GMgeygP54', NULL, '2021-05-30 23:46:39', NULL, NULL),
(12, 'Reggie Marl', 'reggiemarlsamforna@gmail.com', NULL, '$2y$10$X1GOYp3CK3MbWBOfn8Fc8.YnKvtPPuv.mlHa/eREX6kIYk8pYB/Uq', NULL, '2021-05-30 23:27:32', '2021-05-30 23:47:15', '2021-05-30 23:47:15', 1),
(13, 'Reggie Marl', 'samforna@gmail.com', NULL, '$2y$10$AQWJx5WM2QdZVwbcAFH2KeRqSoOiGBNFWql.AkIVWG9vTiTzaddZe', NULL, '2021-05-30 23:30:39', '2021-05-30 23:30:39', NULL, 2),
(14, 'Reggie Marl', 'reggie@gmail.com', NULL, '$2y$10$6rca.CWycxkJF/CJU.KS5eMEp2us23DhiMENyUuWaV8YhFaPBVcK.', NULL, '2021-05-30 23:31:08', '2021-05-30 23:31:08', NULL, 3),
(15, 'Samforna', 'marlsamforna@gmail.com', NULL, '$2y$10$Y73k2AFBnAvfW1Nr77L/zehx8DS3nFRFJIjWMaO7T2mjy5i7C3PQy', NULL, '2021-05-30 23:32:22', '2021-05-30 23:32:22', NULL, 4),
(16, 'Reggie Marl', 'reggiemarl@gmail.com', NULL, '$2y$10$9VWeWZC8PaTypCMSCcRxTOi2VJu58ZCJxws/2ArjHKScQ./C5GxMq', NULL, '2021-05-30 23:32:56', '2021-05-30 23:32:56', NULL, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_1230843` (`role_id`),
  ADD KEY `permission_id_fk_1230843` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_1230852` (`user_id`),
  ADD KEY `role_id_fk_1230852` (`role_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stocks_asset_id_team_id_deleted_at_unique` (`asset_id`,`team_id`,`deleted_at`),
  ADD KEY `team_fk_1230970` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_fk_1230972` (`asset_id`),
  ADD KEY `team_fk_1230977` (`team_id`),
  ADD KEY `user_fk_1233734` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `team_fk_1230947` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_1230843` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_1230843` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_1230852` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_1230852` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `asset_fk_1230965` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `team_fk_1230970` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `asset_fk_1230972` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `team_fk_1230977` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `user_fk_1233734` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `team_fk_1230947` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
