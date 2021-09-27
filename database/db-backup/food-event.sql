-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 09:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-event`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'FoodElvent'),
(19, 'app_short_description', 'Food Delivery Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.mailtrap.io'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'Topgundelivery@topgundelivery.fr'),
(24, 'mail_password', 'hxjsewjcijqiaksc'),
(25, 'mail_encryption', 'tls'),
(26, 'mail_from_address', 'Topgundelivery@topgundelivery.fr'),
(27, 'mail_from_name', 'Top Gun'),
(30, 'timezone', 'Europe/Paris'),
(32, 'theme_contrast', 'dark'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', 'ebf4bc50-4efa-4e3a-8450-7200fab84102'),
(35, 'nav_color', 'navbar-dark bg-primary'),
(38, 'logo_bg_color', 'bg-primary'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '€'),
(108, 'fixed_header', 'fixed-top'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#de84da'),
(117, 'main_dark_color', '#a9aae8'),
(118, 'second_color', '#344968'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyAT07iMlfZ9bJt1gmGj9KhJDLFY8srI6dA'),
(125, 'mobile_language', 'fr'),
(126, 'app_version', '1.1'),
(127, 'enable_version', '0'),
(128, 'default_currency_id', '2'),
(129, 'default_currency_code', 'EUR'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '1'),
(133, 'distance_unit', 'km'),
(134, 'enable_razorpay', '1'),
(135, 'razorpay_key', '0'),
(136, 'razorpay_secret', '0'),
(137, 'paypal_mode', '1'),
(138, 'paypal_app_id', '0');

-- --------------------------------------------------------

--
-- Table structure for table `banner_layout_builders`
--

CREATE TABLE `banner_layout_builders` (
  `banner_row_id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `button_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_layout_builders`
--

