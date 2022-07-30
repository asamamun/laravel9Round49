-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 07:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r49_laratodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2022-07-28 03:38:59', '2022-07-28 03:38:59'),
(2, 'UI/UX', '2022-07-28 03:39:19', '2022-07-28 03:42:41'),
(3, 'Databaes', '2022-07-28 03:39:40', '2022-07-28 03:39:40'),
(4, 'HTML', '2022-07-28 03:39:54', '2022-07-28 03:39:54'),
(5, 'JS', '2022-07-28 03:40:01', '2022-07-28 03:40:01'),
(6, 'PHP', '2022-07-28 03:40:47', '2022-07-28 03:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `category_todolist`
--

CREATE TABLE `category_todolist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `todolist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_todolist`
--

INSERT INTO `category_todolist` (`id`, `category_id`, `todolist_id`, `created_at`, `updated_at`) VALUES
(4, 3, 15, '2022-07-28 03:47:11', '2022-07-28 03:47:11'),
(5, 5, 15, '2022-07-28 03:47:58', '2022-07-28 03:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'nice work', 15, 'App\\Models\\User', '2022-07-28 04:53:32', '2022-07-28 04:54:38'),
(2, 'hello', 5, 'App\\Models\\Todolist', '2022-07-28 04:56:10', '2022-07-28 04:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin123 admin', 'test@gmail.com', 'test message', '2022-07-28 06:58:39', '2022-07-28 06:58:39'),
(2, NULL, 'IDB BISEW', 'asamamun.web@gmail.com', 'test', '2022-07-28 06:59:44', '2022-07-28 06:59:44'),
(3, NULL, 'Default default', 'default@gmail.com', 'testtgdsfg', '2022-07-28 06:59:55', '2022-07-28 06:59:55'),
(4, 13, 'Xioami MI', 'mi@mi.com', 'gffdgfdg', '2022-07-28 07:02:10', '2022-07-28 07:02:10'),
(5, 13, 'ADMIN', 'admin@gmail.com', 'gfdgfgh', '2022-07-28 07:08:55', '2022-07-28 07:08:55');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_21_122200_create_todolists_table', 1),
(7, '2022_07_24_102717_add_desc_to_todolists_table', 2),
(8, '2022_07_25_100409_create_phones_table', 3),
(9, '2022_07_26_111445_add_slug_to_todolists', 4),
(10, '2022_07_26_123205_add_slug_to_phones', 5),
(11, '2022_07_27_105212_create_profiles_table', 6),
(12, '2022_07_27_122800_create_tasks_table', 7),
(13, '2022_07_28_092832_create_categories_table', 8),
(14, '2022_07_28_093157_create_category_todolist', 8),
(15, '2022_07_28_104624_create_comments_table', 9),
(16, '2022_07_28_123325_create_contacts_table', 10);

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
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `name`, `slug`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Sammy Jenkins III', 'sammy-jenkins-iii', '234-419-1685', NULL, '2022-07-26 06:47:09'),
(2, 'Cade Prohaska', 'cade-prohaska', '+1-351-853-2842', NULL, '2022-07-26 06:47:09'),
(3, 'Alisa Macejkovic', 'alisa-macejkovic', '1-218-677-3200', NULL, '2022-07-26 06:47:09'),
(4, 'Loraine Wiza IV', 'loraine-wiza-iv', '406.725.3950', NULL, '2022-07-26 06:47:09'),
(5, 'Laurianne Davis', 'laurianne-davis', '+18203044448', NULL, '2022-07-26 06:47:09'),
(6, 'Hadley Stoltenberg', 'hadley-stoltenberg', '1-847-391-2877', NULL, '2022-07-26 06:47:09'),
(7, 'Makenna Corwin', 'makenna-corwin', '+1.361.299.9078', NULL, '2022-07-26 06:47:09'),
(8, 'Ryan Becker', 'ryan-becker', '+1.541.837.9584', NULL, '2022-07-26 06:47:09'),
(9, 'Hilario Effertz', 'hilario-effertz', '1-986-972-9771', NULL, '2022-07-26 06:47:09'),
(10, 'Ms. Savanah Gislason DDS', 'ms-savanah-gislason-dds', '863-995-1953', NULL, '2022-07-26 06:47:09'),
(11, 'Emerson Johns', 'emerson-johns', '+12184353962', NULL, '2022-07-26 06:47:09'),
(12, 'London McGlynn', 'london-mcglynn', '+1-406-201-0711', NULL, '2022-07-26 06:47:09'),
(13, 'Meda Koelpin', 'meda-koelpin', '+1 (323) 397-9417', NULL, '2022-07-26 06:47:09'),
(14, 'Alva Klein', 'alva-klein', '1-716-294-2636', NULL, '2022-07-26 06:47:09'),
(15, 'Ms. Tania Hill', 'ms-tania-hill', '+1-985-214-8135', NULL, '2022-07-26 06:47:09'),
(16, 'Vance Trantow', 'vance-trantow', '785.669.4976', NULL, '2022-07-26 06:47:09'),
(17, 'Deshaun Krajcik', 'deshaun-krajcik', '+1-651-717-5170', NULL, '2022-07-26 06:47:09'),
(18, 'Kiarra Keeling', 'kiarra-keeling', '(559) 507-8570', NULL, '2022-07-26 06:47:09'),
(19, 'Danny Haley', 'danny-haley', '+1 (716) 547-8437', NULL, '2022-07-26 06:47:09'),
(20, 'Josh Watsica', 'josh-watsica', '+1-678-495-8604', NULL, '2022-07-26 06:47:09'),
(21, 'Dana Koelpin', 'dana-koelpin', '+1-915-779-1297', NULL, '2022-07-26 06:47:10'),
(22, 'Dr. Jerome Kassulke', 'dr-jerome-kassulke', '228.760.0159', NULL, '2022-07-26 06:47:10'),
(23, 'Charlene Kulas', 'charlene-kulas', '+1 (845) 657-1398', NULL, '2022-07-26 06:47:10'),
(24, 'Meagan Barrows', 'meagan-barrows', '+1.817.425.2876', NULL, '2022-07-26 06:47:10'),
(25, 'Ebba Hudson PhD', 'ebba-hudson-phd', '424.287.1553', NULL, '2022-07-26 06:47:10'),
(26, 'Enrico O\'Reilly', 'enrico-o-reilly', '+1 (740) 886-7672', NULL, '2022-07-26 06:47:10'),
(27, 'Mrs. Juanita Osinski V', 'mrs-juanita-osinski-v', '928-513-3812', NULL, '2022-07-26 06:47:10'),
(28, 'Gino McGlynn', 'gino-mcglynn', '+1 (341) 669-1331', NULL, '2022-07-26 06:47:10'),
(29, 'Dr. Lorena Monahan', 'dr-lorena-monahan', '541.934.6029', NULL, '2022-07-26 06:47:10'),
(30, 'Tyra Bins', 'tyra-bins', '1-248-415-1103', NULL, '2022-07-26 06:47:10'),
(31, 'Dr. Terry Gutmann PhD', 'dr-terry-gutmann-phd', '+1-315-613-3912', NULL, '2022-07-26 06:47:10'),
(32, 'Manuel Hartmann', 'manuel-hartmann', '(845) 819-6340', NULL, '2022-07-26 06:47:10'),
(33, 'Monserrat Weber', 'monserrat-weber', '(504) 336-8569', NULL, '2022-07-26 06:47:10'),
(34, 'Prof. Carissa Prosacco', 'prof-carissa-prosacco', '(210) 623-6131', NULL, '2022-07-26 06:47:10'),
(35, 'Warren Hettinger', 'warren-hettinger', '+1 (810) 645-3880', NULL, '2022-07-26 06:47:10'),
(36, 'Dr. Octavia Wehner V', 'dr-octavia-wehner-v', '1-516-970-0930', NULL, '2022-07-26 06:47:10'),
(37, 'Dr. Savannah Langosh', 'dr-savannah-langosh', '743-612-2296', NULL, '2022-07-26 06:47:10'),
(38, 'Dorcas Gorczany', 'dorcas-gorczany', '785-838-8009', NULL, '2022-07-26 06:47:10'),
(39, 'Thalia Blanda', 'thalia-blanda', '(270) 603-1406', NULL, '2022-07-26 06:47:10'),
(40, 'Prof. Geovany Zboncak PhD', 'prof-geovany-zboncak-phd', '534-894-9115', NULL, '2022-07-26 06:47:10'),
(41, 'Easton Okuneva', 'easton-okuneva', '+1-820-598-0256', NULL, '2022-07-26 06:47:10'),
(42, 'Clinton Romaguera', 'clinton-romaguera', '+1-520-446-7522', NULL, '2022-07-26 06:47:10'),
(43, 'Ms. Kailyn Daniel I', 'ms-kailyn-daniel-i', '515-644-9856', NULL, '2022-07-26 06:47:10'),
(44, 'Prof. Jeramy Berge', 'prof-jeramy-berge', '678-690-0520', NULL, '2022-07-26 06:47:10'),
(45, 'Korey Wisozk', 'korey-wisozk', '352.314.5170', NULL, '2022-07-26 06:47:10'),
(46, 'Mozelle Hickle II', 'mozelle-hickle-ii', '+1-669-813-9599', NULL, '2022-07-26 06:47:11'),
(47, 'Dr. Kim Spencer Jr.', 'dr-kim-spencer-jr', '+1-651-283-3934', NULL, '2022-07-26 06:47:11'),
(48, 'Carlee Kirlin PhD', 'carlee-kirlin-phd', '+1-386-292-9563', NULL, '2022-07-26 06:47:11'),
(49, 'Gideon Sanford', 'gideon-sanford', '708-891-0324', NULL, '2022-07-26 06:47:11'),
(50, 'Jeromy Will', 'jeromy-will', '1-743-750-9001', NULL, '2022-07-26 06:47:11'),
(51, 'Pearl Kerluke Sr.', 'pearl-kerluke-sr', '+1-650-833-9428', NULL, '2022-07-26 06:47:11'),
(52, 'Bessie Bartell I', 'bessie-bartell-i', '1-650-606-2447', NULL, '2022-07-26 06:47:11'),
(53, 'Cleta Goldner', 'cleta-goldner', '+1 (209) 395-7010', NULL, '2022-07-26 06:47:11'),
(54, 'Lon Casper', 'lon-casper', '+1-458-888-4524', NULL, '2022-07-26 06:47:11'),
(55, 'Krystel Wuckert', 'krystel-wuckert', '530-439-7864', NULL, '2022-07-26 06:47:11'),
(56, 'Prof. Dean Hoppe IV', 'prof-dean-hoppe-iv', '+1 (623) 585-0323', NULL, '2022-07-26 06:47:11'),
(57, 'Stephan Simonis', 'stephan-simonis', '+1.657.510.1154', NULL, '2022-07-26 06:47:11'),
(58, 'Jaiden Gleichner DVM', 'jaiden-gleichner-dvm', '+1-479-305-0704', NULL, '2022-07-26 06:47:11'),
(59, 'Ramon Gerhold', 'ramon-gerhold', '989.545.3518', NULL, '2022-07-26 06:47:11'),
(60, 'Karina Ward I', 'karina-ward-i', '(651) 654-6377', NULL, '2022-07-26 06:47:11'),
(61, 'Maud Stroman', 'maud-stroman', '757.761.2885', NULL, '2022-07-26 06:47:11'),
(62, 'Dakota Krajcik', 'dakota-krajcik', '(307) 459-7642', NULL, '2022-07-26 06:47:11'),
(63, 'Serenity Reilly', 'serenity-reilly', '458-738-6325', NULL, '2022-07-26 06:47:11'),
(64, 'Cassandra Fadel', 'cassandra-fadel', '+1 (986) 290-4421', NULL, '2022-07-26 06:47:11'),
(65, 'Jason Doyle', 'jason-doyle', '254.319.1177', NULL, '2022-07-26 06:47:11'),
(66, 'Miracle Adams I', 'miracle-adams-i', '773-801-0865', NULL, '2022-07-26 06:47:11'),
(67, 'Yasmine Luettgen Sr.', 'yasmine-luettgen-sr', '(303) 729-2657', NULL, '2022-07-26 06:47:11'),
(68, 'Jarred Wunsch', 'jarred-wunsch', '+1 (520) 442-0353', NULL, '2022-07-26 06:47:11'),
(69, 'Bonita Heller', 'bonita-heller', '+1-347-450-6284', NULL, '2022-07-26 06:47:11'),
(70, 'Catalina Goldner PhD', 'catalina-goldner-phd', '(323) 541-4235', NULL, '2022-07-26 06:47:11'),
(71, 'Dr. Jett Cummerata', 'dr-jett-cummerata', '929.686.8520', NULL, '2022-07-26 06:47:12'),
(72, 'Henry Kiehn', 'henry-kiehn', '+1-520-514-5787', NULL, '2022-07-26 06:47:12'),
(73, 'Lorena Homenick', 'lorena-homenick', '586.317.4477', NULL, '2022-07-26 06:47:12'),
(74, 'Kenny Rosenbaum MD', 'kenny-rosenbaum-md', '1-541-719-4294', NULL, '2022-07-26 06:47:12'),
(75, 'Lucious Lakin', 'lucious-lakin', '1-810-200-2668', NULL, '2022-07-26 06:47:12'),
(76, 'Ayana Oberbrunner', 'ayana-oberbrunner', '+1-979-542-2072', NULL, '2022-07-26 06:47:12'),
(77, 'Louisa Gislason', 'louisa-gislason', '1-434-502-4542', NULL, '2022-07-26 06:47:12'),
(78, 'Weston Haag', 'weston-haag', '629-980-5476', NULL, '2022-07-26 06:47:12'),
(79, 'Dr. Keshaun Bosco', 'dr-keshaun-bosco', '314-652-8322', NULL, '2022-07-26 06:47:12'),
(80, 'Mr. Frederik Padberg DVM', 'mr-frederik-padberg-dvm', '951-748-5395', NULL, '2022-07-26 06:47:12'),
(81, 'Betsy Ziemann', 'betsy-ziemann', '1-813-393-1109', NULL, '2022-07-26 06:47:12'),
(82, 'Maryam Gleason', 'maryam-gleason', '+1-667-856-5876', NULL, '2022-07-26 06:47:12'),
(83, 'Miss Jaunita Renner', 'miss-jaunita-renner', '(380) 821-8291', NULL, '2022-07-26 06:47:12'),
(84, 'Ms. Vella Macejkovic', 'ms-vella-macejkovic', '463.451.3102', NULL, '2022-07-26 06:47:12'),
(85, 'Courtney Watsica MD', 'courtney-watsica-md', '+1.332.790.7790', NULL, '2022-07-26 06:47:12'),
(86, 'Liza Reichert', 'liza-reichert', '+1-574-548-6695', NULL, '2022-07-26 06:47:12'),
(87, 'Aliyah Powlowski', 'aliyah-powlowski', '+1.913.353.5114', NULL, '2022-07-26 06:47:12'),
(88, 'Allie Hickle Sr.', 'allie-hickle-sr', '+16602786183', NULL, '2022-07-26 06:47:12'),
(89, 'Dr. Leora Kuvalis', 'dr-leora-kuvalis', '+12528338057', NULL, '2022-07-26 06:47:12'),
(90, 'Syble Feil', 'syble-feil', '562.236.7979', NULL, '2022-07-26 06:47:12'),
(91, 'Mrs. Janae Stokes', 'mrs-janae-stokes', '+1.774.627.6971', NULL, '2022-07-26 06:47:12'),
(92, 'Lynn Hintz Sr.', 'lynn-hintz-sr', '(808) 945-6271', NULL, '2022-07-26 06:47:12'),
(93, 'Polly Haag IV', 'polly-haag-iv', '747.807.0720', NULL, '2022-07-26 06:47:12'),
(94, 'Paul Bailey', 'paul-bailey', '818.963.4425', NULL, '2022-07-26 06:47:12'),
(95, 'Prof. Loraine Gleichner', 'prof-loraine-gleichner', '+17156915420', NULL, '2022-07-26 06:47:12'),
(96, 'Alene Friesen', 'alene-friesen', '719-476-8038', NULL, '2022-07-26 06:47:12'),
(97, 'Mrs. Syble Sanford', 'mrs-syble-sanford', '+1.718.613.4594', NULL, '2022-07-26 06:47:13'),
(98, 'Cassidy Ryan', 'cassidy-ryan', '1-269-602-7168', NULL, '2022-07-26 06:47:13'),
(99, 'Theo O\'Connell', 'theo-o-connell', '+1-608-521-5407', NULL, '2022-07-26 06:47:13'),
(100, 'Brent Lesch', 'brent-lesch', '+1 (781) 354-0456', NULL, '2022-07-26 06:47:13'),
(101, 'Mr. Mark Weissnat DDS', 'mr-mark-weissnat-dds', '870.208.7613', NULL, '2022-07-26 06:47:13'),
(102, 'Guiseppe Reichert Sr.', 'guiseppe-reichert-sr', '+1-737-710-0180', NULL, '2022-07-26 06:47:13'),
(103, 'Glennie Jaskolski', 'glennie-jaskolski', '(838) 517-7613', NULL, '2022-07-26 06:47:13'),
(104, 'Orrin Witting', 'orrin-witting', '+1-820-578-1125', NULL, '2022-07-26 06:47:13'),
(105, 'Miss Allison Bode PhD', 'miss-allison-bode-phd', '+12345206184', NULL, '2022-07-26 06:47:13'),
(106, 'Dr. Chester Stokes DVM', 'dr-chester-stokes-dvm', '1-838-849-6009', NULL, '2022-07-26 06:47:13'),
(107, 'Eden Weber', 'eden-weber', '+1-618-915-7519', NULL, '2022-07-26 06:47:13'),
(108, 'Mitchell Bailey', 'mitchell-bailey', '+12792038485', NULL, '2022-07-26 06:47:13'),
(109, 'Franco Little V', 'franco-little-v', '+1 (805) 269-5319', NULL, '2022-07-26 06:47:13'),
(110, 'Ilene Flatley', 'ilene-flatley', '1-816-938-8182', NULL, '2022-07-26 06:47:13'),
(111, 'Prof. Nicholas Haley Jr.', 'prof-nicholas-haley-jr', '1-305-313-7148', NULL, '2022-07-26 06:47:13'),
(112, 'Mrs. Kirstin Mertz PhD', 'mrs-kirstin-mertz-phd', '763.580.3943', NULL, '2022-07-26 06:47:13'),
(113, 'Prof. Claudia Nikolaus II', 'prof-claudia-nikolaus-ii', '+14137600854', NULL, '2022-07-26 06:47:13'),
(114, 'Cullen Wunsch', 'cullen-wunsch', '980-236-8687', NULL, '2022-07-26 06:47:13'),
(115, 'Ludie Huel', 'ludie-huel', '929.772.1552', NULL, '2022-07-26 06:47:13'),
(116, 'Ms. Lenora Lubowitz', 'ms-lenora-lubowitz', '+1.432.289.5858', NULL, '2022-07-26 06:47:13'),
(117, 'Dr. Pete Fadel Jr.', 'dr-pete-fadel-jr', '(231) 899-3902', NULL, '2022-07-26 06:47:14'),
(118, 'Manuela Dickinson', 'manuela-dickinson', '234-822-5395', NULL, '2022-07-26 06:47:14'),
(119, 'Mr. Dalton Lang', 'mr-dalton-lang', '+1 (863) 544-3018', NULL, '2022-07-26 06:47:14'),
(120, 'Bo Stehr', 'bo-stehr', '(309) 247-2938', NULL, '2022-07-26 06:47:14'),
(121, 'Uriah Schmitt Jr.', 'uriah-schmitt-jr', '+1.551.401.4074', NULL, '2022-07-26 06:47:14'),
(122, 'Mr. Cordell Stoltenberg', 'mr-cordell-stoltenberg', '607.526.7538', NULL, '2022-07-26 06:47:14'),
(123, 'Dr. Raphaelle Kertzmann Jr.', 'dr-raphaelle-kertzmann-jr', '+1 (352) 566-5107', NULL, '2022-07-26 06:47:14'),
(124, 'Marcelina O\'Conner', 'marcelina-o-conner', '(404) 437-8258', NULL, '2022-07-26 06:47:14'),
(125, 'Declan Spencer', 'declan-spencer', '832-319-9235', NULL, '2022-07-26 06:47:14'),
(126, 'Howell Wuckert', 'howell-wuckert', '+1-863-415-0045', NULL, '2022-07-26 06:47:14'),
(127, 'Jessy Jaskolski', 'jessy-jaskolski', '(224) 981-5854', NULL, '2022-07-26 06:47:14'),
(128, 'Jedidiah Toy', 'jedidiah-toy', '+1.646.344.0558', NULL, '2022-07-26 06:47:14'),
(129, 'Carter Lowe V', 'carter-lowe-v', '+12186178539', NULL, '2022-07-26 06:47:14'),
(130, 'Dr. Kole Weimann I', 'dr-kole-weimann-i', '678-578-2878', NULL, '2022-07-26 06:47:14'),
(131, 'Dr. Dwight Hand Sr.', 'dr-dwight-hand-sr', '+1 (680) 971-1068', NULL, '2022-07-26 06:47:14'),
(132, 'Casey Stokes IV', 'casey-stokes-iv', '929-921-7438', NULL, '2022-07-26 06:47:14'),
(133, 'Ms. Theresa West', 'ms-theresa-west', '+1-484-851-9919', NULL, '2022-07-26 06:47:14'),
(134, 'Dr. Lane Turcotte III', 'dr-lane-turcotte-iii', '+1.760.497.0738', NULL, '2022-07-26 06:47:14'),
(135, 'Lavonne Skiles', 'lavonne-skiles', '(870) 952-2679', NULL, '2022-07-26 06:47:14'),
(136, 'Trevion Baumbach', 'trevion-baumbach', '+1 (843) 391-8748', NULL, '2022-07-26 06:47:14'),
(137, 'Lula Carroll IV', 'lula-carroll-iv', '(848) 728-3691', NULL, '2022-07-26 06:47:14'),
(138, 'Jayson Rempel', 'jayson-rempel', '727.866.0034', NULL, '2022-07-26 06:47:14'),
(139, 'Miss Rosalind Bartoletti', 'miss-rosalind-bartoletti', '253.660.7244', NULL, '2022-07-26 06:47:14'),
(140, 'Cindy McDermott', 'cindy-mcdermott', '(520) 472-8645', NULL, '2022-07-26 06:47:14'),
(141, 'Kavon Greenholt', 'kavon-greenholt', '(934) 427-3366', NULL, '2022-07-26 06:47:14'),
(142, 'Mr. Orlo Parisian PhD', 'mr-orlo-parisian-phd', '(626) 927-3797', NULL, '2022-07-26 06:47:14'),
(143, 'Kaitlyn Schroeder', 'kaitlyn-schroeder', '985-670-6964', NULL, '2022-07-26 06:47:14'),
(144, 'Marjolaine Spinka', 'marjolaine-spinka', '808-909-9491', NULL, '2022-07-26 06:47:14'),
(145, 'Demarco Schowalter', 'demarco-schowalter', '+1.929.229.2400', NULL, '2022-07-26 06:47:14'),
(146, 'Elfrieda Cremin', 'elfrieda-cremin', '+19253958447', NULL, '2022-07-26 06:47:15'),
(147, 'Delia Rowe', 'delia-rowe', '351-707-1981', NULL, '2022-07-26 06:47:15'),
(148, 'Orrin Douglas', 'orrin-douglas', '+17404810168', NULL, '2022-07-26 06:47:15'),
(149, 'Miss Jacquelyn Walter', 'miss-jacquelyn-walter', '+1.864.803.6269', NULL, '2022-07-26 06:47:15'),
(150, 'Ms. Elyse Jaskolski MD', 'ms-elyse-jaskolski-md', '260.863.0061', NULL, '2022-07-26 06:47:15'),
(151, 'Dr. Precious Stoltenberg DVM', 'dr-precious-stoltenberg-dvm', '214-816-6286', NULL, '2022-07-26 06:47:15'),
(152, 'Dr. Baby Kertzmann V', 'dr-baby-kertzmann-v', '(218) 378-8308', NULL, '2022-07-26 06:47:15'),
(153, 'Ms. Hailie Bradtke PhD', 'ms-hailie-bradtke-phd', '+19523865332', NULL, '2022-07-26 06:47:15'),
(154, 'Samantha Corkery III', 'samantha-corkery-iii', '720.692.2670', NULL, '2022-07-26 06:47:15'),
(155, 'Anika Stark', 'anika-stark', '+1-281-245-7201', NULL, '2022-07-26 06:47:15'),
(156, 'Miss Tiana Goyette DDS', 'miss-tiana-goyette-dds', '(724) 234-3904', NULL, '2022-07-26 06:47:15'),
(157, 'Sandrine Rippin I', 'sandrine-rippin-i', '(920) 270-5909', NULL, '2022-07-26 06:47:15'),
(158, 'Leila Bosco', 'leila-bosco', '(330) 712-6284', NULL, '2022-07-26 06:47:15'),
(159, 'Adrienne Dickinson DDS', 'adrienne-dickinson-dds', '1-610-547-2469', NULL, '2022-07-26 06:47:15'),
(160, 'Ima Ondricka', 'ima-ondricka', '847-550-8673', NULL, '2022-07-26 06:47:15'),
(161, 'Leila Torphy', 'leila-torphy', '+1.928.646.3956', NULL, '2022-07-26 06:47:15'),
(162, 'Jaron Schumm I', 'jaron-schumm-i', '458.685.2912', NULL, '2022-07-26 06:47:15'),
(163, 'Imani Pollich', 'imani-pollich', '+1.320.334.8122', NULL, '2022-07-26 06:47:15'),
(164, 'Prof. Osvaldo Conroy DDS', 'prof-osvaldo-conroy-dds', '+17623974245', NULL, '2022-07-26 06:47:15'),
(165, 'Anita Bode', 'anita-bode', '283.561.0266', NULL, '2022-07-26 06:47:15'),
(166, 'Ms. Frida Hahn MD', 'ms-frida-hahn-md', '445-757-0655', NULL, '2022-07-26 06:47:15'),
(167, 'Louisa Kulas', 'louisa-kulas', '+1.712.854.9111', NULL, '2022-07-26 06:47:15'),
(168, 'Mr. Deven Runolfsson IV', 'mr-deven-runolfsson-iv', '+1.318.973.3006', NULL, '2022-07-26 06:47:15'),
(169, 'Dr. Clint Stark', 'dr-clint-stark', '1-442-250-2690', NULL, '2022-07-26 06:47:15'),
(170, 'Nicola Borer', 'nicola-borer', '1-239-893-9863', NULL, '2022-07-26 06:47:15'),
(171, 'Brianne Gutkowski', 'brianne-gutkowski', '+1-334-828-8629', NULL, '2022-07-26 06:47:15'),
(172, 'Winona Kuhn', 'winona-kuhn', '(458) 714-4650', NULL, '2022-07-26 06:47:15'),
(173, 'Naomi Larson IV', 'naomi-larson-iv', '606.483.1009', NULL, '2022-07-26 06:47:16'),
(174, 'Prof. Van Mayer MD', 'prof-van-mayer-md', '865-907-3738', NULL, '2022-07-26 06:47:16'),
(175, 'Gayle Bahringer', 'gayle-bahringer', '(770) 619-0599', NULL, '2022-07-26 06:47:16'),
(176, 'Gilbert Berge', 'gilbert-berge', '+1.213.862.6935', NULL, '2022-07-26 06:47:16'),
(177, 'Eileen Beer PhD', 'eileen-beer-phd', '947.748.1621', NULL, '2022-07-26 06:47:16'),
(178, 'Miss Wanda Waters Jr.', 'miss-wanda-waters-jr', '309.357.2104', NULL, '2022-07-26 06:47:16'),
(179, 'Hilbert O\'Conner', 'hilbert-o-conner', '703-640-5238', NULL, '2022-07-26 06:47:16'),
(180, 'Prof. Elena Bradtke DDS', 'prof-elena-bradtke-dds', '847.441.5418', NULL, '2022-07-26 06:47:16'),
(181, 'Liana Orn', 'liana-orn', '269.895.4230', NULL, '2022-07-26 06:47:16'),
(182, 'Alfredo Padberg', 'alfredo-padberg', '680-704-9976', NULL, '2022-07-26 06:47:16'),
(183, 'Jessika Marquardt', 'jessika-marquardt', '(847) 826-9436', NULL, '2022-07-26 06:47:16'),
(184, 'Aurelie Muller', 'aurelie-muller', '937.930.6079', NULL, '2022-07-26 06:47:16'),
(185, 'Jarod Barton', 'jarod-barton', '1-986-609-7382', NULL, '2022-07-26 06:47:16'),
(186, 'Verla Ledner', 'verla-ledner', '+1-209-280-0212', NULL, '2022-07-26 06:47:16'),
(187, 'Justus Lockman', 'justus-lockman', '+1 (470) 461-4242', NULL, '2022-07-26 06:47:16'),
(188, 'Mr. Marlon Cronin', 'mr-marlon-cronin', '+12548190285', NULL, '2022-07-26 06:47:16'),
(189, 'Cruz Mohr IV', 'cruz-mohr-iv', '+1.309.891.2579', NULL, '2022-07-26 06:47:16'),
(190, 'Myles Kessler', 'myles-kessler', '(281) 306-8374', NULL, '2022-07-26 06:47:16'),
(191, 'Delfina Torphy', 'delfina-torphy', '+17573255642', NULL, '2022-07-26 06:47:16'),
(192, 'Alayna Braun DVM', 'alayna-braun-dvm', '+1.216.689.2076', NULL, '2022-07-26 06:47:16'),
(193, 'Prof. Oscar Okuneva II', 'prof-oscar-okuneva-ii', '(240) 374-5510', NULL, '2022-07-26 06:47:16'),
(194, 'Nasir Considine', 'nasir-considine', '+1-972-748-2650', NULL, '2022-07-26 06:47:16'),
(195, 'Dr. Albin Schoen', 'dr-albin-schoen', '541.791.4711', NULL, '2022-07-26 06:47:17'),
(196, 'Pearlie Crooks I', 'pearlie-crooks-i', '+1.331.613.4439', NULL, '2022-07-26 06:47:17'),
(197, 'Ezekiel Ferry', 'ezekiel-ferry', '1-256-235-9163', NULL, '2022-07-26 06:47:17'),
(198, 'Marianne Bogan', 'marianne-bogan', '+1.937.865.6321', NULL, '2022-07-26 06:47:17'),
(199, 'Kathleen Treutel', 'kathleen-treutel', '(307) 462-9405', NULL, '2022-07-26 06:47:17'),
(200, 'Ramiro Strosin', 'ramiro-strosin', '+1.520.597.1910', NULL, '2022-07-26 06:47:17'),
(201, 'Adnan', 'adnan', '0123456789', '2022-07-26 06:37:18', '2022-07-26 06:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloodgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `fullname`, `phone`, `image`, `bloodgroup`, `created_at`, `updated_at`) VALUES
(1, 13, 'super admin', '23487634', 'myimage.jpg', 'B+', '2022-07-27 05:04:46', '2022-07-27 05:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `todolist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `todolist_id`, `name`, `description`, `done`, `created_at`, `updated_at`) VALUES
(1, 5, 'task1', 'task1 desc', 0, '2022-07-27 06:38:08', '2022-07-27 06:38:08'),
(2, 5, 'task name 1', 'task desc 2', 0, '2022-07-27 06:40:14', '2022-07-27 06:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `todolists`
--

CREATE TABLE `todolists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todolists`
--

INSERT INTO `todolists` (`id`, `name`, `slug`, `description`, `done`, `created_at`, `updated_at`) VALUES
(1, 'Tamia Carroll', 'tamia-carroll', 'Sit qui tempora adipisci ex id rerum optio reprehenderit cum consectetur ipsum.', 0, NULL, '2022-07-26 06:08:12'),
(2, 'Prof. Daryl Witting', 'prof-daryl-witting', 'Vero esse vel odio consectetur ut beatae nesciunt sunt repudiandae voluptatum ut.', 1, NULL, '2022-07-26 06:08:12'),
(3, 'Mrs. Yessenia Krajcik', 'mrs-yessenia-krajcik', 'Doloremque sequi laborum doloremque aperiam cum ullam.', 1, NULL, '2022-07-26 06:08:12'),
(4, 'Dr. Frederik Emmerich', 'dr-frederik-emmerich', 'Eos corporis eum aut earum accusantium in aut quam.', 1, NULL, '2022-07-26 06:08:12'),
(5, 'Fletcher Sporer', 'fletcher-sporer', 'Animi sed odit quisquam est quam earum aut omnis architecto ut.', 0, NULL, '2022-07-26 06:08:12'),
(6, 'Forrest Jacobs', 'forrest-jacobs', 'Blanditiis nobis vel omnis deleniti laboriosam ratione quam occaecati.', 1, NULL, '2022-07-26 06:08:12'),
(7, 'Rhett Hauck', 'rhett-hauck', 'Earum ipsa et quo doloribus nam recusandae sed saepe impedit maxime voluptas dolor natus.', 1, NULL, '2022-07-26 06:08:13'),
(8, 'Mrs. Christy Kris', 'mrs-christy-kris', 'Sunt placeat perferendis consequatur et autem dicta nostrum sunt aut distinctio voluptatem.', 1, NULL, '2022-07-26 06:08:13'),
(9, 'Prof. Hanna Schuster III', 'prof-hanna-schuster-iii', 'Veritatis id quidem voluptatibus tempora sed dolorum cupiditate minima eos molestias recusandae error.', 1, NULL, '2022-07-26 06:08:13'),
(10, 'Mrs. Fabiola Rowe II', 'mrs-fabiola-rowe-ii', 'Ratione repellat facilis sed quia quam nesciunt harum.', 1, NULL, '2022-07-26 06:08:13'),
(11, 'Edd Bogan III', 'edd-bogan-iii', 'Provident maxime omnis molestias doloribus voluptas aspernatur aut rerum corporis.', 1, NULL, '2022-07-26 06:08:13'),
(12, 'Prof. Domenico Goldner MD', 'prof-domenico-goldner-md', 'Quas quos enim soluta et officiis quisquam maiores nobis rerum dolorem harum.', 1, NULL, '2022-07-26 06:08:13'),
(13, 'Easter Emmerich II', 'easter-emmerich-ii', 'Ut repellat at quod temporibus rerum dolorem excepturi ex voluptatem dignissimos mollitia est.', 0, NULL, '2022-07-26 06:08:13'),
(14, 'Kyleigh Ernser DDS', 'kyleigh-ernser-dds', 'Magnam eaque minus aliquam distinctio est consequuntur dicta deleniti nobis qui.', 1, NULL, '2022-07-26 06:08:13'),
(15, 'Liam Tremblay', 'liam-tremblay', 'Qui eaque qui aliquam aut quis odit minus reprehenderit qui ut ea libero.', 1, NULL, '2022-07-26 06:08:13'),
(16, 'Ms. Leonora Hamill III', 'ms-leonora-hamill-iii', 'Non asperiores aperiam ut mollitia et aut similique voluptatem tempore.', 1, NULL, '2022-07-26 06:08:13'),
(17, 'Ruthie Mertz', 'ruthie-mertz', 'Maxime sapiente doloribus vero placeat quisquam nam aspernatur sint.', 0, NULL, '2022-07-26 06:08:13'),
(18, 'Cassie Torphy', 'cassie-torphy', 'Facere velit eos est tempore aperiam et nostrum dolores et dignissimos quisquam perferendis asperiores.', 1, NULL, '2022-07-26 06:08:13'),
(19, 'Ms. Princess Wiegand', 'ms-princess-wiegand', 'Id et ipsam sed vitae explicabo aut incidunt debitis.', 0, NULL, '2022-07-26 06:08:13'),
(20, 'Cale Schmidt', 'cale-schmidt', 'Vitae mollitia et harum quae repellendus earum est molestias in est et aut.', 0, NULL, '2022-07-26 06:08:13'),
(21, 'Trycia Weissnat', 'trycia-weissnat', 'Eligendi molestias rerum ut aut a ab sequi iure nihil sint.', 0, NULL, '2022-07-26 06:08:13'),
(22, 'Dr. Austin Abshire', 'dr-austin-abshire', 'Ea reprehenderit nihil eos earum ipsam nulla voluptatem omnis delectus corporis dignissimos ipsa quaerat.', 1, NULL, '2022-07-26 06:08:13'),
(23, 'Miss Jakayla Balistreri MD', 'miss-jakayla-balistreri-md', 'Autem eligendi itaque fugiat fuga tempora illo aliquam qui.', 1, NULL, '2022-07-26 06:08:13'),
(24, 'Prof. Daphne Shields MD', 'prof-daphne-shields-md', 'Ea consequatur aliquid sit ducimus id expedita.', 1, NULL, '2022-07-26 06:08:13'),
(25, 'Destin Jaskolski', 'destin-jaskolski', 'Facilis ut aut qui est porro placeat.', 1, NULL, '2022-07-26 06:08:13'),
(26, 'Mr. Willard Schmidt Sr.', 'mr-willard-schmidt-sr', 'Atque asperiores esse sapiente dolores dolorum aut tempore qui eum vitae.', 0, NULL, '2022-07-26 06:08:13'),
(27, 'Roberta Greenfelder', 'roberta-greenfelder', 'Deserunt debitis et ducimus recusandae asperiores id.', 1, NULL, '2022-07-26 06:08:13'),
(28, 'Dr. Lula Nolan I', 'dr-lula-nolan-i', 'Laudantium voluptas odit incidunt non alias qui.', 1, NULL, '2022-07-26 06:08:13'),
(29, 'Brianne Heathcote', 'brianne-heathcote', 'Fuga accusamus voluptas voluptas eos perspiciatis nostrum qui modi in enim.', 1, NULL, '2022-07-26 06:08:14'),
(30, 'Ms. Hailie Thompson', 'ms-hailie-thompson', 'Quidem molestiae aliquid assumenda consequatur esse a optio.', 1, NULL, '2022-07-26 06:08:14'),
(31, 'Jalon Hettinger', 'jalon-hettinger', 'In quas fuga quis alias molestiae tempore debitis.', 1, NULL, '2022-07-26 06:08:14'),
(32, 'Prof. Orpha Von', 'prof-orpha-von', 'Velit facilis fuga optio ex sit quisquam voluptas repudiandae.', 1, NULL, '2022-07-26 06:08:14'),
(33, 'Anna Emmerich II', 'anna-emmerich-ii', 'Voluptatem nesciunt et praesentium itaque modi consequatur.', 1, NULL, '2022-07-26 06:08:14'),
(34, 'Isobel Ledner', 'isobel-ledner', 'Omnis molestiae omnis et dolores molestias omnis commodi non vitae qui.', 0, NULL, '2022-07-26 06:08:14'),
(35, 'Cleve Spinka', 'cleve-spinka', 'A voluptatum dolorum sed molestias et nobis nihil.', 1, NULL, '2022-07-26 06:08:14'),
(36, 'Mr. Doyle Kertzmann', 'mr-doyle-kertzmann', 'Facere atque magnam sunt unde qui quod assumenda sunt provident voluptatem asperiores at qui.', 1, NULL, '2022-07-26 06:08:14'),
(37, 'Lavon Fahey', 'lavon-fahey', 'Repellendus ex vel doloribus dignissimos voluptatum a odio voluptatem enim.', 0, NULL, '2022-07-26 06:08:14'),
(38, 'Mr. Zion Kutch IV', 'mr-zion-kutch-iv', 'Ut eius et labore cupiditate atque aspernatur perspiciatis suscipit qui harum aut dolorem.', 1, NULL, '2022-07-26 06:08:14'),
(39, 'Maverick Turner', 'maverick-turner', 'Iste cum est facere molestiae labore molestiae asperiores sit provident sapiente.', 1, NULL, '2022-07-26 06:08:14'),
(40, 'Dallas Heller DDS', 'dallas-heller-dds', 'Consequatur nam dolor ad ex deserunt assumenda consequatur aut provident repellendus esse voluptate harum.', 0, NULL, '2022-07-26 06:08:14'),
(41, 'Miss Sabrina Dickinson', 'miss-sabrina-dickinson', 'Voluptas id nam dignissimos qui vel sapiente velit deleniti rerum sit autem quasi a.', 1, NULL, '2022-07-26 06:08:14'),
(42, 'Kenna Walker', 'kenna-walker', 'Voluptas sunt dolorem voluptas aspernatur incidunt sit esse est ut vero quod a.', 0, NULL, '2022-07-26 06:08:14'),
(43, 'Joy Mills DDS', 'joy-mills-dds', 'Eveniet ut sed velit animi architecto amet vel ipsam ut rerum et fugit sed laudantium.', 1, NULL, '2022-07-26 06:08:14'),
(44, 'Emily Gorczany', 'emily-gorczany', 'Praesentium qui eos quis ut mollitia animi ipsa magni dicta eveniet quia quas unde.', 1, NULL, '2022-07-26 06:08:14'),
(45, 'Ms. Annabell Borer', 'ms-annabell-borer', 'Ea deleniti ea molestiae aspernatur ipsam ut dicta est voluptatem.', 1, NULL, '2022-07-26 06:08:14'),
(46, 'Lester Harber', 'lester-harber', 'Commodi et voluptate quas vel natus fuga qui est alias.', 1, NULL, '2022-07-26 06:08:14'),
(47, 'Hilda Mann', 'hilda-mann', 'Doloremque et ut repellat corrupti neque dignissimos autem et.', 1, NULL, '2022-07-26 06:08:14'),
(48, 'Lucie Ratke', 'lucie-ratke', 'Et deleniti voluptatem illo et modi odio excepturi autem.', 1, NULL, '2022-07-26 06:08:14'),
(49, 'Archibald Pouros Sr.', 'archibald-pouros-sr', 'Commodi molestias est alias quia non quisquam saepe optio quia ea qui.', 1, NULL, '2022-07-26 06:08:14'),
(50, 'Felipa Daniel V', 'felipa-daniel-v', 'Ut dignissimos ipsa nostrum est sequi ratione aperiam sint rem voluptatem et.', 1, NULL, '2022-07-26 06:08:15'),
(51, 'Myriam Hoppe', 'myriam-hoppe', 'Voluptatem est temporibus esse et at illum sit aliquam sunt odit.', 1, NULL, '2022-07-26 06:08:15'),
(52, 'Ms. Tatyana Dicki Jr.', 'ms-tatyana-dicki-jr', 'Numquam quas dolore voluptas eligendi quis praesentium quo dolor aut temporibus numquam dolores eos.', 1, NULL, '2022-07-26 06:08:15'),
(53, 'Prof. Benton Goldner I', 'prof-benton-goldner-i', 'Est sint vel molestiae id unde autem ad dolore unde qui.', 1, NULL, '2022-07-26 06:08:15'),
(54, 'Janice Considine', 'janice-considine', 'Voluptatem consequatur et cum sapiente beatae est.', 1, NULL, '2022-07-26 06:08:15'),
(55, 'Dr. Hassie Conn I', 'dr-hassie-conn-i', 'Voluptatibus aut quisquam rem officiis fuga voluptas rerum assumenda omnis.', 1, NULL, '2022-07-26 06:08:15'),
(56, 'Dr. Matteo Zieme', 'dr-matteo-zieme', 'Iste numquam asperiores dolor aut maiores ut repellat.', 0, NULL, '2022-07-26 06:08:15'),
(57, 'Albin Blanda', 'albin-blanda', 'Et debitis eligendi quaerat quaerat cupiditate est quidem veritatis neque.', 0, NULL, '2022-07-26 06:08:15'),
(58, 'Eleazar O\'Reilly', 'eleazar-o-reilly', 'Velit iste nobis dolorem itaque dolor autem nesciunt itaque veritatis accusantium molestias eos dolore.', 0, NULL, '2022-07-26 06:08:15'),
(59, 'Fletcher Barton', 'fletcher-barton', 'Qui delectus enim est dolorem consequatur id corporis.', 1, NULL, '2022-07-26 06:08:15'),
(60, 'Kendra Wuckert', 'kendra-wuckert', 'Rerum quia voluptas excepturi velit voluptatum aut repudiandae modi dignissimos vero omnis et sint.', 1, NULL, '2022-07-26 06:08:15'),
(61, 'Porter Lakin Sr.', 'porter-lakin-sr', 'Cum ipsum quam et animi et eveniet illo rerum.', 1, NULL, '2022-07-26 06:08:15'),
(62, 'Coy Renner Jr.', 'coy-renner-jr', 'Minima ratione sequi velit vero aliquam voluptatibus autem hic dolor a similique aspernatur similique.', 1, NULL, '2022-07-26 06:08:15'),
(63, 'Talia Baumbach', 'talia-baumbach', 'Ut eveniet qui architecto omnis sit quo voluptas et.', 1, NULL, '2022-07-26 06:08:15'),
(64, 'Lulu Brakus DVM', 'lulu-brakus-dvm', 'Libero minus possimus officiis sit dolorem unde.', 0, NULL, '2022-07-26 06:08:15'),
(65, 'Mrs. Dolores Schuppe', 'mrs-dolores-schuppe', 'Ipsam omnis eum ex facere ea consequatur minima eos eos similique sit.', 0, NULL, '2022-07-26 06:08:15'),
(66, 'Flavie Lockman', 'flavie-lockman', 'Labore tempore at qui dolorum eos in excepturi quisquam ut voluptatum aut.', 1, NULL, '2022-07-26 06:08:15'),
(67, 'August Witting Sr.', 'august-witting-sr', 'Quis rem quo quod possimus sequi est omnis sequi qui odit.', 0, NULL, '2022-07-26 06:08:15'),
(68, 'Heath Collier', 'heath-collier', 'Porro officiis distinctio quibusdam provident neque quia rerum nulla minima.', 1, NULL, '2022-07-26 06:08:15'),
(69, 'Jeanette Johnson', 'jeanette-johnson', 'Est et ex veritatis officiis perferendis doloremque quidem ut labore tenetur quas.', 1, NULL, '2022-07-26 06:08:15'),
(70, 'Ms. Alison Ryan DVM', 'ms-alison-ryan-dvm', 'Voluptatum reiciendis assumenda dolor voluptas veniam nemo velit dolores autem unde et.', 1, NULL, '2022-07-26 06:08:15'),
(71, 'Rebeka Jones', 'rebeka-jones', 'Qui mollitia atque a deserunt ea alias ut natus et cum nulla explicabo asperiores.', 1, NULL, '2022-07-26 06:08:15'),
(72, 'Miss Madelyn Lebsack', 'miss-madelyn-lebsack', 'Inventore eligendi commodi aut dolorum accusamus est explicabo labore impedit explicabo nam delectus dolor.', 0, NULL, '2022-07-26 06:08:15'),
(73, 'Hoyt Stanton', 'hoyt-stanton', 'Aut animi laborum sint et cupiditate enim qui.', 1, NULL, '2022-07-26 06:08:15'),
(74, 'Mrs. Bonita Wisozk', 'mrs-bonita-wisozk', 'Laudantium voluptas aliquid quisquam explicabo vel eos.', 1, NULL, '2022-07-26 06:08:16'),
(75, 'Prof. Donald Cassin MD', 'prof-donald-cassin-md', 'Est ea aspernatur eveniet voluptas aut consectetur quaerat dignissimos facere.', 1, NULL, '2022-07-26 06:08:16'),
(76, 'Esmeralda Leuschke', 'esmeralda-leuschke', 'Perspiciatis odit et aut maxime ea consectetur qui.', 1, NULL, '2022-07-26 06:08:16'),
(77, 'Luella Miller', 'luella-miller', 'A quod labore odio deleniti aut accusamus laboriosam voluptas et rerum repudiandae doloribus.', 1, NULL, '2022-07-26 06:08:16'),
(78, 'Friedrich Mohr', 'friedrich-mohr', 'Natus qui nesciunt quis nesciunt voluptas nemo dignissimos perferendis quidem.', 1, NULL, '2022-07-26 06:08:16'),
(79, 'Lera Thompson DVM', 'lera-thompson-dvm', 'Hic nulla voluptatem vel hic libero temporibus officia labore omnis aspernatur sit nihil.', 0, NULL, '2022-07-26 06:08:16'),
(80, 'Mr. Morton Strosin Sr.', 'mr-morton-strosin-sr', 'Est cumque voluptas ipsam reiciendis quidem aut odio dicta id atque illo quasi.', 1, NULL, '2022-07-26 06:08:16'),
(81, 'Mr. Okey Larkin', 'mr-okey-larkin', 'Voluptatem itaque quaerat ut quia sapiente culpa.', 1, NULL, '2022-07-26 06:08:16'),
(82, 'Murl Schroeder', 'murl-schroeder', 'Enim porro enim omnis quam totam excepturi maiores dolore commodi eos ipsa laboriosam voluptatem.', 1, NULL, '2022-07-26 06:08:16'),
(83, 'Valentina Cole', 'valentina-cole', 'Vero quas expedita consectetur fuga voluptates dolores quia aliquid aliquam aliquid eaque.', 1, NULL, '2022-07-26 06:08:16'),
(84, 'Waldo Schmidt', 'waldo-schmidt', 'Ut temporibus a aliquid laboriosam quidem ducimus cumque voluptas corporis.', 1, NULL, '2022-07-26 06:08:16'),
(85, 'Alexandrine Schimmel', 'alexandrine-schimmel', 'Modi incidunt assumenda nam praesentium dolor cum debitis rerum.', 1, NULL, '2022-07-26 06:08:16'),
(86, 'Darrel Carroll', 'darrel-carroll', 'Quasi odit dolorem neque atque velit eaque et nobis ut.', 1, NULL, '2022-07-26 06:08:16'),
(87, 'Stanley Lakin V', 'stanley-lakin-v', 'Debitis repudiandae quam nulla incidunt quis corrupti.', 1, NULL, '2022-07-26 06:08:16'),
(88, 'Matt Lynch', 'matt-lynch', 'Nemo ducimus quasi est quo officia odit voluptates laborum nesciunt omnis.', 1, NULL, '2022-07-26 06:08:16'),
(89, 'Curtis Cummerata', 'curtis-cummerata', 'Et aut et quos nesciunt eaque et laudantium ut nobis aperiam quo molestiae dolores.', 1, NULL, '2022-07-26 06:08:16'),
(90, 'Richard Conroy', 'richard-conroy', 'Explicabo officiis officia iure sunt et molestias autem aspernatur repellat et perspiciatis.', 1, NULL, '2022-07-26 06:08:16'),
(91, 'Mr. John Huel MD', 'mr-john-huel-md', 'Explicabo et corporis quia expedita eligendi et et autem eveniet expedita.', 0, NULL, '2022-07-26 06:08:16'),
(92, 'Mrs. Orpha Williamson', 'mrs-orpha-williamson', 'Aliquam deleniti at asperiores corporis sequi amet perferendis vel quae ut.', 1, NULL, '2022-07-26 06:08:16'),
(93, 'Prof. Audrey Barrows', 'prof-audrey-barrows', 'Quo id laborum dolore voluptates optio architecto repellendus ducimus et quibusdam magnam dolores eaque.', 0, NULL, '2022-07-26 06:08:16'),
(94, 'Aglae Tillman', 'aglae-tillman', 'Suscipit mollitia omnis assumenda eos soluta neque maiores quas rerum.', 0, NULL, '2022-07-26 06:08:16'),
(95, 'Fausto Kilback', 'fausto-kilback', 'Molestiae ullam nihil nesciunt ad eveniet rerum.', 1, NULL, '2022-07-26 06:08:16'),
(96, 'Emelie Zboncak', 'emelie-zboncak', 'Nesciunt rerum incidunt quidem voluptates laboriosam voluptates.', 0, NULL, '2022-07-26 06:08:16'),
(97, 'Betsy Luettgen', 'betsy-luettgen', 'Ad molestiae dignissimos enim repellat est dolor similique omnis.', 1, NULL, '2022-07-26 06:08:16'),
(98, 'Dina Brown I', 'dina-brown-i', 'Aperiam asperiores magnam sed eum est voluptas assumenda deleniti doloremque id aspernatur.', 1, NULL, '2022-07-26 06:08:16'),
(99, 'Robbie Pacocha V', 'robbie-pacocha-v', 'Ipsam mollitia odio ea libero exercitationem impedit eius maiores fugit aut incidunt.', 1, NULL, '2022-07-26 06:08:16'),
(100, 'Dr. Deonte Cremin', 'dr-deonte-cremin', 'Voluptas eum voluptas et inventore saepe ipsa quia magni reprehenderit molestiae sequi maiores et.', 1, NULL, '2022-07-26 06:08:16'),
(101, 'Prof. Everett Brakus I', 'prof-everett-brakus-i', 'Dolor commodi reprehenderit et nihil voluptatum sed omnis.', 1, NULL, '2022-07-26 06:08:16'),
(102, 'Cale Oberbrunner', 'cale-oberbrunner', 'Porro rem voluptas nihil nihil est est enim rerum aspernatur quasi modi nihil soluta.', 1, NULL, '2022-07-26 06:08:16'),
(103, 'Elliot Pollich', 'elliot-pollich', 'Recusandae ea et libero qui qui a quasi quia.', 1, NULL, '2022-07-26 06:08:17'),
(104, 'Olin Langosh', 'olin-langosh', 'Recusandae ab magnam qui doloremque qui totam.', 0, NULL, '2022-07-26 06:08:17'),
(105, 'Prof. Lucious Anderson', 'prof-lucious-anderson', 'Vel et odit accusamus explicabo earum ut architecto sint repellendus et expedita iste et.', 1, NULL, '2022-07-26 06:08:17'),
(106, 'Dr. Tanner Klein PhD', 'dr-tanner-klein-phd', 'Ratione eius at debitis quas sit nemo distinctio aliquid.', 1, NULL, '2022-07-26 06:08:17'),
(107, 'Thaddeus Collins', 'thaddeus-collins', 'Ad ratione sapiente dolor corporis dolores ea cumque corporis.', 1, NULL, '2022-07-26 06:08:17'),
(108, 'Kariane Kemmer MD', 'kariane-kemmer-md', 'Dolor qui exercitationem perspiciatis vel rem et ut et rerum enim.', 1, NULL, '2022-07-26 06:08:17'),
(109, 'Zackery Schimmel', 'zackery-schimmel', 'Ex iure distinctio et fugit minus animi hic.', 0, NULL, '2022-07-26 06:08:17'),
(110, 'Mr. Cody Miller Sr.', 'mr-cody-miller-sr', 'Aspernatur debitis odio soluta deserunt est non eos.', 1, NULL, '2022-07-26 06:08:17'),
(111, 'Margarita Runte V', 'margarita-runte-v', 'Doloremque et delectus sit fuga atque dolore optio.', 1, NULL, '2022-07-26 06:08:17'),
(112, 'Jermaine Stiedemann', 'jermaine-stiedemann', 'Veniam mollitia voluptate a provident rerum ad vel veritatis similique id soluta.', 1, NULL, '2022-07-26 06:08:17'),
(113, 'Prof. Dorris Wuckert II', 'prof-dorris-wuckert-ii', 'Velit velit ipsam iure non accusamus quaerat.', 1, NULL, '2022-07-26 06:08:17'),
(114, 'Jaron Dach', 'jaron-dach', 'Quae dolorem eos illo rem architecto voluptate.', 1, NULL, '2022-07-26 06:08:17'),
(115, 'Mrs. Jody Schaefer', 'mrs-jody-schaefer', 'Repellendus repellendus similique eos ab quas deleniti sint soluta repudiandae eum atque commodi.', 1, NULL, '2022-07-26 06:08:17'),
(116, 'Matilda Veum', 'matilda-veum', 'Facilis mollitia similique vero unde repudiandae ea eaque suscipit nostrum eveniet quam consequuntur cumque.', 1, NULL, '2022-07-26 06:08:17'),
(117, 'Cleveland Cronin V', 'cleveland-cronin-v', 'Aut aspernatur ut id provident sint pariatur tempore est.', 1, NULL, '2022-07-26 06:08:17'),
(118, 'Berniece Wisoky', 'berniece-wisoky', 'Ipsum quo sed qui corrupti mollitia sit et ea sit sint voluptatum tempora modi.', 1, NULL, '2022-07-26 06:08:17'),
(119, 'Dana Bechtelar PhD', 'dana-bechtelar-phd', 'Est voluptas nemo cupiditate tempora cupiditate vel harum quia dolor quis quis.', 1, NULL, '2022-07-26 06:08:17'),
(120, 'Quincy Steuber', 'quincy-steuber', 'Quia dignissimos necessitatibus magni laborum tenetur tenetur.', 1, NULL, '2022-07-26 06:08:17'),
(121, 'Prof. Mitchel Hodkiewicz', 'prof-mitchel-hodkiewicz', 'Eligendi quia esse et consectetur quos ducimus nulla aut et ut.', 1, NULL, '2022-07-26 06:08:17'),
(122, 'Eudora Abbott', 'eudora-abbott', 'Quia aut molestias officiis et iste possimus nam voluptates et sed dolor.', 1, NULL, '2022-07-26 06:08:17'),
(123, 'Crystel Kovacek', 'crystel-kovacek', 'Dignissimos numquam a voluptas maiores nisi numquam molestiae officia.', 1, NULL, '2022-07-26 06:08:17'),
(124, 'Triston Cole', 'triston-cole', 'Corrupti et qui et quo similique distinctio dolores error ipsa.', 1, NULL, '2022-07-26 06:08:17'),
(125, 'Shaina Schmitt', 'shaina-schmitt', 'Magnam ut non ut dolorem odio in et tenetur tempore.', 1, NULL, '2022-07-26 06:08:17'),
(126, 'Prof. Elmore Prosacco I', 'prof-elmore-prosacco-i', 'Quo nihil est dolorem voluptatem tempora nesciunt aut voluptatibus.', 0, NULL, '2022-07-26 06:08:18'),
(127, 'Rosina Roob', 'rosina-roob', 'Numquam laborum eum fuga ullam expedita consequatur magni.', 1, NULL, '2022-07-26 06:08:18'),
(128, 'Esther Aufderhar', 'esther-aufderhar', 'Temporibus mollitia est ut esse dolorum autem et recusandae sed.', 0, NULL, '2022-07-26 06:08:18'),
(129, 'Prof. Anthony Mayert', 'prof-anthony-mayert', 'Dolores et alias ea incidunt ea minus quidem eos doloremque quia.', 1, NULL, '2022-07-26 06:08:18'),
(130, 'Jonathan Howe II', 'jonathan-howe-ii', 'Asperiores velit minima cumque qui sit at et.', 0, NULL, '2022-07-26 06:08:18'),
(131, 'Glennie Nicolas', 'glennie-nicolas', 'At qui fugiat enim et omnis non debitis voluptatibus eligendi omnis.', 0, NULL, '2022-07-26 06:08:18'),
(132, 'Mrs. Natalie Cartwright', 'mrs-natalie-cartwright', 'Optio mollitia aut mollitia voluptas repellendus modi aspernatur autem voluptatem autem accusamus nulla autem.', 1, NULL, '2022-07-26 06:08:18'),
(133, 'Alicia Bashirian', 'alicia-bashirian', 'Praesentium reiciendis voluptas perspiciatis eum et at.', 1, NULL, '2022-07-26 06:08:18'),
(134, 'Donald Rolfson I', 'donald-rolfson-i', 'Ut et repellat vitae est aut quas beatae et ea consequatur.', 0, NULL, '2022-07-26 06:08:18'),
(135, 'Danika Nolan', 'danika-nolan', 'Voluptatem aspernatur vel quia quis quae quasi odit accusantium ut ad libero doloribus voluptatem.', 1, NULL, '2022-07-26 06:08:18'),
(136, 'Ms. Kelli Nikolaus', 'ms-kelli-nikolaus', 'Soluta enim nostrum consectetur recusandae laborum vel architecto magnam.', 0, NULL, '2022-07-26 06:08:18'),
(137, 'Bridie Brekke', 'bridie-brekke', 'Voluptate quibusdam ipsam dolorem dignissimos maxime maiores quisquam eum.', 1, NULL, '2022-07-26 06:08:18'),
(138, 'Clark Klein', 'clark-klein', 'Consequuntur officiis magni unde unde est tempore veritatis temporibus aut non sed.', 1, NULL, '2022-07-26 06:08:18'),
(139, 'Alf Satterfield II', 'alf-satterfield-ii', 'Asperiores est recusandae molestiae reprehenderit vel incidunt omnis aut.', 1, NULL, '2022-07-26 06:08:18'),
(140, 'Jack Waelchi', 'jack-waelchi', 'Est et quia eveniet excepturi non nobis ipsum.', 0, NULL, '2022-07-26 06:08:18'),
(141, 'Elsa Osinski', 'elsa-osinski', 'Ut laboriosam atque fugit nihil minima totam velit illum quae.', 1, NULL, '2022-07-26 06:08:18'),
(142, 'Adrianna McLaughlin I', 'adrianna-mclaughlin-i', 'Sed similique consequatur natus ratione accusamus ipsum.', 1, NULL, '2022-07-26 06:08:19'),
(143, 'Mr. Lambert Howell', 'mr-lambert-howell', 'Praesentium earum totam autem libero aspernatur et aut.', 0, NULL, '2022-07-26 06:08:19'),
(144, 'Mrs. Alfreda Denesik', 'mrs-alfreda-denesik', 'Aut voluptatem maiores ea accusantium aspernatur ullam delectus.', 1, NULL, '2022-07-26 06:08:19'),
(145, 'Alford Balistreri', 'alford-balistreri', 'Maxime voluptas veniam qui repellat minima exercitationem sed in voluptas.', 1, NULL, '2022-07-26 06:08:19'),
(146, 'Angeline Lind I', 'angeline-lind-i', 'Aspernatur ut ea ad corrupti voluptates ut sit ipsam dolor alias tempore.', 1, NULL, '2022-07-26 06:08:19'),
(147, 'Mr. Camren Champlin', 'mr-camren-champlin', 'Adipisci voluptate aut quod incidunt qui exercitationem eaque.', 1, NULL, '2022-07-26 06:08:19'),
(148, 'Ozella Adams', 'ozella-adams', 'Error qui labore vel illo aliquid corporis et magni molestiae suscipit.', 0, NULL, '2022-07-26 06:08:19'),
(149, 'Edmund Predovic', 'edmund-predovic', 'Optio at consequatur sed nam consequatur laudantium facilis iure sunt velit quo.', 1, NULL, '2022-07-26 06:08:19'),
(150, 'Janice Barton', 'janice-barton', 'Non sed maxime sequi perspiciatis qui voluptatem et quia error facere qui.', 1, NULL, '2022-07-26 06:08:19'),
(151, 'Brett Steuber', 'brett-steuber', 'Culpa dicta dolor molestiae necessitatibus enim esse delectus incidunt.', 1, NULL, '2022-07-26 06:08:19'),
(152, 'Blair Howell', 'blair-howell', 'Aut culpa quod illum sint occaecati aut est aut minus a debitis veritatis adipisci.', 1, NULL, '2022-07-26 06:08:19'),
(153, 'Angeline Bins III', 'angeline-bins-iii', 'Tenetur quis cum molestias corporis inventore illum vero.', 0, NULL, '2022-07-26 06:08:19'),
(154, 'Juston Murphy', 'juston-murphy', 'Vel quo necessitatibus iusto atque rem voluptas dolores.', 1, NULL, '2022-07-26 06:08:19'),
(155, 'Clay Mosciski', 'clay-mosciski', 'Et quidem perferendis voluptatem beatae dolorem qui reiciendis dignissimos labore.', 1, NULL, '2022-07-26 06:08:19'),
(156, 'Abigayle Koepp', 'abigayle-koepp', 'Omnis doloremque labore molestiae corrupti aspernatur ratione modi dignissimos.', 1, NULL, '2022-07-26 06:08:19'),
(157, 'Thea Schultz', 'thea-schultz', 'Aliquam labore adipisci deserunt inventore harum adipisci nisi delectus eos perferendis nesciunt.', 1, NULL, '2022-07-26 06:08:19'),
(158, 'Mrs. Mary Dickinson DVM', 'mrs-mary-dickinson-dvm', 'Sint quia tempore non quas quam nesciunt impedit.', 1, NULL, '2022-07-26 06:08:19'),
(159, 'Dannie Schiller', 'dannie-schiller', 'Fuga minima qui consequatur voluptatum impedit ex incidunt deleniti quaerat similique.', 1, NULL, '2022-07-26 06:08:20'),
(160, 'Cordia Kozey', 'cordia-kozey', 'Iusto dolor sed sit est atque animi voluptatem assumenda velit alias deleniti.', 0, NULL, '2022-07-26 06:08:20'),
(161, 'Jabari Ondricka', 'jabari-ondricka', 'Excepturi laboriosam et quis nihil doloremque eum et.', 1, NULL, '2022-07-26 06:08:20'),
(162, 'Marcus Homenick', 'marcus-homenick', 'Delectus unde molestiae non dolorem autem ut.', 0, NULL, '2022-07-26 06:08:20'),
(163, 'Jamarcus Klein MD', 'jamarcus-klein-md', 'Omnis et et aut voluptatem inventore quas ratione assumenda aut optio atque ea tempore.', 1, NULL, '2022-07-26 06:08:20'),
(164, 'Kim Barrows', 'kim-barrows', 'Et natus autem facere molestiae quaerat aperiam fuga.', 1, NULL, '2022-07-26 06:08:20'),
(165, 'Bernard D\'Amore', 'bernard-d-amore', 'Nemo vel debitis qui et sed voluptates exercitationem quo molestiae corrupti.', 0, NULL, '2022-07-26 06:08:20'),
(166, 'Kristin Greenfelder', 'kristin-greenfelder', 'Sed explicabo molestiae recusandae consequatur ea quidem nobis accusantium non.', 1, NULL, '2022-07-26 06:08:20'),
(167, 'Solon Bashirian II', 'solon-bashirian-ii', 'Ducimus tenetur delectus molestiae perferendis ducimus optio cum rerum recusandae et.', 1, NULL, '2022-07-26 06:08:20'),
(168, 'Elise Funk', 'elise-funk', 'Iste dolorum consectetur sit fugiat voluptas quas.', 0, NULL, '2022-07-26 06:08:20'),
(169, 'Crawford Stark', 'crawford-stark', 'Voluptatem maxime hic et earum dolorem qui eos soluta delectus.', 1, NULL, '2022-07-26 06:08:20'),
(170, 'Noe Lebsack', 'noe-lebsack', 'Id maiores ut voluptas dolores consequatur dolorem soluta voluptatibus eius eum quidem nihil.', 0, NULL, '2022-07-26 06:08:20'),
(171, 'Freda Sauer', 'freda-sauer', 'Officiis minus quibusdam quia voluptatem amet esse reiciendis reiciendis hic enim ut.', 1, NULL, '2022-07-26 06:08:20'),
(172, 'Sanford Price', 'sanford-price', 'Libero praesentium odio consectetur dolor et officia sed omnis magni fuga accusantium et.', 1, NULL, '2022-07-26 06:08:20'),
(173, 'Rickie Considine PhD', 'rickie-considine-phd', 'Quia quia fugiat nihil omnis veniam et et quibusdam vero facere.', 0, NULL, '2022-07-26 06:08:20'),
(174, 'Linnie Dach', 'linnie-dach', 'Sed aperiam est recusandae quidem veniam qui quo corrupti similique dolorum eligendi in perferendis.', 1, NULL, '2022-07-26 06:08:20'),
(175, 'Mrs. Amber Kerluke I', 'mrs-amber-kerluke-i', 'Sint tenetur quisquam praesentium consequatur aut molestiae ad expedita quaerat eum omnis facere quasi.', 1, NULL, '2022-07-26 06:08:20'),
(176, 'Jammie Denesik', 'jammie-denesik', 'Alias eaque optio pariatur dolor quae possimus perspiciatis cum nam similique et perspiciatis molestias.', 1, NULL, '2022-07-26 06:08:20'),
(177, 'Emmanuel Goldner MD', 'emmanuel-goldner-md', 'Consequuntur non tempore et doloremque consequatur et voluptate ipsam delectus.', 0, NULL, '2022-07-26 06:08:20'),
(178, 'Lelah Kautzer', 'lelah-kautzer', 'Libero unde soluta et occaecati tenetur voluptatem nesciunt quisquam.', 0, NULL, '2022-07-26 06:08:20'),
(179, 'Lilyan Zulauf', 'lilyan-zulauf', 'Neque voluptate perspiciatis et fugiat minus delectus aut doloremque atque distinctio.', 1, NULL, '2022-07-26 06:08:20'),
(180, 'Armani O\'Conner', 'armani-o-conner', 'Provident in autem dolorem autem sit veniam voluptatem temporibus voluptatem.', 0, NULL, '2022-07-26 06:08:21'),
(181, 'Myrtle Marquardt', 'myrtle-marquardt', 'Distinctio sit dolorum rerum vitae reiciendis dicta excepturi rem.', 1, NULL, '2022-07-26 06:08:21'),
(182, 'Danyka Gusikowski', 'danyka-gusikowski', 'Unde nulla sunt enim quos minima facere numquam quia voluptatem.', 1, NULL, '2022-07-26 06:08:21'),
(183, 'Dr. Johnny Thompson PhD', 'dr-johnny-thompson-phd', 'Fugiat dolorem reprehenderit cum et eos laborum iste.', 0, NULL, '2022-07-26 06:08:21'),
(184, 'Prof. Macy Zulauf Sr.', 'prof-macy-zulauf-sr', 'At sunt alias modi occaecati cum tempore velit iure voluptatem eaque alias optio delectus.', 1, NULL, '2022-07-26 06:08:21'),
(185, 'Faye Hegmann', 'faye-hegmann', 'Recusandae dolores reprehenderit consequatur beatae commodi ratione laboriosam.', 0, NULL, '2022-07-26 06:08:21'),
(186, 'Mariano Weber', 'mariano-weber', 'Qui repellendus quia maiores dignissimos autem libero ipsa quam quia totam beatae et.', 1, NULL, '2022-07-26 06:08:21'),
(187, 'Mr. Eliseo Gerlach', 'mr-eliseo-gerlach', 'Magni inventore omnis dignissimos est quam et hic cupiditate incidunt est vel quo nam.', 1, NULL, '2022-07-26 06:08:21'),
(188, 'Dr. Caesar Turner DVM', 'dr-caesar-turner-dvm', 'Dolores laudantium aut iusto eos autem molestiae illo harum labore.', 1, NULL, '2022-07-26 06:08:21'),
(189, 'Prof. Yolanda Toy DVM', 'prof-yolanda-toy-dvm', 'Consequatur nemo maxime reprehenderit vero accusantium corrupti natus sed et praesentium laborum.', 1, NULL, '2022-07-26 06:08:21'),
(190, 'Prof. Russell Marvin Sr.', 'prof-russell-marvin-sr', 'Aliquam quo illum eos recusandae porro aut nulla dolorem occaecati placeat quas voluptatem.', 1, NULL, '2022-07-26 06:08:21'),
(191, 'Chaz Dibbert DVM', 'chaz-dibbert-dvm', 'Eligendi ab ut eos autem autem rem.', 1, NULL, '2022-07-26 06:08:21'),
(192, 'Lina Botsford I', 'lina-botsford-i', 'Numquam inventore ut harum corporis sapiente et aperiam.', 1, NULL, '2022-07-26 06:08:21'),
(193, 'Emerald Cruickshank', 'emerald-cruickshank', 'Dolorum et velit dolores aut dolorum debitis accusantium debitis dolor a delectus eum.', 1, NULL, '2022-07-26 06:08:21'),
(194, 'Bella Lueilwitz', 'bella-lueilwitz', 'Necessitatibus hic fugit cum velit saepe blanditiis dolorem cumque vero porro qui laborum eum.', 0, NULL, '2022-07-26 06:08:21'),
(195, 'Krista Reynolds', 'krista-reynolds', 'Quia quod omnis voluptas fuga dolore non nisi.', 0, NULL, '2022-07-26 06:08:21'),
(196, 'Mr. Celestino Bayer I', 'mr-celestino-bayer-i', 'Occaecati ipsam inventore omnis vel porro deleniti aut.', 1, NULL, '2022-07-26 06:08:21'),
(197, 'Ollie Gibson', 'ollie-gibson', 'Dolor ad error amet adipisci omnis esse hic.', 1, NULL, '2022-07-26 06:08:21'),
(198, 'Mrs. Christelle Balistreri', 'mrs-christelle-balistreri', 'Consequatur repellat nesciunt deserunt architecto nesciunt omnis.', 0, NULL, '2022-07-26 06:08:21'),
(199, 'Terrell Balistreri', 'terrell-balistreri', 'Aut enim possimus facilis vel similique veniam qui voluptatem libero.', 0, NULL, '2022-07-26 06:08:21'),
(200, 'Malika Huel', 'malika-huel', 'Reiciendis praesentium voluptate et hic vitae repellat aliquam sed reprehenderit aut animi.', 0, NULL, '2022-07-26 06:08:21'),
(201, 'Tamia Carroll1', 'tamia-carroll1', 'test desc', 0, '2022-07-25 05:59:28', '2022-07-26 06:08:21'),
(204, 'test name1658837103', 'test-name1658837103', 'test desc1658837103', 0, '2022-07-26 06:05:03', '2022-07-26 06:05:03'),
(205, 'test name1658837853', 'test-name1658837853', 'test desc1658837853', 0, '2022-07-26 06:17:33', '2022-07-26 06:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'admin', 'admin@gmail.com', NULL, '$2y$10$Dp.qwyeBkxJtk5KnKKmF9uBBkiZTDEIgLyF3MarrbsnDg6F8KHvUC', NULL, '2022-07-22 04:06:57', '2022-07-22 04:06:57'),
(14, 'mamun', 'mamun@gmail.com', NULL, '$2y$10$lgrsMy5kBkHiTj/4R7JoGulcyFKnkjoNTvYJbvJVt6QTFEIQJ3Z6W', NULL, '2022-07-24 04:56:24', '2022-07-24 04:56:24'),
(15, 'ISDBBISEW', 'isdbbisew@gmail.com', NULL, '$2y$10$n/j6I0K1jq7OPxwh9wsW5OSO2AFZ6xlW9P/JdszxP3pnvbSfR03MK', NULL, '2022-07-24 04:57:15', '2022-07-24 04:57:15'),
(16, 'jewel', 'jewel@gmail.com', NULL, '$2y$10$WUTFQ8p7iOsOcwf/oW92Seksuggq83lyoInxDMFXLhMkNyF6MJcUW', NULL, '2022-07-24 06:02:15', '2022-07-24 06:02:15'),
(17, 'tajrin', 'tajrin@gmail.com', NULL, '$2y$10$jrKA8uOZ0GV12dkfwcj9HuHBgF6trl/cOoX1/DkYlY6.99qmrypRe', NULL, '2022-07-25 04:36:21', '2022-07-25 04:36:21'),
(18, 'tasnim', 'Imraan@gmail.com', NULL, '$2y$10$Ee8mjWrhHr0ZwxVn6EE4QOjzjPEEKuYrtX4xr.rUHtApbfz0w5zoO', NULL, '2022-07-25 05:17:35', '2022-07-25 05:17:35'),
(19, 'adnan', 'adnan@gmail.com', NULL, '$2y$10$t2F6Xs50FiOSMVJ/iBQSt.kWvSm7Ji7JXRuaCKRC/TFUSdLNjlOJC', NULL, '2022-07-28 06:25:11', '2022-07-28 06:25:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_todolist`
--
ALTER TABLE `category_todolist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_todolist_category_id_foreign` (`category_id`),
  ADD KEY `category_todolist_todolist_id_foreign` (`todolist_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_todolist_id_foreign` (`todolist_id`);

--
-- Indexes for table `todolists`
--
ALTER TABLE `todolists`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_todolist`
--
ALTER TABLE `category_todolist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `todolists`
--
ALTER TABLE `todolists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_todolist`
--
ALTER TABLE `category_todolist`
  ADD CONSTRAINT `category_todolist_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_todolist_todolist_id_foreign` FOREIGN KEY (`todolist_id`) REFERENCES `todolists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_todolist_id_foreign` FOREIGN KEY (`todolist_id`) REFERENCES `todolists` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
