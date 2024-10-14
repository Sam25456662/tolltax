-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2024 at 07:22 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lktest_tax`
--

-- --------------------------------------------------------

--
-- Table structure for table `axes`
--

CREATE TABLE `axes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `axelno` varchar(255) DEFAULT NULL,
  `deletestatus` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_rate` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `axes`
--

INSERT INTO `axes` (`id`, `axelno`, `deletestatus`, `created_at`, `updated_at`, `tax_rate`) VALUES
(14, '3', 1, '2024-10-05 21:44:31', '2024-10-05 21:44:31', NULL),
(15, '1', 1, '2024-10-05 23:11:53', '2024-10-05 23:11:53', NULL),
(16, '2', 1, '2024-10-05 23:12:03', '2024-10-05 23:12:03', NULL),
(17, '5', 1, '2024-10-06 17:36:19', '2024-10-06 17:36:19', NULL),
(18, '4', 1, '2024-10-06 17:54:19', '2024-10-06 17:54:19', NULL),
(19, '6', 1, '2024-10-06 18:51:58', '2024-10-06 18:51:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fastag_recharges`
--

CREATE TABLE `fastag_recharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fastag_number` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fastag_recharges`
--

INSERT INTO `fastag_recharges` (`id`, `fastag_number`, `amount`, `created_at`, `updated_at`) VALUES
(1, NULL, 500.00, '2024-10-04 17:35:46', '2024-10-04 17:35:46'),
(2, NULL, 600.00, '2024-10-04 17:36:02', '2024-10-04 17:36:02'),
(3, NULL, 200.00, '2024-10-04 17:37:17', '2024-10-04 17:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `deletestatus` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `city`, `deletestatus`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(9, NULL, 0, '2024-10-01 11:40:55', '2024-10-05 23:06:01', 21.14663300, 79.08886000),
(10, NULL, 0, '2024-10-01 11:41:25', '2024-10-05 23:05:58', 22.57264500, 88.36389200),
(11, NULL, 0, '2024-10-04 19:06:42', '2024-10-05 23:05:52', NULL, NULL),
(13, NULL, 0, '2024-10-04 19:15:07', '2024-10-05 23:05:50', NULL, NULL),
(15, NULL, 0, '2024-10-04 20:51:53', '2024-10-05 23:05:47', NULL, NULL),
(18, NULL, 0, '2024-10-05 23:09:40', '2024-10-05 23:10:07', NULL, NULL),
(19, NULL, 0, '2024-10-05 23:10:02', '2024-10-05 23:10:05', NULL, NULL),
(20, NULL, 0, '2024-10-05 23:10:40', '2024-10-05 23:10:44', NULL, NULL),
(23, 'Kolkata', 1, '2024-10-05 23:21:27', '2024-10-05 23:21:27', NULL, NULL),
(24, 'Delhi', 1, '2024-10-05 23:21:33', '2024-10-05 23:21:33', NULL, NULL),
(25, 'Hyderabad', 1, '2024-10-05 23:22:10', '2024-10-05 23:22:10', NULL, NULL),
(26, 'Surat', 1, '2024-10-05 23:22:24', '2024-10-05 23:22:24', NULL, NULL),
(27, 'Alipurduar', 1, '2024-10-06 19:20:01', '2024-10-06 19:20:01', NULL, NULL),
(28, 'a', 1, '2024-10-10 00:11:44', '2024-10-10 00:11:44', NULL, NULL),
(29, 'b', 1, '2024-10-10 00:11:49', '2024-10-10 00:11:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_01_104507_create_tolls_table', 2),
(6, '2024_10_01_121718_create_locations_table', 3),
(7, '2024_10_01_121817_create_axes_table', 3),
(8, '2024_10_01_161901_add_distance_to_tolls_table', 4),
(9, '2024_10_01_162630_add_latitude_longitude_to_locations_table', 5),
(10, '2024_10_01_164848_create_tolls_table', 6),
(11, '2024_10_01_172339_add_tax_rate_to_axes_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `newtolls`
--

CREATE TABLE `newtolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `axel_no` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newtolls`
--

INSERT INTO `newtolls` (`id`, `from`, `to`, `axel_no`, `total`, `created_at`, `updated_at`) VALUES
(16, '9', '11', 4, 1220.00, '2024-10-04 19:17:03', '2024-10-04 19:17:03'),
(17, '13', '10', 1, 8015.00, '2024-10-04 20:32:21', '2024-10-05 08:31:23'),
(18, '10', '15', 1, 2845.00, '2024-10-04 21:00:28', '2024-10-05 21:04:30'),
(21, '9', '10', 8996, 3900.00, '2024-10-05 02:10:55', '2024-10-05 21:08:35'),
(22, '16', '17', 3, 1400.00, '2024-10-05 12:37:25', '2024-10-05 12:37:25'),
(23, '10', '12', 3, 1800.00, '2024-10-05 13:22:27', '2024-10-05 13:22:52'),
(24, '10', '13', 3, 600.00, '2024-10-05 21:45:16', '2024-10-05 21:45:16'),
(28, '24', '23', 1, 5181.00, '2024-10-06 12:04:22', '2024-10-06 12:04:23'),
(29, '26', '23', 2, 810.00, '2024-10-06 17:37:56', '2024-10-06 17:37:56'),
(33, '23', '24', 3, 300.00, '2024-10-06 18:36:34', '2024-10-06 18:36:34'),
(34, '25', '26', 6, 500.00, '2024-10-06 18:53:53', '2024-10-06 18:53:53'),
(39, '23', '24', 6, 220.00, '2024-10-07 08:25:11', '2024-10-07 08:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relatedtolls`
--