INSERT INTO `banner_layout_builders` (`banner_row_id`, `theme_id`, `user_id`, `title`, `sub_title`, `button_title`, `image`, `image_2`, `image_3`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 78, 'Super Delicieux Gâteau', '100% NATUREL, FRAIS BAKED GOODS', NULL, '20210920143253.1.png', '20210920143253.2.png', '20210920143253.3.png', 78, NULL, '2021-09-20 14:32:53', '2021-09-20 14:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `food_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 7, 10, 1, '2020-09-06 00:14:51', '2020-09-06 00:14:51'),
(7, 8, 63, 1, '2021-04-19 06:36:08', '2021-04-20 19:35:49'),
(15, 34, 53, 1, '2021-04-20 14:18:08', '2021-04-20 14:18:08'),
(19, 7, 2, 1, '2021-04-20 14:55:29', '2021-04-20 14:55:29'),
(24, 172, 68, 2, '2021-05-04 04:33:40', '2021-05-04 04:33:40'),
(29, 17, 70, 1, '2021-05-05 17:09:28', '2021-05-05 17:09:28'),
(30, 188, 75, 1, '2021-05-07 11:15:22', '2021-05-07 11:15:22'),
(31, 194, 75, 1, '2021-05-07 11:15:31', '2021-05-07 11:15:31'),
(32, 188, 22, 1, '2021-07-13 15:16:40', '2021-07-13 15:16:41'),
(33, 196, 22, 1, '2021-07-15 16:05:06', '2021-07-15 16:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `cart_extras`
--

CREATE TABLE `cart_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_extras`
--

INSERT INTO `cart_extras` (`extra_id`, `cart_id`) VALUES
(52, 23),
(54, 22);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'American', 'Iusto saepe at sed ipsa natus illum. Dicta possimus et beatae perspiciatis natus. Nihil eius rem ex sapiente. Sint a aspernatur qui quisquam autem. Doloribus voluptatibus dicta ipsum velit.', '2020-09-02 00:25:15', '2021-04-29 13:20:51'),
(3, 'BURGER 🍔', 'Consequatur voluptate fugit vitae minus qui voluptas reiciendis enim. Id possimus quasi nulla est porro qui. Est et debitis facilis aut odio adipisci. Aliquam excepturi culpa voluptatum vitae quod et. Omnis sunt neque similique corporis sapiente saepe officia.', '2020-09-02 00:25:15', '2021-04-29 13:12:12'),
(4, 'Drinks 🥤', 'COLA', '2020-09-02 00:25:15', '2021-04-29 13:12:02'),
(9, 'PIZZA 🍕', '<p><br></p>', '2021-04-27 10:50:01', '2021-04-29 13:08:44'),
(11, 'Salade 🥗', '<p>ENTREE AU CHOIX</p>', '2021-04-28 21:06:20', '2021-04-29 13:30:26'),
(12, 'KEBAB 👍', '<p>PLATS CHAUDS</p>', '2021-04-28 21:07:40', '2021-04-29 13:10:49'),
(13, 'Pattes 🍝', '<p>PPP</p>', '2021-04-28 22:07:59', '2021-04-29 13:10:29'),
(14, 'Tacos  🌮', '<p>Tacos</p>', '2021-04-29 13:07:10', '2021-04-29 13:16:06'),
(15, 'Asiatique🍜', '<p>Food asia</p>', '2021-04-29 13:07:29', '2021-04-29 13:12:26'),
(16, 'Sushi 🍣', '<p>🍣</p>', '2021-04-29 13:07:55', '2021-04-29 13:08:55'),
(17, 'Vegan', '<p>No </p>', '2021-04-29 13:32:02', '2021-04-29 13:32:21'),
(18, 'Asiatiques', '<p>Asiatic delicious food. Made by a good coocker chief</p>', '2021-05-06 05:25:07', '2021-05-06 05:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `discount_type`, `description`, `expires_at`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'BD10', 10.00, 'percent', '<p>Test<br></p>', '2020-12-03 00:00:00', 1, '2020-11-27 04:48:22', '2020-11-27 04:48:22'),
(2, 'gr08', 10.00, 'percent', '<p>de</p>', '2021-05-08 00:00:00', 1, '2020-12-01 06:52:01', '2021-04-30 00:37:55'),
(3, 'Mo', 20.00, 'percent', 'Code 20%', '2021-06-04 00:00:00', 1, '2021-04-30 00:41:56', '2021-04-30 07:05:42'),
(4, 'TATTI', 80.00, 'percent', '<p>Loot lo</p>', '2021-05-13 00:00:00', 1, '2021-05-05 16:59:04', '2021-05-05 16:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vegan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`, `description`, `vegan`, `created_at`, `updated_at`) VALUES
(12, 'LE VIEUX CAMPEUR', '<p>Commercant</p>', 1, '2021-03-27 08:29:55', '2021-04-28 21:51:18'),
(15, 'NICE FOOD', '<p>Truck Food</p>', 1, '2021-04-02 10:45:23', '2021-04-02 10:51:08'),
(19, 'TEST 1', '<p>Kitchen</p>', 0, '2021-07-22 09:45:58', '2021-07-25 13:40:50'),
(20, 'Cantum', '<p>Restaurant mexicain</p>', 0, '2021-07-29 06:03:17', '2021-07-29 06:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 19:50:48', '2019-10-22 19:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 19:51:39', '2019-10-22 19:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-07 01:30:00', '2019-09-07 01:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 1, 6, 1, 'App\\Models\\User', '2019-09-07 01:43:58', '2020-10-25 09:33:32'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-07 01:49:22', '2019-09-07 01:49:22'),
(7, 'identity', 'boolean', NULL, 0, 1, 1, 2, 4, 'App\\Models\\Driver', '2020-10-15 05:31:58', '2020-10-15 05:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '68899', '68899', 4, 'App\\Models\\User', 2, '2019-09-07 01:52:30', '2021-03-25 13:30:04'),
(30, 'vhgghh', 'vhgghh', 5, 'App\\Models\\User', 2, '2019-09-07 01:52:30', '2021-03-24 09:10:22'),
(31, 'vhgbbhhh', 'vhgbbhhh', 6, 'App\\Models\\User', 2, '2019-09-07 01:52:30', '2021-03-25 09:01:13'),
(32, '866', '866', 4, 'App\\Models\\User', 1, '2019-09-07 01:53:58', '2021-03-23 19:21:14'),
(33, 'yjh', 'yjh', 5, 'App\\Models\\User', 1, '2019-09-07 01:53:58', '2021-03-23 19:21:14'),
(34, 'cgughh', 'cgughh', 6, 'App\\Models\\User', 1, '2019-09-07 01:53:58', '2021-03-23 19:21:14'),
(35, NULL, NULL, 4, 'App\\Models\\User', 3, '2019-10-15 21:21:32', '2021-03-22 19:01:32'),
(36, NULL, '', 5, 'App\\Models\\User', 3, '2019-10-15 21:21:32', '2021-03-22 19:01:32'),
(37, NULL, NULL, 6, 'App\\Models\\User', 3, '2019-10-15 21:21:32', '2021-03-22 19:01:32'),
(38, NULL, NULL, 4, 'App\\Models\\User', 4, '2019-10-16 23:31:46', '2021-03-22 19:06:39'),
(39, NULL, '', 5, 'App\\Models\\User', 4, '2019-10-16 23:31:46', '2021-03-22 19:06:40'),
(40, NULL, NULL, 6, 'App\\Models\\User', 4, '2019-10-16 23:31:46', '2021-03-22 19:06:40'),
(41, NULL, NULL, 4, 'App\\Models\\User', 5, '2019-12-15 23:49:44', '2021-03-22 19:06:49'),
(42, NULL, '', 5, 'App\\Models\\User', 5, '2019-12-15 23:49:44', '2021-03-22 19:06:49'),
(43, NULL, NULL, 6, 'App\\Models\\User', 5, '2019-12-15 23:49:44', '2021-03-22 19:06:49'),
(44, NULL, NULL, 4, 'App\\Models\\User', 6, '2020-03-29 21:28:04', '2021-03-22 19:06:56'),
(45, NULL, '', 5, 'App\\Models\\User', 6, '2020-03-29 21:28:05', '2021-03-22 19:06:56'),
(46, NULL, NULL, 6, 'App\\Models\\User', 6, '2020-03-29 21:28:05', '2021-03-22 19:06:56'),
(47, NULL, NULL, 4, 'App\\Models\\User', 7, '2020-09-04 14:56:17', '2021-03-22 19:07:01'),
(48, NULL, '', 5, 'App\\Models\\User', 7, '2020-09-04 14:56:17', '2021-03-22 19:07:01'),
(49, NULL, NULL, 6, 'App\\Models\\User', 7, '2020-09-04 14:56:17', '2021-03-22 19:07:01'),
(50, NULL, NULL, 4, 'App\\Models\\User', 8, '2020-09-04 16:10:10', '2021-03-22 19:07:08'),
(51, NULL, '', 5, 'App\\Models\\User', 8, '2020-09-04 16:10:10', '2021-03-22 19:07:08'),
(52, NULL, NULL, 6, 'App\\Models\\User', 8, '2020-09-04 16:10:10', '2021-03-22 19:07:08'),
(53, NULL, NULL, 4, 'App\\Models\\User', 12, '2020-09-08 18:43:07', '2021-03-22 20:44:49'),
(54, NULL, '', 5, 'App\\Models\\User', 12, '2020-09-08 18:43:07', '2021-03-22 20:44:49'),
(55, '45 rue de from NICE- 06000', '45 rue de from NICE- 06000', 6, 'App\\Models\\User', 12, '2020-09-08 18:43:07', '2021-03-24 09:28:05'),
(56, '+92-315-4302671', '+92-315-4302671', 4, 'App\\Models\\User', 16, '2020-09-14 23:15:55', '2020-09-14 23:15:55'),
(57, NULL, '', 5, 'App\\Models\\User', 16, '2020-09-14 23:15:55', '2020-09-14 23:15:55'),
(58, NULL, NULL, 6, 'App\\Models\\User', 16, '2020-09-14 23:15:55', '2020-09-14 23:15:55'),
(59, '+92-315-4302671', '+92-315-4302671', 4, 'App\\Models\\User', 17, '2020-09-14 23:20:52', '2020-09-14 23:20:52'),
(60, NULL, '', 5, 'App\\Models\\User', 17, '2020-09-14 23:20:52', '2020-09-14 23:20:52'),
(61, 'ghgfh', 'ghgfh', 6, 'App\\Models\\User', 17, '2020-09-14 23:20:52', '2020-09-14 23:20:52'),
(62, '01745895475', '01745895475', 4, 'App\\Models\\User', 18, '2020-10-16 08:15:11', '2020-10-16 08:15:11'),
(63, '<p>aaaa<br></p>', 'aaaa', 5, 'App\\Models\\User', 18, '2020-10-16 08:15:11', '2020-10-16 08:15:11'),
(64, 'bhatra', 'bhatra', 6, 'App\\Models\\User', 18, '2020-10-16 08:15:11', '2020-10-16 08:15:11'),
(65, NULL, NULL, 4, 'App\\Models\\User', 19, '2020-10-16 08:32:42', '2021-03-22 19:32:59'),
(66, NULL, '', 5, 'App\\Models\\User', 19, '2020-10-16 08:32:42', '2021-03-22 19:33:00'),
(67, NULL, NULL, 6, 'App\\Models\\User', 19, '2020-10-16 08:32:42', '2021-03-22 19:33:00'),
(68, '454', '454', 4, 'App\\Models\\User', 20, '2020-10-16 08:36:44', '2020-10-16 08:36:44'),
(69, '<p>asdfsdf<br></p>', 'asdfsdf', 5, 'App\\Models\\User', 20, '2020-10-16 08:36:44', '2020-10-16 08:36:44'),
(70, 'fgdsf', 'fgdsf', 6, 'App\\Models\\User', 20, '2020-10-16 08:36:44', '2020-10-16 08:36:44'),
(71, NULL, NULL, 4, 'App\\Models\\User', 21, '2020-10-16 08:41:39', '2021-03-22 21:05:24'),
(72, NULL, '', 5, 'App\\Models\\User', 21, '2020-10-16 08:41:39', '2021-03-22 20:49:33'),
(73, NULL, NULL, 6, 'App\\Models\\User', 21, '2020-10-16 08:41:39', '2021-03-22 20:49:33'),
(74, NULL, NULL, 4, 'App\\Models\\User', 11, '2020-10-16 11:17:54', '2020-10-16 11:17:54'),
(75, NULL, '', 5, 'App\\Models\\User', 11, '2020-10-16 11:17:54', '2020-10-16 11:17:54'),
(76, NULL, NULL, 6, 'App\\Models\\User', 11, '2020-10-16 11:17:54', '2020-10-16 11:17:54'),
(77, NULL, '<span class=\'badge badge-danger\'>No</span>', 7, 'App\\Models\\Driver', 1, '2020-10-16 11:42:20', '2020-10-16 11:42:20'),
(78, '0656662828', '0656662828', 4, 'App\\Models\\User', 22, '2020-10-25 06:15:40', '2021-04-28 14:24:28'),
(79, NULL, '', 5, 'App\\Models\\User', 22, '2020-10-25 06:15:40', '2021-03-22 19:07:16'),
(80, '11 avenue durante - Nice - 06000', '11 avenue durante - Nice - 06000', 6, 'App\\Models\\User', 22, '2020-10-25 06:15:40', '2021-04-29 11:22:25'),
(81, NULL, NULL, 4, 'App\\Models\\User', 28, '2020-11-24 14:17:25', '2020-11-24 14:17:25'),
(82, NULL, '', 5, 'App\\Models\\User', 28, '2020-11-24 14:17:25', '2020-11-24 14:17:25'),
(83, NULL, NULL, 6, 'App\\Models\\User', 28, '2020-11-24 14:17:25', '2020-11-24 14:17:25'),
(84, NULL, NULL, 4, 'App\\Models\\User', 30, '2021-03-17 10:05:12', '2021-03-17 10:05:12'),
(85, NULL, '', 5, 'App\\Models\\User', 30, '2021-03-17 10:05:12', '2021-03-17 10:05:12'),
(86, NULL, NULL, 6, 'App\\Models\\User', 30, '2021-03-17 10:05:12', '2021-03-17 10:05:12'),
(87, '59567', '59567', 4, 'App\\Models\\User', 53, '2021-03-17 10:33:22', '2021-03-25 14:23:17'),
(88, 'grhtgtghgfhgfvhhh', 'grhtgtghgfhgfvhhh', 5, 'App\\Models\\User', 53, '2021-03-17 10:33:22', '2021-03-21 12:53:49'),
(89, 'crxfsdddddd', 'crxfsdddddd', 6, 'App\\Models\\User', 53, '2021-03-17 10:33:22', '2021-03-26 12:17:57'),
(90, NULL, '<span class=\'badge badge-danger\'>No</span>', 7, 'App\\Models\\Driver', 5, '2021-03-21 14:59:38', '2021-03-21 14:59:38'),
(91, NULL, '<span class=\'badge badge-danger\'>No</span>', 7, 'App\\Models\\Driver', 7, '2021-03-21 14:59:54', '2021-03-21 14:59:54'),
(92, NULL, NULL, 4, 'App\\Models\\User', 23, '2021-03-22 19:26:40', '2021-03-22 19:26:40'),
(93, NULL, '', 5, 'App\\Models\\User', 23, '2021-03-22 19:26:40', '2021-03-22 19:26:40'),
(94, NULL, NULL, 6, 'App\\Models\\User', 23, '2021-03-22 19:26:40', '2021-03-22 19:26:40'),
(95, NULL, NULL, 4, 'App\\Models\\User', 13, '2021-03-22 20:21:50', '2021-03-22 20:21:50'),
(96, NULL, '', 5, 'App\\Models\\User', 13, '2021-03-22 20:21:50', '2021-03-22 20:21:50'),
(97, NULL, NULL, 6, 'App\\Models\\User', 13, '2021-03-22 20:21:50', '2021-03-22 20:21:50'),
(98, NULL, NULL, 4, 'App\\Models\\User', 9, '2021-03-22 20:24:11', '2021-03-22 20:24:11'),
(99, NULL, '', 5, 'App\\Models\\User', 9, '2021-03-22 20:24:11', '2021-03-22 20:24:11'),
(100, NULL, NULL, 6, 'App\\Models\\User', 9, '2021-03-22 20:24:11', '2021-03-22 20:24:11'),
(101, '*555', '*555', 4, 'App\\Models\\User', 57, '2021-03-25 22:09:25', '2021-03-25 22:09:25'),
(102, 'gdhshs', 'gdhshs', 5, 'App\\Models\\User', 57, '2021-03-25 22:09:25', '2021-03-25 22:09:25'),
(103, 'lahore', 'lahore', 6, 'App\\Models\\User', 57, '2021-03-25 22:09:25', '2021-03-25 22:09:25'),
(104, '6554', '6554', 4, 'App\\Models\\User', 58, '2021-03-26 10:22:28', '2021-03-26 10:22:28'),
(105, 'hssjss', 'hssjss', 5, 'App\\Models\\User', 58, '2021-03-26 10:22:28', '2021-03-26 10:22:28'),
(106, 'hssujs', 'hssujs', 6, 'App\\Models\\User', 58, '2021-03-26 10:22:28', '2021-03-26 10:22:28'),
(107, NULL, NULL, 4, 'App\\Models\\User', 61, '2021-04-01 18:11:51', '2021-04-01 18:11:51'),
(108, NULL, '', 5, 'App\\Models\\User', 61, '2021-04-01 18:11:51', '2021-04-01 18:11:51'),
(109, NULL, NULL, 6, 'App\\Models\\User', 61, '2021-04-01 18:11:51', '2021-04-01 18:11:51'),
(110, NULL, NULL, 4, 'App\\Models\\User', 62, '2021-04-01 18:18:51', '2021-04-01 18:18:51'),
(111, NULL, '', 5, 'App\\Models\\User', 62, '2021-04-01 18:18:51', '2021-04-01 18:18:51'),
(112, NULL, NULL, 6, 'App\\Models\\User', 62, '2021-04-01 18:18:51', '2021-04-01 18:18:51'),
(113, NULL, NULL, 4, 'App\\Models\\User', 60, '2021-04-01 18:46:39', '2021-04-01 18:46:39'),
(114, NULL, '', 5, 'App\\Models\\User', 60, '2021-04-01 18:46:39', '2021-04-01 18:46:39'),
(115, NULL, NULL, 6, 'App\\Models\\User', 60, '2021-04-01 18:46:39', '2021-04-01 18:46:39'),
(116, '0033606788778', '0033606788778', 4, 'App\\Models\\User', 63, '2021-04-20 23:40:06', '2021-04-20 23:40:06'),
(117, 'customer', 'customer', 5, 'App\\Models\\User', 63, '2021-04-20 23:40:06', '2021-04-20 23:40:06'),
(118, 'italy roma', 'italy roma', 6, 'App\\Models\\User', 63, '2021-04-20 23:40:06', '2021-04-20 23:40:06'),
(119, '0242563158', '0242563158', 4, 'App\\Models\\User', 65, '2021-04-29 11:32:25', '2021-04-29 11:32:25'),
(120, 'hijsjsjwjwwhwi', 'hijsjsjwjwwhwi', 5, 'App\\Models\\User', 65, '2021-04-29 11:32:25', '2021-04-30 08:44:24'),
(121, 'Pakistan- Lahore', 'Pakistan- Lahore', 6, 'App\\Models\\User', 65, '2021-04-29 11:32:25', '2021-04-29 11:32:25'),
(122, NULL, NULL, 4, 'App\\Models\\User', 36, '2021-04-29 13:06:02', '2021-04-29 13:06:02'),
(123, NULL, '', 5, 'App\\Models\\User', 36, '2021-04-29 13:06:02', '2021-04-29 13:06:02'),
(124, NULL, NULL, 6, 'App\\Models\\User', 36, '2021-04-29 13:06:02', '2021-04-29 13:06:02'),
(125, '369852147', '369852147', 4, 'App\\Models\\User', 66, '2021-04-29 13:19:05', '2021-04-29 13:19:05'),
(126, '<p>Doc doc Lock</p>', 'Doc doc Lock', 5, 'App\\Models\\User', 66, '2021-04-29 13:19:05', '2021-04-29 13:19:05'),
(127, '3 rue Bourrate', '3 rue Bourrate', 6, 'App\\Models\\User', 66, '2021-04-29 13:19:05', '2021-04-29 13:19:05'),
(128, '7782729272', '7782729272', 4, 'App\\Models\\User', 70, '2021-05-05 07:50:31', '2021-05-05 17:05:02'),
(129, 'hsisbajabaah', 'hsisbajabaah', 5, 'App\\Models\\User', 70, '2021-05-05 07:50:31', '2021-05-05 17:05:02'),
(130, 'samanabad, lahore', 'samanabad, lahore', 6, 'App\\Models\\User', 70, '2021-05-05 07:50:31', '2021-05-06 16:30:42'),
(131, '0078900009', '0078900009', 4, 'App\\Models\\User', 71, '2021-05-06 23:53:37', '2021-05-06 23:53:37'),
(132, 'yes it is', 'yes it is', 5, 'App\\Models\\User', 71, '2021-05-06 23:53:37', '2021-05-06 23:53:37'),
(133, '3 rue de bourrel', '3 rue de bourrel', 6, 'App\\Models\\User', 71, '2021-05-06 23:53:37', '2021-05-06 23:53:37'),
(134, '0601908462', '0601908462', 4, 'App\\Models\\User', 77, '2021-07-22 09:41:25', '2021-07-22 09:41:25'),
(135, '<p>Manager TEST</p>', 'Manager TEST', 5, 'App\\Models\\User', 77, '2021-07-22 09:41:25', '2021-07-22 09:41:25'),
(136, 'NICE', 'NICE', 6, 'App\\Models\\User', 77, '2021-07-22 09:41:25', '2021-07-22 09:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem iusto illo facilis dolorem cupiditate.', '91681 Rowena Parkways\nNew Filibertoport, ND 52919', '39.329644', '11.506083', 1, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(2, 'Pariatur eaque aut libero deleniti placeat.', '596 Torphy Isle\nEast Zackshire, OK 31625-5233', '42.102983', '9.68051', 1, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, 'Aut ratione et rerum.', '42946 Prosacco Junctions Apt. 465\nGutkowskiville, IL 96669', '53.823483', '8.825166', 1, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'Sapiente repellat adipisci neque qui necessitatibus non pariatur.', '2713 Naomi Mountain Apt. 580\nEast Dangelomouth, LA 44253-3449', '38.097763', '7.159618', 1, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Dolorem voluptatibus iusto consectetur corporis et.', '88051 Sterling Hill\nNew Mary, NC 94052', '41.179538', '10.643876', 0, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Veniam optio officiis quis suscipit atque aliquid cum.', '4502 Andrew Views\nGianniborough, ME 75494', '54.350602', '10.499441', 1, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'Explicabo iusto natus maxime ea aut.', '39955 Christiansen Ramp\nWest Earlenemouth, IN 56307-2722', '38.716023', '8.438459', 0, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Est perspiciatis necessitatibus occaecati ut doloremque non.', '93325 Roberts Turnpike Suite 383\nNew Careymouth, MN 28674-1526', '43.091429', '11.41449', 1, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'Fuga nulla sint autem officia.', '382 Raina Cove\nPort Mazietown, FL 33411-8224', '44.717123', '10.303192', 1, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'Et dolorum aut sit officia ut voluptatibus.', '2261 Cecile Corner Suite 726\nWest Bartholomebury, LA 63579', '51.649277', '9.005444', 0, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'Illo sapiente ex est nemo provident ipsam.', '53341 Shad Streets Suite 968\nLake Ashleighfort, AZ 11130-5490', '44.232516', '9.514315', 0, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, 'Reprehenderit possimus quis sunt iure voluptatem unde.', '534 Giovanni Lodge\nPort Darlene, MN 69054-8210', '47.53079', '9.616149', 1, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'Asperiores sit atque tempore modi ut ut.', '422 Saul Squares\nJohnnyshire, NE 31778-1080', '40.269851', '10.474387', 0, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'Minima minus perferendis ab aliquam sed adipisci.', '34972 Swift Lane\nEast Mabelmouth, UT 76574-5892', '49.060605', '7.41814', 0, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'Distinctio eaque architecto ut eaque beatae quam.', '4504 Lockman Lake Apt. 792\nNorth Tellychester, KY 37689', '41.839445', '10.45746', 0, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'ghgh', 'fgfgg', NULL, NULL, 0, 2, '2021-04-20 14:55:52', '2021-04-20 14:55:52'),
(18, 'haosbsj', 'hsjshssj', NULL, NULL, 0, 53, '2021-04-20 15:21:52', '2021-04-20 15:21:52'),
(19, 'haishsishjsbsjs', 'jwiwwbw wwwjhwiw eer', NULL, NULL, 0, 70, '2021-05-05 17:05:27', '2021-05-05 17:05:27'),
(20, 'ghg', 'vhhh', NULL, NULL, 0, 70, '2021-05-05 17:09:59', '2021-05-05 17:09:59'),
(21, 'uehekejei', 'jeiwjwiwwj', NULL, NULL, 0, 70, '2021-05-05 17:11:25', '2021-05-05 17:11:25'),
(22, 'hsjshssjssjej', 'jsjsjsksbaksj', NULL, NULL, 0, 70, '2021-05-05 17:13:28', '2021-05-05 17:13:28'),
(23, 'ueheiwebj', 'jsjsjeieneien', NULL, NULL, 0, 70, '2021-05-05 17:16:25', '2021-05-05 17:16:25'),
(24, 'jeiebwwk', 'hdksbsjbs', NULL, NULL, 0, 70, '2021-05-05 17:19:15', '2021-05-05 17:19:15'),
(25, 'maison', '18 promenade des anglais', NULL, NULL, 0, 22, '2021-05-07 11:27:59', '2021-05-07 11:27:59'),
(26, 'home', '8 rue italie', NULL, NULL, 0, 22, '2021-05-13 23:28:34', '2021-05-13 23:28:34'),
(27, 'home', '8 rue paris', NULL, NULL, 0, 22, '2021-05-14 00:15:41', '2021-05-14 00:15:41'),
(28, 'home', '20 rue amiral de grace', NULL, NULL, 0, 22, '2021-05-14 12:10:03', '2021-05-14 12:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `discountables`
--

INSERT INTO `discountables` (`id`, `coupon_id`, `discountable_type`, `discountable_id`) VALUES
(1, 1, 'App\\Models\\Food', 13),
(2, 1, 'App\\Models\\Restaurant', 2),
(3, 1, 'App\\Models\\Category', 2),
(17, 2, 'App\\Models\\Food', 188),
(18, 2, 'App\\Models\\Restaurant', 30),
(23, 3, 'App\\Models\\Food', 194),
(24, 3, 'App\\Models\\Restaurant', 30),
(25, 4, 'App\\Models\\Category', 3);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `verify` int(11) DEFAULT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT 0.00,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `earning` double(9,2) NOT NULL DEFAULT 0.00,
  `available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `verify`, `delivery_fee`, `total_orders`, `earning`, `available`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 0.00, 0, 0.00, 0, '2020-09-08 18:43:07', '2020-10-16 11:44:56'),
(2, 5, 0, 0.00, 0, 0.00, 0, '2020-09-08 19:00:32', '2020-09-08 19:00:32'),
(3, 6, 0, 0.00, 0, 0.00, 0, '2020-09-08 19:00:32', '2020-09-08 19:00:32'),
(4, 21, 0, 0.00, 0, 0.00, 1, '2020-10-16 11:26:55', '2020-10-16 11:26:55'),
(5, 30, 0, 0.00, 0, 0.00, 1, '2020-11-25 16:23:41', '2021-03-21 14:59:38'),
(6, 33, NULL, 0.00, 0, 0.00, 0, '2020-11-26 15:29:26', '2020-11-26 15:29:26'),
(7, 53, 0, 0.00, 0, 0.00, 1, '2021-03-17 10:33:22', '2021-03-21 14:59:54'),
(8, 1, NULL, 0.00, 0, 0.00, 0, '2021-03-22 18:29:30', '2021-03-22 18:29:30'),
(9, 55, NULL, 0.00, 0, 0.00, 1, '2021-03-25 05:03:31', '2021-03-25 05:03:31'),
(10, 63, NULL, 0.00, 0, 0.00, 1, '2021-04-03 16:10:12', '2021-04-03 16:10:12'),
(11, 65, NULL, 0.00, 0, 0.00, 1, '2021-04-30 10:09:09', '2021-04-30 10:09:09'),
(12, 70, NULL, 0.00, 0, 0.00, 0, '2021-05-05 13:10:08', '2021-05-05 13:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `driver_restaurants`
--

CREATE TABLE `driver_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `driver_restaurants`
--

INSERT INTO `driver_restaurants` (`user_id`, `restaurant_id`) VALUES
(1, 28),
(1, 31),
(1, 32),
(5, 1),
(5, 2),
(5, 4),
(5, 12),
(5, 17),
(5, 23),
(6, 3),
(6, 4),
(6, 11),
(6, 14),
(6, 15),
(6, 16),
(12, 12),
(21, 31),
(30, 19),
(33, 18),
(33, 24),
(33, 30),
(53, 18),
(55, 22),
(55, 83),
(63, 29);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `admin_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `restaurant_earning` double(9,2) NOT NULL DEFAULT 0.00,
  `delivery_fee` double(9,2) NOT NULL DEFAULT 0.00,
  `tax` double(9,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `restaurant_id`, `total_orders`, `total_earning`, `admin_earning`, `restaurant_earning`, `delivery_fee`, `tax`, `created_at`, `updated_at`) VALUES
(1, 11, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-09-05 17:39:28', '2020-09-05 17:39:28'),
(2, 12, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-09-14 23:22:23', '2020-09-14 23:22:23'),
(3, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-09-26 20:43:06', '2020-09-26 20:43:06'),
(4, 13, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-09-26 21:06:21', '2020-09-26 21:06:21'),
(5, 3, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-14 19:08:23', '2020-10-14 19:08:23'),
(6, 2, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-14 19:12:38', '2020-10-14 19:12:38'),
(7, 14, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-17 10:18:07', '2020-10-17 10:18:07'),
(8, 15, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-17 10:26:01', '2020-10-17 10:26:01'),
(9, 16, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-17 10:47:01', '2020-10-17 10:47:01'),
(10, 17, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-17 10:52:55', '2020-10-17 10:52:55'),
(11, 18, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2020-10-17 11:01:51', '2020-10-17 11:01:51'),
(12, 19, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-03-27 08:57:09', '2021-03-27 08:57:09'),
(13, 20, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01 18:42:55', '2021-04-01 18:42:55'),
(14, 21, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01 18:53:14', '2021-04-01 18:53:14'),
(15, 22, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-02 10:57:18', '2021-04-02 10:57:18'),
(16, 23, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-02 11:25:10', '2021-04-02 11:25:10'),
(17, 24, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-02 11:25:38', '2021-04-02 11:25:38'),
(18, 25, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-02 11:31:34', '2021-04-02 11:31:34'),
(19, 26, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-02 11:32:44', '2021-04-02 11:32:44'),
(20, 28, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-20 13:18:53', '2021-04-20 13:18:53'),
(21, 29, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-27 10:42:57', '2021-04-27 10:42:57'),
(22, 30, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-28 21:25:43', '2021-04-28 21:25:43'),
(23, 31, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-30 06:47:35', '2021-04-30 06:47:35'),
(24, 32, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-30 11:34:34', '2021-04-30 11:34:34'),
(25, 33, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-01 12:58:14', '2021-05-01 12:58:14'),
(26, 34, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-01 13:59:20', '2021-05-01 13:59:20'),
(27, 36, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-04 05:13:47', '2021-05-04 05:13:47'),
(28, 48, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-05 13:23:03', '2021-05-05 13:23:03'),
(29, 49, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-05 14:15:45', '2021-05-05 14:15:45'),
(30, 52, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-06 05:33:30', '2021-05-06 05:33:30'),
(31, 76, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-06 22:51:09', '2021-05-06 22:51:09'),
(32, 77, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-06 23:11:47', '2021-05-06 23:11:47'),
(33, 78, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-06 23:18:20', '2021-05-06 23:18:20'),
(34, 79, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-06 23:32:15', '2021-05-06 23:32:15'),
(35, 82, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-07-22 09:51:35', '2021-07-22 09:51:35'),
(36, 83, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-07-29 06:14:29', '2021-07-29 06:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT 0.00,
  `food_id` int(10) UNSIGNED NOT NULL,
  `extra_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `name`, `description`, `price`, `food_id`, `extra_group_id`, `created_at`, `updated_at`) VALUES
(1, 'Tomato', 'Qui est illum minima natus.', 32.53, 11, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(2, '2L', 'Consectetur minus rerum.', 35.26, 12, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, '5L', 'Minima accusamus quia.', 13.73, 4, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'Tuna', 'Rerum aut vitae doloremque est.', 29.47, 19, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'S', 'Qui totam fuga ea.', 30.81, 23, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Cheese', 'Itaque aliquid sed dolorem officia.', 45.59, 4, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, '5L', 'Expedita ab ut quas sint doloribus.', 39.25, 12, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, '5L', 'Debitis facilis amet assumenda illo.', 30.94, 25, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'S', 'Ratione quasi soluta itaque sint aliquid.', 23.39, 9, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'L', 'Provident ipsum quo distinctio.', 34.09, 23, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'Tuna', 'Magnam non dignissimos iure rerum est.', 35.01, 7, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, '5L', 'Officia dolorem et maxime.', 10.62, 5, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'XL', 'Architecto assumenda rerum quas.', 26.56, 5, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'S', 'Voluptas quam et repellat.', 40.36, 12, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'Tomato', 'Rerum dolor ea illo aut.', 20.51, 9, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(16, 'Tuna', 'Adipisci eius enim est.', 18.29, 15, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'Oil', 'Deleniti nemo velit quia voluptatem qui.', 31.68, 26, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(18, 'L', 'Et quibusdam doloribus quam.', 23.88, 11, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(19, 'Cheese', 'Aut et molestiae soluta et quod.', 36.21, 8, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(20, 'Tuna', 'Eligendi natus at doloribus sit a.', 32.08, 1, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(21, 'Cheese', 'Assumenda quisquam ab.', 42.09, 24, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(22, '2L', 'Mollitia sit dolor a.', 14.50, 20, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(23, 'L', 'Ut nobis ea voluptas.', 29.03, 17, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(24, '2L', 'Quisquam sapiente aut.', 20.81, 14, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(25, 'S', 'Rerum sunt perspiciatis laborum.', 31.28, 27, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(26, '2L', 'Accusantium unde cupiditate iusto temporibus et.', 48.33, 12, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(27, 'S', 'Officiis incidunt unde esse aut.', 37.05, 10, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(28, 'Oil', 'Voluptatem sint quod voluptatem quia.', 14.83, 11, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(29, '5L', 'Corrupti maiores impedit dolorem.', 29.74, 4, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(30, '5L', 'Ut explicabo exercitationem.', 46.20, 1, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(31, 'Tomato', 'Quia sit neque pariatur quod repellat.', 13.75, 7, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(32, '5L', 'Eius vitae porro doloribus cum.', 44.39, 20, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(33, 'Tuna', 'Animi cumque qui quod.', 45.51, 15, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(34, 'Oil', 'Optio modi et saepe aperiam.', 16.88, 26, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(35, 'Tuna', 'Nisi aspernatur ad.', 41.59, 6, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(36, 'XL', 'Temporibus est rem non.', 43.00, 12, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(37, 'Tomato', 'Pariatur totam praesentium voluptate.', 32.59, 8, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(38, 'S', 'Explicabo autem earum provident molestias et.', 36.22, 4, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(39, 'Cheese', 'Rerum repudiandae omnis.', 24.99, 1, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(40, 'L', 'Consectetur ut ut architecto laborum.', 21.42, 14, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(41, 'L', 'Doloremque molestias fugiat.', 40.36, 19, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(42, 'Tuna', 'Omnis sunt tempore debitis sit.', 23.81, 19, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(43, '5L', 'Et et molestias consequatur.', 24.97, 18, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(44, 'XL', 'Dolore quo quia ipsum.', 43.65, 5, 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(45, 'S', 'Porro laboriosam culpa.', 20.32, 22, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(46, 'Tomato', 'Soluta molestias blanditiis quasi.', 43.84, 13, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(47, 'Cheese', 'Id vero qui reiciendis.', 39.91, 24, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(48, 'S', 'Vitae laboriosam magnam in.', 30.15, 8, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(49, 'Oil', 'Asperiores illo illum.', 41.13, 10, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(50, 'L', 'Atque quidem voluptatem aspernatur corrupti.', 10.28, 19, 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(51, 'Sauce pad thai', NULL, 1.00, 196, 7, '2021-04-29 23:45:52', '2021-04-29 23:45:52'),
(52, 'Riz nature', NULL, 3.00, 188, 8, '2021-04-29 23:47:09', '2021-04-29 23:57:44'),
(54, 'Boisson au choix', NULL, 5.00, 194, 4, '2021-04-29 23:54:28', '2021-04-29 23:55:55'),
(55, 'Riz Thaï', '<p>Riz sautéed aux&nbsp; légumes&nbsp;</p>', 5.00, 195, 8, '2021-04-30 00:00:49', '2021-04-30 00:00:49'),
(56, 'Singha beer', NULL, 5.00, 195, 4, '2021-04-30 00:02:10', '2021-04-30 00:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `extra_groups`
--

CREATE TABLE `extra_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `extra_groups`
--

INSERT INTO `extra_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 14:55:28', '2019-08-31 14:55:28'),
(2, 'Taste', '2019-10-09 17:26:28', '2019-10-09 17:26:28'),
(3, 'Capacity', '2019-10-09 17:26:28', '2019-10-09 17:26:28'),
(4, 'Drunk', '2020-10-14 19:30:40', '2020-10-14 19:30:40'),
(5, 'TopPING', '2020-12-01 09:08:19', '2021-04-28 21:42:19'),
(6, 'Chilly', '2021-04-27 11:48:02', '2021-04-27 11:48:02'),
(7, 'SAUCE', '2021-04-28 21:42:30', '2021-04-28 21:42:30'),
(8, 'ACOMPAGNEMENTS', '2021-04-28 21:42:51', '2021-04-28 21:42:51'),
(9, 'Freez', '2021-05-04 04:36:28', '2021-05-04 04:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Aliquid recusandae dignissimos architecto accusantium sunt aut. Aliquam molestiae id eius ut.', 'D,\' she added aloud. \'Do you mean \"purpose\"?\' said Alice. \'Off with his tea spoon at the sides of it, and found herself falling down a large piece out of the house, and the Gryphon added \'Come.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(2, 'Reprehenderit alias qui id. Natus minus harum consequatur accusamus.', 'I don\'t put my arm round your waist,\' the Duchess said after a few minutes, and began singing in its hurry to get into her face, with such a curious croquet-ground in her hand, and a Canary called.', 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(3, 'Sunt molestiae ipsa recusandae et. Voluptatibus suscipit qui molestiae cumque.', 'Cheshire cats always grinned; in fact, a sort of meaning in it.\' The jury all looked so good, that it was done. They had a vague sort of knot, and then I\'ll tell you what year it is?\' \'Of course it.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(4, 'Dolor distinctio vel similique omnis debitis. Qui qui voluptate quidem veritatis.', 'It was opened by another footman in livery, with a knife, it usually bleeds; and she set the little golden key, and when she had tired herself out with trying, the poor little Lizard, Bill, was in.', 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(5, 'Et in consequuntur quo quos. Quam harum natus sint.', 'Alice. \'Nothing,\' said Alice. \'Exactly so,\' said the Hatter. \'Nor I,\' said the Gryphon. \'How the creatures wouldn\'t be in Bill\'s place for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Two.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(6, 'Quae a quo explicabo repellat. Enim omnis ut nesciunt alias soluta. Dolor adipisci qui sint et.', 'Alice; \'but when you come to the Duchess: \'what a clear way you go,\' said the Mock Turtle repeated thoughtfully. \'I should like to see how he did not get hold of anything, but she did not venture to.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(7, 'Quia et cumque eligendi repellat sed. Laudantium vero nulla odio ut. Quia dolor et repellendus.', 'Alice looked down into its mouth again, and Alice looked very uncomfortable. The first thing I\'ve got to see that queer little toss of her age knew the meaning of half an hour or so there were TWO.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(8, 'Qui dolor et ipsum deleniti. Sit ea et sequi vero repellendus quis soluta.', 'Alice thought this must be a footman because he taught us,\' said the Duck. \'Found IT,\' the Mouse with an M, such as mouse-traps, and the other queer noises, would change (she knew) to the game.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(9, 'Beatae quis cum deleniti aut sit. Nihil itaque quia at quae. Sint cum rerum a sequi sunt sit.', 'She did not like the look of things at all, as the question was evidently meant for her. \'I can tell you my adventures--beginning from this side of the singers in the book,\' said the Lory, with a.', 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(10, 'Qui occaecati qui a laudantium. Tempora asperiores est officiis voluptatem.', 'Hatter, and here the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice began in a court of justice.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(11, 'Odio qui eaque fugit perferendis ea modi ratione. Consequatur quia et nemo et quae sint.', 'Then followed the Knave was standing before them, in chains, with a kind of rule, \'and vinegar that makes the world am I? Ah, THAT\'S the great wonder is, that I\'m doubtful about the same side of.', 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(12, 'Ea id aut consectetur esse id sequi ex. Dolor velit et sunt est laudantium aut exercitationem eum.', 'Alice severely. \'What are they doing?\' Alice whispered to the tarts on the floor: in another moment down went Alice like the right thing to nurse--and she\'s such a pleasant temper, and thought it.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(13, 'Sunt ut velit sed. Atque dolores commodi quo et facilis debitis.', 'VERY long claws and a Canary called out as loud as she could. \'The game\'s going on shrinking rapidly: she soon made out the Fish-Footman was gone, and, by the whole head appeared, and then the puppy.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(14, 'Repellat tenetur optio perspiciatis qui. Repellat omnis non et sapiente nisi.', 'Alice guessed in a ring, and begged the Mouse was swimming away from her as she was out of sight: \'but it doesn\'t understand English,\' thought Alice; \'I might as well be at school at once.\' And in.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(15, 'Et illo numquam aliquam nam delectus distinctio. Aut officia consequuntur voluptates.', 'She gave me a good deal worse off than before, as the March Hare. \'Sixteenth,\' added the Dormouse. \'Don\'t talk nonsense,\' said Alice very politely; but she remembered the number of executions the.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(16, 'Aut porro distinctio et. Dicta ab architecto ducimus quis iste inventore.', 'Dormouse was sitting on the song, \'I\'d have said to the jury, in a more subdued tone, and everybody laughed, \'Let the jury had a pencil that squeaked. This of course, Alice could only hear whispers.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(17, 'Ut et laudantium velit. Qui est rerum dolores aspernatur ratione animi.', 'In a minute or two, looking for the end of the March Hare interrupted in a sorrowful tone, \'I\'m afraid I don\'t take this young lady tells us a story.\' \'I\'m afraid I am, sir,\' said Alice; \'I must go.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(18, 'Eaque qui ut officiis laborum voluptate id omnis. Aut earum qui praesentium sint doloremque.', 'I almost wish I\'d gone to see the Queen. \'It proves nothing of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a line.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(19, 'Voluptate a id iusto nisi. Qui commodi soluta et expedita nisi.', 'I meant,\' the King sharply. \'Do you take me for his housemaid,\' she said to herself how she would keep, through all her fancy, that: they never executes nobody, you know. But do cats eat bats, I.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(20, 'Quo quis dolorem suscipit. Quam velit deleniti amet dolor sed.', 'Alice, in a more subdued tone, and added with a great thistle, to keep back the wandering hair that WOULD always get into that lovely garden. I think I can creep under the hedge. In another moment.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(21, 'Odio cumque nostrum sed accusamus. Doloremque illum et quis et ea eum.', 'While the Owl and the baby violently up and say \"Who am I to get us dry would be quite as safe to stay with it as she couldn\'t answer either question, it didn\'t much matter which way you have to go.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(22, 'Maxime dolore ut et ut mollitia sed. Est ut recusandae in vero. Ullam veritatis eum consequatur.', 'SHE, of course,\' the Gryphon interrupted in a solemn tone, \'For the Duchess. An invitation from the shock of being such a tiny golden key, and Alice\'s elbow was pressed hard against it, that attempt.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(23, 'Autem tempore aperiam inventore quia nam et. Velit nostrum omnis consequatur commodi et numquam.', 'Then it got down off the top of his tail. \'As if it makes me grow large again, for she was small enough to get her head to keep back the wandering hair that curled all over crumbs.\' \'You\'re wrong.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(24, 'Omnis facere eius sunt saepe. Deserunt aut aliquam ipsam. Amet incidunt ullam possimus in.', 'Mouse, turning to the game, feeling very glad to get us dry would be only rustling in the after-time, be herself a grown woman; and how she would get up and went in. The door led right into a.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(25, 'Recusandae eum incidunt qui quo sed. Nam rerum voluptates doloribus maxime voluptates.', 'I ought to have no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon had to do THAT in a twinkling! Half-past one, time for.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(26, 'Similique aut commodi ut. Quisquam quae similique officiis voluptatem. Non est optio corrupti quos.', 'Hatter was out of the jurymen. \'No, they\'re not,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been changed for any lesson-books!\' And so she sat still and.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(27, 'Quas ipsam velit occaecati eos commodi et. Aut et excepturi sit porro quia odio.', 'CHAPTER V. Advice from a bottle marked \'poison,\' it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might appear to others that what you were never even spoke to Time!\'.', 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(28, 'Quia velit dicta voluptas iusto reprehenderit aut. Eveniet quis unde et cumque quia.', 'And then, turning to Alice as it was a large plate came skimming out, straight at the mouth with strings: into this they slipped the guinea-pig, head first, and then she walked sadly down the.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(29, 'Recusandae ut quam quis deleniti aut. Voluptate qui quae sint aut corporis.', 'Alice was soon left alone. \'I wish I had our Dinah here, I know I have dropped them, I wonder?\' And here Alice began to cry again, for she felt very glad to find that the poor child, \'for I can\'t.', 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(30, 'Eum veritatis totam facere reiciendis est minima. Voluptatem accusamus dolor consequatur ut est.', 'I\'ll manage better this time,\' she said, as politely as she couldn\'t answer either question, it didn\'t much matter which way she put her hand in her pocket, and pulled out a race-course, in a.', 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foods', '2019-08-31 16:31:52', '2019-08-31 16:31:52'),
(2, 'Services', '2019-08-31 16:32:03', '2019-08-31 16:32:03'),
(3, 'Delivery', '2019-08-31 16:32:11', '2019-08-31 16:32:11'),
(4, 'Misc', '2019-08-31 16:32:17', '2019-08-31 16:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `food_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 12, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(2, 12, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(3, 23, 5, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(4, 6, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(5, 20, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(6, 30, 6, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(7, 29, 5, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(8, 20, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(9, 5, 6, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(10, 3, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(11, 13, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(12, 2, 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(13, 11, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(14, 13, 6, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(15, 1, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(16, 3, 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(17, 2, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(18, 15, 5, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(19, 25, 6, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(20, 9, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(21, 1, 3, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(22, 23, 4, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(23, 9, 5, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(24, 7, 6, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(25, 20, 5, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(26, 17, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(27, 4, 5, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(28, 2, 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(29, 7, 2, '2020-09-02 00:25:16', '2020-09-02 00:25:16'),
(30, 12, 1, '2020-09-02 00:25:16', '2020-09-02 00:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_extras`
--

CREATE TABLE `favorite_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `favorite_extras`
--

INSERT INTO `favorite_extras` (`extra_id`, `favorite_id`) VALUES
(1, 1),
(1, 5),
(2, 6),
(3, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(8,2) DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_items_count` double(9,2) DEFAULT 0.00,
  `weight` double(9,2) DEFAULT 0.00,
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `deliverable` tinyint(1) DEFAULT 1,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `discount_price`, `description`, `ingredients`, `package_items_count`, `weight`, `unit`, `featured`, `deliverable`, `restaurant_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'aaaaaaaaaaaa', 12.28, 9.17, 'Aut et ducimus aliquid deleniti pariatur et. Fugit nemo ad molestiae corrupti qui animi qui consectetur. Sed officia rerum dolorum accusamus sunt odit iste.', NULL, 6.00, 138.00, 'g', 0, 1, 5, 2, '2020-09-02 00:25:15', '2020-11-09 17:15:18'),
(2, 'Cucur Udang Kuah Kacang', 36.17, 0.00, 'Incidunt debitis impedit sed harum odit ex. Occaecati eos rerum ipsam ut vel molestias molestias.', NULL, 5.00, 411.38, 'L', 1, 0, 8, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, 'California Italian Wedding Soup', 35.06, 0.00, 'Ratione animi vel tempore corporis quidem quaerat. Atque quas ut necessitatibus neque eos. Autem et tempora quo explicabo in veritatis. Voluptatem voluptatibus perferendis adipisci ratione tenetur.', NULL, 4.00, 286.22, 'L', 0, 1, 9, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'Acini di Pepe', 34.21, 25.44, 'Id molestiae molestias ut. Atque neque corrupti praesentium velit. Accusantium et aut est consequatur accusamus. Sed fuga ea facere fuga et atque.', NULL, 1.00, 196.36, 'g', 0, 1, 9, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Big Smokey Burgers', 25.48, 0.00, 'Qui est dignissimos eveniet aspernatur beatae. Consequatur facilis est eaque illum qui. Asperiores iusto eveniet ut expedita veritatis.', NULL, 5.00, 146.23, 'g', 0, 0, 6, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Pizza Valtellina', 22.79, 0.00, 'Esse asperiores animi quo dolorem quia. Ea ipsum iste perspiciatis impedit qui. Aliquam soluta at dignissimos ab.', NULL, 5.00, 177.86, 'Kg', 1, 1, 8, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'Pizza Margherita', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 1, 0, 1, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Cucur Udang Kuah Kacang', 33.96, 29.00, 'Rerum qui sit delectus et totam. Soluta magnam tempore doloribus harum. Exercitationem dignissimos voluptas repudiandae in labore velit.', NULL, 3.00, 130.11, 'L', 1, 1, 1, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'Calas', 27.37, 0.00, 'At sit quos sunt amet voluptates sit autem rerum. Consequuntur dolore qui similique maiores. Sunt praesentium fuga enim et.', NULL, 2.00, 296.73, 'Kg', 0, 1, 6, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'Pasta Pappardelle', 35.00, 33.62, 'Alias non eius corporis exercitationem sed dolorem. Nesciunt quos dolores voluptatem sequi. At sunt explicabo non accusamus atque harum. Corporis aperiam molestiae est in voluptatum aperiam incidunt.', NULL, 5.00, 132.06, 'L', 0, 1, 4, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'Cucur Udang Kuah Kacang', 18.61, 16.20, 'Id est quibusdam dolore laudantium et est itaque. Placeat quia et ipsa sit excepturi repellat nemo inventore. Accusamus voluptatibus vel at quo autem non.', NULL, 3.00, 308.28, 'L', 1, 0, 9, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, 'Angel Hair', 32.71, 0.00, 'Eum sequi et corrupti pariatur voluptatem. Quis sit consequatur aut. Sunt dolorum provident fugit ab quibusdam minima.', NULL, 1.00, 497.22, 'Kg', 0, 1, 4, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'Italian Sausage Soup', 35.98, 30.59, 'Perferendis veritatis eius fuga beatae sit odio harum officia. Quos vel dolorem qui sed. Consequatur molestias et accusantium assumenda.', NULL, 5.00, 119.28, 'L', 1, 0, 5, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'Soup', 27.00, 23.41, 'Fuga temporibus aut est. At vero distinctio explicabo ullam illum ea eligendi est. Dolore autem ducimus ad ex quo asperiores hic.', NULL, 2.00, 183.31, 'Kg', 0, 0, 10, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'Acini di Pepe', 11.48, 0.00, 'Quaerat inventore fuga sed doloribus aperiam. Sint delectus autem voluptatem distinctio dolor. Sint atque occaecati suscipit qui officiis eius. Molestias impedit nesciunt commodi eius.', NULL, 2.00, 455.77, 'L', 1, 0, 5, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(16, 'California Italian Wedding Soup', 46.38, 0.00, 'Rerum libero officiis magni sit molestias perspiciatis temporibus voluptatem. Est nemo aperiam cupiditate maxime culpa. Aut quo harum illum et. Facilis quia officia odio culpa.', NULL, 3.00, 392.03, 'ml', 0, 1, 10, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'Calas', 44.65, 40.24, 'Temporibus vitae adipisci dolores. Minus eaque est et aut eum voluptas numquam. Facere dolor atque esse doloribus perferendis vitae aut. Reiciendis et debitis dolore quisquam sint maiores ad.', NULL, 6.00, 485.85, 'ml', 1, 0, 2, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(18, 'Pizza Montanara', 39.65, 0.00, 'Ullam voluptates harum non dolores nam aut. Quis hic consequatur porro consectetur. Alias vel consequatur quae qui accusantium molestiae. Sunt placeat est necessitatibus non voluptas.', NULL, 4.00, 296.33, 'L', 0, 0, 3, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(19, 'American fried rice', 46.36, 39.25, 'Assumenda nobis omnis voluptas ipsam distinctio. Id eum quisquam voluptatem ducimus voluptatem est animi. Doloribus quisquam sed qui perspiciatis quos.', NULL, 1.00, 77.84, 'ml', 1, 0, 5, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(20, 'American fried rice', 36.97, 29.16, 'Est laboriosam nesciunt et. Unde natus eligendi totam perspiciatis. Aut corrupti ut unde sed.', NULL, 3.00, 274.26, 'ml', 1, 1, 5, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(21, 'Angel Hair', 15.71, 13.42, 'Consequuntur enim quasi et quas perspiciatis quaerat voluptate. Non eligendi et non excepturi. Eaque aut sed quaerat sunt nihil atque.', NULL, 6.00, 474.70, 'L', 1, 0, 7, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(22, 'Pasta Campanelle', 15.81, 7.83, 'Hic quibusdam suscipit numquam enim rerum expedita aut. Non ex quasi impedit tempora voluptatem autem saepe. Fuga minima officia nam cumque expedita voluptas. Voluptatem vel aut ab inventore aut.', NULL, 1.00, 45.29, 'ml', 1, 1, 8, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(23, 'Cucur Udang Kuah Kacang', 44.67, 38.77, 'Quis eveniet recusandae occaecati distinctio cum eligendi. Ea iure aut provident id. Cum eligendi et id reiciendis velit.', NULL, 4.00, 44.73, 'ml', 0, 1, 6, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(24, 'Big Smokey Burgers', 35.90, 0.00, 'Illo nisi est esse totam excepturi aperiam eveniet sint. Aut unde quidem ullam quia est itaque inventore sunt. Cupiditate quam voluptates quaerat dolor rerum impedit repudiandae.', NULL, 6.00, 83.39, 'g', 1, 1, 4, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(25, 'Pasta Pappardelle', 12.26, 0.00, 'Facilis facere sequi quis voluptatum quisquam enim et consectetur. Ex et pariatur sit.', NULL, 5.00, 313.77, 'ml', 0, 1, 1, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(26, 'Cucur Udang Kuah Kacang', 41.25, 33.39, 'Suscipit ducimus quibusdam perspiciatis dignissimos maiores. Et repudiandae ducimus voluptatem provident. Quod aut ducimus quasi fuga. Repellendus molestias necessitatibus dolor vel ullam.', NULL, 6.00, 149.97, 'Kg', 1, 1, 5, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(27, 'Chicken Noodle Soup', 31.27, 0.00, 'Nesciunt aut hic qui corporis. Omnis libero quis et qui voluptas laudantium aut. Voluptas rerum rerum fugiat numquam labore. Tenetur ducimus voluptate est dolor quasi vel.', NULL, 4.00, 11.45, 'L', 1, 0, 2, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(28, 'Big Smokey Burgers', 11.98, 10.27, 'Similique eum aut earum sunt necessitatibus. Doloremque non consectetur et repellat incidunt sit. Eum consequatur quos nulla consectetur autem vero.', NULL, 3.00, 293.05, 'g', 1, 0, 3, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(29, 'Cedar Planked Salmon', 21.80, 0.00, 'Quos expedita animi voluptatum quo quo voluptatibus aut. Ut velit quaerat nobis reprehenderit velit itaque. Quia distinctio sed velit iste vel quasi.', NULL, 4.00, 209.96, 'ml', 1, 1, 8, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(30, 'American fried rice', 36.63, 0.00, 'Vel asperiores accusamus et porro quis. Nostrum ad et reprehenderit tempore. Nisi qui vero ullam voluptatem ut sunt et qui. Sit facere dolorum harum fuga fuga aut ex.', NULL, 3.00, 31.01, 'g', 0, 0, 1, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(33, 'Sibtain', 123123.00, 12233.00, '<p>Sibtain is a cake</p>', '<p>yakkiyan, khusriyan</p>', 1.00, 69.00, '420', 1, 1, 1, 2, '2021-03-21 10:59:34', '2021-03-21 10:59:34'),
(34, 'Jameel', 1.00, 0.50, '<p>Jameel is a wakeel</p>', '<p>Wakalat rishwat neno</p>', 54.00, 50.00, '1000', 1, 1, 2, 1, '2021-03-21 11:04:20', '2021-03-21 11:04:20'),
(35, 'Abdullah', 3000.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-21 11:08:58', '2021-03-21 11:08:58'),
(42, 'Pizza Margherita', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 0, 1, 5, '2021-03-21 14:19:08', '2021-03-21 14:19:08'),
(45, 'Pizza Margherita', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 0, 1, 5, '2021-03-21 14:21:34', '2021-03-21 14:21:34'),
(46, 'Pizza Margherita', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 1, 1, 5, '2021-03-21 14:22:12', '2021-04-20 14:09:05'),
(49, 'dahi bhallay', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 0, 1, 5, '2021-03-21 14:27:34', '2021-03-21 14:27:34'),
(50, 'dahi lullay', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 0, 1, 5, '2021-03-21 14:28:28', '2021-03-21 14:28:28'),
(51, 'dahi lullay 1', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 0, 1, 5, '2021-03-21 15:45:10', '2021-03-21 15:45:10'),
(67, 'yooooo', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 59.24, 'Kg', 0, 0, 1, 5, '2021-03-22 11:30:55', '2021-03-22 11:30:55'),
(84, 'dagardala', 39.85, 0.00, 'Officia dolor sunt consequatur dolorem beatae est ea. Voluptates laborum itaque et doloremque commodi. Omnis excepturi est et minima.', NULL, 2.00, 11.11, 'Kg', 0, 0, 1, 5, '2021-03-22 11:57:56', '2021-03-22 11:57:56'),
(85, 'chalpaa', 558.00, NULL, NULL, NULL, 1.00, NULL, NULL, 0, 0, 16, 0, '2021-03-22 12:26:59', '2021-03-22 12:26:59'),
(86, 'tattiiiiiii', 25.00, 865.00, 'vdbdvdvvs', 'vdvdbbdbsbs', 1.00, 52.00, 'ml', 0, 0, 16, 0, '2021-03-22 12:28:17', '2021-03-22 12:28:17'),
(87, 'ghvjhghhbb', 885.00, NULL, 'dgxgcv', 'njg', 1.00, NULL, NULL, 0, 0, 16, 0, '2021-03-22 12:32:20', '2021-03-22 12:32:20'),
(88, 'daily deli co', 2535.00, 52.00, 'hsjzhjzzvhz', 'hzhzhz', 1.00, NULL, NULL, 0, 0, 16, 2, '2021-03-22 12:37:05', '2021-03-22 12:37:05'),
(89, 'bsjsgshssb', 233.00, 25.00, 'vdgsbbsbsb', 'vxbzbzb', 1.00, 36.00, 'kg', 0, 0, 16, 3, '2021-03-22 12:42:42', '2021-03-22 12:42:42'),
(90, 'bdbdhs', 23.00, NULL, 'vdb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 12:44:22', '2021-03-22 12:46:28'),
(91, 'bdbdhs', 23.00, NULL, 'vdb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 12:47:32', '2021-03-22 12:47:32'),
(92, 'vgcxgf', 25.00, NULL, 'ggh', NULL, 1.00, NULL, NULL, 1, 0, 16, 1, '2021-03-22 12:49:18', '2021-03-22 12:49:18'),
(93, 'vgcxgf', 25.00, NULL, 'ggh', NULL, 1.00, NULL, NULL, 0, 1, 16, 1, '2021-03-22 12:49:35', '2021-03-22 12:49:35'),
(94, 'vyvh', 25.00, NULL, 'bjgh', 'gyg', 1.00, NULL, NULL, 1, 1, 16, 2, '2021-03-22 12:52:36', '2021-03-22 12:52:36'),
(95, 'hfhh', 23.00, NULL, 'bhh', 'hj', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 13:25:54', '2021-03-22 13:25:54'),
(96, 'vsbbsh', 23.00, NULL, 'bdbbdbdbbd', 'sbbsbsbbssb', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 13:28:49', '2021-03-22 13:28:49'),
(97, 'vgcyfg', 23.00, NULL, 'bychg', 'Hgbghh', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 13:30:28', '2021-03-22 13:30:28'),
(98, 'ghh', 555.00, NULL, 'gy', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 13:34:34', '2021-03-22 13:34:34'),
(99, 'vsbbs', 88.00, NULL, 'bbb', 'bbb', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 13:35:44', '2021-03-22 13:35:44'),
(100, 'vv', 55.00, NULL, 'gggvvv', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 13:55:47', '2021-03-22 13:55:47'),
(101, 'bdhshshsh', 25.00, NULL, 'sbbssb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-22 17:48:01', '2021-03-22 17:48:01'),
(102, 'bsjsjsj', 58.00, NULL, 'bsbssnns', 'bsnsnsnsns', 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-22 22:29:56', '2021-03-22 22:29:56'),
(103, 'my food', 23.00, NULL, 'bzbhzhzh', 'bzhzhzh', 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-23 18:55:48', '2021-03-23 18:55:48'),
(104, 'ucp', 23.00, NULL, 'vjjbjhjh', 'ghjjj', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:12:11', '2021-03-23 20:12:11'),
(105, 'tttteeeryttt', 25.00, NULL, 'ghhhb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:12:54', '2021-03-23 20:12:54'),
(106, 'yummy', 23.00, NULL, 'vhhhb', NULL, 1.00, NULL, NULL, 1, 1, 3, 1, '2021-03-23 20:15:29', '2021-03-23 20:15:29'),
(107, 'guGh ughufh', 23.00, NULL, 'vbgh', 'ggb', 1.00, NULL, NULL, 1, 1, 3, 1, '2021-03-23 20:17:13', '2021-03-23 20:17:13'),
(108, 'cvbc', 56.00, NULL, 'vvvvv', NULL, 1.00, NULL, NULL, 1, 1, 3, 1, '2021-03-23 20:18:34', '2021-03-23 20:18:34'),
(109, 'dhhvh', 23.00, NULL, 'hjgjjn', 'gjyDhg', 1.00, NULL, NULL, 1, 1, 3, 1, '2021-03-23 20:20:37', '2021-03-23 20:20:37'),
(110, 'ccbv', 22.00, NULL, 'vvvv', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:23:27', '2021-03-23 20:23:27'),
(111, 'yffuff', 23.00, NULL, 'fuff', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:24:20', '2021-03-23 20:24:20'),
(112, 'hchchcu', 23.00, NULL, 'ffufuufChch', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:25:14', '2021-03-23 20:25:14'),
(113, 'cucuffu', 23.00, NULL, 'uffufufu', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:26:15', '2021-03-23 20:26:15'),
(114, 'bshjsjsjs', 23.00, NULL, 'hrhhebeb', 'bdbdb', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:34:00', '2021-03-23 20:34:00'),
(115, 'vdhsh', 25.00, NULL, 'bdbdhbdbd', 'vddvdb', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:35:21', '2021-03-23 20:35:21'),
(116, 'bshshhhsgzbzz', 28.00, NULL, 'gshsh', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 20:43:51', '2021-03-23 20:43:51'),
(117, 'nmhbh', 34.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-23 20:47:47', '2021-03-23 20:47:47'),
(118, 'jjjjjjj', 7800.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2021-03-23 20:49:48', '2021-03-23 20:49:48'),
(119, 'nb bnm', 7678.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-23 20:49:50', '2021-03-23 20:49:50'),
(120, 'eventiva', 80.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-23 20:55:36', '2021-03-23 20:55:36'),
(121, 'efer', 324.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, '2021-03-23 21:01:08', '2021-03-23 21:01:08'),
(122, 'yummmuyuuu', 28.00, NULL, 'vdbbdb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:05:37', '2021-03-23 21:05:37'),
(123, 'bzhsvdb', 28.00, NULL, 'vbdbd', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:07:05', '2021-03-23 21:07:05'),
(124, 'vdhdhdh', 28.00, NULL, 'vdbdbbdbd', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:09:31', '2021-03-23 21:09:31'),
(125, 'hhssh', 58.00, NULL, 'hdbdbs', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:15:47', '2021-03-23 21:15:47'),
(126, 'hyfgg', 22.00, NULL, 'ghhj', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:31:18', '2021-03-23 21:31:18'),
(127, 'bhbb', 25.00, NULL, 'bbb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:33:59', '2021-03-23 21:33:59'),
(128, 'yumyjvhh', 50.00, NULL, 'bkjbkj', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:35:14', '2021-03-23 21:35:14'),
(129, 'bhfh', 50.00, NULL, 'vufv', 'ghh', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:36:49', '2021-03-23 21:36:49'),
(130, 'byjh', 55.00, NULL, 'yjb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:38:08', '2021-03-23 21:38:08'),
(131, 'gughg', 58.00, NULL, 'bhhb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:52:58', '2021-03-23 21:52:58'),
(132, 'cyv', 58.00, NULL, 'yvyv', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:54:36', '2021-03-23 21:54:36'),
(133, 'uvyvyc', 58.00, NULL, 'gctc', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 21:55:33', '2021-03-23 21:55:33'),
(134, 'fhhb', 55.00, NULL, 'bjj', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 22:04:31', '2021-03-23 22:04:31'),
(135, 'uchh', 50.00, NULL, 'vhfvhb', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 22:08:28', '2021-03-23 22:08:28'),
(136, 'fyfyfyf', 80.00, NULL, 'hcyccy', 'h ch', 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 22:14:04', '2021-03-23 22:14:04'),
(137, 'vucyf', 50.00, NULL, 'ycfy', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-23 22:15:25', '2021-03-23 22:15:25'),
(138, '', 0.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 06:43:21', '2021-03-24 06:43:21'),
(139, 'halwa', 2000.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 06:44:09', '2021-03-24 06:44:09'),
(140, 'halwa', 2000.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 06:45:10', '2021-03-24 06:45:10'),
(141, 'halwa puri', 2000.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 06:53:32', '2021-03-24 06:53:32'),
(142, 'halwa puri', 2000.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 06:54:08', '2021-03-24 06:54:08'),
(143, '', 0.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 07:00:51', '2021-03-24 07:00:51'),
(144, 'halwa puri', 5.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 07:02:17', '2021-03-24 07:02:17'),
(145, 'halwa puri', 5.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 07:02:42', '2021-03-24 07:02:42'),
(146, 'halwa puri', 5.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 07:03:00', '2021-03-24 07:03:00'),
(147, 'jhkjhkjhkj', 78888.00, NULL, '<p>kjkjkjlkjlkj</p>', '<p>kjlkhjlkhj</p>', NULL, NULL, NULL, 1, 1, 1, 1, '2021-03-24 07:20:28', '2021-03-24 07:20:28'),
(148, 'hhhhhhhh', 5.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 1, 2, '2021-03-24 07:43:18', '2021-03-24 07:43:18'),
(149, 'hhhhhhhh', 50.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-24 07:48:23', '2021-03-24 07:48:23'),
(150, 'hhhhhhhh', 50.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-24 07:49:19', '2021-03-24 07:49:19'),
(151, 'hhhhhhhh', 50.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-24 07:52:32', '2021-03-24 07:52:32'),
(152, 'hhhhhhhh', 500.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-24 07:57:27', '2021-03-24 07:57:27'),
(153, '', 20.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 08:06:07', '2021-03-24 08:06:07'),
(154, '', 501.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 2, '2021-03-24 08:09:36', '2021-03-24 08:09:36'),
(155, '', 2999.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 08:10:15', '2021-03-24 08:10:15'),
(156, '', 2999.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 08:10:39', '2021-03-24 08:10:39'),
(157, '', 20.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 08:13:08', '2021-03-24 08:13:08'),
(158, '', 20.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 08:14:04', '2021-03-24 08:14:04'),
(159, 'pool', 20.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 1, 1, 20, 1, '2021-03-24 08:20:38', '2021-04-29 11:17:30'),
(160, 'TAPAKA', 20.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-03-24 08:46:22', '2021-03-24 08:46:22'),
(161, 'Haleem', 90.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-24 11:52:32', '2021-03-24 11:52:32'),
(162, 'Haleem', 90.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-24 11:57:54', '2021-03-24 11:57:54'),
(163, 'alluu chanee', 58.00, NULL, 'bxjzhbzbz', 'hshshsz', 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:07:34', '2021-03-24 12:07:34'),
(164, 'hshshhs', 58.00, NULL, 'bshsbshs', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:09:20', '2021-03-24 12:09:20'),
(165, 'rrrrrr', 122.00, NULL, 'ggygh', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:11:09', '2021-03-24 12:11:09'),
(166, 'sasta cake', 66.00, NULL, 'cutie pie', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:14:45', '2021-03-24 12:14:45'),
(167, 'vshsbs', 23.00, NULL, 'vdbdbsn', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:16:51', '2021-03-24 12:16:51'),
(168, 'hxhdhd', 58.00, NULL, 'bxhs', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:18:18', '2021-03-24 12:18:18'),
(169, 'vhh', 58.00, NULL, 'hhh', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:18:51', '2021-03-24 12:18:51'),
(170, 'gygg', 58.00, NULL, 'bbbb', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:20:12', '2021-03-24 12:20:12'),
(171, 'dgFC b', 58.00, NULL, 'bbbb', NULL, 1.00, NULL, NULL, 1, 1, 18, 1, '2021-03-24 12:21:21', '2021-03-24 12:21:21'),
(172, 'food3', 280.00, 220.00, 'Hajakakakakaoaoa', NULL, 2.00, NULL, NULL, 1, 1, 18, 3, '2021-03-25 06:18:05', '2021-03-25 06:18:05'),
(173, 'pent', 20.00, 19.00, 'Pent', NULL, 2.00, NULL, NULL, 1, 1, 18, 2, '2021-03-25 06:22:23', '2021-03-25 06:22:23'),
(174, 'yoooooo', 23.00, 12.50, 'Youobibkss', NULL, 3.00, NULL, NULL, 1, 1, 18, 1, '2021-03-25 14:22:24', '2021-03-25 14:22:24'),
(175, 'hghhj', 26.00, 20.00, 'Uwibajwha', NULL, 5.00, NULL, NULL, 1, 0, 18, 1, '2021-03-25 14:37:50', '2021-03-25 14:37:50'),
(176, 'Ladu pethi', 100.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 18, 2, '2021-03-25 14:54:18', '2021-03-25 14:54:18'),
(177, 'yakhni', 800.00, NULL, 'bdbdhjxnxn', NULL, 1.00, NULL, NULL, 1, 1, 16, 1, '2021-03-25 17:04:13', '2021-03-25 17:04:13'),
(178, 'food226', 200.00, 150.00, 'Haiabaiahaiw', NULL, 5.00, NULL, NULL, 1, 1, 18, 2, '2021-03-26 09:18:21', '2021-03-26 09:18:21'),
(179, 'food225', 200.00, 150.00, 'Yiabaiabskaabao', NULL, 5.00, NULL, NULL, 1, 1, 18, 3, '2021-03-26 12:16:22', '2021-03-26 12:16:22'),
(180, 'Nem', 9.00, 3.00, '<p>Fruits and vegetables</p>', '<p>Potatoes</p><p>Mangos</p><p>Tomatoes</p>', 10.00, 5.00, 'pieces', 1, 1, 19, 7, '2021-04-02 10:14:14', '2021-04-02 10:14:14'),
(181, 'Nem', 9.00, 3.00, '<p>Fruits and vegetables</p>', '<p>Potatoes</p><p>Mangos</p><p>Tomatoes</p>', 10.00, 5.00, 'pieces', 1, 1, 19, 7, '2021-04-02 10:14:23', '2021-04-02 10:14:23'),
(182, 'Nem', 9.00, 3.00, '<p>Fruits and vegetables</p>', '<p>Potatoes</p><p>Mangos</p><p>Tomatoes</p>', 10.00, 5.00, 'pieces', 1, 1, 19, 7, '2021-04-02 10:14:27', '2021-04-02 10:14:27'),
(183, 'mahhaah', 0.00, 0.00, 'gzhhahs vzgs', NULL, 0.00, 0.00, NULL, 1, 1, 2, 1, '2021-04-20 11:04:36', '2021-05-07 06:26:15'),
(184, '', 0.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-04-20 12:45:09', '2021-04-20 12:45:09'),
(185, '', 0.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-04-20 12:45:39', '2021-04-20 12:45:39'),
(186, '', 0.00, 0.00, NULL, NULL, 0.00, 0.00, NULL, 0, 1, 0, 0, '2021-04-20 12:46:03', '2021-04-20 12:46:03'),
(187, 'Riz Thai', 15.00, 0.00, '<p>Riz Thai</p><p><span style=\"color: rgb(63, 55, 53); font-family: &quot;Open Sans&quot;, sans-serif;\">Dans une casserole, faire cuire le riz avec l\'équivalent de 2 grands verres d\'eau, en rajouter si besoin et réserver.&nbsp;</span><span style=\"color: rgb(63, 55, 53); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 1rem;\">Dans une poêle, faire revenir les poivrons coupés en lamelles avec l\'huile d\'olive et les faire dorer, réserver.&nbsp;</span><span style=\"color: rgb(63, 55, 53); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 1rem;\">Dans une autre poêle, faire revenir les escalopes de poulet en lamelles avec l\'oignon émincé dans l\'huile d\'olive, sel et poivre, ajouter les graines de sésame, réserver.&nbsp;</span><span style=\"color: rgb(63, 55, 53); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 1rem;\">Ajouter la sauce soja selon la quantité choisie.&nbsp;</span><span style=\"color: rgb(63, 55, 53); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 1rem;\">Prendre un grand bol (bol de petite déjeuner) et garnir l\'intérieur de film étirable. Ensuite le remplir en faisant des étages avec le poulet, les poivrons et le riz, bien tasser. Retourner le bol dans une assiette et verser un peu de lait de coco dessus.</span><br></p>', '<p>Lait de coco</p><p>sel</p><p>poivre</p><p>huile d\'olive</p><p>sésame grillées</p><p>poivrons vert jaune et rouge</p><p>riz thai</p><p>escalopes de poulet</p><p>oignon</p><p>sauce soja</p>', 1.00, 200.00, 'g', 1, 1, 19, 7, '2021-04-27 10:20:39', '2021-04-27 10:20:39'),
(188, 'Brochettes SATAY', 6.90, 0.00, '<div style=\"text-align: justify;\"><span style=\"font-size: 16.005px;\">SAUCE EPICES CACAHUETES</span></div><div class=\"field-item even\" property=\"schema:recipeInstructions\" style=\"margin: 0px; padding: 0px 0px 0px 45px; border: 0px; outline: 0px; font-size: 15px; font-family: Lato, Arial, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);\"></div>', '<div class=\"field-item even\" property=\"schema:ingredients\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; font-family: Lato, Arial, sans-serif; vertical-align: baseline; color: rgb(102, 102, 102);\"><div class=\"entity entity-field-collection-item field-collection-item-field-recipe-elements clearfix\" about=\"/field-collection/field-recipe-elements/58864\" typeof=\"\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; clear: both;\"><br></div></div><div class=\"field-item even\" property=\"schema:ingredients\" style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; color: rgb(102, 102, 102);\"><div class=\"entity entity-field-collection-item field-collection-item-field-recipe-elements clearfix\" about=\"/field-collection/field-recipe-elements/58876\" typeof=\"\" style=\"font-family: inherit; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; vertical-align: baseline; clear: both;\"><span style=\"background-color: rgb(255, 255, 0);\">POULET</span></div><div class=\"entity entity-field-collection-item field-collection-item-field-recipe-elements clearfix\" about=\"/field-collection/field-recipe-elements/58876\" typeof=\"\" style=\"font-family: inherit; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; vertical-align: baseline; clear: both;\"><span style=\"font-family: Impact;\">EPICES</span></div><div class=\"entity entity-field-collection-item field-collection-item-field-recipe-elements clearfix\" about=\"/field-collection/field-recipe-elements/58876\" typeof=\"\" style=\"font-family: inherit; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; vertical-align: baseline; clear: both;\"><span style=\"font-family: Impact;\"><br></span></div><h2 style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; vertical-align: baseline; clear: both;\"><span style=\"font-family: \"Arial Black\"; background-color: rgb(0, 255, 255);\">cacahuetes﻿</span></h2></div>', 4.00, NULL, '1', 1, 1, 30, 11, '2021-04-27 10:24:51', '2021-04-28 21:32:46'),
(189, 'Brochette SUSHI', 12.00, 0.00, '<p>4 Brochette </p>', '<p>viande bovine etc ...</p>', 4.00, 99.99, '1', 1, 1, 19, 1, '2021-04-27 14:44:46', '2021-04-29 11:15:12'),
(190, 'Berliner', 9.90, NULL, '<p>Broche maison marinée, mélange de légumes grillés \"poivrons, aubergines, courgettes et carottes\", chou, tomates, concombres, Feta et sauce au choix.<br></p>', '<p>Broche maison marinée, mélange de légumes grillés \"poivrons, aubergines, courgettes et carottes\", chou, tomates, concombres, Feta et sauce au choix.<br></p>', 1.00, 100.00, 'g', 1, 1, 21, 1, '2021-04-28 12:29:30', '2021-04-29 11:14:58'),
(191, 'Klassike', 9.90, NULL, '<p>Broche maison marinée, mélange de légumes frais \"tomates, concombres et chou\", Feta et sauce au choix.<br></p>', '<p>Broche maison marinée, mélange de légumes frais \"tomates, concombres et chou\", Feta et sauce au choix.<br></p>', 1.00, 100.00, 'g', 1, 1, 21, 1, '2021-04-28 12:30:44', '2021-04-29 11:14:47'),
(192, 'Gemüse \"Végétarien\"', 8.90, NULL, '<p>Broche maison marinée, mélange de légumes frais \"tomates, concombres et chou\", Feta et sauce au choix.<br></p>', '<p>Broche maison marinée, mélange de légumes frais \"tomates, concombres et chou\", Feta et sauce au choix.<br></p>', 1.00, 100.00, 'g', 1, 1, 21, 1, '2021-04-28 12:32:07', '2021-04-29 11:14:35'),
(193, 'Brochettes YAKITORI', 6.90, 1.00, '<h5><span style=\"font-family: \"Comic Sans MS\"; background-color: rgb(255, 156, 0);\">AUSAUCE CARAMEL</span><span style=\"font-family: Verdana;\">﻿</span><span style=\"font-family: \"Arial Black\";\">﻿</span><span style=\"font-family: \"Comic Sans MS\";\">﻿</span></h5>', '<p>P﻿OULET<span style=\"color: rgb(0, 0, 0); font-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">P</span><span style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; font-family: \"Comic Sans MS\";\">﻿OULET</span><span style=\"font-family: Helvetica;\">﻿</span><span style=\"font-family: \"Comic Sans MS\";\">﻿</span></p>', 4.00, NULL, '1', 1, 1, 30, 15, '2021-04-28 21:32:19', '2021-04-29 23:50:51'),
(194, 'NEMS POULET', 6.90, NULL, '<p>NEMS POULET</p>', NULL, 4.00, NULL, '1', 1, 1, 30, 11, '2021-04-28 21:34:23', '2021-04-28 21:35:06'),
(195, 'CREVETTES CASHEW NUTS', 13.50, NULL, '<p>CREVETTES SAUTEES AUX LEGUMES ET NOIX DE CAJOUX</p>', NULL, NULL, NULL, '1', 1, 1, 30, 12, '2021-04-28 21:36:49', '2021-04-28 21:37:00'),
(196, 'PAD THAI', 11.50, NULL, '<p>BOUILLES SAUTEES AUX LEGUMES ET POULET</p>', NULL, NULL, NULL, '1', 1, 1, 30, 12, '2021-04-28 21:38:09', '2021-04-28 21:38:21'),
(197, 'ARIZONA', 3.00, NULL, '<p>GREEN TEA</p>', NULL, NULL, NULL, '1', 1, 1, 30, 4, '2021-04-28 21:39:17', '2021-04-29 11:14:14'),
(198, 'SINGHA', 4.00, NULL, '<p>BEER 5%</p>', NULL, NULL, NULL, '1', 1, 1, 30, 4, '2021-04-28 21:40:57', '2021-04-28 21:41:09'),
(199, 'food678', 454.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2021-04-29 11:38:58', '2021-04-29 11:38:58'),
(200, 'food6666', 12.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2021-04-29 11:41:08', '2021-04-29 11:41:08'),
(201, 'foodabc', 777.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2021-04-29 11:53:34', '2021-04-29 11:53:34'),
(202, 'hukkkki', 7.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 1, '2021-04-29 11:55:28', '2021-04-29 11:55:28'),
(203, 'yyyyy', 78.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5, 1, '2021-04-29 11:56:55', '2021-04-29 11:56:55'),
(204, 'Mofo', 12.00, 0.00, '<p>description</p>', '<p>deo firts</p>', 5.00, 0.00, '1', 1, 1, 32, 1, '2021-05-04 04:48:59', '2021-05-04 04:48:59'),
(205, 'eltest', 23.00, 0.00, 'deyhhhkk', 'fghjkll', 1.00, 0.00, 'u', 1, 1, 78, 15, '2021-05-06 23:41:19', '2021-05-06 23:41:19'),
(206, 'test', 23.00, 2.00, 'test34', 'test43', 1.00, 0.00, 'e', 1, 1, 78, 15, '2021-05-06 23:43:52', '2021-05-06 23:43:52'),
(207, 'sampleitem', 25.00, 20.00, 'Jskabaiawn', 'Achar lassan', 2.00, 2.00, 'kg', 1, 1, 79, 12, '2021-05-06 23:51:05', '2021-05-06 23:51:05'),
(208, 'food delivery', 28.00, 0.00, 'test', '436 blueb vert', 5.00, 1.00, 'ml', 1, 0, 78, 16, '2021-05-06 23:51:47', '2021-05-06 23:51:47'),
(209, 'toprove1', 12.00, 11.00, 'Ndisjsis', 'Yes', 2.00, 2.00, 'g', 1, 1, 79, 9, '2021-05-06 23:54:21', '2021-05-06 23:54:21'),
(210, 'buddha', 1.00, NULL, 'tête du boss', 'or', 1.00, 20.00, '1', 1, 1, 30, 15, '2021-05-14 00:12:47', '2021-05-14 00:12:47'),
(211, 'buddha', 1.00, NULL, 'tête du boss', 'or', 1.00, 20.00, '1', 1, 1, 30, 15, '2021-05-14 00:12:49', '2021-05-14 00:12:49'),
(212, 'buddha', 1.00, NULL, 'tête du boss', 'or', 1.00, 20.00, '1', 1, 1, 30, 15, '2021-05-14 00:12:50', '2021-05-14 00:12:50'),
(213, 'cigarette', 10.00, NULL, 'cigarette', 'tabac', 1.00, NULL, NULL, 1, 1, 30, 1, '2021-05-14 12:15:40', '2021-05-14 12:15:40'),
(214, 'cigarette', 10.00, NULL, 'cigarette', 'tabac', 1.00, NULL, NULL, 1, 1, 30, 1, '2021-05-14 12:15:40', '2021-05-14 12:15:40'),
(215, 'riz cantonnais', 10.00, 5.00, '<p>Un simple riz</p>', '<p>- riz</p><p>- oeuf</p><p>- jambon</p>', 1.00, 250.00, 'gr', 1, 1, 83, 15, '2021-07-29 06:07:11', '2021-07-29 06:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `food_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`id`, `price`, `quantity`, `food_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 39.85, 1, 7, 1, '2020-09-04 14:57:10', '2020-09-04 14:57:10'),
(2, 39.85, 1, 7, 2, '2020-09-04 15:13:14', '2020-09-04 15:13:14'),
(3, 40.24, 1, 17, 3, '2020-09-04 16:10:26', '2020-09-04 16:10:26'),
(4, 39.85, 1, 7, 12, '2021-04-20 13:04:04', '2021-04-20 13:04:04'),
(5, 29.00, 1, 8, 13, '2021-04-20 13:10:23', '2021-04-20 13:10:23'),
(6, 39.85, 2, 7, 14, '2021-04-20 13:16:04', '2021-04-20 13:16:04'),
(7, 12233.00, 1, 33, 15, '2021-04-20 14:43:04', '2021-04-20 14:43:04'),
(8, 40.24, 1, 17, 16, '2021-05-05 17:05:31', '2021-05-05 17:05:31'),
(9, 40.24, 1, 17, 17, '2021-05-05 17:16:57', '2021-05-05 17:16:57'),
(10, 40.24, 1, 17, 18, '2021-05-05 17:17:11', '2021-05-05 17:17:11'),
(11, 6.90, 1, 188, 19, '2021-05-07 11:30:14', '2021-05-07 11:30:14'),
(12, 6.90, 1, 194, 19, '2021-05-07 11:30:14', '2021-05-07 11:30:14'),
(13, 6.90, 1, 188, 20, '2021-05-13 23:29:02', '2021-05-13 23:29:02'),
(14, 6.90, 1, 194, 20, '2021-05-13 23:29:03', '2021-05-13 23:29:03'),
(15, 1.00, 9, 210, 21, '2021-05-14 00:16:05', '2021-05-14 00:16:05'),
(16, 11.50, 1, 196, 22, '2021-05-14 12:10:31', '2021-05-14 12:10:31'),
(17, 3.00, 1, 197, 22, '2021-05-14 12:10:31', '2021-05-14 12:10:31'),
(18, 11.50, 1, 196, 23, '2021-06-28 07:48:44', '2021-06-28 07:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `food_order_extras`
--

CREATE TABLE `food_order_extras` (
  `food_order_id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `food_order_extras`
--

INSERT INTO `food_order_extras` (`food_order_id`, `extra_id`, `price`) VALUES
(12, 54, 0.00),
(14, 54, 0.00),
(18, 51, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `food_reviews`
--

CREATE TABLE `food_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `food_reviews`
--

INSERT INTO `food_reviews` (`id`, `review`, `rate`, `user_id`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'At this the White Rabbit blew three blasts on the trumpet, and then hurried on, Alice started to her daughter \'Ah, my dear! Let this be a walrus or hippopotamus, but then she had but to get in?\' she.', 1, 2, 19, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(2, 'English. \'I don\'t think they play at all know whether it would be quite absurd for her to begin.\' For, you see, Miss, this here ought to have finished,\' said the Mock Turtle angrily: \'really you are.', 5, 6, 15, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, 'Alice took up the other, and growing sometimes taller and sometimes shorter, until she had brought herself down to the Queen. First came ten soldiers carrying clubs; these were ornamented all over.', 4, 4, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'Would not, could not, would not, could not, would not join the dance. Will you, won\'t you join the dance? Will you, won\'t you join the dance. Would not, could not, would not join the dance. Will.', 1, 3, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Why, there\'s hardly room for YOU, and no room at all the things I used to call him Tortoise, if he would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is.', 2, 2, 15, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Alice had been anything near the door, she ran off at once: one old Magpie began wrapping itself up very carefully, with one finger; and the reason of that?\' \'In my youth,\' said his father, \'I took.', 2, 5, 17, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'She had not as yet had any dispute with the Queen,\' and she dropped it hastily, just in time to begin lessons: you\'d only have to beat time when I got up in such long curly brown hair! And it\'ll.', 4, 2, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Knave of Hearts, carrying the King\'s crown on a crimson velvet cushion; and, last of all the while, till at last in the world you fly, Like a tea-tray in the sea. But they HAVE their tails in their.', 1, 5, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'While she was now only ten inches high, and she went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and Alice rather unwillingly took.', 4, 1, 20, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'I beg your pardon!\' cried Alice again, in a confused way, \'Prizes! Prizes!\' Alice had no idea what to do, and perhaps as this before, never! And I declare it\'s too bad, that it might appear to.', 2, 5, 25, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'Alice, a little more conversation with her head through the doorway; \'and even if I shall think nothing of the Gryphon, the squeaking of the door of the trees had a VERY turn-up nose, much more like.', 1, 2, 18, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, 'These were the two creatures got so much already, that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Queen\'s shrill cries to the Gryphon. \'Well.', 3, 1, 26, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'There was a queer-shaped little creature, and held it out into the sea, though you mayn\'t believe it--\' \'I never said I could let you out, you know.\' Alice had no idea what Latitude was, or.', 4, 5, 18, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'Alice hastily; \'but I\'m not particular as to the game. CHAPTER IX. The Mock Turtle persisted. \'How COULD he turn them out with trying, the poor little feet, I wonder what you\'re doing!\' cried Alice.', 5, 3, 18, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'Dormouse\'s place, and Alice guessed in a minute, nurse! But I\'ve got to see that the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. \'I\'m.', 5, 2, 12, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(16, 'Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard of one,\' said Alice. \'Nothing WHATEVER?\' persisted the King. The next thing was.', 1, 6, 13, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'Alice, and she drew herself up and throw us, with the Queen, turning purple. \'I won\'t!\' said Alice. \'And be quick about it,\' said Alice angrily. \'It wasn\'t very civil of you to leave it behind?\' She.', 2, 6, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(18, 'Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have a trial: For really this morning I\'ve nothing to what I see\"!\' \'You might just as she could get to twenty at that rate! However, the.', 3, 3, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(19, 'HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she remembered how small she was appealed to by all three dates on their slates, and then unrolled the.', 2, 5, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(20, 'Alice; \'but a grin without a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Dodo. Then they all quarrel so dreadfully one can\'t hear oneself speak--and they.', 1, 4, 11, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(21, 'I\'m better now--but I\'m a hatter.\' Here the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, but in a hurry: a large crowd collected round it: there was Mystery,\' the.', 3, 5, 24, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(22, 'Alice said to the Knave of Hearts, she made some tarts, All on a little girl,\' said Alice, rather doubtfully, as she had put the hookah out of sight. Alice remained looking thoughtfully at the time.', 2, 1, 12, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(23, 'However, I\'ve got to see the Queen. \'Never!\' said the Duchess; \'I never said I could not possibly reach it: she could do, lying down on one knee as he shook his head off outside,\' the Queen shrieked.', 2, 2, 18, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(24, 'And she\'s such a nice soft thing to eat the comfits: this caused some noise and confusion, as the doubled-up soldiers were silent, and looked into its face in some alarm. This time there were no.', 3, 6, 19, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(25, 'Alice looked all round her, calling out in a low, timid voice, \'If you can\'t be civil, you\'d better leave off,\' said the Mock Turtle to the table to measure herself by it, and yet it was only.', 4, 1, 22, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(26, 'Queen furiously, throwing an inkstand at the March Hare. \'Yes, please do!\' but the Gryphon went on. Her listeners were perfectly quiet till she had never heard before, \'Sure then I\'m here! Digging.', 4, 3, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(27, 'Mouse to tell its age, there was generally a ridge or furrow in the distance. \'Come on!\' cried the Mouse, getting up and saying, \'Thank you, it\'s a very decided tone: \'tell her something about the.', 2, 5, 15, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(28, 'Oh dear! I\'d nearly forgotten that I\'ve got back to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther were sharing a pie--\' [later editions continued as follows The.', 5, 5, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(29, 'Lory. Alice replied in an offended tone, \'so I should say what you like,\' said the Gryphon: and Alice was not here before,\' said Alice,) and round the thistle again; then the Mock Turtle in a.', 4, 1, 25, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(30, 'Five, in a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the use of repeating all that stuff,\' the Mock.', 3, 5, 28, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(31, 'nznsns', 5, 7, 7, '2020-09-04 15:00:41', '2020-09-04 15:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Eveniet consequatur iste tenetur nisi.', 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(2, 'Vitae impedit incidunt optio dignissimos quo voluptatibus.', 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, 'Autem ad nihil temporibus corporis sequi aut.', 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'Nam qui eveniet dicta possimus distinctio non.', 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Cumque officiis in doloribus occaecati quos magni ut.', 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Voluptas saepe eaque nam maxime maxime.', 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'Molestiae esse quos aliquid voluptatem.', 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Omnis animi aliquid natus qui ipsam modi.', 8, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'Cum enim soluta neque placeat reprehenderit.', 10, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'Omnis sed ducimus enim temporibus.', 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'Blanditiis natus quibusdam rerum vero et necessitatibus.', 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, 'Architecto non occaecati velit quas alias vero veniam.', 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'Necessitatibus officiis temporibus nihil assumenda rem illo repellendus.', 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'Velit ut voluptatem libero dicta.', 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'Quaerat rem quis omnis ut omnis consequatur in.', 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(16, 'Impedit dolores aut architecto adipisci.', 10, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'Voluptas molestiae blanditiis tempore temporibus officia.', 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(18, 'Qui neque tenetur saepe quidem et.', 10, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(19, 'Non ipsa hic in dolorem quia.', 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(20, 'Qui illum animi architecto qui ut et facilis quia.', 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(21, '<p>J MEDECIN</p>', 23, '2021-04-02 11:30:01', '2021-04-28 22:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `header_layout_builders`
--

CREATE TABLE `header_layout_builders` (
  `header_row_id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `left_toggler_icon` varchar(255) DEFAULT NULL,
  `left_clock_icon` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `right_search_icon` varchar(255) DEFAULT NULL,
  `right_heart_icon` varchar(255) DEFAULT NULL,
  `right_cart_icon` varchar(255) DEFAULT NULL,
  `cart_close_icon` varchar(255) DEFAULT NULL,
  `cart_quantity_title` varchar(255) DEFAULT NULL,
  `cart_sub_total_title` varchar(255) DEFAULT NULL,
  `view_cart_title` varchar(255) DEFAULT NULL,
  `checkout_title` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `header_layout_builders`
--

INSERT INTO `header_layout_builders` (`header_row_id`, `theme_id`, `user_id`, `left_toggler_icon`, `left_clock_icon`, `company_logo`, `right_search_icon`, `right_heart_icon`, `right_cart_icon`, `cart_close_icon`, `cart_quantity_title`, `cart_sub_total_title`, `view_cart_title`, `checkout_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 78, 'menu-toggle', 'fa fa-clock-o', '20210919182620.logo.png', 'fa fa-search', 'fa fa-heart-o', 'fa fa-shopping-basket', 'ps-btn--close', 'Quantité', 'Sub Total', 'View Cart', 'Checkout', 78, NULL, '2021-09-19 18:21:21', '2021-09-19 18:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_layout_builders`
--

CREATE TABLE `home_page_layout_builders` (
  `home_page_row_id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `icon_1` varchar(255) DEFAULT NULL,
  `bottom_icon_sub_title` varchar(255) DEFAULT NULL,
  `bottom_sub_title_1` varchar(255) DEFAULT NULL,
  `bottom_sub_title_2` varchar(255) DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_page_layout_builders`
--

INSERT INTO `home_page_layout_builders` (`home_page_row_id`, `theme_id`, `user_id`, `title`, `sub_title`, `details`, `icon_1`, `bottom_icon_sub_title`, `bottom_sub_title_1`, `bottom_sub_title_2`, `image_1`, `image_2`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 78, 'Super Delicieux Gâteau', '100% NATUREL, FRAIS BAKED GOODS', '“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis vel, viverra metus. Sed vel nulla non neque dictum imperdiet hendrerit ”', '<i class=\"chikery-tt3\"></i>', 'MassyJulie', 'MARRY LULIE', 'Ceo Chikery', '20210920184224.home-menu-of-day.jpg', '20210920184224.home-about.png', 78, NULL, '2021-09-20 18:42:24', '2021-09-20 18:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `layoutbuilders`
--

CREATE TABLE `layoutbuilders` (
  `id` int(11) NOT NULL,
  `name` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `layoutbuilders`
--

INSERT INTO `layoutbuilders` (`id`, `name`) VALUES
(0, 'Empty section'),
(1, 'Search bar with filter'),
(2, 'Slider'),
(3, 'Top restaurants heading'),
(4, 'Top restaurants carousel'),
(5, 'Trending this week heading'),
(6, 'Trending this week carousel'),
(7, 'Categories carousel'),
(8, 'Categories heading'),
(9, 'Popular restaurants heading'),
(10, 'Popular restaurants grid'),
(11, 'Recent reviews heading'),
(12, 'Recent reviews list');

-- --------------------------------------------------------

--
-- Table structure for table `layoutbuilder_values`
--

CREATE TABLE `layoutbuilder_values` (
  `id` int(11) NOT NULL,
  `name` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `layoutbuilder_values`
--

INSERT INTO `layoutbuilder_values` (`id`, `name`) VALUES
(0, 'Slider'),
(1, 'Top restaurants heading'),
(2, 'Trending this week heading'),
(3, 'Categories carousel'),
(4, 'Trending this week carousel'),
(5, 'Popular restaurants grid'),
(6, 'Search bar with filter'),
(7, 'Categories carousel'),
(8, 'Categories heading'),
(9, 'Popular restaurants heading'),
(10, 'Popular restaurants grid'),
(11, 'Recent reviews heading'),
(12, 'Recent reviews list');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Upload', 1, 'app_logo', 'helloboucher', 'helloboucher.jpeg', 'image/jpeg', 'public', 18856, '[]', '{\"uuid\":\"5375d8be-7891-419d-8332-84d4714592c8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 1, '2020-09-02 00:43:45', '2020-09-02 00:43:45'),
(2, 'App\\Models\\Upload', 2, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 2, '2020-09-02 00:47:09', '2020-09-02 00:47:09'),
(4, 'App\\Models\\Upload', 3, 'image', 'image_default', 'image_default.png', 'image/png', 'public', 6432, '[]', '{\"uuid\":\"326d195f-4e7c-4ab1-a700-d070972f52e9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2020-09-14 23:17:39', '2020-09-14 23:17:39'),
(5, 'App\\Models\\Upload', 4, 'image', 'image_default', 'image_default.png', 'image/png', 'public', 6432, '[]', '{\"uuid\":\"ae8adacb-fa2c-4013-821d-df2fbf1444ad\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2020-09-14 23:21:54', '2020-09-14 23:21:54'),
(6, 'App\\Models\\Restaurant', 12, 'image', 'image_default', 'image_default.png', 'image/png', 'public', 6432, '[]', '{\"uuid\":\"ae8adacb-fa2c-4013-821d-df2fbf1444ad\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2020-09-14 23:22:23', '2020-09-14 23:22:23'),
(7, 'App\\Models\\Upload', 5, 'image', 'Facade', 'Facade.jpg', 'image/jpeg', 'public', 130678, '[]', '{\"uuid\":\"2428fd08-65f5-41bf-96d6-83163ea491b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2020-10-14 19:08:11', '2020-10-14 19:08:21'),
(8, 'App\\Models\\Restaurant', 3, 'image', 'Facade', 'Facade.jpg', 'image/jpeg', 'public', 130678, '[]', '{\"uuid\":\"2428fd08-65f5-41bf-96d6-83163ea491b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2020-10-14 19:08:22', '2020-10-14 19:08:22'),
(9, 'App\\Models\\Upload', 6, 'image', 'camera', 'camera.png', 'image/png', 'public', 10781, '[]', '{\"uuid\":\"fd72af80-6680-4019-9041-5a3a1e8db723\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 9, '2020-10-14 19:12:28', '2020-10-14 19:12:30'),
(10, 'App\\Models\\Restaurant', 2, 'image', 'icecream', 'icecream.jpeg', 'image/jpeg', 'public', 85598, '[]', '{\"uuid\":\"fd72af80-6680-4019-9041-5a3a1e8db723\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2020-10-14 19:12:37', '2020-10-14 19:12:37'),
(11, 'App\\Models\\Upload', 7, 'image', 'wallet', 'wallet.png', 'image/png', 'public', 14137, '[]', '{\"uuid\":\"5df59c50-c9ce-48e8-971f-e14fb63ecf1a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2020-10-14 19:28:38', '2020-10-14 19:28:40'),
(12, 'App\\Models\\Food', 14, 'image', 'wallet', 'wallet.png', 'image/png', 'public', 14137, '[]', '{\"uuid\":\"5df59c50-c9ce-48e8-971f-e14fb63ecf1a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2020-10-14 19:28:41', '2020-10-14 19:28:41'),
(13, 'App\\Models\\Upload', 8, 'image', 'directions', 'directions.png', 'image/png', 'public', 4120, '[]', '{\"uuid\":\"387537fe-b4d9-48a6-9a8a-fb737ac22c13\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2020-10-15 05:48:38', '2020-10-15 05:48:40'),
(15, 'App\\Models\\Upload', 9, 'image', 'credit-card', 'credit-card.png', 'image/png', 'public', 11393, '[]', '{\"uuid\":\"50b5e2d6-eafc-4804-ba5e-9561e0177154\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2020-10-15 05:50:41', '2020-10-15 05:50:41'),
(16, 'App\\Models\\Gallery', 6, 'image', 'credit-card', 'credit-card.png', 'image/png', 'public', 11393, '[]', '{\"uuid\":\"50b5e2d6-eafc-4804-ba5e-9561e0177154\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2020-10-15 05:50:44', '2020-10-15 05:50:44'),
(30, 'App\\Models\\Upload', 21, 'license', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"96b69ba2-f2d0-46b4-ad69-6d8742c9ce82\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2020-10-16 08:14:44', '2020-10-16 08:14:44'),
(33, 'App\\Models\\Upload', 23, 'license', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"09b1d695-4f40-4f3f-b410-daedaaef1eb9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2020-10-16 08:22:42', '2020-10-16 08:22:43'),
(45, 'App\\Models\\User', 21, 'avatar', '70770259_906997473018408_3743887429593989120_n', '70770259_906997473018408_3743887429593989120_n.jpg', 'image/jpeg', 'public', 82328, '[]', '{\"uuid\":\"61c8b720-d7d9-4fc7-bfcc-10815bc738ec\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 45, '2020-10-16 08:41:39', '2020-10-16 08:41:39'),
(46, 'App\\Models\\User', 21, 'extra', 'DDDDD', 'DDDDD.png', 'image/png', 'public', 55211, '[]', '{\"uuid\":\"aacaf425-58dc-42e2-85d0-f2c88a2218f5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2020-10-16 08:41:40', '2020-10-16 08:41:40'),
(47, 'App\\Models\\User', 21, 'license', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"09b1d695-4f40-4f3f-b410-daedaaef1eb9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 47, '2020-10-16 08:41:41', '2020-10-16 08:41:41'),
(48, 'App\\Models\\User', 21, 'extra', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"9d2dd392-d130-422a-87d6-f1f4ff68b898\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 48, '2020-10-16 08:42:35', '2020-10-16 08:42:35'),
(49, 'App\\Models\\Upload', 25, 'extra', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"8076b24f-1adb-427d-b2f8-4cefb2427a15\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 49, '2020-10-16 08:42:51', '2020-10-16 08:42:52'),
(50, 'App\\Models\\User', 21, 'extra', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"8076b24f-1adb-427d-b2f8-4cefb2427a15\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2020-10-16 08:42:54', '2020-10-16 08:42:54'),
(51, 'App\\Models\\User', 21, 'extra', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"9d2dd392-d130-422a-87d6-f1f4ff68b898\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 51, '2020-10-16 08:45:03', '2020-10-16 08:45:03'),
(52, 'App\\Models\\User', 21, 'extra', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"9d2dd392-d130-422a-87d6-f1f4ff68b898\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 52, '2020-10-16 08:45:09', '2020-10-16 08:45:09'),
(53, 'App\\Models\\User', 21, 'license', '70770259_906997473018408_3743887429593989120_n', '70770259_906997473018408_3743887429593989120_n.jpg', 'image/jpeg', 'public', 82328, '[]', '{\"uuid\":\"f499a35a-4ccb-4271-b402-334e35802dc5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 53, '2020-10-16 08:47:18', '2020-10-16 08:47:18'),
(54, 'App\\Models\\User', 21, 'license', 'DDDDD', 'DDDDD.png', 'image/png', 'public', 55211, '[]', '{\"uuid\":\"7e16cdc6-6650-4b2e-aec0-758fd1e55721\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 54, '2020-10-16 08:47:24', '2020-10-16 08:47:24'),
(55, 'App\\Models\\User', 21, 'license', '70770259_906997473018408_3743887429593989120_n', '70770259_906997473018408_3743887429593989120_n.jpg', 'image/jpeg', 'public', 82328, '[]', '{\"uuid\":\"50d3adc4-d7bf-4f4c-874f-5d467b5f5053\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 55, '2020-10-16 08:47:31', '2020-10-16 08:47:31'),
(56, 'App\\Models\\User', 21, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 56, '2020-10-16 08:47:35', '2020-10-16 08:47:35'),
(57, 'App\\Models\\User', 21, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 57, '2020-10-16 08:47:55', '2020-10-16 08:47:55'),
(58, 'App\\Models\\User', 21, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 58, '2020-10-16 08:49:19', '2020-10-16 08:49:19'),
(59, 'App\\Models\\User', 21, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 59, '2020-10-16 08:49:24', '2020-10-16 08:49:24'),
(60, 'App\\Models\\User', 21, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 60, '2020-10-16 08:49:59', '2020-10-16 08:49:59'),
(61, 'App\\Models\\User', 21, 'avatar', 'softoj-user', 'softoj-user.png', 'image/png', 'public', 2973, '[]', '{\"uuid\":\"50530868-ec46-43f2-9623-01c1560c58b2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 61, '2020-10-16 08:51:25', '2020-10-16 08:51:25'),
(63, 'App\\Models\\Upload', 26, 'image', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"a2dba3e4-5816-4e09-a4c2-408b219d2b2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 63, '2020-10-16 10:57:09', '2020-10-16 10:57:10'),
(65, 'App\\Models\\Restaurant', 14, 'image', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"a2dba3e4-5816-4e09-a4c2-408b219d2b2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 65, '2020-10-17 10:18:05', '2020-10-17 10:18:05'),
(66, 'App\\Models\\Restaurant', 15, 'image', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"a2dba3e4-5816-4e09-a4c2-408b219d2b2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 66, '2020-10-17 10:26:00', '2020-10-17 10:26:00'),
(67, 'App\\Models\\Restaurant', 16, 'image', 'unnamed', 'unnamed.jpg', 'image/jpeg', 'public', 680606, '[]', '{\"uuid\":\"a2dba3e4-5816-4e09-a4c2-408b219d2b2f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 67, '2020-10-17 10:47:00', '2020-10-17 10:47:00'),
(70, 'App\\Models\\Upload', 27, 'image', 'unnamedd', 'unnamedd.jpg', 'image/jpeg', 'public', 737100, '[]', '{\"uuid\":\"8c66c52d-ac03-4031-9e35-6bfad6ca31b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 69, '2020-10-21 05:13:02', '2020-10-21 05:13:03'),
(71, 'App\\Models\\Upload', 28, 'image', 'Screenshot from 2020-10-22 03-45-16', 'Screenshot-from-2020-10-22-03-45-16.png', 'image/png', 'public', 69924, '[]', '{\"uuid\":\"3bf514a5-3b1c-4252-b7a2-89490c084546\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2020-10-22 23:45:06', '2020-10-22 23:45:06'),
(73, 'App\\Models\\Upload', 29, 'app_logo', 'logoTPG', 'logoTPG.png', 'image/png', 'public', 103019, '[]', '{\"uuid\":\"dea23e4d-62fa-4d32-a893-326dde44b83b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 72, '2020-10-25 06:09:41', '2020-10-25 06:09:42'),
(74, 'App\\Models\\Upload', 30, 'app_logo', 'logoToPG', 'logoToPG.png', 'image/png', 'public', 95789, '[]', '{\"uuid\":\"822caba5-b91b-4b21-89a1-55e31b6f4d72\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 73, '2020-10-25 06:12:30', '2020-10-25 06:12:30'),
(75, 'App\\Models\\Upload', 31, 'avatar', 'LOGO44-ConvertImage.jpg', 'LOGO44-ConvertImage.jpg.png', 'image/jpeg', 'public', 47265, '[]', '{\"uuid\":\"20b6a802-2172-42f0-86de-6210c9d7fe19\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 74, '2020-10-25 08:12:26', '2020-10-25 08:12:27'),
(78, 'App\\Models\\Upload', 32, 'avatar', 'xps-8pb7Hq539Zw-unsplash', 'xps-8pb7Hq539Zw-unsplash.jpg', 'image/jpeg', 'public', 3682995, '[]', '{\"uuid\":\"b225c306-1ccb-497e-b802-3dc74b3e3dae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 77, '2020-11-13 08:24:39', '2020-11-13 08:24:41'),
(81, 'App\\Models\\Upload', 33, 'image', 'red_heart', 'red_heart.png', 'image/png', 'public', 5610, '[]', '{\"uuid\":\"f13e19b1-b5f9-4a09-8b38-84851ff1283c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 80, '2020-12-02 10:27:51', '2020-12-02 10:27:52'),
(83, 'App\\Models\\Upload', 34, 'default', 'pic1', 'pic1.jpg', 'image/jpeg', 'public', 66020, '[]', '{\"uuid\":\"a1c9efa1-6027-43eb-bc2c-fa7bfb57898d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 82, '2021-02-16 20:02:37', '2021-02-16 20:02:40'),
(84, 'App\\Models\\Upload', 35, 'default', 'online-shopping_94753-705', 'online-shopping_94753-705.jpg', 'image/jpeg', 'public', 59948, '[]', '{\"uuid\":\"3e7d3c06-fc0a-4825-9f38-14bf2fd0540e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 83, '2021-02-16 20:03:34', '2021-02-16 20:03:34'),
(85, 'App\\Models\\Upload', 36, 'default', 'jam', 'jam.png', 'image/png', 'public', 717, '[]', '{\"uuid\":\"c012d460-1297-4171-b769-17ffccc793e6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2021-02-16 20:04:32', '2021-02-16 20:04:32'),
(86, 'App\\Models\\Upload', 37, 'default', 'fruits-box-realistic-composition_1284-29852', 'fruits-box-realistic-composition_1284-29852.jpg', 'image/jpeg', 'public', 68557, '[]', '{\"uuid\":\"a845f51e-0e36-477f-9ebb-1a9fb6287522\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 85, '2021-02-16 20:06:09', '2021-02-16 20:06:09'),
(87, 'App\\Models\\Upload', 38, 'avatar', 'asdsa', 'asdsa.png', 'image/png', 'public', 3916, '[]', '{\"uuid\":\"92a70f21-8b47-4cb3-b615-67a50584939b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2021-03-21 13:26:59', '2021-03-21 13:27:00'),
(88, 'App\\Models\\Upload', 39, 'image', 'asdsa', 'asdsa.png', 'image/png', 'public', 3916, '[]', '{\"uuid\":\"a7c6f4fe-34e2-4bf8-9397-ee815ff7164e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 87, '2021-03-21 17:34:36', '2021-03-21 17:34:38'),
(89, 'App\\Models\\Upload', 40, 'avatar', 'asdsa', 'asdsa.png', 'image/png', 'public', 3916, '[]', '{\"uuid\":\"59dc3c00-00a8-473a-9a68-47ff0e1b5b04\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 88, '2021-03-22 16:07:12', '2021-03-22 16:07:15'),
(90, 'App\\Models\\Upload', 41, 'image', 'iconn', 'iconn.png', 'image/png', 'public', 121837, '[]', '{\"uuid\":\"f7869eeb-71e6-4445-9e1d-e1b095288195\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 89, '2021-03-22 19:43:14', '2021-03-22 19:43:16'),
(91, 'App\\Models\\Upload', 42, 'image', 'Canva-Red-Curry-Soup-with-Shrimps - 310x310 (1)', 'Canva-Red-Curry-Soup-with-Shrimps---310x310-(1).jpg', 'image/jpeg', 'public', 137949, '[]', '{\"uuid\":\"1e17d2f0-a2c3-418d-a77b-580f51a974ab\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2021-03-23 15:19:59', '2021-03-23 15:20:01'),
(93, 'App\\Models\\Upload', 43, 'image', 'Screenshot_20201018-131659_Chrome', 'Screenshot_20201018-131659_Chrome.jpg', 'image/jpeg', 'public', 995518, '[]', '{\"uuid\":\"3a127895-fb30-4a21-b6e4-7011875bedd4\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 92, '2021-03-23 15:25:20', '2021-03-23 15:25:20'),
(94, 'App\\Models\\Upload', 44, 'default', '20201027_185509', '20201027_185509.png', 'image/png', 'public', 2324046, '[]', '{\"uuid\":\"16fabc28-b10f-440f-b5e4-0d36f6bbf5c3\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 93, '2021-03-23 15:38:08', '2021-03-23 15:38:09'),
(95, 'App\\Models\\Upload', 45, 'default', '20201027_184859', '20201027_184859.jpg', 'image/jpeg', 'public', 244874, '[]', '{\"uuid\":\"61d80017-3748-4526-8157-b62e9eb762ba\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 94, '2021-03-23 15:38:09', '2021-03-23 15:38:09'),
(96, 'App\\Models\\Upload', 46, 'default', '20201027_185121', '20201027_185121.jpg', 'image/jpeg', 'public', 22313, '[]', '{\"uuid\":\"e2936f4b-21c2-43dd-b1fa-fb1f222b001a\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 95, '2021-03-23 15:38:09', '2021-03-23 15:38:09'),
(97, 'App\\Models\\Upload', 47, 'default', '3245414564435_PHOTOSITE_20191015_155447_0', '3245414564435_PHOTOSITE_20191015_155447_0.jpg', 'image/jpeg', 'public', 20832, '[]', '{\"uuid\":\"26a13720-c8da-418e-ae3b-0dbe8a021fe6\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2021-03-23 15:42:58', '2021-03-23 15:42:58'),
(98, 'App\\Models\\Upload', 48, 'default', '700623', '700623.jpg', 'image/jpeg', 'public', 228384, '[]', '{\"uuid\":\"81d6a201-c62d-425f-ba7b-e0a2c5559d0d\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 97, '2021-03-23 15:43:02', '2021-03-23 15:43:02'),
(99, 'App\\Models\\Upload', 49, 'default', 'COCA COLA ZERO', 'COCA-COLA-ZERO.jpg', 'image/jpeg', 'public', 222589, '[]', '{\"uuid\":\"fa421a71-a136-4637-9f71-bb2b65135fb7\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2021-03-23 15:43:03', '2021-03-23 15:43:03'),
(100, 'App\\Models\\Upload', 50, 'default', 'saute-de-boeuf-a-l-ananas-1-min-min', 'saute-de-boeuf-a-l-ananas-1-min-min.jpeg', 'image/jpeg', 'public', 191492, '[]', '{\"uuid\":\"bb9a1ac4-6980-4961-a6bf-615005847783\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 99, '2021-03-23 15:43:04', '2021-03-23 15:43:04'),
(101, 'App\\Models\\Upload', 51, 'default', '483', '483.jpg', 'image/jpeg', 'public', 17330, '[]', '{\"uuid\":\"9a05776b-d30d-4b80-ba39-3eab36b502fb\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 100, '2021-03-23 15:43:04', '2021-03-23 15:43:04'),
(102, 'App\\Models\\Upload', 52, 'default', 'pad-thai-poulet', 'pad-thai-poulet.jpg', 'image/jpeg', 'public', 239619, '[]', '{\"uuid\":\"fdf314b3-8584-4df3-8699-4aa8e8d8fa45\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 101, '2021-03-23 15:43:05', '2021-03-23 15:43:05'),
(103, 'App\\Models\\Upload', 53, 'default', 'crevette sauce douce', 'crevette-sauce-douce.jpg', 'image/jpeg', 'public', 82608, '[]', '{\"uuid\":\"7cf54ec1-2f81-4edd-a363-0d3ab6997865\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 102, '2021-03-23 15:43:05', '2021-03-23 15:43:05'),
(104, 'App\\Models\\Upload', 54, 'default', 'ravioli frit crevettes', 'ravioli-frit-crevettes.jpg', 'image/jpeg', 'public', 41857, '[]', '{\"uuid\":\"26d3799c-aca8-4e02-aa3a-5b892ba49865\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 103, '2021-03-23 15:43:06', '2021-03-23 15:43:06'),
(105, 'App\\Models\\Upload', 55, 'default', 'Brochettes yakitori', 'Brochettes-yakitori.jpg', 'image/jpeg', 'public', 92520, '[]', '{\"uuid\":\"08956d69-1a8d-46a9-b0d2-9aa364a9ffdb\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2021-03-23 15:43:06', '2021-03-23 15:43:06'),
(106, 'App\\Models\\Upload', 56, 'default', 'rie nature', 'rie-nature.jpg', 'image/jpeg', 'public', 59072, '[]', '{\"uuid\":\"d2c51aa8-7813-4117-bf47-10ec859e04da\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 105, '2021-03-23 15:43:07', '2021-03-23 15:43:07'),
(107, 'App\\Models\\Upload', 57, 'default', 'pad-thai crevettes', 'pad-thai-crevettes.jpg', 'image/jpeg', 'public', 156099, '[]', '{\"uuid\":\"bfe82639-c39f-4017-bb0f-88c03d8e03fb\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2021-03-23 15:43:08', '2021-03-23 15:43:08'),
(108, 'App\\Models\\Upload', 58, 'default', 'poulet sauce aigre douce', 'poulet-sauce-aigre-douce.jpg', 'image/jpeg', 'public', 152884, '[]', '{\"uuid\":\"5c4ce049-2306-439a-90fb-7e5216e817aa\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 107, '2021-03-23 15:43:08', '2021-03-23 15:43:09'),
(109, 'App\\Models\\Upload', 59, 'default', 'poulet sauce cashew nuts', 'poulet-sauce-cashew-nuts.jpg', 'image/jpeg', 'public', 157558, '[]', '{\"uuid\":\"07f90508-18fe-44aa-8c92-dffd5f8e1024\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2021-03-23 15:43:10', '2021-03-23 15:43:10'),
(110, 'App\\Models\\Upload', 60, 'default', 'Panang-Curry', 'Panang-Curry.jpg', 'image/jpeg', 'public', 91527, '[]', '{\"uuid\":\"c3eadb5f-5c0c-420d-9ebe-a6b71026b589\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 109, '2021-03-23 15:43:10', '2021-03-23 15:43:10'),
(111, 'App\\Models\\Upload', 61, 'default', '20200323_181444', '20200323_181444.jpg', 'image/jpeg', 'public', 206309, '[]', '{\"uuid\":\"30fa103e-e33d-470c-8301-29ef5e562245\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 110, '2021-03-23 15:43:11', '2021-03-23 15:43:11'),
(112, 'App\\Models\\Upload', 62, 'default', 'Nems poulet ', 'Nems-poulet-.jpg', 'image/jpeg', 'public', 34118, '[]', '{\"uuid\":\"d1c253b8-344b-4029-b005-7b18b83f8ec0\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 111, '2021-03-23 15:43:11', '2021-03-23 15:43:11'),
(115, 'App\\Models\\App/Models/Food', 53, 'image', 'photo', 'photo.jpeg', 'image/jpeg', 'public', 711795, '[]', '{\"uuid\":\"741f6486-1856-4729-9e77-6f7b62368c37\",\"user_id\":53,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 115, NULL, NULL),
(116, 'App\\Models\\App/Models/avatar', 1, 'image', 'image_picker-709636684', 'image_picker-709636684.jpeg', 'image/jpeg', 'public', 158255, '[]', '{\"uuid\":\"fef90d4c-2e5e-477e-8ce0-9cf1cae90f3c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, NULL, NULL),
(117, 'App\\Models\\App/Models/User', 1, 'avatar', 'ucp', 'ucp.png', 'image/png', 'public', 704142, '[]', '{\"uuid\":\"bf716691-25c1-4c0b-8dee-fc3808ebf182\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 117, NULL, NULL),
(120, 'App\\Models\\Food', 2, 'image', 'icecream', 'icecream.jpeg', 'image/jpeg', 'public', 711795, '[]', '{\"uuid\":\"61064e89-2f87-4bd7-9293-0d8872df561a\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 120, NULL, NULL),
(121, 'App\\Models\\App/Models/Food', 2, 'image', 'tati', 'tati.jpeg', 'image/jpeg', 'public', 183214, '[]', '{\"uuid\":\"2b9ac815-3993-4dbd-b392-5a76b1a33043\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, NULL, NULL),
(122, 'App\\Models\\Upload', 2, 'image', 'icecream', 'icecream.jpeg', 'image/jpeg', 'public', 711795, '[]', '{\"uuid\":\"c5dccc30-8f94-49b8-a3dd-c4bfb7f589f0\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 122, NULL, NULL),
(123, 'App\\Models\\Food', 16, 'image', 'tati', 'tati.jpeg', 'image/jpeg', 'public', 500024, '[]', '{\"uuid\":\"cd61bb43-6b7b-40ac-99d5-07e7315271d2\",\"user_id\":2,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 123, NULL, NULL),
(124, 'App\\Models\\Upload', 63, 'image', 'boy', 'boy.png', 'image/png', 'public', 3860, '[]', '{\"uuid\":\"8daf3c94-a55f-4020-90a6-a05f01ff340a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 124, '2021-03-23 20:47:29', '2021-03-23 20:47:31'),
(126, 'App\\Models\\Upload', 64, 'image', 'asdsa', 'asdsa.png', 'image/png', 'public', 3916, '[]', '{\"uuid\":\"d5ba2200-aab9-4472-afd9-366d50b93cfb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 125, '2021-03-23 20:49:33', '2021-03-23 20:49:33'),
(127, 'App\\Models\\Upload', 65, 'image', 'boy', 'boy.png', 'image/png', 'public', 3860, '[]', '{\"uuid\":\"06ec6441-abce-40e8-a170-a407c3b5a29d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 126, '2021-03-23 20:49:42', '2021-03-23 20:49:42'),
(128, 'App\\Models\\Food', 118, 'image', 'asdsa', 'asdsa.png', 'image/png', 'public', 3916, '[]', '{\"uuid\":\"d5ba2200-aab9-4472-afd9-366d50b93cfb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 127, '2021-03-23 20:49:48', '2021-03-23 20:49:48'),
(130, 'App\\Models\\Food', 119, 'image', 'Canva-Red-Curry-Soup-with-Shrimps - 310x310 (1)', 'Canva-Red-Curry-Soup-with-Shrimps---310x310-(1).jpg', 'image/jpeg', 'public', 137949, '[]', '{\"uuid\":\"1e17d2f0-a2c3-418d-a77b-580f51a974ab\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 128, '2021-03-23 20:51:04', '2021-03-23 20:51:04'),
(131, 'App\\Models\\Upload', 66, 'image', 'signup', 'signup.png', 'image/png', 'public', 1009, '[]', '{\"uuid\":\"719b3181-db7e-43e4-84d1-97f6c23149ba\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 129, '2021-03-23 20:55:30', '2021-03-23 20:55:30'),
(132, 'App\\Models\\Food', 120, 'image', 'signup', 'signup.png', 'image/png', 'public', 1009, '[]', '{\"uuid\":\"719b3181-db7e-43e4-84d1-97f6c23149ba\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 130, '2021-03-23 20:55:36', '2021-03-23 20:55:36'),
(133, 'App\\Models\\Upload', 67, 'image', 'signin', 'signin.png', 'image/png', 'public', 984, '[]', '{\"uuid\":\"1327eedf-3e16-4a86-a989-8984a2ed0262\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2021-03-23 21:01:00', '2021-03-23 21:01:00'),
(134, 'App\\Models\\Food', 121, 'image', 'signin', 'signin.png', 'image/png', 'public', 984, '[]', '{\"uuid\":\"1327eedf-3e16-4a86-a989-8984a2ed0262\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 132, '2021-03-23 21:01:08', '2021-03-23 21:01:08'),
(135, 'App\\Models\\Food', 18, 'image', 'flower', 'flower.jpeg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"e05f17d5-ae21-48e3-8e47-b924bbe288a6\",\"user_id\":18,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, NULL, NULL),
(136, 'App\\Models\\Food', 53, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 6874, '[]', '{\"uuid\":\"91769000-fa4c-4db1-80b0-5645cf27d8aa\",\"user_id\":53,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 136, NULL, NULL),
(137, 'App\\Models\\Food', 146, 'image', 'Canva-Red-Curry-Soup-with-Shrimps - 310x310 (1)', 'Canva-Red-Curry-Soup-with-Shrimps---310x310-(1).jpg', 'image/jpeg', 'public', 137949, '[]', '{\"uuid\":\"1e17d2f0-a2c3-418d-a77b-580f51a974ab\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 137, '2021-03-24 07:03:41', '2021-03-24 07:03:41'),
(138, 'App\\Models\\Food', 146, 'image', 'Canva-Red-Curry-Soup-with-Shrimps - 310x310 (1)', 'Canva-Red-Curry-Soup-with-Shrimps---310x310-(1).jpg', 'image/jpeg', 'public', 137949, '[]', '{\"uuid\":\"1e17d2f0-a2c3-418d-a77b-580f51a974ab\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 138, '2021-03-24 07:03:44', '2021-03-24 07:03:44'),
(139, 'App\\Models\\Food', 147, 'image', 'Canva-Red-Curry-Soup-with-Shrimps - 310x310 (1)', 'Canva-Red-Curry-Soup-with-Shrimps---310x310-(1).jpg', 'image/jpeg', 'public', 137949, '[]', '{\"uuid\":\"1e17d2f0-a2c3-418d-a77b-580f51a974ab\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 139, '2021-03-24 07:20:28', '2021-03-24 07:20:28'),
(140, 'App\\Models\\Upload', 68, 'image', 'flower', 'flower.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"bafa57d5-6046-44af-98f7-1e461eacb98b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 140, '2021-03-24 07:36:13', '2021-03-24 07:36:13'),
(141, 'App\\Models\\Food', 132, 'image', 'flower', 'flower.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"bafa57d5-6046-44af-98f7-1e461eacb98b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2021-03-24 07:36:17', '2021-03-24 07:36:17'),
(142, 'App\\Models\\Food', 160, 'image', 'WhatsApp Image 2021-03-15 at 08.21.25', 'WhatsApp Image 2021-03-15 at 08.21.25.jpeg', 'image/jpeg', 'public', 44506, '[]', '{\"uuid\":\"498de372-d200-4902-b5c1-1b5964b43a39\",\"user_id\":13,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 142, NULL, NULL),
(145, 'App\\Models\\Food', 161, 'image', 'halwapuri', 'halwapuri.jpeg', 'image/jpeg', 'public', 7466, '[]', '{\"uuid\":\"833e9bb4-3d81-40e4-8839-7df742e281ca\",\"user_id\":161,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 145, NULL, NULL),
(146, 'App\\Models\\Food', 171, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 6874, '[]', '{\"uuid\":\"bba68629-dcc2-4aef-988d-5643677a15ee\",\"user_id\":171,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 146, NULL, NULL),
(147, 'App\\Models\\User', 55, 'license', 'ucp', 'ucp.jpeg', 'image/jpeg', 'public', 3651166, '[]', '{\"uuid\":\"e48854a4-a2d2-4a0f-9fc4-45cc676af59a\",\"user_id\":55,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 147, NULL, NULL),
(148, 'App\\Models\\Food', 172, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 41801, '[]', '{\"uuid\":\"9cc34dee-9991-4957-ae4d-298ded0c2f43\",\"user_id\":172,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 148, NULL, NULL),
(149, 'App\\Models\\Food', 173, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 664629, '[]', '{\"uuid\":\"4a74e041-5edd-46aa-a3bb-600dc18c8aa3\",\"user_id\":173,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, NULL, NULL),
(150, 'App\\Models\\Food', 174, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 91125, '[]', '{\"uuid\":\"7c55aacb-6e77-4946-b3df-b4362987a327\",\"user_id\":174,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 150, NULL, NULL),
(151, 'App\\Models\\Food', 175, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 91125, '[]', '{\"uuid\":\"9025ee02-7f97-44d0-9280-ef454da93b0d\",\"user_id\":175,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 151, NULL, NULL),
(152, 'App\\Models\\Food', 177, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 29116, '[]', '{\"uuid\":\"269fa286-7e25-4ffa-81c5-37098767ccaf\",\"user_id\":177,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 152, NULL, NULL),
(153, 'App\\Models\\Food', 178, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 115900, '[]', '{\"uuid\":\"669dd338-94f8-4c54-9dbc-75407c50a395\",\"user_id\":178,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 153, NULL, NULL),
(155, 'App\\Models\\Food', 179, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 97869, '[]', '{\"uuid\":\"f4f8fc6f-4789-4f18-a0ce-ecc9c7e388a3\",\"user_id\":179,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 155, NULL, NULL),
(156, 'App\\Models\\Upload', 69, 'image', 'Logo', 'Logo.png', 'image/png', 'public', 255482, '[]', '{\"uuid\":\"9ea2cf4b-41a4-4b25-84dd-e2d5e3e9bb37\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 156, '2021-03-27 08:29:21', '2021-03-27 08:29:22'),
(157, 'App\\Models\\Cuisine', 12, 'image', 'Logo', 'Logo.png', 'image/png', 'public', 255482, '[]', '{\"uuid\":\"9ea2cf4b-41a4-4b25-84dd-e2d5e3e9bb37\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 157, '2021-03-27 08:29:55', '2021-03-27 08:29:55'),
(158, 'App\\Models\\Upload', 70, 'image', '2021-02-27', '2021-02-27.jpg', 'image/jpeg', 'public', 65643, '[]', '{\"uuid\":\"005a696a-33e4-46ea-987d-2e0bb673e333\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 158, '2021-03-27 08:55:17', '2021-03-27 08:55:17'),
(162, 'App\\Models\\Upload', 71, 'image', 'IMG_20210324_192529_274', 'IMG_20210324_192529_274.jpg', 'image/jpeg', 'public', 2490902, '[]', '{\"uuid\":\"fbd694b6-938b-45ca-86e5-dd21a15e52ed\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 162, '2021-04-01 18:05:39', '2021-04-01 18:05:47'),
(163, 'App\\Models\\Upload', 72, 'image', 'FB_IMG_1609871068299', 'FB_IMG_1609871068299.jpg', 'image/jpeg', 'public', 7599, '[]', '{\"uuid\":\"c8f31d13-2291-4c1e-95ea-88fcd3c20e16\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 163, '2021-04-01 18:06:28', '2021-04-01 18:06:28'),
(165, 'App\\Models\\Upload', 73, 'image', 'IMG_9984', 'IMG_9984.jpeg', 'image/jpeg', 'public', 75316, '[]', '{\"uuid\":\"2640026f-5c96-4d66-8c03-9eefa2e880bf\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 165, '2021-04-01 18:12:32', '2021-04-01 18:12:32'),
(166, 'App\\Models\\Upload', 74, 'image', 'IMG_9984', 'IMG_9984.jpeg', 'image/jpeg', 'public', 75316, '[]', '{\"uuid\":\"c7e1fae9-6833-4bca-8986-93e2371991e4\",\"user_id\":61,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 166, '2021-04-01 18:17:13', '2021-04-01 18:17:13'),
(167, 'App\\Models\\Upload', 75, 'image', 'Logo rond Berlin Mediterranean Kitchen', 'Logo-rond-Berlin-Mediterranean-Kitchen.png', 'image/png', 'public', 4839, '[]', '{\"uuid\":\"dec29ee2-1b42-41be-b8d8-5cbc7d029024\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 167, '2021-04-01 18:41:30', '2021-04-01 18:41:30'),
(168, 'App\\Models\\Restaurant', 20, 'image', 'Logo rond Berlin Mediterranean Kitchen', 'Logo-rond-Berlin-Mediterranean-Kitchen.png', 'image/png', 'public', 4839, '[]', '{\"uuid\":\"dec29ee2-1b42-41be-b8d8-5cbc7d029024\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 168, '2021-04-01 18:42:55', '2021-04-01 18:42:55'),
(169, 'App\\Models\\Upload', 76, 'image', 'Berliner', 'Berliner.jpg', 'image/jpeg', 'public', 3865442, '[]', '{\"uuid\":\"c39dc3ef-456a-49cc-81f7-d57c4ac5df1e\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 169, '2021-04-01 18:43:27', '2021-04-01 18:43:28'),
(170, 'App\\Models\\Upload', 77, 'image', 'Logo rond Berlin Mediterranean Kitchen', 'Logo-rond-Berlin-Mediterranean-Kitchen.png', 'image/png', 'public', 4839, '[]', '{\"uuid\":\"77f4da01-a925-4bb9-8ee0-a50aab9616ee\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 170, '2021-04-01 18:53:03', '2021-04-01 18:53:03'),
(171, 'App\\Models\\Restaurant', 21, 'image', 'Logo rond Berlin Mediterranean Kitchen', 'Logo-rond-Berlin-Mediterranean-Kitchen.png', 'image/png', 'public', 4839, '[]', '{\"uuid\":\"77f4da01-a925-4bb9-8ee0-a50aab9616ee\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2021-04-01 18:53:14', '2021-04-01 18:53:14'),
(172, 'App\\Models\\Upload', 78, 'image', 'Berliner', 'Berliner.jpg', 'image/jpeg', 'public', 3865442, '[]', '{\"uuid\":\"52002e59-be12-4234-b161-b06a791dc422\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 172, '2021-04-01 18:53:41', '2021-04-01 18:53:43'),
(173, 'App\\Models\\Upload', 79, 'image', 'WhatsApp Image 2021-03-14 at 15.00.13', 'WhatsApp-Image-2021-03-14-at-15.00.13.jpeg', 'image/jpeg', 'public', 26224, '[]', '{\"uuid\":\"35e465cb-ce59-4831-97bf-485ae9aaf0f7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2021-04-02 10:26:06', '2021-04-02 10:26:07'),
(175, 'App\\Models\\Upload', 80, 'image', 'celeb-kids.jpg.482x490_q71_crop-smart', 'celeb-kids.jpg.482x490_q71_crop-smart.jpg', 'image/jpeg', 'public', 22316, '[]', '{\"uuid\":\"548e2a22-e452-41d7-bfbb-4e5a29c2fb41\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 175, '2021-04-02 10:48:27', '2021-04-02 10:48:27'),
(177, 'App\\Models\\Upload', 81, 'image', 'images', 'images.jpg', 'image/jpeg', 'public', 5651, '[]', '{\"uuid\":\"00388992-51a4-4214-a4f0-759575e8c197\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 177, '2021-04-02 10:51:01', '2021-04-02 10:51:01'),
(179, 'App\\Models\\Upload', 82, 'image', 'logoToPG', 'logoToPG.png', 'image/png', 'public', 95789, '[]', '{\"uuid\":\"03e72ecc-88a4-4d55-812d-b71766cdb6a6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 179, '2021-04-02 10:57:04', '2021-04-02 10:57:04'),
(180, 'App\\Models\\Restaurant', 22, 'image', 'logoToPG', 'logoToPG.png', 'image/png', 'public', 95789, '[]', '{\"uuid\":\"03e72ecc-88a4-4d55-812d-b71766cdb6a6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 180, '2021-04-02 10:57:18', '2021-04-02 10:57:18'),
(181, 'App\\Models\\Upload', 83, 'image', 'ejohns_222', 'ejohns_222.jpg', 'image/jpeg', 'public', 27079, '[]', '{\"uuid\":\"4b5d6902-bef1-414c-91dd-7e5ff010fe09\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 181, '2021-04-02 11:05:54', '2021-04-02 11:05:54'),
(183, 'App\\Models\\Upload', 84, 'image', 'téléchargement (4)', 'téléchargement-(4).jpg', 'image/jpeg', 'public', 5240, '[]', '{\"uuid\":\"d2188cf0-b279-4485-ab0c-9e6e5fc18a73\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 183, '2021-04-02 11:13:00', '2021-04-02 11:13:00'),
(184, 'App\\Models\\Upload', 85, 'image', 'Screenshot_594', 'Screenshot_594.png', 'image/png', 'public', 9110, '[]', '{\"uuid\":\"234905ca-2a55-44c6-9028-6d7db52a1655\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 184, '2021-04-02 11:17:23', '2021-04-02 11:17:23'),
(186, 'App\\Models\\Upload', 86, 'image', 'ejohns_20', 'ejohns_20.jpg', 'image/jpeg', 'public', 41226, '[]', '{\"uuid\":\"c260afaa-1c47-4a1d-b262-c4477d755bce\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 186, '2021-04-02 11:18:11', '2021-04-02 11:18:12'),
(187, 'App\\Models\\Upload', 87, 'image', '64_Logo', '64_Logo.png', 'image/png', 'public', 4080, '[]', '{\"uuid\":\"72166429-6e37-47bc-96a2-ebe2a0379d9f\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 187, '2021-04-02 11:22:42', '2021-04-02 11:22:43'),
(188, 'App\\Models\\Upload', 88, 'image', 'banner-3-2', 'banner-3-2.png', 'image/png', 'public', 14969, '[]', '{\"uuid\":\"c0db9464-1b9a-4c89-8498-059738482d17\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 188, '2021-04-02 11:24:37', '2021-04-02 11:24:37'),
(189, 'App\\Models\\Upload', 89, 'image', 'banner-3-2', 'banner-3-2.png', 'image/png', 'public', 14969, '[]', '{\"uuid\":\"4dc35362-f7c2-434d-a7f5-8423ed709544\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 189, '2021-04-02 11:25:03', '2021-04-02 11:25:04'),
(190, 'App\\Models\\Restaurant', 23, 'image', 'banner-3-2', 'banner-3-2.png', 'image/png', 'public', 14969, '[]', '{\"uuid\":\"4dc35362-f7c2-434d-a7f5-8423ed709544\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 190, '2021-04-02 11:25:09', '2021-04-02 11:25:09'),
(191, 'App\\Models\\Upload', 90, 'image', 'téléchargement (4)', 'téléchargement-(4).jpg', 'image/jpeg', 'public', 5240, '[]', '{\"uuid\":\"c46ab56a-ed28-42ca-9360-d86a886b6a20\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 191, '2021-04-02 11:25:11', '2021-04-02 11:25:11'),
(193, 'App\\Models\\Upload', 91, 'image', 'test1', 'test1.jpg', 'image/jpeg', 'public', 36306, '[]', '{\"uuid\":\"a870632d-8e26-4ea0-a6f8-558dc4741ba8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 193, '2021-04-02 11:30:00', '2021-04-02 11:30:00'),
(194, 'App\\Models\\Gallery', 21, 'image', 'test1', 'test1.jpg', 'image/jpeg', 'public', 36306, '[]', '{\"uuid\":\"a870632d-8e26-4ea0-a6f8-558dc4741ba8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 194, '2021-04-02 11:30:01', '2021-04-02 11:30:01'),
(195, 'App\\Models\\Upload', 92, 'image', 'banner7', 'banner7.png', 'image/png', 'public', 10763, '[]', '{\"uuid\":\"e152a58f-30f4-4203-b134-8fa58dcdd6da\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 195, '2021-04-02 11:31:16', '2021-04-02 11:31:16'),
(196, 'App\\Models\\Restaurant', 25, 'image', 'banner7', 'banner7.png', 'image/png', 'public', 10763, '[]', '{\"uuid\":\"e152a58f-30f4-4203-b134-8fa58dcdd6da\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 196, '2021-04-02 11:31:34', '2021-04-02 11:31:34'),
(197, 'App\\Models\\Upload', 93, 'image', 'celeb-kids.jpg.482x490_q71_crop-smart', 'celeb-kids.jpg.482x490_q71_crop-smart.jpg', 'image/jpeg', 'public', 22316, '[]', '{\"uuid\":\"011eee1b-51f4-4dfe-ad88-9f592224be22\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 197, '2021-04-02 11:32:41', '2021-04-02 11:32:41'),
(199, 'App\\Models\\Food', 183, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 130443, '[]', '{\"uuid\":\"cc1e6703-710e-4aa6-b3e6-f6023b507629\",\"user_id\":183,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 199, NULL, NULL),
(201, 'App\\Models\\Upload', 94, 'image', 'RIZ THAI (2)-miné', 'RIZ-THAI-(2)-miné.jpg', 'image/jpeg', 'public', 494752, '[]', '{\"uuid\":\"7a37132d-2d15-4f12-8f1a-871f680aa7d4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 201, '2021-04-27 10:13:30', '2021-04-27 10:13:32'),
(202, 'App\\Models\\Food', 187, 'image', 'RIZ THAI (2)-miné', 'RIZ-THAI-(2)-miné.jpg', 'image/jpeg', 'public', 494752, '[]', '{\"uuid\":\"7a37132d-2d15-4f12-8f1a-871f680aa7d4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 202, '2021-04-27 10:20:40', '2021-04-27 10:20:40'),
(203, 'App\\Models\\Upload', 95, 'image', 'BROCHETTE SATAY-min-min', 'BROCHETTE-SATAY-min-min.jpg', 'image/jpeg', 'public', 227186, '[]', '{\"uuid\":\"91de4b3a-4fdc-4310-89f9-0ce18be0b693\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 203, '2021-04-27 10:22:23', '2021-04-27 10:22:23'),
(204, 'App\\Models\\Food', 188, 'image', 'BROCHETTE SATAY-min-min', 'BROCHETTE-SATAY-min-min.jpg', 'image/jpeg', 'public', 227186, '[]', '{\"uuid\":\"91de4b3a-4fdc-4310-89f9-0ce18be0b693\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 204, '2021-04-27 10:24:51', '2021-04-27 10:24:51'),
(205, 'App\\Models\\Upload', 96, 'image', 'app', 'app.png', 'image/png', 'public', 445, '[]', '{\"uuid\":\"724c7cae-baeb-4386-97c5-000d1fea9336\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 205, '2021-04-27 10:28:46', '2021-04-27 10:28:46'),
(207, 'App\\Models\\Upload', 97, 'image', 'usrs', 'usrs.png', 'image/png', 'public', 927, '[]', '{\"uuid\":\"495fec2a-857c-4d75-89d3-e5121446aa64\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 207, '2021-04-27 10:36:24', '2021-04-27 10:36:25'),
(208, 'App\\Models\\Restaurant', 29, 'image', 'usrs', 'usrs.png', 'image/png', 'public', 927, '[]', '{\"uuid\":\"495fec2a-857c-4d75-89d3-e5121446aa64\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 208, '2021-04-27 10:42:56', '2021-04-27 10:42:56'),
(209, 'App\\Models\\Upload', 98, 'image', 'verification-mark', 'verification-mark.png', 'image/png', 'public', 305, '[]', '{\"uuid\":\"918fbb5e-c051-4a2b-9269-d674fcd1786a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 209, '2021-04-27 10:49:59', '2021-04-27 10:49:59'),
(211, 'App\\Models\\Upload', 99, 'image', 'quart', 'quart.png', 'image/png', 'public', 2927, '[]', '{\"uuid\":\"00f66946-9d97-4d8b-bd6c-ddc65e7da6a9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 211, '2021-04-27 10:51:37', '2021-04-27 10:51:37'),
(213, 'App\\Models\\Upload', 100, 'image', 'graphic', 'graphic.png', 'image/png', 'public', 1159840, '[]', '{\"uuid\":\"a7938395-c874-455a-bb18-f440377a2728\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 213, '2021-04-27 14:41:39', '2021-04-27 14:41:42'),
(215, 'App\\Models\\Upload', 101, 'image', 'BROCHETTE SATAY-min-min', 'BROCHETTE-SATAY-min-min.jpg', 'image/jpeg', 'public', 227186, '[]', '{\"uuid\":\"38606da4-0c34-498c-b728-8d2220cdff95\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 215, '2021-04-27 14:43:28', '2021-04-27 14:43:29'),
(216, 'App\\Models\\Food', 189, 'image', 'BROCHETTE SATAY-min-min', 'BROCHETTE-SATAY-min-min.jpg', 'image/jpeg', 'public', 227186, '[]', '{\"uuid\":\"38606da4-0c34-498c-b728-8d2220cdff95\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 216, '2021-04-27 14:44:47', '2021-04-27 14:44:47'),
(217, 'App\\Models\\Upload', 102, 'image', 'Berliner', 'Berliner.jpg', 'image/jpeg', 'public', 3865442, '[]', '{\"uuid\":\"fa64da5c-cfa6-44c0-86fa-9ec4423da442\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 217, '2021-04-28 12:26:49', '2021-04-28 12:26:54'),
(218, 'App\\Models\\Food', 190, 'image', 'Berliner', 'Berliner.jpg', 'image/jpeg', 'public', 3865442, '[]', '{\"uuid\":\"fa64da5c-cfa6-44c0-86fa-9ec4423da442\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 218, '2021-04-28 12:29:31', '2021-04-28 12:29:31'),
(219, 'App\\Models\\Upload', 103, 'image', 'Klassike', 'Klassike.jpg', 'image/jpeg', 'public', 4080531, '[]', '{\"uuid\":\"2f8fd098-5f66-4f83-b71f-9f7f708c06a1\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 219, '2021-04-28 12:30:01', '2021-04-28 12:30:03'),
(220, 'App\\Models\\Food', 191, 'image', 'Klassike', 'Klassike.jpg', 'image/jpeg', 'public', 4080531, '[]', '{\"uuid\":\"2f8fd098-5f66-4f83-b71f-9f7f708c06a1\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 220, '2021-04-28 12:30:44', '2021-04-28 12:30:44'),
(221, 'App\\Models\\Upload', 104, 'image', 'Gemuse', 'Gemuse.jpg', 'image/jpeg', 'public', 4090943, '[]', '{\"uuid\":\"1ed4f2ca-ca36-4bbe-b043-7268495deeb3\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 221, '2021-04-28 12:31:35', '2021-04-28 12:31:37'),
(222, 'App\\Models\\Food', 192, 'image', 'Gemuse', 'Gemuse.jpg', 'image/jpeg', 'public', 4090943, '[]', '{\"uuid\":\"1ed4f2ca-ca36-4bbe-b043-7268495deeb3\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 222, '2021-04-28 12:32:07', '2021-04-28 12:32:07'),
(223, 'App\\Models\\Upload', 105, 'image', 'Berlinois', 'Berlinois.jpg', 'image/jpeg', 'public', 4084547, '[]', '{\"uuid\":\"6bd135aa-c6cb-403e-87df-309a71421028\",\"user_id\":60,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 223, '2021-04-28 12:32:52', '2021-04-28 12:32:54'),
(224, 'App\\Models\\Upload', 106, 'image', 'mamathai-logo-2', 'mamathai-logo-2.png', 'image/png', 'public', 867503, '[]', '{\"uuid\":\"eeb9aa11-2ac7-45fa-be2c-781f3249bddc\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 224, '2021-04-28 20:57:04', '2021-04-28 20:57:08'),
(226, 'App\\Models\\Upload', 107, 'image', 'BANNIERES2-min', 'BANNIERES2-min.jpg', 'image/jpeg', 'public', 574106, '[]', '{\"uuid\":\"649323ad-5a38-4a78-8648-4992739e11c1\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 226, '2021-04-28 21:03:23', '2021-04-28 21:03:23'),
(227, 'App\\Models\\Upload', 108, 'image', 'BOEUF  CAHEW NUTS-min', 'BOEUF--CAHEW-NUTS-min.jpg', 'image/jpeg', 'public', 455619, '[]', '{\"uuid\":\"ee1ee816-d208-411a-98fe-92993c1f23d9\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 227, '2021-04-28 21:07:38', '2021-04-28 21:07:38'),
(229, 'App\\Models\\Upload', 109, 'image', 'RIZ THAI (2)-miné', 'RIZ-THAI-(2)-miné.jpg', 'image/jpeg', 'public', 494752, '[]', '{\"uuid\":\"bd466213-f1f4-4ea5-a6be-856a183ae4fb\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 229, '2021-04-28 21:08:02', '2021-04-28 21:08:02'),
(231, 'App\\Models\\Upload', 110, 'image', 'coca-33CL-min', 'coca-33CL-min.jpg', 'image/jpeg', 'public', 57655, '[]', '{\"uuid\":\"29bd033a-8fb3-4967-890b-2320841df579\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 231, '2021-04-28 21:08:44', '2021-04-28 21:08:44'),
(232, 'App\\Models\\Category', 4, 'image', 'coca-33CL-min', 'coca-33CL-min.jpg', 'image/jpeg', 'public', 57655, '[]', '{\"uuid\":\"29bd033a-8fb3-4967-890b-2320841df579\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2021-04-28 21:08:45', '2021-04-28 21:08:45'),
(233, 'App\\Models\\Upload', 111, 'image', 'BANNIERES2-min', 'BANNIERES2-min.jpg', 'image/jpeg', 'public', 574106, '[]', '{\"uuid\":\"d9f30192-89e6-4705-98ae-9030a2a5d7ae\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 233, '2021-04-28 21:24:00', '2021-04-28 21:24:00'),
(235, 'App\\Models\\Upload', 112, 'image', 'Brochettes yakitori-min-min', 'Brochettes-yakitori-min-min.jpg', 'image/jpeg', 'public', 349490, '[]', '{\"uuid\":\"cac91972-ed98-48cf-a5e3-f2b8584ebc51\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 235, '2021-04-28 21:29:35', '2021-04-28 21:29:35');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(236, 'App\\Models\\Food', 193, 'image', 'Brochettes yakitori-min-min', 'Brochettes-yakitori-min-min.jpg', 'image/jpeg', 'public', 349490, '[]', '{\"uuid\":\"cac91972-ed98-48cf-a5e3-f2b8584ebc51\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 236, '2021-04-28 21:32:19', '2021-04-28 21:32:19'),
(237, 'App\\Models\\Upload', 113, 'image', 'Nems poulet -min-min', 'Nems-poulet--min-min.jpg', 'image/jpeg', 'public', 243602, '[]', '{\"uuid\":\"1e4917ca-ef7d-4326-80a4-affd001a8a59\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2021-04-28 21:33:27', '2021-04-28 21:33:28'),
(238, 'App\\Models\\Food', 194, 'image', 'Nems poulet -min-min', 'Nems-poulet--min-min.jpg', 'image/jpeg', 'public', 243602, '[]', '{\"uuid\":\"1e4917ca-ef7d-4326-80a4-affd001a8a59\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 238, '2021-04-28 21:34:23', '2021-04-28 21:34:23'),
(239, 'App\\Models\\Upload', 114, 'image', 'crevettes sauce cashew nuts-min (1)-mine-min-min', 'crevettes-sauce-cashew-nuts-min-(1)-mine-min-min.jpg', 'image/jpeg', 'public', 226736, '[]', '{\"uuid\":\"71df7753-d834-482a-8a4f-5b64f4a4f9fa\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2021-04-28 21:35:49', '2021-04-28 21:35:49'),
(240, 'App\\Models\\Food', 195, 'image', 'crevettes sauce cashew nuts-min (1)-mine-min-min', 'crevettes-sauce-cashew-nuts-min-(1)-mine-min-min.jpg', 'image/jpeg', 'public', 226736, '[]', '{\"uuid\":\"71df7753-d834-482a-8a4f-5b64f4a4f9fa\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 240, '2021-04-28 21:36:49', '2021-04-28 21:36:49'),
(241, 'App\\Models\\Upload', 115, 'image', 'pad-thai crevettes-min-min', 'pad-thai-crevettes-min-min.jpg', 'image/jpeg', 'public', 250209, '[]', '{\"uuid\":\"a9ae28df-be3b-4630-a426-92d2ef9518f1\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 241, '2021-04-28 21:37:24', '2021-04-28 21:37:24'),
(242, 'App\\Models\\Food', 196, 'image', 'pad-thai crevettes-min-min', 'pad-thai-crevettes-min-min.jpg', 'image/jpeg', 'public', 250209, '[]', '{\"uuid\":\"a9ae28df-be3b-4630-a426-92d2ef9518f1\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 242, '2021-04-28 21:38:10', '2021-04-28 21:38:10'),
(243, 'App\\Models\\Upload', 116, 'image', 'arizona-green-tea-with-honey--min', 'arizona-green-tea-with-honey--min.jpg', 'image/jpeg', 'public', 52128, '[]', '{\"uuid\":\"851fa7bb-7f0f-453a-85f1-ce174834b8a8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 243, '2021-04-28 21:38:48', '2021-04-28 21:38:49'),
(244, 'App\\Models\\Food', 197, 'image', 'arizona-green-tea-with-honey--min', 'arizona-green-tea-with-honey--min.jpg', 'image/jpeg', 'public', 52128, '[]', '{\"uuid\":\"851fa7bb-7f0f-453a-85f1-ce174834b8a8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 244, '2021-04-28 21:39:17', '2021-04-28 21:39:17'),
(245, 'App\\Models\\Upload', 117, 'image', 'Desperados-33-jpg-min', 'Desperados-33-jpg-min.jpg', 'image/jpeg', 'public', 35609, '[]', '{\"uuid\":\"604f083f-ec94-450a-8305-4170cf1ce6fe\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 245, '2021-04-28 21:39:50', '2021-04-28 21:39:50'),
(246, 'App\\Models\\Upload', 118, 'image', 'Singha-Thailande-33-cl-min', 'Singha-Thailande-33-cl-min.jpg', 'image/jpeg', 'public', 38544, '[]', '{\"uuid\":\"f7a32d9e-ad33-46cb-80e7-76a465c8f5b8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 246, '2021-04-28 21:40:34', '2021-04-28 21:40:35'),
(247, 'App\\Models\\Food', 198, 'image', 'Singha-Thailande-33-cl-min', 'Singha-Thailande-33-cl-min.jpg', 'image/jpeg', 'public', 38544, '[]', '{\"uuid\":\"f7a32d9e-ad33-46cb-80e7-76a465c8f5b8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 247, '2021-04-28 21:40:57', '2021-04-28 21:40:57'),
(248, 'App\\Models\\Upload', 119, 'image', '20200607_125452', '20200607_125452.jpg', 'image/jpeg', 'public', 552686, '[]', '{\"uuid\":\"281217d3-e277-4246-ae35-0cdec761e1dc\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 248, '2021-04-28 21:47:17', '2021-04-28 21:47:17'),
(249, 'App\\Models\\Cuisine', 15, 'image', '20200607_125452', '20200607_125452.jpg', 'image/jpeg', 'public', 552686, '[]', '{\"uuid\":\"281217d3-e277-4246-ae35-0cdec761e1dc\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2021-04-28 21:47:19', '2021-04-28 21:47:19'),
(250, 'App\\Models\\Upload', 120, 'image', 'SLIDE 4', 'SLIDE-4.jpg', 'image/jpeg', 'public', 104054, '[]', '{\"uuid\":\"9dc46696-1e7c-4dd6-8900-0c1d9fade28a\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 250, '2021-04-28 21:49:33', '2021-04-28 21:49:33'),
(252, 'App\\Models\\Upload', 121, 'image', 'LOGO4', 'LOGO4.png', 'image/png', 'public', 94832, '[]', '{\"uuid\":\"bae3d112-1661-4182-8402-41b658023353\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 252, '2021-04-28 21:50:22', '2021-04-28 21:50:22'),
(254, 'App\\Models\\Upload', 122, 'image', 'Capture d’écran (284)', 'Capture-d’écran-(284).png', 'image/png', 'public', 452473, '[]', '{\"uuid\":\"8cb510ce-d8ae-408b-b295-d48c6fdce8f0\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 254, '2021-04-28 21:51:42', '2021-04-28 21:51:43'),
(256, 'App\\Models\\Upload', 123, 'image', 'Capture d’écran (701)', 'Capture-d’écran-(701).png', 'image/png', 'public', 3646687, '[]', '{\"uuid\":\"99fdffa2-34c1-409c-9ac6-d306aef10e79\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 256, '2021-04-28 21:53:00', '2021-04-28 21:53:01'),
(258, 'App\\Models\\Upload', 124, 'image', 'Capture d’écran (701)', 'Capture-d’écran-(701).png', 'image/png', 'public', 3646687, '[]', '{\"uuid\":\"2e497b49-34d3-4270-912e-ac4f628b8e4c\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 258, '2021-04-28 22:00:04', '2021-04-28 22:00:04'),
(259, 'App\\Models\\Restaurant', 26, 'image', 'Capture d’écran (701)', 'Capture-d’écran-(701).png', 'image/png', 'public', 3646687, '[]', '{\"uuid\":\"2e497b49-34d3-4270-912e-ac4f628b8e4c\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 259, '2021-04-28 22:00:43', '2021-04-28 22:00:43'),
(260, 'App\\Models\\Upload', 125, 'image', 'mamathai-logo-2', 'mamathai-logo-2.png', 'image/png', 'public', 867503, '[]', '{\"uuid\":\"df1343de-43c8-463e-8d74-edf3b2593566\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 260, '2021-04-28 22:01:35', '2021-04-28 22:01:37'),
(262, 'App\\Models\\Upload', 126, 'image', '1578055884291', '1578055884291.jpg', 'image/jpeg', 'public', 214155, '[]', '{\"uuid\":\"769c0da5-f5b6-4a52-a6ab-3e4d3abd09f1\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 261, '2021-04-28 22:02:39', '2021-04-28 22:02:39'),
(264, 'App\\Models\\Upload', 127, 'image', 'Capture d’écran (8) - Copie', 'Capture-d’écran-(8)---Copie.png', 'image/png', 'public', 1409282, '[]', '{\"uuid\":\"7ffe3b52-2387-4748-884c-170b977b4956\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2021-04-28 22:03:34', '2021-04-28 22:03:35'),
(265, 'App\\Models\\Restaurant', 24, 'image', 'Capture d’écran (8) - Copie', 'Capture-d’écran-(8)---Copie.png', 'image/png', 'public', 1409282, '[]', '{\"uuid\":\"7ffe3b52-2387-4748-884c-170b977b4956\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 264, '2021-04-28 22:03:39', '2021-04-28 22:03:39'),
(266, 'App\\Models\\Upload', 128, 'image', 'Capture d’écran (291) - Copie', 'Capture-d’écran-(291)---Copie.png', 'image/png', 'public', 1083868, '[]', '{\"uuid\":\"34225167-e816-40a3-8bac-4861d510e679\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 265, '2021-04-28 22:04:04', '2021-04-28 22:04:04'),
(268, 'App\\Models\\Upload', 129, 'image', 'Capture d’écran (286) - Copie', 'Capture-d’écran-(286)---Copie.png', 'image/png', 'public', 2017026, '[]', '{\"uuid\":\"391a0b88-e8a5-41a4-a947-7561a378078c\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 266, '2021-04-28 22:09:00', '2021-04-28 22:09:01'),
(270, 'App\\Models\\Upload', 130, 'image', '1578055884291', '1578055884291.jpg', 'image/jpeg', 'public', 214155, '[]', '{\"uuid\":\"876147b3-0e38-46c1-9f71-e63f407d23d3\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 267, '2021-04-28 22:11:32', '2021-04-28 22:11:32'),
(272, 'App\\Models\\Upload', 131, 'image', 'mamathai-logo-2', 'mamathai-logo-2.png', 'image/png', 'public', 867503, '[]', '{\"uuid\":\"dc35bfa6-994a-40ca-9c91-b1bcb7e810b8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 268, '2021-04-28 22:25:42', '2021-04-28 22:25:44'),
(273, 'App\\Models\\Restaurant', 30, 'image', 'mamathai-logo-2', 'mamathai-logo-2.png', 'image/png', 'public', 867503, '[]', '{\"uuid\":\"dc35bfa6-994a-40ca-9c91-b1bcb7e810b8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 269, '2021-04-28 22:25:47', '2021-04-28 22:25:47'),
(275, 'App\\Models\\Upload', 132, 'image', '3847f580-51a5-0132-0b47-0eae5eefacd9.0.0', '3847f580-51a5-0132-0b47-0eae5eefacd9.0.0.jpeg', 'image/jpeg', 'public', 120382, '[]', '{\"uuid\":\"f96b98d7-9657-4fb8-9cb1-12ac067f85aa\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 275, '2021-04-29 13:16:09', '2021-04-29 13:16:10'),
(276, 'App\\Models\\Upload', 133, 'image', '3847f580-51a5-0132-0b47-0eae5eefacd9.0.0', '3847f580-51a5-0132-0b47-0eae5eefacd9.0.0.jpeg', 'image/jpeg', 'public', 120382, '[]', '{\"uuid\":\"de493100-d918-440e-9696-8abc64685193\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 276, '2021-04-29 13:16:34', '2021-04-29 13:16:35'),
(277, 'App\\Models\\Upload', 134, 'image', 'Screenshot_20210429-171853_Uber Eats', 'Screenshot_20210429-171853_Uber-Eats.jpg', 'image/jpeg', 'public', 8053, '[]', '{\"uuid\":\"0747589b-bcc2-487c-bb3d-82b39636a271\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 277, '2021-04-29 13:20:18', '2021-04-29 13:20:18'),
(278, 'App\\Models\\Category', 16, 'image', 'Screenshot_20210429-171853_Uber Eats', 'Screenshot_20210429-171853_Uber-Eats.jpg', 'image/jpeg', 'public', 8053, '[]', '{\"uuid\":\"0747589b-bcc2-487c-bb3d-82b39636a271\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 278, '2021-04-29 13:20:21', '2021-04-29 13:20:21'),
(279, 'App\\Models\\Upload', 135, 'image', 'Screenshot_20210429-171932_Uber Eats', 'Screenshot_20210429-171932_Uber-Eats.jpg', 'image/jpeg', 'public', 7408, '[]', '{\"uuid\":\"b2fbed1e-075e-4adb-8d42-039b4e7a1169\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 279, '2021-04-29 13:20:36', '2021-04-29 13:20:37'),
(280, 'App\\Models\\Category', 1, 'image', 'Screenshot_20210429-171932_Uber Eats', 'Screenshot_20210429-171932_Uber-Eats.jpg', 'image/jpeg', 'public', 7408, '[]', '{\"uuid\":\"b2fbed1e-075e-4adb-8d42-039b4e7a1169\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2021-04-29 13:20:51', '2021-04-29 13:20:51'),
(281, 'App\\Models\\Upload', 136, 'image', 'Screenshot_20210429-171907_Uber Eats', 'Screenshot_20210429-171907_Uber-Eats.jpg', 'image/jpeg', 'public', 9522, '[]', '{\"uuid\":\"c86c98ad-005e-4cad-b6b4-3424e30b8b8f\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 281, '2021-04-29 13:21:23', '2021-04-29 13:21:23'),
(282, 'App\\Models\\Category', 9, 'image', 'Screenshot_20210429-171907_Uber Eats', 'Screenshot_20210429-171907_Uber-Eats.jpg', 'image/jpeg', 'public', 9522, '[]', '{\"uuid\":\"c86c98ad-005e-4cad-b6b4-3424e30b8b8f\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 282, '2021-04-29 13:21:25', '2021-04-29 13:21:25'),
(283, 'App\\Models\\Upload', 137, 'image', 'Screenshot_20210429-171841_Uber Eats', 'Screenshot_20210429-171841_Uber-Eats.jpg', 'image/jpeg', 'public', 9541, '[]', '{\"uuid\":\"1d61baf1-97ba-4cfa-b2f1-209ce35f4d49\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 283, '2021-04-29 13:22:09', '2021-04-29 13:22:09'),
(284, 'App\\Models\\Category', 3, 'image', 'Screenshot_20210429-171841_Uber Eats', 'Screenshot_20210429-171841_Uber-Eats.jpg', 'image/jpeg', 'public', 9541, '[]', '{\"uuid\":\"1d61baf1-97ba-4cfa-b2f1-209ce35f4d49\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 284, '2021-04-29 13:22:11', '2021-04-29 13:22:11'),
(285, 'App\\Models\\Upload', 138, 'image', '1f32e', '1f32e.jpg', 'image/jpeg', 'public', 31814, '[]', '{\"uuid\":\"e7299193-5312-470a-8642-9be0c2b02c2b\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 285, '2021-04-29 13:25:49', '2021-04-29 13:25:49'),
(286, 'App\\Models\\Category', 14, 'image', '1f32e', '1f32e.jpg', 'image/jpeg', 'public', 31814, '[]', '{\"uuid\":\"e7299193-5312-470a-8642-9be0c2b02c2b\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 286, '2021-04-29 13:25:51', '2021-04-29 13:25:51'),
(287, 'App\\Models\\Upload', 139, 'image', 'téléchargement', 'téléchargement.jpeg', 'image/jpeg', 'public', 4192, '[]', '{\"uuid\":\"edb98892-1ef3-4097-929a-8c9bad0bf306\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 287, '2021-04-29 13:26:35', '2021-04-29 13:26:35'),
(288, 'App\\Models\\Category', 12, 'image', 'téléchargement', 'téléchargement.jpeg', 'image/jpeg', 'public', 4192, '[]', '{\"uuid\":\"edb98892-1ef3-4097-929a-8c9bad0bf306\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 288, '2021-04-29 13:26:36', '2021-04-29 13:26:36'),
(289, 'App\\Models\\Upload', 140, 'image', 'téléchargement (1)', 'téléchargement-(1).jpeg', 'image/jpeg', 'public', 4580, '[]', '{\"uuid\":\"b047ca0f-1b71-4824-b148-5399252f3c65\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 289, '2021-04-29 13:29:56', '2021-04-29 13:29:56'),
(290, 'App\\Models\\Category', 13, 'image', 'téléchargement (1)', 'téléchargement-(1).jpeg', 'image/jpeg', 'public', 4580, '[]', '{\"uuid\":\"b047ca0f-1b71-4824-b148-5399252f3c65\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 290, '2021-04-29 13:29:58', '2021-04-29 13:29:58'),
(291, 'App\\Models\\Upload', 141, 'image', 'Screenshot_20210429-172304_Uber Eats', 'Screenshot_20210429-172304_Uber-Eats.jpg', 'image/jpeg', 'public', 11390, '[]', '{\"uuid\":\"a36476eb-6521-4f24-831e-942f80f3f022\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 291, '2021-04-29 13:31:24', '2021-04-29 13:31:24'),
(293, 'App\\Models\\Upload', 142, 'image', 'Screenshot_20210429-172304_Uber Eats', 'Screenshot_20210429-172304_Uber-Eats.jpg', 'image/jpeg', 'public', 11390, '[]', '{\"uuid\":\"cffe5b0b-efea-4ff4-b54c-0e487a3d5ab8\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 293, '2021-04-29 13:31:52', '2021-04-29 13:31:52'),
(294, 'App\\Models\\Upload', 143, 'image', 'Screenshot_20210429-172304_Uber Eats', 'Screenshot_20210429-172304_Uber-Eats.jpg', 'image/jpeg', 'public', 11390, '[]', '{\"uuid\":\"fdcf44c7-6eda-4647-a7e0-3f9af05da083\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 294, '2021-04-29 13:32:18', '2021-04-29 13:32:19'),
(295, 'App\\Models\\Category', 17, 'image', 'Screenshot_20210429-172304_Uber Eats', 'Screenshot_20210429-172304_Uber-Eats.jpg', 'image/jpeg', 'public', 11390, '[]', '{\"uuid\":\"fdcf44c7-6eda-4647-a7e0-3f9af05da083\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 295, '2021-04-29 13:32:21', '2021-04-29 13:32:21'),
(296, 'App\\Models\\Upload', 144, 'image', 'Screenshot_20210429-172412_Uber Eats', 'Screenshot_20210429-172412_Uber-Eats.jpg', 'image/jpeg', 'public', 10175, '[]', '{\"uuid\":\"25bb4250-1d71-47fe-bf76-a09b8a14ee94\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 296, '2021-04-29 13:32:39', '2021-04-29 13:32:39'),
(297, 'App\\Models\\Upload', 145, 'image', 'téléchargement (2)', 'téléchargement-(2).jpeg', 'image/jpeg', 'public', 5815, '[]', '{\"uuid\":\"ae89c8a4-88ff-4e5a-974e-57a9fd0184c5\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 297, '2021-04-29 13:33:58', '2021-04-29 13:33:58'),
(298, 'App\\Models\\Category', 15, 'image', 'téléchargement (2)', 'téléchargement-(2).jpeg', 'image/jpeg', 'public', 5815, '[]', '{\"uuid\":\"ae89c8a4-88ff-4e5a-974e-57a9fd0184c5\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 298, '2021-04-29 13:34:02', '2021-04-29 13:34:02'),
(299, 'App\\Models\\Upload', 146, 'image', 'téléchargement (3)', 'téléchargement-(3).jpeg', 'image/jpeg', 'public', 3629, '[]', '{\"uuid\":\"cda79f90-65a4-41c2-800b-38168344af69\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 299, '2021-04-29 13:34:37', '2021-04-29 13:34:37'),
(300, 'App\\Models\\Category', 11, 'image', 'téléchargement (3)', 'téléchargement-(3).jpeg', 'image/jpeg', 'public', 3629, '[]', '{\"uuid\":\"cda79f90-65a4-41c2-800b-38168344af69\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 300, '2021-04-29 13:34:39', '2021-04-29 13:34:39'),
(301, 'App\\Models\\Upload', 147, 'license', 'flower', 'flower.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"3a2a488c-9941-49d3-8c9d-0280522b7a90\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 301, '2021-04-29 14:26:11', '2021-04-29 14:26:13'),
(303, 'App\\Models\\Upload', 148, 'license', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"88371048-8148-4723-8c60-921ac3868c65\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 303, '2021-04-29 14:29:54', '2021-04-29 14:29:54'),
(305, 'App\\Models\\Upload', 149, 'image', 'rie nature', 'rie-nature.jpg', 'image/jpeg', 'public', 59072, '[]', '{\"uuid\":\"d8c5d13a-0eb8-4427-8e2b-c7729ad8a277\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 305, '2021-04-29 23:46:39', '2021-04-29 23:46:41'),
(306, 'App\\Models\\Extra', 52, 'image', 'rie nature', 'rie-nature.jpg', 'image/jpeg', 'public', 59072, '[]', '{\"uuid\":\"d8c5d13a-0eb8-4427-8e2b-c7729ad8a277\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 306, '2021-04-29 23:47:09', '2021-04-29 23:47:09'),
(307, 'App\\Models\\Upload', 150, 'image', 'Singha-Thailande-33-cl', 'Singha-Thailande-33-cl.jpg', 'image/jpeg', 'public', 18738, '[]', '{\"uuid\":\"7aa870db-e861-4776-a33f-a2d5a505b8fc\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 307, '2021-04-29 23:54:52', '2021-04-29 23:54:52'),
(308, 'App\\Models\\Extra', 54, 'image', 'Singha-Thailande-33-cl', 'Singha-Thailande-33-cl.jpg', 'image/jpeg', 'public', 18738, '[]', '{\"uuid\":\"7aa870db-e861-4776-a33f-a2d5a505b8fc\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 308, '2021-04-29 23:55:03', '2021-04-29 23:55:03'),
(309, 'App\\Models\\Upload', 151, 'image', 'khao-pad-thai-jpg', 'khao-pad-thai-jpg.jpg', 'image/jpeg', 'public', 155529, '[]', '{\"uuid\":\"c598434f-7c49-4f16-a5e2-dc61d3a24193\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 309, '2021-04-30 00:00:03', '2021-04-30 00:00:03'),
(310, 'App\\Models\\Extra', 55, 'image', 'khao-pad-thai-jpg', 'khao-pad-thai-jpg.jpg', 'image/jpeg', 'public', 155529, '[]', '{\"uuid\":\"c598434f-7c49-4f16-a5e2-dc61d3a24193\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 310, '2021-04-30 00:00:49', '2021-04-30 00:00:49'),
(311, 'App\\Models\\Upload', 152, 'image', 'Singha-Thailande-33-cl', 'Singha-Thailande-33-cl.jpg', 'image/jpeg', 'public', 18738, '[]', '{\"uuid\":\"48e077fd-b389-4677-9a52-dca82ab446d9\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 311, '2021-04-30 00:02:08', '2021-04-30 00:02:08'),
(312, 'App\\Models\\Extra', 56, 'image', 'Singha-Thailande-33-cl', 'Singha-Thailande-33-cl.jpg', 'image/jpeg', 'public', 18738, '[]', '{\"uuid\":\"48e077fd-b389-4677-9a52-dca82ab446d9\",\"user_id\":22,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 312, '2021-04-30 00:02:10', '2021-04-30 00:02:10'),
(314, 'App\\Models\\Upload', 153, 'image', 'halwapuri', 'halwapuri.jpg', 'image/jpeg', 'public', 7466, '[]', '{\"uuid\":\"5bff4a36-03a5-434e-b34d-d8853e49f911\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 314, '2021-04-30 06:46:44', '2021-04-30 06:46:45'),
(315, 'App\\Models\\Upload', 154, 'image', 'halwapuri', 'halwapuri.jpg', 'image/jpeg', 'public', 7466, '[]', '{\"uuid\":\"582d9cb6-9334-4688-ac06-4747adcecff8\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 315, '2021-04-30 06:48:39', '2021-04-30 06:48:39'),
(316, 'App\\Models\\Restaurant', 31, 'image', 'halwapuri', 'halwapuri.jpg', 'image/jpeg', 'public', 7466, '[]', '{\"uuid\":\"582d9cb6-9334-4688-ac06-4747adcecff8\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 316, '2021-04-30 06:48:42', '2021-04-30 06:48:42'),
(319, 'App\\Models\\Upload', 155, 'avatar', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"9047a133-b622-4cef-b43a-08cbb028f197\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 319, '2021-04-30 10:05:33', '2021-04-30 10:05:33'),
(322, 'App\\Models\\Upload', 156, 'avatar', 'halwapuri', 'halwapuri.jpg', 'image/jpeg', 'public', 7466, '[]', '{\"uuid\":\"be8ad788-ff8e-4c85-9cae-c6623bff21cc\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 322, '2021-04-30 10:31:41', '2021-04-30 10:31:42'),
(324, 'App\\Models\\Upload', 157, 'extra', 'asdsa', 'asdsa.png', 'image/png', 'public', 3916, '[]', '{\"uuid\":\"bc0c2f62-bbee-47f3-9ec6-9753318547cf\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 324, '2021-04-30 10:32:23', '2021-04-30 10:32:23'),
(326, 'App\\Models\\Upload', 158, 'image', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"ddda7734-7ed6-4e4f-a374-ca2e61b7626c\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 326, '2021-04-30 11:33:57', '2021-04-30 11:34:01'),
(327, 'App\\Models\\Restaurant', 32, 'image', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkk.jpg', 'image/jpeg', 'public', 15721, '[]', '{\"uuid\":\"ddda7734-7ed6-4e4f-a374-ca2e61b7626c\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 327, '2021-04-30 11:34:33', '2021-04-30 11:34:33'),
(329, 'App\\Models\\Restaurant', 49, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 105482, '[]', '{\"uuid\":\"7175ed95-ff5b-4b57-847a-1814679c9d9b\",\"user_id\":49,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 329, NULL, NULL),
(330, 'App\\Models\\Restaurant', 50, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 1429662, '[]', '{\"uuid\":\"e48ce164-2c79-44f1-8504-385517f088b4\",\"user_id\":50,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 330, NULL, NULL),
(331, 'App\\Models\\Restaurant', 51, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 67123, '[]', '{\"uuid\":\"c9a58416-922b-4641-91bc-f58ac0e927c7\",\"user_id\":51,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 331, NULL, NULL),
(332, 'App\\Models\\Restaurant', 55, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 105482, '[]', '{\"uuid\":\"4798a6c8-96c4-47f5-8182-d7af41c817d8\",\"user_id\":55,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 332, NULL, NULL),
(333, 'App\\Models\\Restaurant', 48, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 71163, '[]', '{\"uuid\":\"ddda7734-7ed6-4e4f-a374-ca2e61b7626c\",\"user_id\":65,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 333, '2021-05-05 16:39:03', '2021-05-05 16:39:03'),
(335, 'App\\Models\\Upload', 159, 'image', 'chinese-food', 'chinese-food.png', 'image/png', 'public', 18104, '[]', '{\"uuid\":\"bde7ec22-028c-4469-a060-1800dd29efac\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 335, '2021-05-06 05:23:32', '2021-05-06 05:23:34'),
(336, 'App\\Models\\Category', 18, 'image', 'chinese-food', 'chinese-food.png', 'image/png', 'public', 18104, '[]', '{\"uuid\":\"bde7ec22-028c-4469-a060-1800dd29efac\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 336, '2021-05-06 05:25:07', '2021-05-06 05:25:07'),
(337, 'App\\Models\\Restaurant', 72, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 112874, '[]', '{\"uuid\":\"ae12e701-7547-4e30-a493-b4dbeb1b6a0a\",\"user_id\":72,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 337, NULL, NULL),
(338, 'App\\Models\\Restaurant', 73, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 4273, '[]', '{\"uuid\":\"14e07a6c-e938-4fc3-8c54-a6ab9b9a5dee\",\"user_id\":73,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 338, NULL, NULL),
(339, 'App\\Models\\Restaurant', 74, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 4631, '[]', '{\"uuid\":\"fb2bba4f-c774-4957-bd35-09e2874fbceb\",\"user_id\":74,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 339, NULL, NULL),
(340, 'App\\Models\\Restaurant', 75, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 71680, '[]', '{\"uuid\":\"a92c94ea-5b96-4244-9337-5bf664c8949b\",\"user_id\":75,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 340, NULL, NULL),
(341, 'App\\Models\\Restaurant', 76, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 479142, '[]', '{\"uuid\":\"ed0b1873-1070-48e2-bbf6-01cc6993de25\",\"user_id\":76,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 341, NULL, NULL),
(342, 'App\\Models\\Restaurant', 77, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 79013, '[]', '{\"uuid\":\"4f87fe8d-df8f-4fbd-8776-09ace7fc4325\",\"user_id\":77,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 342, NULL, NULL),
(343, 'App\\Models\\Restaurant', 78, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 5957, '[]', '{\"uuid\":\"e5094e2e-1c98-4bf1-a212-9a6da3b15fd4\",\"user_id\":78,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 343, NULL, NULL),
(344, 'App\\Models\\Restaurant', 79, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 197912, '[]', '{\"uuid\":\"11ed42f9-e912-474d-a397-3f13d7b5ab01\",\"user_id\":79,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 344, NULL, NULL),
(345, 'App\\Models\\Food', 205, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 29598, '[]', '{\"uuid\":\"1486668b-d313-45be-821c-534ef948ee0e\",\"user_id\":205,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 345, NULL, NULL),
(346, 'App\\Models\\Food', 206, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 43994, '[]', '{\"uuid\":\"a270e5f7-f6c3-42c2-9fdc-aa341206e8ee\",\"user_id\":206,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 346, NULL, NULL),
(347, 'App\\Models\\Food', 207, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 59984, '[]', '{\"uuid\":\"eb131d5f-0fd0-4734-ae02-7bf7486ef549\",\"user_id\":207,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 347, NULL, NULL),
(348, 'App\\Models\\Food', 208, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 291230, '[]', '{\"uuid\":\"8180249a-16b3-45bc-8bcb-bd5a5530d450\",\"user_id\":208,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 348, NULL, NULL),
(350, 'App\\Models\\Food', 209, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 55452, '[]', '{\"uuid\":\"bf0390e0-df29-47dc-b23f-280f2f9967fd\",\"user_id\":209,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 350, NULL, NULL),
(351, 'App\\Models\\Restaurant', 80, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 58578, '[]', '{\"uuid\":\"a8d1957a-eca4-4198-8997-7c0b113fc91e\",\"user_id\":80,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 351, NULL, NULL),
(352, 'App\\Models\\Restaurant', 81, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 58578, '[]', '{\"uuid\":\"6e35d969-c96d-42d6-9de6-e016d0c62db5\",\"user_id\":81,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 352, NULL, NULL),
(353, 'App\\Models\\Food', 212, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 363491, '[]', '{\"uuid\":\"36f9fbbe-eb27-46dc-82d9-3c3b4437e571\",\"user_id\":212,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 353, NULL, NULL),
(354, 'App\\Models\\Food', 211, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 363491, '[]', '{\"uuid\":\"d3922b1f-8e17-4d84-a5b1-a571ee6cd05a\",\"user_id\":211,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 354, NULL, NULL),
(355, 'App\\Models\\Food', 210, 'image', 'golddigger', 'golddigger.jpeg', 'image/jpeg', 'public', 363491, '[]', '{\"uuid\":\"647a6f57-c1ce-4f82-8a44-c39c0bf9906d\",\"user_id\":210,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 355, NULL, NULL),
(356, 'App\\Models\\Upload', 160, 'app_logo', 'LogoAEblue', 'LogoAEblue.png', 'image/png', 'public', 55768, '[]', '{\"uuid\":\"1b389c55-ca96-4242-9a62-b77b21f8f4e2\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 356, '2021-07-20 10:52:22', '2021-07-20 10:52:23'),
(357, 'App\\Models\\Upload', 161, 'app_logo', 'LogoAEblue', 'LogoAEblue.png', 'image/png', 'public', 55768, '[]', '{\"uuid\":\"34533879-7ee6-45d5-b9cd-c0dcaf3a2985\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 357, '2021-07-20 10:53:55', '2021-07-20 10:53:56'),
(358, 'App\\Models\\Upload', 162, 'app_logo', 'AE', 'AE.jpg', 'image/jpeg', 'public', 50907, '[]', '{\"uuid\":\"ebf4bc50-4efa-4e3a-8450-7200fab84102\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 358, '2021-07-20 10:55:05', '2021-07-20 10:55:05'),
(359, 'App\\Models\\Upload', 163, 'avatar', 'l60777--pokemon-67448', 'l60777--pokemon-67448.png', 'image/png', 'public', 87832, '[]', '{\"uuid\":\"662e2b8d-f1f4-4c52-b173-42f48ae18e0c\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 359, '2021-07-22 09:41:08', '2021-07-22 09:41:09'),
(360, 'App\\Models\\User', 77, 'avatar', 'l60777--pokemon-67448', 'l60777--pokemon-67448.png', 'image/png', 'public', 87832, '[]', '{\"uuid\":\"662e2b8d-f1f4-4c52-b173-42f48ae18e0c\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 360, '2021-07-22 09:41:25', '2021-07-22 09:41:25'),
(361, 'App\\Models\\Upload', 164, 'avatar', 'l4789-squirtle-pokemon-4335', 'l4789-squirtle-pokemon-4335.png', 'image/png', 'public', 190772, '[]', '{\"uuid\":\"808df889-6061-4239-9e01-861eeba9e15a\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 361, '2021-07-22 09:42:23', '2021-07-22 09:42:23'),
(362, 'App\\Models\\User', 77, 'avatar', 'l4789-squirtle-pokemon-4335', 'l4789-squirtle-pokemon-4335.png', 'image/png', 'public', 190772, '[]', '{\"uuid\":\"808df889-6061-4239-9e01-861eeba9e15a\",\"user_id\":21,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 362, '2021-07-22 09:42:32', '2021-07-22 09:42:32'),
(363, 'App\\Models\\Upload', 165, 'image', 'l60777--pokemon-67448', 'l60777--pokemon-67448.png', 'image/png', 'public', 87832, '[]', '{\"uuid\":\"219beb04-78e0-42eb-8429-4bcb9fa83528\",\"user_id\":77,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 363, '2021-07-22 09:45:36', '2021-07-22 09:45:36'),
(364, 'App\\Models\\Cuisine', 19, 'image', 'l60777--pokemon-67448', 'l60777--pokemon-67448.png', 'image/png', 'public', 87832, '[]', '{\"uuid\":\"219beb04-78e0-42eb-8429-4bcb9fa83528\",\"user_id\":77,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 364, '2021-07-22 09:45:58', '2021-07-22 09:45:58');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('12a9edfd-bfc9-4daf-88cf-9d0382f9879f', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 22, '{\"order_id\":21}', NULL, '2021-05-14 00:16:06', '2021-05-14 00:16:06'),
('20ed78e9-3c76-4f65-a382-58e8b0b1ddc9', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":3}', NULL, '2020-09-04 16:11:37', '2020-09-04 16:11:37'),
('3fee0bf9-e2e7-4442-b7a5-47b63167dc6a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 22, '{\"order_id\":20}', NULL, '2021-05-13 23:29:03', '2021-05-13 23:29:03'),
('48084f92-cf88-4c1e-b895-fd16d4fa7330', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 22, '{\"order_id\":23}', NULL, '2021-06-28 07:48:47', '2021-06-28 07:48:47'),
('4e581757-d0d4-4db9-8500-8f4f3b820db7', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":3}', NULL, '2020-09-04 16:12:06', '2020-09-04 16:12:06'),
('5017f2af-5dcc-44c6-ac2f-6ca76f5e5537', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 16, '{\"order_id\":14}', NULL, '2021-04-20 13:16:04', '2021-04-20 13:16:04'),
('514cebd0-2c51-49be-9769-4c453f1b698b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 16, '{\"order_id\":12}', NULL, '2021-04-20 13:04:04', '2021-04-20 13:04:04'),
('63f6e844-6bf6-4b06-a071-d6efbbee5f5c', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":1}', NULL, '2020-09-04 14:59:12', '2020-09-04 14:59:12'),
('77bd93b9-fc8b-4df6-9915-56ce413827cd', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":3}', NULL, '2020-09-04 16:11:50', '2020-09-04 16:11:50'),
('8b8ba533-bffe-4819-9dcf-a8c90ef7f375', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":1}', NULL, '2020-09-04 14:58:25', '2020-09-04 14:58:25'),
('9fdc5ea3-8a68-4e49-927e-e0c3e6a66723', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":1}', NULL, '2020-09-04 14:57:41', '2020-09-04 14:57:41'),
('a227af3a-410d-4e4b-8e3f-7a68853fe79b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 22, '{\"order_id\":22}', NULL, '2021-05-14 12:10:31', '2021-05-14 12:10:31'),
('ccdd3157-11a5-49af-96f1-d10cd1ebb5d1', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 16, '{\"order_id\":13}', NULL, '2021-04-20 13:10:23', '2021-04-20 13:10:23'),
('d345a2e6-dfc5-470e-bada-65fdbaaa05df', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":3}', NULL, '2020-09-04 16:11:03', '2020-09-04 16:11:03'),
('e44b8bd5-f1ee-43b4-bd71-573f2d3c3d16', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":3}', NULL, '2020-09-04 16:11:03', '2020-09-04 16:11:03'),
('ec8cd2df-3134-4399-8436-4edd78a9f1b9', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 16, '{\"order_id\":15}', NULL, '2021-04-20 14:43:05', '2021-04-20 14:43:05'),
('f5f959f9-1d19-43eb-8e46-64b478beb65f', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 1, '{\"order_id\":3}', NULL, '2020-09-04 16:10:26', '2020-09-04 16:10:26'),
('fe98bb3b-660d-44c2-a579-5f4ac48b5bb8', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":1}', NULL, '2020-09-04 14:57:40', '2020-09-04 14:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 0,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`id`, `name`, `quantity`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'Proteins', 8, 21, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(2, 'Proteins', 81, 28, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, 'Lipid', 51, 29, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'Sugar', 73, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Proteins', 65, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Proteins', 17, 20, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'Calcium', 128, 7, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Sugar', 125, 25, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'Proteins', 199, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'Lipid', 147, 24, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'Lipid', 195, 15, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, 'Calcium', 44, 20, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'Proteins', 132, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'Sugar', 37, 15, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'Lipid', 161, 25, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(16, 'Sugar', 139, 21, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'Calcium', 66, 14, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(18, 'Lipid', 103, 15, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(19, 'Calcium', 62, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(20, 'Calcium', 191, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(21, 'Lipid', 23, 29, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(22, 'Calcium', 2, 26, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(23, 'Lipid', 59, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(24, 'Proteins', 15, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(25, 'Lipid', 16, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(26, 'Calcium', 194, 10, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(27, 'Lipid', 50, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(28, 'Calcium', 3, 27, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(29, 'Proteins', 105, 19, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(30, 'Sugar', 195, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(31, 'Proteins', 135, 8, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(32, 'Proteins', 16, 6, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(33, 'Lipid', 147, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(34, 'Lipid', 159, 29, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(35, 'Lipid', 37, 19, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(36, 'Proteins', 199, 29, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(37, 'Calcium', 5, 18, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(38, 'Sugar', 183, 23, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(39, 'Proteins', 19, 11, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(40, 'Proteins', 195, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(41, 'Proteins', 112, 26, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(42, 'Proteins', 145, 23, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(43, 'Sugar', 43, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(44, 'Calcium', 194, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(45, 'Calcium', 15, 12, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(46, 'Calcium', 28, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(47, 'Calcium', 45, 18, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(48, 'Proteins', 142, 30, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(49, 'Calcium', 180, 28, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(50, 'Sugar', 101, 12, '2020-09-02 00:25:15', '2020-09-02 00:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `opendays`
--

CREATE TABLE `opendays` (
  `id` int(11) NOT NULL,
  `name` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `opendays`
--

INSERT INTO `opendays` (`id`, `name`) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(3, 'Tuesday'),
(4, 'Wednesday'),
(5, 'Thursday'),
(6, 'Friday'),
(7, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `open_restaurants`
--

CREATE TABLE `open_restaurants` (
  `id` int(11) NOT NULL,
  `openday` varchar(199) NOT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `open_restaurants`
--

INSERT INTO `open_restaurants` (`id`, `openday`, `restaurant_id`) VALUES
(29, 'Tuesday', 15),
(30, 'Friday', 15),
(33, 'Tuesday', 16),
(37, 'Monday', 3),
(38, 'Wednesday', 3),
(41, 'Sunday', 18),
(42, 'Monday', 18),
(43, 'Wednesday', 18),
(60, 'Monday', 22),
(61, 'Tuesday', 22),
(62, 'Wednesday', 22),
(63, 'Monday', 21),
(64, 'Tuesday', 21),
(65, 'Wednesday', 21),
(66, 'Thursday', 21),
(67, 'Friday', 21),
(68, 'Saturday', 21),
(79, 'Sunday', 28),
(80, 'Monday', 28),
(81, 'Tuesday', 28),
(83, 'Sunday', 29),
(84, 'Monday', 29),
(85, 'Tuesday', 29),
(86, 'Wednesday', 29),
(87, 'Friday', 29),
(88, 'Saturday', 29),
(94, 'Tuesday', 25),
(105, 'Tuesday', 26),
(116, 'Monday', 24),
(117, 'Wednesday', 24),
(133, 'Monday', 23),
(149, 'Monday', 20),
(150, 'Tuesday', 20),
(151, 'Wednesday', 20),
(152, 'Thursday', 20),
(153, 'Friday', 20),
(154, 'Saturday', 20),
(170, 'Tuesday', 1),
(171, 'Wednesday', 1),
(173, 'Tuesday', 2),
(174, 'Sunday', 30),
(175, 'Monday', 30),
(176, 'Tuesday', 30),
(177, 'Wednesday', 30),
(178, 'Friday', 30),
(182, 'Wednesday', 31),
(183, 'Thursday', 31),
(184, 'Friday', 31),
(185, 'Thursday', 32),
(186, 'Friday', 32),
(187, 'Sunday', 33),
(188, 'Saturday', 34),
(189, 'Wednesday', 36),
(194, 'Monday', 49),
(195, 'Tuesday', 49),
(196, 'Wednesday', 49),
(201, 'Tuesday', 52),
(208, 'Sunday', 48),
(209, 'Wednesday', 48),
(212, 'Monday', 76),
(213, 'Saturday', 76),
(214, 'Sunday', 77),
(215, 'Tuesday', 77),
(218, 'Wednesday', 79),
(219, 'Monday', 78),
(220, 'Thursday', 78),
(227, 'Sunday', 82),
(228, 'Monday', 82),
(229, 'Tuesday', 82),
(230, 'Thursday', 82),
(231, 'Friday', 82),
(232, 'Saturday', 82),
(254, 'Sunday', 83),
(255, 'Monday', 83),
(256, 'Tuesday', 83),
(257, 'Wednesday', 83),
(258, 'Thursday', 83),
(259, 'Friday', 83),
(260, 'Saturday', 83);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT 0.00,
  `delivery_fee` double(5,2) DEFAULT 0.00,
  `hint` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_status_id`, `tax`, `delivery_fee`, `hint`, `active`, `driver_id`, `delivery_address_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 21.26, 20.00, NULL, 1, 5, NULL, 1, '2020-09-04 14:57:10', '2020-09-04 15:07:32'),
(2, 7, 1, 21.26, 0.00, NULL, 1, NULL, NULL, 2, '2020-09-04 15:13:14', '2020-09-04 15:13:14'),
(3, 8, 5, 14.63, 0.00, NULL, 1, 5, NULL, 3, '2020-09-04 16:10:26', '2020-09-04 16:12:55'),
(9, 51, 5, NULL, NULL, NULL, 1, 6, NULL, NULL, '2021-03-11 18:16:10', '2021-03-11 18:16:10'),
(10, 53, 1, NULL, NULL, NULL, 0, 53, NULL, NULL, '2021-03-18 07:04:17', '2021-03-18 07:04:17'),
(11, 25, 5, NULL, NULL, NULL, 0, 53, NULL, NULL, '2021-03-18 07:17:08', '2021-03-18 07:17:08'),
(12, 53, 1, 21.26, 0.00, NULL, 1, NULL, NULL, 4, '2021-04-20 13:04:04', '2021-04-20 13:04:04'),
(13, 53, 1, 21.26, 0.00, NULL, 1, NULL, NULL, 5, '2021-04-20 13:10:23', '2021-04-20 13:10:23'),
(14, 2, 1, 21.26, 0.00, NULL, 1, NULL, NULL, 6, '2021-04-20 13:16:04', '2021-04-20 13:16:04'),
(15, 2, 1, 21.26, 4.17, NULL, 1, NULL, NULL, 7, '2021-04-20 14:43:04', '2021-04-20 14:43:04'),
(16, 70, 1, 74.30, 0.00, NULL, 1, NULL, NULL, 8, '2021-05-05 17:05:31', '2021-05-05 17:05:31'),
(17, 70, 1, 74.30, 0.00, NULL, 1, NULL, NULL, NULL, '2021-05-05 17:16:57', '2021-05-05 17:16:57'),
(18, 70, 1, 74.30, 0.00, NULL, 1, NULL, NULL, NULL, '2021-05-05 17:17:11', '2021-05-05 17:17:11'),
(19, 22, 1, 10.00, 0.00, NULL, 1, NULL, NULL, NULL, '2021-05-07 11:30:14', '2021-05-07 11:30:14'),
(20, 22, 1, 10.00, 0.00, NULL, 1, NULL, NULL, 9, '2021-05-13 23:29:02', '2021-05-13 23:29:03'),
(21, 22, 1, 10.00, 0.00, NULL, 1, NULL, NULL, 10, '2021-05-14 00:16:05', '2021-05-14 00:16:05'),
(22, 22, 1, 10.00, 0.00, NULL, 0, NULL, NULL, 11, '2021-05-14 12:10:31', '2021-06-28 07:50:37'),
(23, 22, 1, 10.00, 0.00, NULL, 1, NULL, NULL, 12, '2021-06-28 07:48:44', '2021-06-28 07:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 20:39:28', '2019-10-15 22:03:14'),
(2, 'Preparing', '2019-10-15 22:03:50', '2019-10-15 22:03:50'),
(3, 'Ready', '2019-10-15 22:04:30', '2019-10-15 22:04:30'),
(4, 'On the Way', '2019-10-15 22:04:13', '2019-10-15 22:04:13'),
(5, 'Delivered', '2019-10-15 22:04:30', '2019-10-15 22:04:30');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `price`, `description`, `user_id`, `status`, `method`, `created_at`, `updated_at`) VALUES
(1, 48.32, 'Order not paid yet', 7, 'Paid', 'Pay on Pickup', '2020-09-04 14:57:10', '2020-09-04 14:59:21'),
(2, 48.32, 'Order not paid yet', 7, 'Waiting for Client', 'Pay on Pickup', '2020-09-04 15:13:14', '2020-09-04 15:13:14'),
(3, 46.13, 'Order not paid yet', 8, 'Paid', 'Pay on Pickup', '2020-09-04 16:10:26', '2020-09-04 16:12:06'),
(4, 48.32, 'Order not paid yet', 53, 'Waiting for Client', 'Pay on Pickup', '2021-04-20 13:04:04', '2021-04-20 13:04:04'),
(5, 35.17, 'Order not paid yet', 53, 'Waiting for Client', 'Pay on Pickup', '2021-04-20 13:10:23', '2021-04-20 13:10:23'),
(6, 96.64, 'Order not paid yet', 2, 'Waiting for Client', 'Pay on Pickup', '2021-04-20 13:16:04', '2021-04-20 13:16:04'),
(7, 14838.79, 'Order not paid yet', 2, 'Waiting for Client', 'Cash on Delivery', '2021-04-20 14:43:04', '2021-04-20 14:43:04'),
(8, 70.14, 'Order not paid yet', 70, 'Waiting for Client', 'Pay on Pickup', '2021-05-05 17:05:31', '2021-05-05 17:05:31'),
(9, 15.18, 'Order not paid yet', 22, 'Waiting for Client', 'Pay on Pickup', '2021-05-13 23:29:03', '2021-05-13 23:29:03'),
(10, 9.90, 'Order not paid yet', 22, 'Waiting for Client', 'Cash on Delivery', '2021-05-14 00:16:05', '2021-05-14 00:16:05'),
(11, 15.95, 'Order not paid yet', 22, 'Waiting for Client', 'Cash on Delivery', '2021-05-14 12:10:31', '2021-05-14 12:10:31'),
(12, 12.65, 'Order not paid yet', 22, 'Waiting for Client', 'Pay on Pickup', '2021-06-28 07:48:44', '2021-06-28 07:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` double(8,2) DEFAULT 0.00,
  `delivery_fee` double(8,2) DEFAULT 0.00,
  `delivery_range` double(8,2) DEFAULT 0.00,
  `default_tax` double(8,2) DEFAULT 0.00,
  `closed` tinyint(1) DEFAULT 0,
  `active` tinyint(1) DEFAULT 0,
  `available_for_delivery` tinyint(1) DEFAULT 1,
  `open` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `close` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `open`, `close`, `created_at`, `updated_at`) VALUES
(2, 'Restaurant Stehr Ltdssss dumpy hehe', 'Deserunt hic minus consequatur laborum rerum. Rerum quia nihil modi facilis et dignissimos et. Optio consectetur odit minus necessitatibus repellendus totam quasi corrupti.', '158 Abernathy MissionWest Willie, AK 54531-1956', '31.53973', '74.30224', '295-423-7207', '1-979-372-9368', 'Nostrum voluptas ea corporis voluptatem iure esse asperiores. Nihil nobis tenetur tempora et minima voluptatem quidem. Perferendis et cupiditate non iste sit optio.', 44.58, 4.69, 31.54, 74.30, 0, 1, 1, '0', '0', '2020-09-02 00:25:15', '2021-05-05 04:12:05'),
(3, 'Foody', 'Aperiam est qui ratione quidem officia. Ullam sequi quis et dolorem in repellendus. Dolorem vero quasi inventore est qui. Omnis et voluptas natus. Rem voluptatum odio nesciunt qui dolor ut ut.', '663 Taryn ManorsKeelingstad, AK 24198-7430', '47.86822', '11.533423', '(313) 965-6829 x2707', '(756) 362-5883 x02977', 'Quod reiciendis ea exercitationem illo. Sed vitae quasi odit perferendis qui. Nihil omnis sed rem recusandae nihil.', 10.00, 1.52, 44.71, 25.61, 1, 1, 1, NULL, NULL, '2020-09-02 00:25:15', '2021-05-05 03:31:08'),
(4, 'Foody Little, Hintz and Hauck', 'Labore animi non atque ipsam earum quia a. Praesentium magni mollitia eum quia aut laboriosam facilis quis. Modi iure aut omnis quasi. Accusantium velit non libero voluptatibus.', '72883 Reynolds Coves\nSouth Barney, OK 85324', '47.98063', '11.829055', '593.821.3083 x0039', '(609) 225-7504 x09137', 'Itaque numquam dolores nesciunt similique. Debitis enim omnis quos voluptas est sequi. Magni ipsam enim et quibusdam ratione amet molestiae.', 32.33, 9.85, 73.19, 25.77, 0, 1, 1, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Foody Dach Ltd', 'Cumque autem aliquid quasi. Nam libero quas eum tempora repellat. Aut nemo et quibusdam in aliquid aperiam.', '35482 Smith Pines Apt. 151\nEast Cristobalside, LA 45887-2822', '43.90304', '8.765293', '431.777.0601 x6624', '858.566.2178', 'Commodi praesentium amet voluptates molestiae. Quia id illo molestias enim tempora. Perspiciatis consequatur ducimus omnis ut nam explicabo.', 20.03, 9.53, 93.04, 21.28, 1, 1, 0, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Foody O\'Hara Group', 'Est illum pariatur nihil et aut id omnis. Nemo quisquam quisquam quidem sequi illum vel quo. Ratione sed saepe doloremque molestiae consequatur. Dolor aut ipsa repellat omnis.', '37396 Roderick Extensions\nWest Kaiafort, NY 31202', '54.062467', '7.575031', '412.631.0572', '550-794-5064', 'Autem repellat fugit et odio. Possimus facilis dolor omnis quod harum voluptate. Ipsam corrupti dolore dolorem ducimus dolorem.', 39.36, 3.44, 63.63, 21.28, 1, 1, 1, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'Restaurant Jast, Ryan and Russel', 'Vero atque quasi nihil minus et. Iste atque iure ipsam culpa qui. Consequatur id et quaerat pariatur. Sit sed fuga corporis autem. Eum aut impedit asperiores. Rerum aut corrupti ut consequatur.', '6195 Carmel Extensions Suite 046\nEast Jarrellside, AZ 80354', '51.824295', '8.463493', '335-904-4868 x824', '(457) 386-0572', 'Et minus sunt amet. Corrupti iste ea a quae rerum quia ut. Consequatur dolores quia qui sit.', 47.86, 8.43, 92.91, 18.60, 1, 1, 0, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Foody Mohr, Wisoky and Douglas', 'Repudiandae asperiores esse aut sequi molestias. Inventore porro est harum veniam vel ut delectus a. Nobis veniam sint sint assumenda deserunt.', '509 Loyal Ports Apt. 068\nPort Icieshire, WA 20461-2123', '50.753559', '9.072155', '752-637-5904 x561', '760.246.1529', 'Corrupti aut quibusdam dignissimos excepturi soluta nihil nemo. Qui voluptas alias ducimus dolorem molestiae voluptatibus. Et blanditiis voluptas cupiditate eos.', 12.89, 2.27, 72.08, 8.70, 0, 1, 0, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'Pizza Brakus, Wiza and Blick', 'Nisi dolorem deserunt quia. Impedit similique dicta dolor quod. Vitae voluptatem voluptas vel et repudiandae. Mollitia et magnam mollitia sed non.', '40581 Durgan Forks\nEverettstad, DE 10185', '54.852969', '11.811524', '975-479-5826 x3323', '242-391-5093 x09972', 'Cupiditate dolorum laborum ea quo. Ut hic omnis est dignissimos. Ad et ut cum.', 10.74, 9.57, 41.19, 6.20, 0, 1, 0, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'Pizza Barrows Inc', 'Tempore doloremque vitae modi nam et atque. Dolores doloribus qui et molestiae officiis quo. Ducimus dicta id deleniti beatae ipsum. Sit tenetur sit reiciendis sit beatae.', '4217 Huel Freeway\nSouth Mallie, TN 31511-8346', '42.768596', '7.567974', '+1-423-626-4040', '517-804-1643 x261', 'Facere iusto fugit officiis aliquam tempora porro ut eos. Eius quidem nam inventore corporis. Modi occaecati rerum cumque sed.', 13.64, 3.71, 11.94, 25.32, 1, 1, 1, '0', '0', '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'demo res', '<p>gdg</p>', 'gd', '58', '5.2', NULL, '5464', '<p>gdgd</p>', 20.00, NULL, NULL, NULL, 0, 1, 0, '0', '0', '2020-09-05 17:39:28', '2020-09-05 17:39:28'),
(12, 'testing restuarnt 1', '<p>gfhgfh</p>', 'jhgfh', '154', '14654', '0515428152', '03154302671', '<p>gfhgfh</p>', 30.00, 5.00, 1.00, NULL, 0, 1, 1, '0', '0', '2020-09-14 23:22:23', '2020-09-14 23:22:23'),
(13, 'Abey', '<p>okde^kdokfperkf$poke$pfok^lke</p>', 'jdioez', '42.3300', '5.62223', '023320021', '2302102120', NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2020-09-26 21:06:21', '2020-09-26 21:06:21'),
(14, 'dfdsf', '<p>dfsdfsdfsd</p>', 'f dfgdfgdfg', '3655', '5656', '544', '6+6', '<p> ffdsf</p>', 4.00, 565.00, NULL, NULL, 0, 1, 0, '0', '0', '2020-10-17 10:18:05', '2020-10-17 10:18:05'),
(15, 'fddf', '<p>sdfsdfsdf<br></p>', 'sdffsdf', '563563', '56', '24512', '65653', '<p>dfdfd<br></p>', 20.00, 4.00, 10.00, 14.00, 1, 1, 1, '0', '0', '2020-10-17 10:26:00', '2020-10-17 10:26:00'),
(16, 'dfdsf', '<p>dfsdfsdfsd</p>', 'f dfgdfgdfg', '3655', '5656', '544', '6+6', '<p> ffdsf</p>', 4.00, 565.00, NULL, NULL, 0, 1, 0, '0', '0', '2020-10-17 10:47:00', '2020-10-17 10:47:00'),
(17, 'ji', '<p>dsfsd</p>', '454', '465', '5656', '5424', '5454', '<p>fsdfd</p>', 11.00, 6.00, 5.00, 5.00, 1, 1, 1, '0', '0', '2020-10-17 10:52:55', '2020-10-17 10:52:55'),
(18, 'my rest', '<p>hbsdjhasudhusa asdhasuhduashud sjduashdusahud</p>', 'h no 9 st no 8 new shalimar colony lahore', '54', '76', '03104000953', '03360456562', '<p>jhbjkjnkj  bjnknkjn</p>', 6.00, 11.00, NULL, NULL, 0, 1, 0, NULL, NULL, '2021-03-22 19:44:13', '2021-03-22 19:44:13'),
(20, 'Leberlin', '<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\">\"Berlin\" vous propose une cuisine saine et authentique composée de bons légumes frais, une viande de qualité embrochée chaque matin, du pain Pita de boulanger, servis avec des frites maison. Une cuisine 100% maison avec des produits locaux !\"</span>', '8, Avenue Durante', '43.702298', '7.262531', '0784965894', '0784965894', '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\">\"Berlin\" vous propose une cuisine saine et authentique composée de bons légumes frais, une viande de qualité embrochée chaque matin, du pain Pita de boulanger, servis avec des frites maison. Une cuisine 100% maison avec des produits locaux !\"</span><br></p>', 0.00, 0.00, 0.00, 0.00, 0, 1, 1, '12 AM', '10 PM', '2021-04-01 18:42:54', '2021-04-29 11:13:39'),
(21, 'Leberlin', '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\">\"Berlin\" vous propose une cuisine saine et authentique composée de bons légumes frais, une viande de qualité embrochée chaque matin, du pain Pita de boulanger, servis avec des frites maison. Une cuisine 100% maison avec des produits locaux !\"</span><br></p>', '8 Avenue Durante', '43.702298', '7.262531', '0784965894', '0784965894', '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;\">\"Berlin\" vous propose une cuisine saine et authentique composée de bons légumes frais, une viande de qualité embrochée chaque matin, du pain Pita de boulanger, servis avec des frites maison. Une cuisine 100% maison avec des produits locaux !\"</span><br></p>', 0.00, 0.00, 0.00, 0.00, 0, 1, 1, '12 AM', '10 PM', '2021-04-01 18:53:13', '2021-04-02 10:57:54'),
(22, 'NICE FOOD', '<p>Test 1</p>', '1', '43.694592', '7.249190', '012020202', '1201201220', '<p>Nice</p>', 20.00, NULL, 12.00, 10.00, 0, 1, 1, '10:00AM', '10:00PM', '2021-04-02 10:57:18', '2021-04-02 10:57:18'),
(23, 'demo', '<p>ASSURANCE<br></p>', '97897897897', '89789', '7978', '22232323232', '667897878', '<p>OPTICIEN<br></p>', 0.00, 45.00, 222.00, 1.00, 0, 1, 1, '09:00 AM', '11:00 PM', '2021-04-02 11:25:09', '2021-04-28 22:10:16'),
(24, 'dEMO 1', '<p>lOSEN PROMIUM</p>', '1', '43.694592', '7.249190', '01201220', '1201201220', '<p>LOSEN PROMIUM</p>', 0.00, 10.00, 2.00, 10.00, 0, 1, 1, '10:00AM', '10:00PM', '2021-04-02 11:25:38', '2021-04-02 11:27:12'),
(25, 'MAMASSAN', 'CUISINE ASIATIQUE DU MONDE', '5454', '4545', '5445', '4545454', '54', '<p>sdfsdfsdf<br></p>', 0.00, 4.00, 5454.00, 45.00, 0, 1, 1, '09:00 AM', '11:00 PM', '2021-04-02 11:31:34', '2021-04-28 21:26:42'),
(26, 'NICE FOOD', '<p>CUISINE DU MONDE</p>', '1', '43.694592', '7.249190', '10000112', '1201201220', '<p>FERZEF</p>', 0.00, 1.00, 1.00, 1.00, 0, 1, 1, '10:00AM', '10:00PM', '2021-04-02 11:32:44', '2021-04-28 22:00:43'),
(27, 'vhsvd shdbsh', 'wbhjw wwhj', 'hgsvd 56r5 sghvdsgh', '40.4', '43.7', NULL, NULL, NULL, 2300.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-04-20 12:40:59', '2021-04-20 12:40:59'),
(28, 'siasfdasd', '<p>i am gud</p>', 'h no 9 st no 8 new shalimar colony lahore', '54', '76', '03104000953', '03104000953', NULL, 30.00, 20.00, NULL, NULL, 0, 1, 1, NULL, NULL, '2021-04-20 13:18:53', '2021-04-20 13:18:53'),
(29, 'Benjamin', '<p>Restaurant&nbsp;</p>', 'St Antoine, 06200 Nice', '43.697452', '7.2072073', '0202032033', '0203020303', '<p>Nice, Restaurant&nbsp;</p>', 10.00, 10.00, 25.00, 10.00, 0, 1, 1, '10:00AM', '00:00AM', '2021-04-27 10:42:54', '2021-04-27 10:42:56'),
(30, 'mamathai', '<p>THAI FOOD DE FOLIE</p><div id=\"fancy-heading-922-1-0-0\" class=\"module module-fancy-heading fancy-heading-922-1-0-0   tb_5b7l976\" style=\"margin: 0px; padding: 0px; transition: background 500ms ease 0s, font-size 0s ease 0s, line-height 0s ease 0s, color 0s ease 0s, padding 0s ease 0s, margin 0s ease 0s, border 0s ease 0s, border-radius 0s ease 0s, box-shadow 0s ease 0s, text-shadow 0s ease 0s, filter 0s ease 0s, -webkit-filter 0s ease 0s, transform 0s ease 0s; position: relative; color: rgb(255, 255, 255); font-family: Cabin, sans-serif; font-size: 17.6px; text-align: center; background-color: rgb(31, 30, 30);\"></div>', '11 AVENUE DURANTE', '43.7026816', '7.2613888', '0498995504', '0656662829', '<p>MAMA-THAI.FR</p>', 0.00, NULL, NULL, 10.00, 0, 1, 1, '11:00AM', '10:00PM', '2021-04-28 21:25:41', '2021-04-29 11:40:14'),
(31, 'Sultan Shawarma', '<p>v v v amazing halwa puri</p>', 'sadsadsadsa', '31.53973', '74.30224', '03238466759', '03238466759', NULL, 30.00, 200.00, 10.00, 19.00, 0, 1, 1, '09:00', '11:00', '2021-04-30 06:47:33', '2021-04-30 06:47:35'),
(32, 'restaurant787', '<p>hsakhsakhdkh sadas</p>', 'sadsadsadsa', '31.53973', '74.30224', '66767688', '7777777', '<p>aasdasd sadsaasc sa</p>', 30.00, 500.00, 25.00, 19.00, 0, 1, 1, '09:00', '11:00', '2021-04-30 11:34:27', '2021-04-30 11:34:33'),
(33, 'Abdullah', '<p>ADSADSADSADSA</p>', NULL, '31.53973', '74.30224', NULL, NULL, NULL, 40.00, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-05-01 12:58:13', '2021-05-01 12:58:14'),
(34, 'sadsadasda', '<p>aaaaaaaaaaaaaaasdac&nbsp; &nbsp; &nbsp; asdasddd kfkkfkaksa</p>', NULL, '31.53973', '74.30224', NULL, NULL, NULL, 30.00, NULL, NULL, NULL, 0, 1, 1, '09:00', '11:00', '2021-05-01 13:59:20', '2021-05-01 13:59:20'),
(35, 'Test 43', '<p>Descript choice</p>', '45', '45.0955', '4.2050', '0147852', '3698520', '<p>Truck...</p>', 10.00, 0.00, 0.00, 20.00, 0, 1, 1, '09:00Am', '12:00pm', '2021-05-04 05:12:31', '2021-05-04 05:12:33'),
(36, 'Test 43', '<p>Descript choice</p>', '45', '45.0955', '4.2050', '0147852', '3698520', '<p>Truck...</p>', 10.00, 0.00, 0.00, 20.00, 0, 1, 1, '09:00Am', '12:00pm', '2021-05-04 05:13:47', '2021-05-04 05:13:47'),
(37, 'Restaurant Stehr Ltdssss dumpy hehe', 'Deserunt hic minus consequatur laborum rerum. Rerum quia nihil modi facilis et dignissimos et. Optio consectetur odit minus necessitatibus repellendus totam quasi corrupti.', '158 Abernathy MissionWest Willie, AK 54531-1956', '31.53973', '74.30224', '295-423-7207', '1-979-372-9368', 'Nostrum voluptas ea corporis voluptatem iure esse asperiores. Nihil nobis tenetur tempora et minima voluptatem quidem. Perferendis et cupiditate non iste sit optio.', 44.58, 4.69, 31.54, 74.30, 0, 1, 1, '0', '0', '2021-05-05 06:40:04', '2021-05-05 06:40:04'),
(38, 'Restaurant Stehr Ltdssss dumpy hehe', 'Deserunt hic minus consequatur laborum rerum. Rerum quia nihil modi facilis et dignissimos et. Optio consectetur odit minus necessitatibus repellendus totam quasi corrupti.', '158 Abernathy MissionWest Willie, AK 54531-1956', '31.53973', '74.30224', '295-423-7207', '1-979-372-9368', 'Nostrum voluptas ea corporis voluptatem iure esse asperiores. Nihil nobis tenetur tempora et minima voluptatem quidem. Perferendis et cupiditate non iste sit optio.', 44.58, 4.69, 31.54, 74.30, 0, 1, 1, '0', '0', '2021-05-05 06:41:10', '2021-05-05 06:41:10'),
(39, 'Restaurant Stehr Ltdssss dumpy hehe', 'Deserunt hic minus consequatur laborum rerum. Rerum quia nihil modi facilis et dignissimos et. Optio consectetur odit minus necessitatibus repellendus totam quasi corrupti.', '158 Abernathy MissionWest Willie, AK 54531-1956', '31.53973', '74.30224', '295-423-7207', '1-979-372-9368', 'Nostrum voluptas ea corporis voluptatem iure esse asperiores. Nihil nobis tenetur tempora et minima voluptatem quidem. Perferendis et cupiditate non iste sit optio.', 44.58, 4.69, 31.54, 74.30, 0, 1, 1, '0', '0', '2021-05-05 06:43:17', '2021-05-05 06:43:17'),
(40, 'Working', NULL, NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 06:45:48', '2021-05-05 06:45:48'),
(41, 'Ali Hamza restr', NULL, NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:24:41', '2021-05-05 07:24:41'),
(42, 'Ali Hamza part two', 'I love to work', 'G.T Road', '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:30:11', '2021-05-05 07:30:11'),
(43, 'John dow Restru', 'I love to work', 'G.T Road', '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:30:49', '2021-05-05 07:30:49'),
(44, 'John dow Restru', 'I love to work', 'G.T Road', '12.3589', '-15.2560', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:33:59', '2021-05-05 07:33:59'),
(45, 'John dow Restru', 'I love to work', 'G.T Road', '12.3589', '-15.2560', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:34:24', '2021-05-05 07:34:24'),
(46, 'John dow final check', 'I love to work', 'G.T Road', '12.3589', '-15.2560', '5555', '5555', NULL, 25.33, 10.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:37:05', '2021-05-05 07:37:05'),
(47, 'new Restaurant', NULL, NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 07:46:28', '2021-05-05 07:46:28'),
(48, 'tutifruti', 'samjdjsjsjsjs', 'hdjdhdh5 hdhs', '31.542502', '74.2835778', '8187751788', '8187751788', 'samjdjsjsjsjs', 0.00, 58.00, 20.00, 20.00, 0, 1, 1, '09:00', '11:00', '2021-05-05 13:12:53', '2021-05-06 22:20:37'),
(49, 'sample2', 'vehdhhd dbdhbd', 'hsjshs dbsj', '44', '188', '5484458', '5484458', 'vehdhhd dbdhbd', 0.00, 58.00, 20.00, 20.00, 0, 1, 1, '0', '0', '2021-05-05 13:26:26', '2021-05-05 14:15:45'),
(50, 'sample5', 'bsbhshs. shshs', 'zbzbbsh 55 hs', '90', '60', '6466766767', '6466766767', 'bsbhshs. shshs', 0.00, 50.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-05 13:29:35', '2021-05-05 13:29:35'),
(51, 'gshssjjs', 'bzjzhzz jssjsjs', 'hdudhsjdjd', '90', '102', '673466767', '673466767', 'bzjzhzz jssjsjs', 0.00, 28.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-05 13:31:27', '2021-05-05 13:31:27'),
(52, 'hzhzhz', 'zbzjzjz', 'zhzhzhz', '64', '97', '7777777676', '7777777676', 'zbzjzjz', 0.00, 45.00, 20.00, 20.00, 0, 1, 1, '0', '0', '2021-05-05 13:33:01', '2021-05-06 05:33:30'),
(53, 'sample233', NULL, NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 13:38:47', '2021-05-05 13:38:47'),
(54, 'sample234', NULL, NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-05 13:38:55', '2021-05-05 13:38:55'),
(55, 'sample69', 'hjshajana', 'gajahaha', '80', '90', '64349494', '64349494', 'hjshajana', 0.00, 45.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-05 14:21:00', '2021-05-05 14:21:00'),
(56, 'sample6766676', NULL, NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:27:22', '2021-05-06 15:27:22'),
(57, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:28:14', '2021-05-06 15:28:14'),
(58, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:28:25', '2021-05-06 15:28:25'),
(59, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:29:34', '2021-05-06 15:29:34'),
(60, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:29:45', '2021-05-06 15:29:45'),
(61, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:33:15', '2021-05-06 15:33:15'),
(62, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 15:33:44', '2021-05-06 15:33:44'),
(63, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:37:45', '2021-05-06 18:37:45'),
(64, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:37:55', '2021-05-06 18:37:55'),
(65, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:38:38', '2021-05-06 18:38:38'),
(66, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:38:51', '2021-05-06 18:38:51'),
(67, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:39:09', '2021-05-06 18:39:09'),
(68, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:39:24', '2021-05-06 18:39:24'),
(69, 'sample6766676', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:40:03', '2021-05-06 18:40:03'),
(70, 'sample67666', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:40:45', '2021-05-06 18:40:45'),
(71, 'sample67666', 'sadjsadjasdj asdjasdjsad asjdsadajsd', NULL, '', '', NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-06 18:41:11', '2021-05-06 18:41:11'),
(72, 'testty', 'bshshshs sbns', 'bshshsbhshs shhs', '31.5425013', '74.2835775', '8484887', '44874577', 'bshshshs sbns', 0.00, 53.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-06 21:28:37', '2021-05-06 21:28:37'),
(73, 'fielduuu', 'bajajjj', 'bsjshhshs', '31.5425009', '74.2835756', '5646464', '643464', 'bajajjj', 0.00, 56.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-06 21:32:46', '2021-05-06 21:32:46'),
(74, 'tetu', 'vshsjsjjs', 'hshshshsjjs', '31.542501', '74.2835785', '5477874', '8458455', 'vshsjsjjs', 0.00, 846464.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-06 21:35:56', '2021-05-06 21:35:56'),
(75, 'testt', 'gshhshs sbsbhs', 'gshshhs sbhss', '31.5425034', '74.2835791', '846274488', '84587788788', 'gshhshs sbsbhs', 0.00, 18.00, 20.00, 20.00, 0, 0, 1, '0', '0', '2021-05-06 22:19:45', '2021-05-06 22:19:45'),
(76, 'food quickly', 'food delivery', 'into me', '45.097142', '4.204768', '098754321', '09874321', 'food delivery', 0.00, NULL, 20.00, 20.00, 0, 1, 1, '0', '0', '2021-05-06 22:47:58', '2021-05-06 22:51:09'),
(77, 'test78', 'This is added', 'Hsishsiaj', '31.5397526', '74.3024581', '7878788', '1111111', 'This is added', 0.00, 100.00, 20.00, 20.00, 0, 1, 1, '0', '0', '2021-05-06 23:10:07', '2021-05-06 23:11:47'),
(78, '23ford', 'kiraro', NULL, '45.0971416', '4.2047684', '345688899', '23456778i8', 'kiraro', 30.00, 2.00, 20.00, 20.00, 0, 1, 1, '0', '0', '2021-05-06 23:17:27', '2021-05-06 23:38:18'),
(79, 'to prove', 'That it is working', 'No address', '31.5396822', '74.3025659', '67772', '111111', 'That it is working', 0.00, 10.00, 20.00, 20.00, 0, 1, 1, '0', '0', '2021-05-06 23:29:44', '2021-05-06 23:32:15'),
(80, 'pizza', 'magarita', '8 rue d\'italie', '75884', '24789', '0677889900', NULL, NULL, 0.00, 3.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-07 11:24:54', '2021-05-07 11:24:54'),
(81, 'pizza', 'magarita', '8 rue d\'italie', '75884', '24789', '0677889900', NULL, NULL, 0.00, 3.00, 0.00, 0.00, 0, 0, 1, '0', '0', '2021-05-07 11:24:55', '2021-05-07 11:24:55'),
(82, 'Olivier', '<p>TEST POUR OLIVIER</p>', 'NICE', '44.665539', '4.526576', '0601908462', '0601908462', '<p>MANAGER</p>', 0.00, 10.00, 25.00, 10.00, 0, 1, 1, '10:00 am', '11:00 pm', '2021-07-22 09:51:34', '2021-07-22 10:00:43'),
(83, 'Cantum', '<p>Magasin cantum</p>', '17 avene george gallcie', '43.56796240546787', '7.113938218594971', '0404040404', NULL, '<p>informations</p>', 0.00, 10.00, NULL, NULL, 0, 1, 1, '12:00 AM', '11:00 PM', '2021-07-29 06:14:29', '2021-07-29 06:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_payouts`
--

CREATE TABLE `restaurants_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cuisines`
--

CREATE TABLE `restaurant_cuisines` (
  `cuisine_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `restaurant_cuisines`
--

INSERT INTO `restaurant_cuisines` (`cuisine_id`, `restaurant_id`) VALUES
(1, 7),
(1, 9),
(2, 7),
(2, 17),
(3, 6),
(3, 13),
(4, 12),
(4, 14),
(4, 16),
(5, 8),
(5, 10),
(5, 11),
(5, 13),
(6, 5),
(10, 10),
(11, 30),
(12, 23),
(13, 20),
(14, 24),
(15, 22),
(16, 26),
(18, 29),
(18, 35),
(18, 36),
(19, 3),
(19, 82),
(20, 11),
(20, 83);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_reviews`
--

CREATE TABLE `restaurant_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `restaurant_reviews`
--

INSERT INTO `restaurant_reviews` (`id`, `review`, `rate`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Why, I haven\'t had a door leading right into it. \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice.', 5, 4, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(2, 'March Hare went \'Sh! sh!\' and the roof was thatched with fur. It was all dark overhead; before her was another long passage, and the whole pack rose up into the air. She did not look at a king,\'.', 5, 5, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(3, 'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked up towards it rather.', 1, 5, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(4, 'CHAPTER IX. The Mock Turtle at last, with a lobster as a drawing of a well?\' \'Take some more of the wood--(she considered him to you, Though they were nice grand words to say.) Presently she began.', 1, 2, 7, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(5, 'Tell me that first, and then, if I know is, it would make with the lobsters and the turtles all advance! They are waiting on the second verse of the ground--and I should understand that better,\'.', 5, 3, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(6, 'Alice began to feel which way you can;--but I must go and live in that soup!\' Alice said very politely, feeling quite pleased to find her in a moment that it felt quite unhappy at the house, quite.', 5, 6, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(7, 'YET,\' she said this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to the shore, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head sadly.', 2, 6, 10, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(8, 'Queen, tossing her head on her toes when they liked, and left foot, so as to the jury, and the turtles all advance! They are waiting on the bank, and of having the sentence first!\' \'Hold your.', 1, 2, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(9, 'I must be Mabel after all, and I don\'t keep the same year for such dainties would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know.', 2, 4, 8, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(10, 'Duchess. An invitation for the hot day made her draw back in their mouths. So they had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, in a sulky tone, as it.', 2, 6, 8, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(11, 'I to do next, when suddenly a White Rabbit blew three blasts on the spot.\' This did not like to see it quite plainly through the wood. \'It\'s the stupidest tea-party I ever saw one that size? Why, it.', 3, 4, 2, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(12, 'Hatter. This piece of it in a trembling voice:-- \'I passed by his garden, and marked, with one finger for the pool of tears which she concluded that it was too small, but at any rate he might answer.', 4, 2, 8, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(13, 'King added in an undertone to the little golden key in the face. \'I\'ll put a stop to this,\' she said to herself as she went down to the rose-tree, she went on again:-- \'You may not have lived much.', 3, 2, 5, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(14, 'Alice as it could go, and broke to pieces against one of its little eyes, but it was too small, but at any rate, the Dormouse indignantly. However, he consented to go after that into a.', 3, 4, 4, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(15, 'CAN all that green stuff be?\' said Alice. \'Exactly so,\' said the Hatter; \'so I can\'t show it you myself,\' the Mock Turtle. \'Very much indeed,\' said Alice. \'I\'ve so often read in the act of crawling.', 3, 3, 7, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(16, 'I\'m not particular as to the Classics master, though. He was an old crab, HE was.\' \'I never was so small as this before, never! And I declare it\'s too bad, that it would make with the Mouse only.', 1, 6, 7, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(17, 'They all returned from him to you, Though they were trying to box her own ears for having missed their turns, and she thought at first she would get up and said, \'That\'s right, Five! Always lay the.', 2, 5, 3, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(18, 'Crab took the watch and looked at Alice. \'It must have prizes.\' \'But who is Dinah, if I shall see it again, but it just now.\' \'It\'s the Cheshire Cat, she was quite impossible to say \'Drink me,\' but.', 4, 2, 1, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(19, 'YOU like cats if you could manage it?) \'And what an ignorant little girl or a watch to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Come on, then,\' said the King: \'however, it.', 3, 2, 9, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(20, 'After a time there were TWO little shrieks, and more puzzled, but she felt unhappy. \'It was the first day,\' said the March Hare went on. \'Or would you tell me, Pat, what\'s that in about half no.', 4, 2, 8, '2020-09-02 00:25:15', '2020-09-02 00:25:15'),
(21, 'nkkK', 5, 7, 1, '2020-09-04 15:00:32', '2020-09-04 15:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `service_layout_builders`
--

CREATE TABLE `service_layout_builders` (
  `sercie_row_id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `service_list_item_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_list_item_2` varchar(255) DEFAULT NULL,
  `service_list_item_3` varchar(255) DEFAULT NULL,
  `service_list_item_4` varchar(255) DEFAULT NULL,
  `service_list_item_5` varchar(255) DEFAULT NULL,
  `bg_image_1` varchar(255) DEFAULT NULL,
  `bg_image_2` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_layout_builders`
--

INSERT INTO `service_layout_builders` (`sercie_row_id`, `theme_id`, `user_id`, `title`, `sub_title`, `details`, `service_list_item_1`, `service_list_item_2`, `service_list_item_3`, `service_list_item_4`, `service_list_item_5`, `bg_image_1`, `bg_image_2`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 78, 'Meilleurs Services', 'CHIKERY CAKE', 'Consectetur adipiscing elit. Curabitur sed turpis feugiat, sed vel nulla non neque. Nullamlacinia faucibus risus, a euismod lorem tincidunt id. Vestibulum imperdiet nibh vel magna lacinia ultricesimperdiet.', 'MEUILLEUR QUALITE', 'RAPIDE LIVRAISON', 'EVENEMENTS', 'INGREDIENT SUR COMMANDE', 'RESERVATION EN LIGNE', '20210920185757.1.jpg', '20210920185757.2.jpg', 78, NULL, '2021-09-20 18:57:57', '2021-09-20 18:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `button` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indicator_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_fit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image`, `image_fit`, `food_id`, `restaurant_id`, `enable`, `created_at`, `updated_at`, `coupon_id`) VALUES
(17, '1', '1', 'dkfjdk', 'bottom_end', '#ffffff', '#ffffff', '#ffffff', '#ffffff', 'slides/17.jpeg', 'scale_down', '30', '17', '1', '2020-10-20 12:10:42', '2020-11-27 04:54:00', 1),
(18, '2', 'Hello', 'Get discount', 'bottom_end', '#8e5959', '#ee7e7e', '#916b6b', '#8e8585', 'slides/18.png', 'scale_down', '9', '13', '1', '2020-12-01 06:50:37', '2021-02-16 20:09:54', 1),
(19, '10', 'Mamathai', 'Go !', 'top_center', '#9f7e7e', '#d18787', '#9f6262', '#9999b9', 'slides/19.jpeg', 'none', '187', '2', '1', '2021-05-11 12:02:45', '2021-05-11 12:02:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `theme_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscribe` int(11) NOT NULL DEFAULT 1,
  `theme_name` varchar(255) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`theme_id`, `user_id`, `subscribe`, `theme_name`, `active_status`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 78, 1, 'Boulangerie | Modele', 1, 0, 78, NULL, '2021-09-13 23:21:21', '2021-09-13 19:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '5375d8be-7891-419d-8332-84d4714592c8', '2020-09-02 00:43:45', '2020-09-02 00:43:45'),
(2, '50530868-ec46-43f2-9623-01c1560c58b2', '2020-09-02 00:47:09', '2020-09-02 00:47:09'),
(3, '326d195f-4e7c-4ab1-a700-d070972f52e9', '2020-09-14 23:17:39', '2020-09-14 23:17:39'),
(4, 'ae8adacb-fa2c-4013-821d-df2fbf1444ad', '2020-09-14 23:21:54', '2020-09-14 23:21:54'),
(5, '2428fd08-65f5-41bf-96d6-83163ea491b4', '2020-10-14 19:08:10', '2020-10-14 19:08:10'),
(6, 'fd72af80-6680-4019-9041-5a3a1e8db723', '2020-10-14 19:12:28', '2020-10-14 19:12:28'),
(7, '5df59c50-c9ce-48e8-971f-e14fb63ecf1a', '2020-10-14 19:28:38', '2020-10-14 19:28:38'),
(8, '387537fe-b4d9-48a6-9a8a-fb737ac22c13', '2020-10-15 05:48:38', '2020-10-15 05:48:38'),
(9, '50b5e2d6-eafc-4804-ba5e-9561e0177154', '2020-10-15 05:50:41', '2020-10-15 05:50:41'),
(21, '96b69ba2-f2d0-46b4-ad69-6d8742c9ce82', '2020-10-16 08:14:44', '2020-10-16 08:14:44'),
(23, '09b1d695-4f40-4f3f-b410-daedaaef1eb9', '2020-10-16 08:22:42', '2020-10-16 08:22:42'),
(25, '8076b24f-1adb-427d-b2f8-4cefb2427a15', '2020-10-16 08:42:51', '2020-10-16 08:42:51'),
(26, 'a2dba3e4-5816-4e09-a4c2-408b219d2b2f', '2020-10-16 10:57:09', '2020-10-16 10:57:09'),
(27, '8c66c52d-ac03-4031-9e35-6bfad6ca31b6', '2020-10-21 05:13:02', '2020-10-21 05:13:02'),
(28, '3bf514a5-3b1c-4252-b7a2-89490c084546', '2020-10-22 23:45:06', '2020-10-22 23:45:06'),
(29, 'dea23e4d-62fa-4d32-a893-326dde44b83b', '2020-10-25 06:09:41', '2020-10-25 06:09:41'),
(30, '822caba5-b91b-4b21-89a1-55e31b6f4d72', '2020-10-25 06:12:30', '2020-10-25 06:12:30'),
(31, '20b6a802-2172-42f0-86de-6210c9d7fe19', '2020-10-25 08:12:26', '2020-10-25 08:12:26'),
(32, 'b225c306-1ccb-497e-b802-3dc74b3e3dae', '2020-11-13 08:24:39', '2020-11-13 08:24:39'),
(33, 'f13e19b1-b5f9-4a09-8b38-84851ff1283c', '2020-12-02 10:27:51', '2020-12-02 10:27:51'),
(34, 'a1c9efa1-6027-43eb-bc2c-fa7bfb57898d', '2021-02-16 20:02:36', '2021-02-16 20:02:36'),
(35, '3e7d3c06-fc0a-4825-9f38-14bf2fd0540e', '2021-02-16 20:03:34', '2021-02-16 20:03:34'),
(36, 'c012d460-1297-4171-b769-17ffccc793e6', '2021-02-16 20:04:32', '2021-02-16 20:04:32'),
(37, 'a845f51e-0e36-477f-9ebb-1a9fb6287522', '2021-02-16 20:06:09', '2021-02-16 20:06:09'),
(38, '92a70f21-8b47-4cb3-b615-67a50584939b', '2021-03-21 13:26:59', '2021-03-21 13:26:59'),
(39, 'a7c6f4fe-34e2-4bf8-9397-ee815ff7164e', '2021-03-21 17:34:35', '2021-03-21 17:34:35'),
(40, '59dc3c00-00a8-473a-9a68-47ff0e1b5b04', '2021-03-22 16:07:11', '2021-03-22 16:07:11'),
(41, 'f7869eeb-71e6-4445-9e1d-e1b095288195', '2021-03-22 19:43:13', '2021-03-22 19:43:13'),
(42, '1e17d2f0-a2c3-418d-a77b-580f51a974ab', '2021-03-23 15:19:59', '2021-03-23 15:19:59'),
(43, '3a127895-fb30-4a21-b6e4-7011875bedd4', '2021-03-23 15:25:20', '2021-03-23 15:25:20'),
(44, '16fabc28-b10f-440f-b5e4-0d36f6bbf5c3', '2021-03-23 15:38:08', '2021-03-23 15:38:08'),
(45, '61d80017-3748-4526-8157-b62e9eb762ba', '2021-03-23 15:38:09', '2021-03-23 15:38:09'),
(46, 'e2936f4b-21c2-43dd-b1fa-fb1f222b001a', '2021-03-23 15:38:09', '2021-03-23 15:38:09'),
(47, '26a13720-c8da-418e-ae3b-0dbe8a021fe6', '2021-03-23 15:42:58', '2021-03-23 15:42:58'),
(48, '81d6a201-c62d-425f-ba7b-e0a2c5559d0d', '2021-03-23 15:43:02', '2021-03-23 15:43:02'),
(49, 'fa421a71-a136-4637-9f71-bb2b65135fb7', '2021-03-23 15:43:03', '2021-03-23 15:43:03'),
(50, 'bb9a1ac4-6980-4961-a6bf-615005847783', '2021-03-23 15:43:04', '2021-03-23 15:43:04'),
(51, '9a05776b-d30d-4b80-ba39-3eab36b502fb', '2021-03-23 15:43:04', '2021-03-23 15:43:04'),
(52, 'fdf314b3-8584-4df3-8699-4aa8e8d8fa45', '2021-03-23 15:43:05', '2021-03-23 15:43:05'),
(53, '7cf54ec1-2f81-4edd-a363-0d3ab6997865', '2021-03-23 15:43:05', '2021-03-23 15:43:05'),
(54, '26d3799c-aca8-4e02-aa3a-5b892ba49865', '2021-03-23 15:43:06', '2021-03-23 15:43:06'),
(55, '08956d69-1a8d-46a9-b0d2-9aa364a9ffdb', '2021-03-23 15:43:06', '2021-03-23 15:43:06'),
(56, 'd2c51aa8-7813-4117-bf47-10ec859e04da', '2021-03-23 15:43:07', '2021-03-23 15:43:07'),
(57, 'bfe82639-c39f-4017-bb0f-88c03d8e03fb', '2021-03-23 15:43:08', '2021-03-23 15:43:08'),
(58, '5c4ce049-2306-439a-90fb-7e5216e817aa', '2021-03-23 15:43:08', '2021-03-23 15:43:08'),
(59, '07f90508-18fe-44aa-8c92-dffd5f8e1024', '2021-03-23 15:43:10', '2021-03-23 15:43:10'),
(60, 'c3eadb5f-5c0c-420d-9ebe-a6b71026b589', '2021-03-23 15:43:10', '2021-03-23 15:43:10'),
(61, '30fa103e-e33d-470c-8301-29ef5e562245', '2021-03-23 15:43:11', '2021-03-23 15:43:11'),
(62, 'd1c253b8-344b-4029-b005-7b18b83f8ec0', '2021-03-23 15:43:11', '2021-03-23 15:43:11'),
(63, '8daf3c94-a55f-4020-90a6-a05f01ff340a', '2021-03-23 20:47:29', '2021-03-23 20:47:29'),
(64, 'd5ba2200-aab9-4472-afd9-366d50b93cfb', '2021-03-23 20:49:33', '2021-03-23 20:49:33'),
(65, '06ec6441-abce-40e8-a170-a407c3b5a29d', '2021-03-23 20:49:42', '2021-03-23 20:49:42'),
(66, '719b3181-db7e-43e4-84d1-97f6c23149ba', '2021-03-23 20:55:30', '2021-03-23 20:55:30'),
(67, '1327eedf-3e16-4a86-a989-8984a2ed0262', '2021-03-23 21:01:00', '2021-03-23 21:01:00'),
(68, 'bafa57d5-6046-44af-98f7-1e461eacb98b', '2021-03-24 07:36:13', '2021-03-24 07:36:13'),
(69, '9ea2cf4b-41a4-4b25-84dd-e2d5e3e9bb37', '2021-03-27 08:29:20', '2021-03-27 08:29:20'),
(70, '005a696a-33e4-46ea-987d-2e0bb673e333', '2021-03-27 08:55:17', '2021-03-27 08:55:17'),
(71, 'fbd694b6-938b-45ca-86e5-dd21a15e52ed', '2021-04-01 18:05:39', '2021-04-01 18:05:39'),
(72, 'c8f31d13-2291-4c1e-95ea-88fcd3c20e16', '2021-04-01 18:06:28', '2021-04-01 18:06:28'),
(73, '2640026f-5c96-4d66-8c03-9eefa2e880bf', '2021-04-01 18:12:32', '2021-04-01 18:12:32'),
(74, 'c7e1fae9-6833-4bca-8986-93e2371991e4', '2021-04-01 18:17:13', '2021-04-01 18:17:13'),
(75, 'dec29ee2-1b42-41be-b8d8-5cbc7d029024', '2021-04-01 18:41:30', '2021-04-01 18:41:30'),
(76, 'c39dc3ef-456a-49cc-81f7-d57c4ac5df1e', '2021-04-01 18:43:27', '2021-04-01 18:43:27'),
(77, '77f4da01-a925-4bb9-8ee0-a50aab9616ee', '2021-04-01 18:53:03', '2021-04-01 18:53:03'),
(78, '52002e59-be12-4234-b161-b06a791dc422', '2021-04-01 18:53:41', '2021-04-01 18:53:41'),
(79, '35e465cb-ce59-4831-97bf-485ae9aaf0f7', '2021-04-02 10:26:06', '2021-04-02 10:26:06'),
(80, '548e2a22-e452-41d7-bfbb-4e5a29c2fb41', '2021-04-02 10:48:27', '2021-04-02 10:48:27'),
(81, '00388992-51a4-4214-a4f0-759575e8c197', '2021-04-02 10:51:01', '2021-04-02 10:51:01'),
(82, '03e72ecc-88a4-4d55-812d-b71766cdb6a6', '2021-04-02 10:57:04', '2021-04-02 10:57:04'),
(83, '4b5d6902-bef1-414c-91dd-7e5ff010fe09', '2021-04-02 11:05:54', '2021-04-02 11:05:54'),
(84, 'd2188cf0-b279-4485-ab0c-9e6e5fc18a73', '2021-04-02 11:13:00', '2021-04-02 11:13:00'),
(85, '234905ca-2a55-44c6-9028-6d7db52a1655', '2021-04-02 11:17:23', '2021-04-02 11:17:23'),
(86, 'c260afaa-1c47-4a1d-b262-c4477d755bce', '2021-04-02 11:18:11', '2021-04-02 11:18:11'),
(87, '72166429-6e37-47bc-96a2-ebe2a0379d9f', '2021-04-02 11:22:42', '2021-04-02 11:22:42'),
(88, 'c0db9464-1b9a-4c89-8498-059738482d17', '2021-04-02 11:24:37', '2021-04-02 11:24:37'),
(89, '4dc35362-f7c2-434d-a7f5-8423ed709544', '2021-04-02 11:25:03', '2021-04-02 11:25:03'),
(90, 'c46ab56a-ed28-42ca-9360-d86a886b6a20', '2021-04-02 11:25:11', '2021-04-02 11:25:11'),
(91, 'a870632d-8e26-4ea0-a6f8-558dc4741ba8', '2021-04-02 11:30:00', '2021-04-02 11:30:00'),
(92, 'e152a58f-30f4-4203-b134-8fa58dcdd6da', '2021-04-02 11:31:16', '2021-04-02 11:31:16'),
(93, '011eee1b-51f4-4dfe-ad88-9f592224be22', '2021-04-02 11:32:41', '2021-04-02 11:32:41'),
(94, '7a37132d-2d15-4f12-8f1a-871f680aa7d4', '2021-04-27 10:13:29', '2021-04-27 10:13:29'),
(95, '91de4b3a-4fdc-4310-89f9-0ce18be0b693', '2021-04-27 10:22:23', '2021-04-27 10:22:23'),
(96, '724c7cae-baeb-4386-97c5-000d1fea9336', '2021-04-27 10:28:46', '2021-04-27 10:28:46'),
(97, '495fec2a-857c-4d75-89d3-e5121446aa64', '2021-04-27 10:36:24', '2021-04-27 10:36:24'),
(98, '918fbb5e-c051-4a2b-9269-d674fcd1786a', '2021-04-27 10:49:59', '2021-04-27 10:49:59'),
(99, '00f66946-9d97-4d8b-bd6c-ddc65e7da6a9', '2021-04-27 10:51:37', '2021-04-27 10:51:37'),
(100, 'a7938395-c874-455a-bb18-f440377a2728', '2021-04-27 14:41:39', '2021-04-27 14:41:39'),
(101, '38606da4-0c34-498c-b728-8d2220cdff95', '2021-04-27 14:43:28', '2021-04-27 14:43:28'),
(102, 'fa64da5c-cfa6-44c0-86fa-9ec4423da442', '2021-04-28 12:26:49', '2021-04-28 12:26:49'),
(103, '2f8fd098-5f66-4f83-b71f-9f7f708c06a1', '2021-04-28 12:30:01', '2021-04-28 12:30:01'),
(104, '1ed4f2ca-ca36-4bbe-b043-7268495deeb3', '2021-04-28 12:31:35', '2021-04-28 12:31:35'),
(105, '6bd135aa-c6cb-403e-87df-309a71421028', '2021-04-28 12:32:52', '2021-04-28 12:32:52'),
(106, 'eeb9aa11-2ac7-45fa-be2c-781f3249bddc', '2021-04-28 20:57:04', '2021-04-28 20:57:04'),
(107, '649323ad-5a38-4a78-8648-4992739e11c1', '2021-04-28 21:03:23', '2021-04-28 21:03:23'),
(108, 'ee1ee816-d208-411a-98fe-92993c1f23d9', '2021-04-28 21:07:38', '2021-04-28 21:07:38'),
(109, 'bd466213-f1f4-4ea5-a6be-856a183ae4fb', '2021-04-28 21:08:02', '2021-04-28 21:08:02'),
(110, '29bd033a-8fb3-4967-890b-2320841df579', '2021-04-28 21:08:44', '2021-04-28 21:08:44'),
(111, 'd9f30192-89e6-4705-98ae-9030a2a5d7ae', '2021-04-28 21:24:00', '2021-04-28 21:24:00'),
(112, 'cac91972-ed98-48cf-a5e3-f2b8584ebc51', '2021-04-28 21:29:35', '2021-04-28 21:29:35'),
(113, '1e4917ca-ef7d-4326-80a4-affd001a8a59', '2021-04-28 21:33:27', '2021-04-28 21:33:27'),
(114, '71df7753-d834-482a-8a4f-5b64f4a4f9fa', '2021-04-28 21:35:49', '2021-04-28 21:35:49'),
(115, 'a9ae28df-be3b-4630-a426-92d2ef9518f1', '2021-04-28 21:37:24', '2021-04-28 21:37:24'),
(116, '851fa7bb-7f0f-453a-85f1-ce174834b8a8', '2021-04-28 21:38:48', '2021-04-28 21:38:48'),
(117, '604f083f-ec94-450a-8305-4170cf1ce6fe', '2021-04-28 21:39:50', '2021-04-28 21:39:50'),
(118, 'f7a32d9e-ad33-46cb-80e7-76a465c8f5b8', '2021-04-28 21:40:34', '2021-04-28 21:40:34'),
(119, '281217d3-e277-4246-ae35-0cdec761e1dc', '2021-04-28 21:47:17', '2021-04-28 21:47:17'),
(120, '9dc46696-1e7c-4dd6-8900-0c1d9fade28a', '2021-04-28 21:49:33', '2021-04-28 21:49:33'),
(121, 'bae3d112-1661-4182-8402-41b658023353', '2021-04-28 21:50:22', '2021-04-28 21:50:22'),
(122, '8cb510ce-d8ae-408b-b295-d48c6fdce8f0', '2021-04-28 21:51:42', '2021-04-28 21:51:42'),
(123, '99fdffa2-34c1-409c-9ac6-d306aef10e79', '2021-04-28 21:53:00', '2021-04-28 21:53:00'),
(124, '2e497b49-34d3-4270-912e-ac4f628b8e4c', '2021-04-28 22:00:04', '2021-04-28 22:00:04'),
(125, 'df1343de-43c8-463e-8d74-edf3b2593566', '2021-04-28 22:01:35', '2021-04-28 22:01:35'),
(126, '769c0da5-f5b6-4a52-a6ab-3e4d3abd09f1', '2021-04-28 22:02:39', '2021-04-28 22:02:39'),
(127, '7ffe3b52-2387-4748-884c-170b977b4956', '2021-04-28 22:03:34', '2021-04-28 22:03:34'),
(128, '34225167-e816-40a3-8bac-4861d510e679', '2021-04-28 22:04:04', '2021-04-28 22:04:04'),
(129, '391a0b88-e8a5-41a4-a947-7561a378078c', '2021-04-28 22:09:00', '2021-04-28 22:09:00'),
(130, '876147b3-0e38-46c1-9f71-e63f407d23d3', '2021-04-28 22:11:32', '2021-04-28 22:11:32'),
(131, 'dc35bfa6-994a-40ca-9c91-b1bcb7e810b8', '2021-04-28 22:25:42', '2021-04-28 22:25:42'),
(132, 'f96b98d7-9657-4fb8-9cb1-12ac067f85aa', '2021-04-29 13:16:09', '2021-04-29 13:16:09'),
(133, 'de493100-d918-440e-9696-8abc64685193', '2021-04-29 13:16:34', '2021-04-29 13:16:34'),
(134, '0747589b-bcc2-487c-bb3d-82b39636a271', '2021-04-29 13:20:18', '2021-04-29 13:20:18'),
(135, 'b2fbed1e-075e-4adb-8d42-039b4e7a1169', '2021-04-29 13:20:36', '2021-04-29 13:20:36'),
(136, 'c86c98ad-005e-4cad-b6b4-3424e30b8b8f', '2021-04-29 13:21:23', '2021-04-29 13:21:23'),
(137, '1d61baf1-97ba-4cfa-b2f1-209ce35f4d49', '2021-04-29 13:22:09', '2021-04-29 13:22:09'),
(138, 'e7299193-5312-470a-8642-9be0c2b02c2b', '2021-04-29 13:25:49', '2021-04-29 13:25:49'),
(139, 'edb98892-1ef3-4097-929a-8c9bad0bf306', '2021-04-29 13:26:35', '2021-04-29 13:26:35'),
(140, 'b047ca0f-1b71-4824-b148-5399252f3c65', '2021-04-29 13:29:56', '2021-04-29 13:29:56'),
(141, 'a36476eb-6521-4f24-831e-942f80f3f022', '2021-04-29 13:31:24', '2021-04-29 13:31:24'),
(142, 'cffe5b0b-efea-4ff4-b54c-0e487a3d5ab8', '2021-04-29 13:31:52', '2021-04-29 13:31:52'),
(143, 'fdcf44c7-6eda-4647-a7e0-3f9af05da083', '2021-04-29 13:32:18', '2021-04-29 13:32:18'),
(144, '25bb4250-1d71-47fe-bf76-a09b8a14ee94', '2021-04-29 13:32:39', '2021-04-29 13:32:39'),
(145, 'ae89c8a4-88ff-4e5a-974e-57a9fd0184c5', '2021-04-29 13:33:58', '2021-04-29 13:33:58'),
(146, 'cda79f90-65a4-41c2-800b-38168344af69', '2021-04-29 13:34:37', '2021-04-29 13:34:37'),
(147, '3a2a488c-9941-49d3-8c9d-0280522b7a90', '2021-04-29 14:26:11', '2021-04-29 14:26:11'),
(148, '88371048-8148-4723-8c60-921ac3868c65', '2021-04-29 14:29:54', '2021-04-29 14:29:54'),
(149, 'd8c5d13a-0eb8-4427-8e2b-c7729ad8a277', '2021-04-29 23:46:39', '2021-04-29 23:46:39'),
(150, '7aa870db-e861-4776-a33f-a2d5a505b8fc', '2021-04-29 23:54:52', '2021-04-29 23:54:52'),
(151, 'c598434f-7c49-4f16-a5e2-dc61d3a24193', '2021-04-30 00:00:03', '2021-04-30 00:00:03'),
(152, '48e077fd-b389-4677-9a52-dca82ab446d9', '2021-04-30 00:02:08', '2021-04-30 00:02:08'),
(153, '5bff4a36-03a5-434e-b34d-d8853e49f911', '2021-04-30 06:46:44', '2021-04-30 06:46:44'),
(154, '582d9cb6-9334-4688-ac06-4747adcecff8', '2021-04-30 06:48:39', '2021-04-30 06:48:39'),
(155, '9047a133-b622-4cef-b43a-08cbb028f197', '2021-04-30 10:05:33', '2021-04-30 10:05:33'),
(156, 'be8ad788-ff8e-4c85-9cae-c6623bff21cc', '2021-04-30 10:31:41', '2021-04-30 10:31:41'),
(157, 'bc0c2f62-bbee-47f3-9ec6-9753318547cf', '2021-04-30 10:32:23', '2021-04-30 10:32:23'),
(158, 'ddda7734-7ed6-4e4f-a374-ca2e61b7626c', '2021-04-30 11:33:57', '2021-04-30 11:33:57'),
(159, 'bde7ec22-028c-4469-a060-1800dd29efac', '2021-05-06 05:23:32', '2021-05-06 05:23:32'),
(160, '1b389c55-ca96-4242-9a62-b77b21f8f4e2', '2021-07-20 10:52:22', '2021-07-20 10:52:22'),
(161, '34533879-7ee6-45d5-b9cd-c0dcaf3a2985', '2021-07-20 10:53:55', '2021-07-20 10:53:55'),
(162, 'ebf4bc50-4efa-4e3a-8450-7200fab84102', '2021-07-20 10:55:05', '2021-07-20 10:55:05'),
(163, '662e2b8d-f1f4-4c52-b173-42f48ae18e0c', '2021-07-22 09:41:07', '2021-07-22 09:41:07'),
(164, '808df889-6061-4239-9e01-861eeba9e15a', '2021-07-22 09:42:23', '2021-07-22 09:42:23'),
(165, '219beb04-78e0-42eb-8429-4bcb9fa83528', '2021-07-22 09:45:36', '2021-07-22 09:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$.LJHe.k./yHcNlKprJHq5e1mTdre.IwEPg/ZleFllImNZNRTp6dra', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9kJbwMzSctASx3z1jFyK3S8RnQZ6hkpeNM1YHG0xwPDZkqxZsLTJxqJukGUi', '2019-10-13 02:31:26', '2020-09-26 20:55:51'),
(21, 'fgsadf', 'ejohns.ae@gmail.com', '$2a$12$Fzx0Da/Oz9K9BTLHFvKutuoSEPtZ.XJ9/XBr1ErhIPd03vAZwcsWa', 'mmjhBblFden27yfEKmDaSRGbKbPqmg5kTER3hCYaDh0V5QOARstPqOAcePPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xib2NUTikf8HVLWJD6P8HafXczIGA3Y3tKtr3OwRFDYBH6Yc6EEYyA6ZA6hW', '2020-10-16 08:41:39', '2021-05-13 11:08:20'),
(26, 'test2', 'test2@gmail.com', '$2y$10$8Nd/QAKd9Pwj1u0h6krlputDeLq1bvnJz3z.iwQ8TQCv7F3ft7YXW', 'tuTAspz9BT40WK9NWLK7I2YOEtLPezzdMGezVad2o264eL6D6zuZWEOlcM0M', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-23 13:28:03', '2020-11-23 13:28:03'),
(27, 'test3', 'test3@gmail.com', '$2y$10$EOgvi2Odu.Th4EN2Q4LsK.FceLraY.RHsN0O1Ks8h3Eh9KKmG3AdC', 'Rj0e9fVHdLLz352vcmlMLLolp1oGcpbVhuya3kSgVjQM2QGUxHX532PjbFGm', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-23 13:31:19', '2020-11-23 13:31:19'),
(28, 'Md Al Amin', 'mdalaminnow2016@gmail.com', '$2y$10$BqmxGwSVyGJnAU450o51KOVXYsxdjzCSZzjCY11Qefv9xcSF.bbRy', '83kTWNnKIwoGPLuj7SCMzxLhcqSgpI0Rg5CTCZ1V3GwEaODvhmwFhL33yGoW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-24 14:17:25', '2020-11-24 14:17:25'),
(30, 'Test Driver 3', 'driver3@gmail.com', '$2y$10$u7hiv9RzINcs6Q5/r5HcreyJcGeG.SGRlmzgLKxmi0HWWiyh7NqdG', 'Bc0R9gMnq0oy0dkFxr6jFjW9ZX4l1nwsOeAAi2UR6zVES8YzpZFJU3Q0RFcw', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-25 16:23:41', '2021-03-17 10:05:14'),
(31, 'test seller 1', 'seller1@gmail.com', '$2y$10$nItxIca3HiS62uDZi89qFOW1kxd4icVWVnPtSmSZejIkyEQ4x.oXm', 'LqvP4apd2N1FYu8iKqGrdEspbPn0S6rBe65b0m69sWVKZXlgV8Vjqillt1mI', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-25 16:25:08', '2020-11-25 16:25:08'),
(33, 'driver3', 'driver4@gmail.com', '$2y$10$a6OhPrq7aaWi35i/xVj6nujP0NRzPZLJgE5aEHxTHfNknKHVkbOJa', 'euYxxX23QdDKCLKUU4WhpdDvnMzr2HSUKbDAM517bVZbukfPmkBtx9D4r4kK', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-26 15:29:26', '2020-11-26 15:29:26'),
(36, 'asert', 'asert@test.com', '$2y$10$HAGBTRA.rZakc9w5bUsLdO4ETqeRMD/QDQMi8V678m5FVM2GSuHAa', '5DzUqy9kyKYYPNsnNaGYx6vh0IRzxlmlnmVwmK0ONZsCCcyrYAQy4wQbubi6', 'fImjMeD-R0mrkyv1JG8-GT:APA91bGfBkTvIcKZ5_PfO2hm5Az73chN86U2xZkBD-vxluA2q_zQ0bBbeT-sTEwyrSnEH4BQm782sS79DzzOD53xfFBM9JKDlp-u-6Bjrb9S82IcfAVOpyS1qMZXmfCaVWTws3JJyOv4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-28 16:10:52', '2021-04-29 13:13:05'),
(37, 'de', 'demo@demo.col', '$2y$10$9MTD1Tzfz8oIXlGlKjG6CeVTdx4lH9UIqH0nNAgWJTJkIvuY8UqMK', '54VznzklOaViQOjkDLaZ7GQfj3IWox7VZ6BZSGOwkbFME05XFG1DkEULB02Z', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-02 08:10:40', '2021-01-02 08:10:40'),
(41, 'Yulian', 'nathan.lefebvre@live.fr', '$2y$10$0uSqFDqEa2deeGRxks6tZeZ8dAhlEFSQMHCsRJFKc31rkd7N74rH2', 'pmqeG0dd6hfEJ7mwISMMrdoqaf59zFc6tFjxcnNkMQIFNeHlT2MF0LLAatix', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-08 14:28:23', '2021-02-08 14:28:23'),
(43, 'demo', 'demo@demo.com', '$2y$10$hQes/YLO.usdRmkYI1YDauyey/Wv404j7/U082Ssm0QXUgoGFmJG2', '0Vz4GfCpBXObZPpV5U0dT6fs0KMy0lhhaxsmTRXttq9I4kJllMxPhFyAJemo', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-16 19:29:24', '2021-02-16 19:29:24'),
(51, 'nat', 'demoNat@live.fr', '$2y$10$xctN1w3snzRMigyX7Yg4ReuebPjYg60Mj.v2xk65PPXLZ5kgDKKIa', 'nbtMqFfhkgCJ3SOeRSn9hYtOt35W4xe2Hk1wr2Tff49AH8oZmBAi2PSScBQM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-11 18:14:10', '2021-03-11 18:14:10'),
(55, 'demo12', 'lina.rosagf@gmail.com', '$2y$10$qK/Nn/LOanBTlCiSCt32Xu6ZVPiFMDnr.LjrII3AXFbb56.T/kz2C', 'xzYIxkQRUcXHjvRjOFvqTY3ZjjE4SzgQLwF4xSCTXblyTGRnaZMZ5xtelnxy', 'fUFz9p5QR6ONmJHeGZGiMK:APA91bGcCkt6AwdsKAzBTn0IxRtpZTIl-DlEjNdGecdY5M91jA9DIgDzls1ofQJdPU6QQZoBKEmaS_n795lQJE-Mf5oEPwf23ZmqRrTZS9e7bwZ0tTcvP_5rqVMu-jLr8lGWRgNVE5nH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-25 05:03:31', '2021-03-25 05:03:31'),
(77, 'Olivier', 'olivier.test@foodelvent.com', '$2y$10$o0cuff2sFjAlmlmxEjVVrut7CFsQy8zXvwdvMOblJucLT/Dy9LO.S', 'o648M6wZTglBuuf5MVD1PdCMLPweLyNnSMzeL6ZGZJLdxotTNxPCMwknC5qD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22 09:41:25', '2021-07-22 09:41:25'),
(78, 'Tusher', 'santanusdt01@gmail.com', '$2a$12$KhVd3domvpwiWSLJh3qt1O7jJk.DfdBmPHry/GVJJE9NoKzJXzdHu', 'N4nhwvgOrr6QF7VrtR1NqFWNepL0ypYOFamsu5zuYEb7wpz5aD0aOslHI1X0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-29 15:56:33', '2021-07-29 15:56:33'),
(79, 'Usama', 'usama@alfarajsolutions.com', '$2y$10$UKDOiQ4VoLa3A9tIhXr8pexnbIRJBHdQkuHmVYRu5T3UyfLKKZnbW', 'LQxuQiA0ZIgC2ZESy1LwXwUXQfiIOl838xzH3UVBLxt4ynT3vXY5T4juntjL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-27 09:33:26', '2021-08-27 09:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_restaurants`
--

CREATE TABLE `user_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_restaurants`
--

INSERT INTO `user_restaurants` (`user_id`, `restaurant_id`) VALUES
(1, 5),
(1, 6),
(1, 19),
(1, 22),
(1, 27),
(1, 28),
(1, 29),
(1, 31),
(1, 35),
(1, 36),
(2, 3),
(2, 4),
(2, 11),
(2, 14),
(2, 16),
(3, 13),
(17, 12),
(17, 15),
(17, 17),
(22, 23),
(22, 24),
(22, 25),
(22, 26),
(22, 30),
(53, 18),
(60, 20),
(60, 21),
(65, 32),
(65, 33),
(65, 34),
(70, 48),
(70, 52),
(70, 77),
(71, 78),
(74, 79),
(77, 82),
(77, 83);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `banner_layout_builders`
--
ALTER TABLE `banner_layout_builders`
  ADD PRIMARY KEY (`banner_row_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_food_id_foreign` (`food_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD PRIMARY KEY (`extra_id`,`cart_id`),
  ADD KEY `cart_extras_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_restaurants`
--
ALTER TABLE `driver_restaurants`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `driver_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_food_id_foreign` (`food_id`),
  ADD KEY `extras_extra_group_id_foreign` (`extra_group_id`);

--
-- Indexes for table `extra_groups`
--
ALTER TABLE `extra_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_food_id_foreign` (`food_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD PRIMARY KEY (`extra_id`,`favorite_id`),
  ADD KEY `favorite_extras_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `foods_category_id_foreign` (`category_id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_orders_food_id_foreign` (`food_id`),
  ADD KEY `food_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `food_order_extras`
--
ALTER TABLE `food_order_extras`
  ADD PRIMARY KEY (`food_order_id`,`extra_id`),
  ADD KEY `food_order_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `food_reviews`
--
ALTER TABLE `food_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_reviews_user_id_foreign` (`user_id`),
  ADD KEY `food_reviews_food_id_foreign` (`food_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `header_layout_builders`
--
ALTER TABLE `header_layout_builders`
  ADD PRIMARY KEY (`header_row_id`);

--
-- Indexes for table `home_page_layout_builders`
--
ALTER TABLE `home_page_layout_builders`
  ADD PRIMARY KEY (`home_page_row_id`);

--
-- Indexes for table `layoutbuilders`
--
ALTER TABLE `layoutbuilders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layoutbuilder_values`
--
ALTER TABLE `layoutbuilder_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nutrition_food_id_foreign` (`food_id`);

--
-- Indexes for table `opendays`
--
ALTER TABLE `opendays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_restaurants`
--
ALTER TABLE `open_restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants_payouts`
--
ALTER TABLE `restaurants_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_payouts_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurant_cuisines`
--
ALTER TABLE `restaurant_cuisines`
  ADD PRIMARY KEY (`cuisine_id`,`restaurant_id`),
  ADD KEY `restaurant_cuisines_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_reviews_user_id_foreign` (`user_id`),
  ADD KEY `restaurant_reviews_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `service_layout_builders`
--
ALTER TABLE `service_layout_builders`
  ADD PRIMARY KEY (`sercie_row_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_restaurants`
--
ALTER TABLE `user_restaurants`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `user_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `banner_layout_builders`
--
ALTER TABLE `banner_layout_builders`
  MODIFY `banner_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `extra_groups`
--
ALTER TABLE `extra_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `food_reviews`
--
ALTER TABLE `food_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `header_layout_builders`
--
ALTER TABLE `header_layout_builders`
  MODIFY `header_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_layout_builders`
--
ALTER TABLE `home_page_layout_builders`
  MODIFY `home_page_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `layoutbuilders`
--
ALTER TABLE `layoutbuilders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `layoutbuilder_values`
--
ALTER TABLE `layoutbuilder_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `opendays`
--
ALTER TABLE `opendays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `open_restaurants`
--
ALTER TABLE `open_restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `restaurants_payouts`
--
ALTER TABLE `restaurants_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `service_layout_builders`
--
ALTER TABLE `service_layout_builders`
  MODIFY `sercie_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
