-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-08-2024 a las 04:39:53
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_waoscaracal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advance_salaries`
--

DROP TABLE IF EXISTS `advance_salaries`;
CREATE TABLE IF NOT EXISTS `advance_salaries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `advance_salary` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `advance_salaries`
--

INSERT INTO `advance_salaries` (`id`, `employee_id`, `date`, `advance_salary`, `created_at`, `updated_at`) VALUES
(1, 3, '2024-08-09', 10000, '2024-08-24 09:35:49', '2024-08-24 09:36:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendences`
--

DROP TABLE IF EXISTS `attendences`;
CREATE TABLE IF NOT EXISTS `attendences` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'repellendus dicta', 'natus', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'sint et', 'porro', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'consequatur quos', 'harum', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'et quia', 'reiciendis', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(5, 'et dolor', 'illum', '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Erna Reilly', 'fleta.littel@example.org', '1-678-836-4814', '11403 Isaiah Plain\nAufderharmouth, NV 35374', 'Erdman, Howe and Ondricka', NULL, 'Prof. Nick Dach', '51995445', 'BNI', 'Lake Brandynton', 'McLaughlinbury', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'Rodrigo Dickens', 'corine.stark@example.com', '+16419838311', '3377 Casper Orchard\nLake Green, TX 82278-7148', 'Becker Inc', NULL, 'Magdalen Rogahn', '43025104', 'MANDIRI', 'North Alyshachester', 'New Jeradshire', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'Kaden Simonis', 'toni02@example.com', '769.416.4920', '985 Pouros Drive\nWest Leone, LA 05022', 'Dicki-Turner', NULL, 'Prof. Emerson Hartmann', '19879538', 'BRI', 'South Melyna', 'Strosinshire', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'Glennie Hills', 'cathrine54@example.net', '605.412.2866', '32118 Ebert Landing Apt. 322\nLucindafurt, UT 10286', 'Schuster, Bailey and Jenkins', NULL, 'Misael Marks', '69397211', 'BCA', 'Lake Sheridanville', 'Jadefurt', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(5, 'Dr. Ofelia Strosin PhD', 'major.kris@example.net', '917.740.0024', '748 Junior Unions Suite 846\nVandervortstad, MI 54016-8033', 'Kuhn Group', NULL, 'Dr. Mekhi Auer', '27252675', 'BNI', 'Thielshire', 'Hectorborough', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(6, 'Colleen Walter MD', 'lesley17@example.com', '(346) 324-9675', '76089 Wolf Via Suite 008\nNew Vida, CA 44543', 'Shields-Cronin', NULL, 'Kimberly Doyle', '11237525', 'BSI', 'Feilshire', 'Lake Andreanebury', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(7, 'Mr. Kamron Jakubowski DDS', 'felipa83@example.com', '718-821-1940', '611 Schaefer Brooks\nNew Angelita, KY 22469', 'Nolan Inc', NULL, 'Ms. Lessie Kemmer', '93316020', 'BRI', 'Goyettehaven', 'Jacobiport', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(8, 'Kayleigh Reynolds', 'bruce.predovic@example.com', '458.566.9084', '979 Medhurst Trail Apt. 563\nRatkeshire, NH 65650', 'Kshlerin-Prohaska', NULL, 'Dr. Hayden Monahan', '24863679', 'BSI', 'Rosalindside', 'North Leta', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(9, 'Prof. Ethelyn Frami V', 'kelton20@example.org', '1-434-328-1800', '212 Leila Extension Apt. 659\nRyderborough, OH 83120', 'Lind-Botsford', NULL, 'Abdul Stiedemann', '25983256', 'BRI', 'Imogeneville', 'Lake Patville', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(10, 'Mrs. Frederique Hand III', 'bashirian.al@example.net', '+14239795231', '961 Dolly Wall Suite 147\nFeilside, SC 73406-2404', 'Wisozk PLC', NULL, 'Gabe Lemke', '78828463', 'BSI', 'Haleybury', 'New Nicholas', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(11, 'Isabelle McGlynn Jr.', 'clotilde50@example.net', '+1-716-893-3164', '938 Breana Village\nBlockberg, OH 44805', 'Muller, Lind and Windler', NULL, 'Johnathon O\'Kon Jr.', '97537696', 'BJB', 'Reggieside', 'Martaberg', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(12, 'Kayleigh Volkman', 'xander.kshlerin@example.org', '725.803.0323', '654 Justus Forge Apt. 027\nNew Soniabury, NY 62753-6076', 'Gaylord Ltd', NULL, 'Miss Kristina Kshlerin PhD', '61305361', 'MANDIRI', 'Itzelburgh', 'Lakinshire', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(13, 'Antone Cronin', 'ldooley@example.com', '(332) 340-8457', '620 Lonnie Track Suite 730\nPort Eulah, OR 01773-2413', 'Wiza Group', NULL, 'Viola Terry', '22456886', 'BSI', 'New Fae', 'Rachaelshire', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(14, 'Mr. Collin Nolan', 'windler.esta@example.org', '+1-941-732-5207', '810 Robel Valley Suite 493\nPort Willisstad, AL 36669', 'Howe-Swift', NULL, 'Dewayne Ratke', '71533836', 'BJB', 'Port Imastad', 'New Ethelside', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(15, 'Michelle Cormier V', 'mromaguera@example.net', '224.585.8974', '809 Bryon Field\nLake Laney, HI 93946-7500', 'Moen-Daugherty', NULL, 'Dr. Elvis O\'Hara DVM', '44076158', 'BJB', 'South Eliezerfort', 'South Nathanielborough', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(16, 'Jayce Ferry', 'krohan@example.org', '269.630.2214', '558 Eda Pass Suite 202\nNorth Keeganberg, PA 65917-9178', 'Carroll-Stamm', NULL, 'Archibald Cormier', '38105789', 'BNI', 'Port Zackary', 'Jaleelville', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(17, 'Miss Briana Wisozk', 'ressie.feeney@example.net', '845.418.2125', '82252 Robb Loaf\nWest Chadd, AR 77253-2666', 'Pagac Inc', NULL, 'Vicenta Prohaska', '88690588', 'BSI', 'Juddhaven', 'North Opalmouth', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(18, 'Prof. Jeff Rippin IV', 'april01@example.com', '(732) 786-1008', '8864 Wolff Mountain\nFriesenburgh, NC 99891', 'Champlin, Brown and Walker', NULL, 'Andrew Hamill', '66088405', 'BNI', 'Heidenreichland', 'Gustavefurt', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(19, 'Vicenta Collins', 'berge.benny@example.com', '786-615-6428', '2672 Stamm Walks\nSchummport, MI 91107', 'Quitzon-Runte', NULL, 'Loyce Murphy', '83938910', 'BSI', 'Schuppeland', 'New Darion', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(20, 'Brandi Schmeler', 'von.sister@example.net', '+1-234-943-1993', '272 Jaylon Viaduct\nKobetown, LA 74283', 'Volkman-Mraz', NULL, 'Prof. Chandler Hessel Sr.', '19320641', 'BRI', 'Deronchester', 'Gaylordfort', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(21, 'Ryan Brakus', 'dale.rohan@example.com', '909-580-4070', '25468 Seamus Knolls Apt. 879\nMrazport, NH 93941-0270', 'VonRueden-Berge', NULL, 'Elody Mosciski', '30641748', 'MANDIRI', 'Port Madgeshire', 'North Frederick', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(22, 'Maximillia Kerluke', 'kcartwright@example.com', '+1-848-394-3588', '54202 Brandon Isle\nNorth Keith, MS 69225-1642', 'Beahan and Sons', NULL, 'Vella Gibson', '30833694', 'BJB', 'Waelchiview', 'Frederikmouth', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(23, 'Julia Bailey', 'vivianne.boyer@example.com', '+1-301-384-1818', '789 Lelah Divide\nNorth Sydni, DC 72922', 'Walsh-Goodwin', NULL, 'Carlie Cummings', '13310757', 'BSI', 'South Hilmamouth', 'New Yazmin', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(24, 'Prof. Velva Ondricka Sr.', 'abigayle.macejkovic@example.net', '+1 (702) 932-0843', '43015 Boehm Via Apt. 474\nRennershire, ME 51116', 'Balistreri-Thompson', NULL, 'Modesta Wilderman', '14734206', 'BSI', 'Fayshire', 'South Alysha', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(25, 'Noah Abshire', 'wintheiser.kaci@example.net', '1-352-572-4869', '73241 Gregory Coves\nNew Meaghanfort, LA 83366-6205', 'Purdy-Hessel', NULL, 'Miss Rubie Cole MD', '84168608', 'BCA', 'Port Cornellstad', 'Andrewville', '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `vacation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  UNIQUE KEY `employees_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Nils O\'Reilly MD', 'maia78@example.net', '1-407-757-5709', '403 Brandy Trafficway Suite 759\nVerdieshire, FL 65460-4745', '5 Year', NULL, 608, NULL, 'New Silasfort', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'Kellie Moen', 'quinn26@example.com', '+1.831.581.5190', '755 Maggio Square Suite 489\nNew Constancemouth, ME 32124-8895', '5 Year', NULL, 299, NULL, 'Gwenburgh', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'Ronaldo Mraz', 'melisa.schmeler@example.net', '1-862-985-6945', '439 Mabelle Prairie Suite 032\nPourosborough, MN 95204-3902', '1 Year', NULL, 147, NULL, 'Port Krystal', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'Prof. Mortimer Lindgren', 'yvonne75@example.org', '757.528.3646', '5997 Lakin Lodge Suite 887\nMarjorieborough, SC 21336', '4 Year', NULL, 695, NULL, 'Caesarland', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(5, 'Prof. Kade Bode', 'jamarcus01@example.com', '+1-413-665-4951', '341 McKenzie Forest Apt. 785\nLangoshchester, MT 97107', '4 Year', NULL, 617, NULL, 'Holliston', '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_044621_add_username_and_photo_to_users', 1),
(6, '2023_03_24_080143_create_employees_table', 1),
(7, '2023_03_29_025458_create_customers_table', 1),
(8, '2023_03_30_020042_create_suppliers_table', 1),
(9, '2023_03_30_083652_create_advance_salaries_table', 1),
(10, '2023_04_01_142106_create_pay_salaries_table', 1),
(11, '2023_04_02_141037_create_attendences_table', 1),
(12, '2023_04_04_041700_create_categories_table', 1),
(13, '2023_04_04_052256_create_products_table', 1),
(14, '2023_04_10_043156_create_orders_table', 1),
(15, '2023_04_10_044212_create_order_details_table', 1),
(16, '2023_04_13_222344_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` int NOT NULL,
  `sub_total` int DEFAULT NULL,
  `vat` int DEFAULT NULL,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` int DEFAULT NULL,
  `due` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `unitcost` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pay_salaries`
--

DROP TABLE IF EXISTS `pay_salaries`;
CREATE TABLE IF NOT EXISTS `pay_salaries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `paid_amount` int NOT NULL,
  `advance_salary` int DEFAULT NULL,
  `due_salary` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'employee.menu', 'web', 'employee', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'customer.menu', 'web', 'customer', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'supplier.menu', 'web', 'supplier', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(5, 'salary.menu', 'web', 'salary', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(6, 'attendence.menu', 'web', 'attendence', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(7, 'category.menu', 'web', 'category', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(8, 'product.menu', 'web', 'product', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(9, 'orders.menu', 'web', 'orders', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(10, 'stock.menu', 'web', 'stock', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(11, 'roles.menu', 'web', 'roles', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(12, 'user.menu', 'web', 'user', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(13, 'database.menu', 'web', 'database', '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_garage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_store` int DEFAULT NULL,
  `buying_date` date DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_price` int DEFAULT NULL,
  `selling_price` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `supplier_id`, `product_code`, `product_garage`, `product_image`, `product_store`, `buying_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'enim', 5, 2, 'PC01', 'C', NULL, 40, '2024-08-24', '2026-08-24 04:23:32', 10, 71, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'omnis', 3, 7, 'PC02', 'D', NULL, 135, '2024-08-24', '2026-08-24 04:23:32', 86, 26, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'voluptas', 4, 6, 'PC03', 'D', NULL, 644, '2024-08-24', '2026-08-24 04:23:32', 36, 65, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'in', 3, 2, 'PC04', 'C', NULL, 532, '2024-08-24', '2026-08-24 04:23:32', 9, 41, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(5, 'ipsam', 1, 3, 'PC05', 'B', NULL, 170, '2024-08-24', '2026-08-24 04:23:32', 23, 47, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(6, 'voluptatem', 2, 7, 'PC06', 'A', NULL, 869, '2024-08-24', '2026-08-24 04:23:32', 11, 93, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(7, 'maxime', 3, 7, 'PC07', 'D', NULL, 194, '2024-08-24', '2026-08-24 04:23:32', 39, 80, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(8, 'non', 4, 10, 'PC08', 'C', NULL, 50, '2024-08-24', '2026-08-24 04:23:32', 13, 74, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(9, 'voluptate', 3, 1, 'PC09', 'C', NULL, 943, '2024-08-24', '2026-08-24 04:23:32', 92, 12, '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(10, 'quasi', 2, 5, 'PC10', 'A', NULL, 709, '2024-08-24', '2026-08-24 04:23:32', 63, 37, '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'Admin', 'web', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'Account', 'web', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'Manager', 'web', '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(12, 1),
(12, 2),
(12, 3),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suppliers_email_unique` (`email`),
  UNIQUE KEY `suppliers_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `type`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Elijah Hansen', 'murphy.edmund@example.org', '937.793.4165', '5951 Rasheed Fort Apt. 161\nPort Carmenfurt, WY 55625-1884', 'Collier-Bahringer', NULL, 'Distributor', 'Prof. Jarret Halvorson', '40423277', 'BSI', 'Port Abby', 'Lake Stephanyside', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(2, 'Julio Bergstrom DVM', 'abraham77@example.net', '(847) 239-4684', '472 King Roads Suite 747\nLake Beryl, PA 78129-0706', 'Bins, Renner and Harris', NULL, 'Distributor', 'Lulu Bruen', '48389848', 'BRI', 'Port Sharon', 'North Vincenza', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(3, 'Elisabeth Daugherty', 'bernadine.jacobi@example.com', '320.552.1969', '294 Reilly Villages\nLake Consuelo, MD 14713-6762', 'Weimann, Price and Hoppe', NULL, 'Whole Seller', 'Keith Rodriguez', '49509199', 'BCA', 'North Hayleeton', 'Dayanaside', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(4, 'Mr. Gage Torphy I', 'gleichner.chyna@example.com', '608-775-2731', '954 Guy Crescent Suite 176\nNorth Katlynn, NY 57972-8912', 'Price-Pacocha', NULL, 'Whole Seller', 'Hosea Williamson PhD', '34853509', 'BNI', 'Port Kendallton', 'Port Isabel', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(5, 'Prof. Kendrick Miller', 'vruecker@example.com', '743-692-6453', '12853 Karine Mount Suite 654\nRusselchester, AK 80112', 'Morar LLC', NULL, 'Distributor', 'Robin Paucek I', '87501302', 'MANDIRI', 'South Lazaro', 'New Irwinmouth', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(6, 'Felipa Welch MD', 'mayert.zetta@example.org', '714.312.3858', '25122 Hessel Place\nDillanshire, LA 08233-8554', 'Brown, Torp and Bartoletti', NULL, 'Distributor', 'Dr. Regan Steuber DVM', '62739331', 'MANDIRI', 'Weberberg', 'West Tiffany', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(7, 'Felicity Raynor', 'boyle.royal@example.org', '+1-432-323-7955', '1075 Armando Green Apt. 763\nWindlershire, CT 08173-3192', 'Marvin, Conroy and Ferry', NULL, 'Distributor', 'Omer Balistreri', '90662231', 'MANDIRI', 'Torphyfurt', 'Hassieton', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(8, 'Tracy Crona', 'patience.bosco@example.com', '+1 (832) 310-1704', '9466 Hermann Union\nNew Maidaborough, WA 84077-8768', 'Kilback, Kuvalis and Mills', NULL, 'Distributor', 'Mr. Delaney Jacobson', '47038943', 'MANDIRI', 'West Kennedy', 'Wardfort', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(9, 'Oral Ebert DDS', 'raymundo90@example.net', '786-281-9465', '12068 Madyson Skyway\nLake Darrick, WA 38973', 'Borer, Altenwerth and Gulgowski', NULL, 'Whole Seller', 'Susana Kuvalis', '23458697', 'BCA', 'Swaniawskifort', 'Wisokyfurt', '2024-08-24 09:23:32', '2024-08-24 09:23:32'),
(10, 'Alexane Conroy', 'tnikolaus@example.org', '(337) 985-1543', '71631 Mercedes Knolls Apt. 316\nEast Jaquelin, TN 09629', 'Gerhold Group', NULL, 'Distributor', 'Dr. Elton Konopelski MD', '82036589', 'BJB', 'Odieshire', 'Sylvesterport', '2024-08-24 09:23:32', '2024-08-24 09:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', '2024-08-24 09:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xGmKLinCiq', '2024-08-24 09:23:32', '2024-08-24 09:23:32', 'admin', NULL),
(2, 'User', 'user@gmail.com', '2024-08-24 09:23:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h2nMQmCoZ3', '2024-08-24 09:23:32', '2024-08-24 09:23:32', 'user', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