CREATE TABLE `relatedtolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `newtoll_id` varchar(255) NOT NULL,
  `tollname` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relatedtolls`
--

INSERT INTO `relatedtolls` (`id`, `newtoll_id`, `tollname`, `price`, `time`, `created_at`, `updated_at`) VALUES
(25, '10', 'kolkata', 300.00, NULL, '2024-10-02 04:00:13', '2024-10-02 04:00:13'),
(26, '11', 'kolkata', 300.00, NULL, '2024-10-02 04:38:07', '2024-10-02 04:38:07'),
(27, '11', 'birbhum', 600.00, NULL, '2024-10-02 04:38:07', '2024-10-02 04:38:07'),
(45, '16', 'abc', 540.00, NULL, '2024-10-04 19:17:03', '2024-10-04 19:17:03'),
(46, '16', 'xyz', 230.00, NULL, '2024-10-04 19:17:03', '2024-10-04 19:17:03'),
(47, '16', 'mnc', 450.00, NULL, '2024-10-04 19:17:03', '2024-10-04 19:17:03'),
(114, '17', 'Bhagan Toll Plaza', 240.00, '11:00  PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(115, '17', 'Karman Toll Plaza', 480.00, '11: 48 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(116, '17', 'Mahuvan Toll Plaza', 525.00, '07:05 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(117, '17', 'Tundla Toll Plaza', 385.00, '09:55 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(118, '17', 'Gurau Toll Plaza', 200.00, '11:59 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(119, '17', 'Anantram Toll Booth', 310.00, '04:10 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(120, '17', 'Badauri Toll Plaza', 350.00, '08:35 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(121, '17', 'Katoghan Toll plaza', 205.00, '11:52 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(122, '17', 'Kokhraj (Sirohi) Toll', 430.00, '08:05 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(123, '17', 'Lalanagar Toll Plaza', 820.00, '10:06 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(124, '17', 'Daffi Toll Plaza', 335.00, '03:04 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(125, '17', 'Mohania Toll Plaza', 260.00, '10:10 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(126, '17', 'Sasaram Toll Plaza', 580.00, '08:56 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(127, '17', 'Saukala Toll Plaza', 305.00, '11.51 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(128, '17', 'Rasoiya Dhamna Toll', 455.00, '04:19 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(129, '17', 'Ghanghri Toll Plaza', 340.00, '07:34 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(130, '17', 'Beliyad Toll Plaza', 285.00, '09:13 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(131, '17', 'Banskopa Toll Plaza', 320.00, '11:47 AM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(132, '17', 'Palsit Toll Plaza', 270.00, '03:41 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(133, '17', 'Dankuni Toll Plaza', 270.00, '05:25 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(134, '17', 'Jaladhulagori Toll Plaza', 650.00, '06:48 PM', '2024-10-05 08:31:23', '2024-10-05 08:31:23'),
(135, '22', 'abc', 200.00, '2', '2024-10-05 12:37:25', '2024-10-05 12:37:25'),
(136, '22', 'xyz', 300.00, '3', '2024-10-05 12:37:25', '2024-10-05 12:37:25'),
(137, '22', 'mno', 400.00, '4', '2024-10-05 12:37:25', '2024-10-05 12:37:25'),
(138, '22', 'mnod', 500.00, '5', '2024-10-05 12:37:25', '2024-10-05 12:37:25'),
(141, '23', 'nagpur', 500.00, '11:22', '2024-10-05 13:22:52', '2024-10-05 13:22:52'),
(142, '23', 'sonarpur', 600.00, '14:22', '2024-10-05 13:22:52', '2024-10-05 13:22:52'),
(143, '23', 'bijaypur', 700.00, '15:22', '2024-10-05 13:22:52', '2024-10-05 13:22:52'),
(144, '18', 'DANKUNI TOLL PLAZA', 250.00, '2', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(145, '18', 'JALADHULAGORI TOLL PLAZA', 425.00, '1', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(146, '18', 'DEBRA', 265.00, '2', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(147, '18', 'KALSIBHANGA/ BALIBHASA TOLL PLAZA', 305.00, '1', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(148, '18', 'JHARPOKHARIIA TOLL PLAZA OD', 305.00, '2', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(149, '18', 'KHIREITANGIRI  TOLL PLAAZA', 345.00, '1', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(150, '18', 'JANASANPUR TOLL PLAZA', 215.00, '2', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(151, '18', 'BIDEIBADKUDAR TOLL PLAZA', 475.00, '2', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(152, '18', 'PUDAPADA NILDUNGRI TOLL PLAZA', 260.00, '2', '2024-10-05 21:04:30', '2024-10-05 21:04:30'),
(159, '21', 'nagpur', 500.00, '2', '2024-10-05 21:08:35', '2024-10-05 21:08:35'),
(160, '21', 'sonarpur', 600.00, '3', '2024-10-05 21:08:35', '2024-10-05 21:08:35'),
(161, '21', 'bijaypur', 700.00, '3', '2024-10-05 21:08:35', '2024-10-05 21:08:35'),
(162, '21', 'kolkata', 800.00, '2', '2024-10-05 21:08:35', '2024-10-05 21:08:35'),
(163, '21', 'bir', 500.00, '2', '2024-10-05 21:08:35', '2024-10-05 21:08:35'),
(164, '21', 'tud', 800.00, '6', '2024-10-05 21:08:35', '2024-10-05 21:08:35'),
(165, '24', 'Birati', 250.00, '2', '2024-10-05 21:45:16', '2024-10-05 21:45:16'),
(166, '24', 'Xyz', 350.00, '3', '2024-10-05 21:45:16', '2024-10-05 21:45:16'),
(177, '28', 'Bhagan', 180.00, '0', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(178, '28', 'Karman', 145.00, '10', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(179, '28', 'Mahuvan', 160.00, '7', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(180, '28', 'Tundla', 170.00, '2', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(181, '28', 'Gurau', 180.00, '2', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(182, '28', 'Anantram', 170.00, '2', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(183, '28', 'Badauri', 115.00, '4', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(184, '28', 'Katoghan', 90.00, '2', '2024-10-06 12:04:22', '2024-10-06 12:04:22'),
(185, '28', 'Kokhraj (Sirohi)', 390.00, '4', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(186, '28', 'Lalanagar', 360.00, '2', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(187, '28', 'Daffi', 125.00, '5', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(188, '28', 'Mohania', 100.00, '9', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(189, '28', 'Sasaram', 220.00, '2', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(190, '28', 'Saukala', 135.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(191, '28', 'Rasoiya Dhamna', 200.00, '4', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(192, '28', 'Ghanghri', 200.00, '4', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(193, '28', 'Beliyad', 155.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(194, '28', 'Banskopa', 320.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(195, '28', 'Palsit', 310.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(196, '28', 'Dankuni', 306.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(197, '28', 'Jaladhulagori', 425.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(198, '28', 'Jaladhulagori', 425.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(199, '28', 'Rajchanderpur', 300.00, '3', '2024-10-06 12:04:23', '2024-10-06 12:04:23'),
(200, '29', 'surojit', 540.00, '2', '2024-10-06 17:37:56', '2024-10-06 17:37:56'),
(201, '29', 'pawan', 270.00, '4', '2024-10-06 17:37:56', '2024-10-06 17:37:56'),
(205, '33', 'kolkataToBihar', 120.00, '5', '2024-10-06 18:36:34', '2024-10-06 18:36:34'),
(206, '33', 'BiharToDelhi', 180.00, '5', '2024-10-06 18:36:34', '2024-10-06 18:36:34'),
(207, '34', 'toll1', 100.00, '2', '2024-10-06 18:53:53', '2024-10-06 18:53:53'),
(208, '34', 'toll2', 100.00, '2', '2024-10-06 18:53:53', '2024-10-06 18:53:53'),
(209, '34', 'toll3', 100.00, '2', '2024-10-06 18:53:53', '2024-10-06 18:53:53'),
(210, '34', 'toll4', 100.00, '2', '2024-10-06 18:53:53', '2024-10-06 18:53:53'),
(211, '34', 'toll5', 100.00, '2', '2024-10-06 18:53:53', '2024-10-06 18:53:53'),
(218, '39', 'addToll', 220.00, '2', '2024-10-07 08:25:11', '2024-10-07 08:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `tolls`
--

CREATE TABLE `tolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carno` varchar(255) NOT NULL,
  `aadhar` varchar(255) DEFAULT NULL,
  `intime` datetime NOT NULL,
  `outtime` date DEFAULT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) UNSIGNED NOT NULL,
  `axeid1` bigint(100) DEFAULT NULL,
  `axeid` bigint(20) UNSIGNED DEFAULT NULL,
  `total_tax` varchar(255) DEFAULT NULL,
  `recharge` varchar(255) DEFAULT NULL,
  `distance_km` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tolls`
--

INSERT INTO `tolls` (`id`, `carno`, `aadhar`, `intime`, `outtime`, `from`, `to`, `axeid1`, `axeid`, `total_tax`, `recharge`, `distance_km`, `tax`, `created_at`, `updated_at`) VALUES
(27, 'wb-265874', '54545454545', '2024-10-09 07:06:00', '2024-10-09', 9, 10, 8996, NULL, '3900.00', '20000', 970.05, 0.00, '2024-10-05 21:06:47', '2024-10-05 21:06:47'),
(28, 'Wb32bj0023', '123456789012', '2024-10-09 21:45:00', '2024-10-09', 10, 13, 3, NULL, '600.00', '2500', 9839.56, 0.00, '2024-10-05 21:46:11', '2024-10-05 21:46:11'),
(30, 'NL01AG3489', '001975', '2024-10-03 10:41:00', '2024-10-02', 24, 23, 1, NULL, '5181.00', '20000', 0.00, 0.00, '2024-10-06 12:07:53', '2024-10-10 00:44:16'),
(31, '2222222', '123456789012', '2024-10-09 20:41:00', '2024-10-09', 26, 23, 2, NULL, '810.00', '5000', 0.00, 0.00, '2024-10-06 17:38:48', '2024-10-06 17:38:48'),
(32, '53785', '123456789', '2024-10-09 17:50:00', '2024-10-09', 24, 25, 4, NULL, '100.00', NULL, 0.00, 0.00, '2024-10-06 18:05:09', '2024-10-06 18:05:09'),
(39, 'carNo1', 'addr1', '2024-10-09 19:02:00', '2024-10-09', 25, 26, 6, NULL, '500.00', '500', 0.00, 0.00, '2024-10-06 19:06:35', '2024-10-06 19:06:35'),
(40, '333', '222', '2024-10-09 08:26:00', '2024-10-09', 25, 26, 6, NULL, '500.00', '500', 0.00, 0.00, '2024-10-07 08:27:51', '2024-10-07 08:27:51'),
(41, '45', 'NA', '2024-10-09 03:09:00', '2024-10-04', 25, 26, 6, NULL, '500.00', NULL, 0.00, 0.00, '2024-10-09 23:10:00', '2024-10-09 23:12:03'),
(42, '45', 'NA', '2024-09-30 11:12:00', NULL, 24, 23, 1, NULL, '5181.00', NULL, 0.00, 0.00, '2024-10-10 00:14:01', '2024-10-10 00:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `contact`, `photo`, `city`, `gender`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SAMRIDDHA LASKAR', 'samriddhalaskar6@gmail.com', NULL, '$2y$12$0f0FF/gBO/TSh/PTyIeIOuKjDzKxpS8AaS2hNo/x8H4XJeWpn6n1.', NULL, NULL, '202410030847wp5309309-cool-retina-display-wallpapers.jpg', NULL, NULL, 'user', 'E6AoiMROHPXKc0fadfLHec06vckeQOfstMeKIQ3BVD9JT9AcgWjh3fcdOlhw', '2024-10-01 02:58:48', '2024-10-03 03:17:41'),
(2, 'priyanka', 'priyankaa@gmail.com', NULL, '$2y$12$gv1X8y6z1OZYO35hX07YPemHqYdDyxP040bPYK6S5utAZpTCmntx.', NULL, '7798285032', '202410010946download.jpg', NULL, NULL, 'user', NULL, '2024-10-01 03:49:57', '2024-10-01 04:16:50'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$12$TXaUYiJIdmQrdaKUZEkKDu.6dtmqPkU2y1g6.PUi9csdNjH4b5sLi', NULL, NULL, NULL, NULL, NULL, 'user', 'wZurnHR9HPtAtkvcGfDHDKd9bwZwyalPsye86JIwWZuXxLcE4TCydhp9GQFb', '2024-10-04 19:05:36', '2024-10-04 19:05:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `axes`
--
ALTER TABLE `axes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fastag_recharges`
--
ALTER TABLE `fastag_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newtolls`
--
ALTER TABLE `newtolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `relatedtolls`
--
ALTER TABLE `relatedtolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tolls`
--
ALTER TABLE `tolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tolls_from_foreign` (`from`),
  ADD KEY `tolls_to_foreign` (`to`),
  ADD KEY `tolls_axeid_foreign` (`axeid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `axes`
--
ALTER TABLE `axes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fastag_recharges`
--
ALTER TABLE `fastag_recharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `newtolls`
--
ALTER TABLE `newtolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatedtolls`
--
ALTER TABLE `relatedtolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `tolls`
--
ALTER TABLE `tolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tolls`
--
ALTER TABLE `tolls`
  ADD CONSTRAINT `tolls_axeid_foreign` FOREIGN KEY (`axeid`) REFERENCES `axes` (`id`),
  ADD CONSTRAINT `tolls_from_foreign` FOREIGN KEY (`from`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `tolls_to_foreign` FOREIGN KEY (`to`) REFERENCES `locations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
