-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 26, 2026 at 03:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_batik_pso`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add item', 7, 'add_item'),
(26, 'Can change item', 7, 'change_item'),
(27, 'Can delete item', 7, 'delete_item'),
(28, 'Can view item', 7, 'view_item'),
(29, 'Can add outlet', 8, 'add_outlet'),
(30, 'Can change outlet', 8, 'change_outlet'),
(31, 'Can delete outlet', 8, 'delete_outlet'),
(32, 'Can view outlet', 8, 'view_outlet'),
(33, 'Can add purchase', 9, 'add_purchase'),
(34, 'Can change purchase', 9, 'change_purchase'),
(35, 'Can delete purchase', 9, 'delete_purchase'),
(36, 'Can view purchase', 9, 'view_purchase'),
(37, 'Can add sales', 10, 'add_sales'),
(38, 'Can change sales', 10, 'change_sales'),
(39, 'Can delete sales', 10, 'delete_sales'),
(40, 'Can view sales', 10, 'view_sales'),
(41, 'Can add transaction', 11, 'add_transaction'),
(42, 'Can change transaction', 11, 'change_transaction'),
(43, 'Can delete transaction', 11, 'delete_transaction'),
(44, 'Can view transaction', 11, 'view_transaction'),
(45, 'Can add production', 12, 'add_production'),
(46, 'Can change production', 12, 'change_production'),
(47, 'Can delete production', 12, 'delete_production'),
(48, 'Can view production', 12, 'view_production'),
(49, 'Can add stock', 13, 'add_stock'),
(50, 'Can change stock', 13, 'change_stock'),
(51, 'Can delete stock', 13, 'delete_stock'),
(52, 'Can view stock', 13, 'view_stock'),
(53, 'Can add recipe', 14, 'add_recipe'),
(54, 'Can change recipe', 14, 'change_recipe'),
(55, 'Can delete recipe', 14, 'delete_recipe'),
(56, 'Can view recipe', 14, 'view_recipe'),
(57, 'Can add material', 15, 'add_material'),
(58, 'Can change material', 15, 'change_material'),
(59, 'Can delete material', 15, 'delete_material'),
(60, 'Can view material', 15, 'view_material');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$6lhnSTZpRvjTE8ZYQMONaS$9484rkZ8v9omNR8CxdOwFqFVDZnfTZ9XbX9DpZGDn20=', '2026-05-19 02:27:48.488317', 0, 'admin', '', '', '', 0, 1, '2024-08-08 14:05:12.935467');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'inventory', 'item'),
(15, 'inventory', 'material'),
(8, 'inventory', 'outlet'),
(12, 'inventory', 'production'),
(9, 'inventory', 'purchase'),
(14, 'inventory', 'recipe'),
(10, 'inventory', 'sales'),
(13, 'inventory', 'stock'),
(11, 'inventory', 'transaction'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-24 12:34:00.575247'),
(2, 'auth', '0001_initial', '2023-08-24 12:34:01.984574'),
(3, 'admin', '0001_initial', '2023-08-24 12:34:02.321640'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-24 12:34:02.334653'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-24 12:34:02.347656'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-24 12:34:02.549718'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-24 12:34:02.687749'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-24 12:34:02.719756'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-24 12:34:02.732768'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-24 12:34:02.838792'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-24 12:34:02.845784'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-24 12:34:02.858797'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-24 12:34:02.888794'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-24 12:34:02.917801'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-24 12:34:02.951808'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-24 12:34:02.964811'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-24 12:34:02.994827'),
(18, 'inventory', '0001_initial', '2023-08-24 12:34:03.437938'),
(19, 'sessions', '0001_initial', '2023-08-24 12:34:03.589963'),
(20, 'inventory', '0002_auto_20230824_2211', '2023-08-24 15:11:11.043978'),
(21, 'inventory', '0003_auto_20230825_1339', '2023-08-25 06:39:15.177803'),
(22, 'inventory', '0004_auto_20230825_1344', '2023-08-25 06:44:51.024978'),
(23, 'inventory', '0005_alter_outlet_id', '2023-08-25 12:24:20.166742'),
(24, 'inventory', '0006_alter_outlet_id', '2023-08-25 12:27:39.720596'),
(25, 'inventory', '0002_stock_production', '2023-08-29 16:25:57.893402'),
(26, 'inventory', '0003_auto_20230901_1948', '2023-09-01 12:48:32.312408'),
(27, 'inventory', '0004_material_recipe', '2023-10-20 12:42:44.641830');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('03uvoq2itxrz2ssi4y48ma79dtjy5gul', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1tH27G:TDm2Mb7FUZRaVGvCMxI_9tsW_jT3dZXbQKWHwmLc6Bw', '2024-12-13 14:37:06.263570'),
('1pupdzoyowpq1zbocel5feh4jvnezmf0', '.eJxVjDsOwyAQBe9CHSE-WgMp0-cMaGHZ4CTCkrErK3ePkFwk7ZuZd4iI-1bj3ssaZxJXocXld0uYX6UNQE9sj0XmpW3rnORQ5Em7vC9U3rfT_Tuo2Ouo2U9Kc0BljLUKOJDzqBGSZe0SBCRtwJN13pAtYICz5-RDnhBsKOLzBdSmN7E:1sd8Gn:201OoeBgiA87kpnpFqgayETnkJnJzfVsG6qvlIR3_ak', '2024-08-25 13:06:01.085802'),
('2h6elcj4sdca6vtdkxbih4wlqy41nhjq', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1uGF8D:CKf9PvMGiQkpDUldnwsMr9IYqVT8N-v1lmOw5t5MvfI', '2025-05-31 10:51:05.524014'),
('8vn1gbkvmedomu295rfl314uk6c3g0ha', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1wPA3s:z7NuKd9xYpt_8aEj9V-dZxRP30R9PPo2PZGcIytlJAY', '2026-06-02 02:20:00.216387'),
('bbdnhl2wqbr38wcy0704e1y7zfvy0d41', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1wPABQ:_sYgUtM5k6Pky6AdF3BRNZ5KOG6oZUtfHXDU-smROUU', '2026-06-02 02:27:48.488317'),
('ckdoucnhhj8bm7t05o91l067xtuwbrwv', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1uGF1f:eplam16chxJQd4K3ylAZicSUmNGfEQTGNMRs7VXSyk0', '2025-05-31 10:44:19.047940'),
('g3qopr71s1dmx2bb1smfrn49ukuvsv91', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1tErsy:-gxxrfrv4MJBgvGbkniQknZ1EcpGiFHi5OZT_aMOqFo', '2024-12-07 15:17:24.563376'),
('iqly65vjr9d1nyimpb7d9fhk74qn75v2', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1wJOmw:eIDvKBZVh-DnqgoWWs58vBNiAAuyMeNMkEc2vmxNiUU', '2026-05-17 04:50:42.172584'),
('ixfhl0okbqlhl25dug69e74c3au1ug9i', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1vwblI:Uhc6jOG-GDp7YVfLNngmhPHpU5CeUDhBoJQF0lzddjE', '2026-03-15 08:02:48.711690'),
('ksf1d9bt2br2qu4iszdmr361umncnauq', 'eyJvdXRsZXRfaWQiOiJhbGwiLCJvdXRsZXRfbmFtZSI6IlNlbXVhIENhYmFuZyJ9:1qbMRp:MyehZ72mACvMNUK0oJZCQ1cRBRsRxqYNgFYzA4NZhyU', '2023-09-13 14:45:33.940274'),
('t33wuocdwc084fc40q1mz6qy9klugc3w', '.eJxVjEEOwiAQRe_C2hDGYgGX7j0DmWEGqRpISrsy3l2bdKHb_977LxVxXUpcu8xxYnVWoA6_G2F6SN0A37Hemk6tLvNEelP0Tru-NpbnZXf_Dgr28q0HdkLgcBhD8nmQ4BmsnNwxgUlegvUBEI2lzCTgKJjAFsSNxGCyB_X-AOqdOAw:1tH2kj:F_E61T9aaF19n_7MnrSajfif8WnK0hAqK0t_0G5H9X8', '2024-12-13 15:17:53.195755');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(255) NOT NULL,
  `outlet_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `user_id`, `role`, `outlet_id`) VALUES
(7, 1, 'superadmin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `biaya_pesan` int DEFAULT NULL,
  `lead_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `code`, `name`, `image`, `description`, `price`, `type`, `created_at`, `updated_at`, `biaya_pesan`, `lead_time`) VALUES
(9, 1, 'DBY-001', 'Product 1', 'img/items/kain_dobby_batik.jpg', 'Kain Dobby grade A harga Rp 110.000', 110000, 'jadi', '2023-09-01 11:24:32.388189', '2023-10-30 15:31:10.275997', 10000, 3),
(10, 1, 'DBY-002', 'Product 2', '', 'Kain Dobby grade B harga Rp 105.000', 105000, 'jadi', '2023-09-01 11:25:03.975690', '2023-09-01 11:27:42.368713', 10000, 3),
(11, 1, 'DBY-003', 'Product 3', '', 'Kain Dobby grade C harga Rp 100.000', 100000, 'jadi', '2023-09-01 11:26:59.800026', '2023-09-01 11:27:09.782686', 10000, 3),
(12, 1, 'DBY-004', 'Product 4', '', 'Kain Dobby grade D harga Rp 95.000', 95000, 'jadi', '2023-09-01 11:28:08.997948', '2023-09-01 11:28:42.596692', 10000, 3),
(13, 1, 'DBY-005', 'Product 5', '', 'Kain Dobby grade E harga Rp 90.000', 90000, 'jadi', '2023-09-01 11:28:35.600676', '2023-09-01 11:28:35.600676', 10000, 3),
(14, 1, 'KTN-001', 'Product 6', 'img/items/kain_katun_batik_BCSNL8L.jpg', 'Kain Katun grade A harga Rp 110.000', 110000, 'jadi', '2023-09-01 11:29:52.462701', '2023-10-30 15:33:27.925354', 10000, 3),
(15, 1, 'KTN-002', 'Product 7', 'img/items/kain_katun_batik.jpg', 'Kain Katun grade B harga Rp 105.000', 105000, 'jadi', '2023-09-01 11:30:13.914687', '2023-10-30 15:33:14.950364', 10000, 3),
(16, 1, 'KTN-003', 'Product 8', '', 'Kain Katun grade C harga Rp 90.000', 90000, 'jadi', '2023-09-01 11:30:39.430796', '2023-09-01 11:30:39.430796', 10000, 3),
(17, 1, 'KTN-004', 'Product 9', '', 'Kain Katun grade D harga Rp 85.000', 85000, 'jadi', '2023-09-01 11:31:07.221687', '2023-09-01 11:31:07.222688', 10000, 3),
(18, 1, 'KTN-005', 'Product 10', '', 'Kain Katun grade E harga Rp 80.000', 80000, 'jadi', '2023-09-01 11:31:30.602686', '2023-09-01 11:31:30.602686', 10000, 3),
(19, 1, 'PRS-001', 'Product 11', '', 'Kain Paris grade A harga Rp 100.000', 100000, 'jadi', '2023-09-01 11:32:05.007679', '2023-09-01 11:32:05.007679', 10000, 3),
(20, 1, 'PRS-002', 'Product 12', '', 'Kain Paris grade B harga Rp 90.000', 90000, 'jadi', '2023-09-01 11:32:30.232689', '2023-09-01 11:32:30.232689', 10000, 3),
(21, 1, 'KPD-001', 'Product 13', '', 'Kemeja Batik Pendek', 120000, 'jadi', '2023-09-01 11:40:52.504690', '2023-09-01 11:40:52.504690', 10000, 5),
(22, 1, 'KPJ-001', 'Product 14', '', 'Kemeja Batik Panjang', 125000, 'jadi', '2023-09-01 11:41:12.931284', '2023-09-01 11:41:12.931284', 10000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` bigint NOT NULL,
  `variabel` varchar(5) NOT NULL,
  `kode_item` varchar(10) NOT NULL,
  `skor` smallint UNSIGNED NOT NULL,
  `responden_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id`, `variabel`, `kode_item`, `skor`, `responden_id`) VALUES
(1, 'PEOU', 'PEOU_1', 3, 1),
(2, 'PEOU', 'PEOU_2', 4, 1),
(3, 'PEOU', 'PEOU_3', 3, 1),
(4, 'PEOU', 'PEOU_4', 2, 1),
(5, 'PEOU', 'PEOU_5', 3, 1),
(6, 'PU', 'PU_1', 4, 1),
(7, 'PU', 'PU_2', 4, 1),
(8, 'PU', 'PU_3', 3, 1),
(9, 'PU', 'PU_4', 4, 1),
(10, 'PU', 'PU_5', 3, 1),
(11, 'CONF', 'CONF_1', 3, 1),
(12, 'CONF', 'CONF_2', 4, 1),
(13, 'CONF', 'CONF_3', 2, 1),
(14, 'CONF', 'CONF_4', 3, 1),
(15, 'CONF', 'CONF_5', 3, 1),
(16, 'ATT', 'ATT_1', 4, 1),
(17, 'ATT', 'ATT_2', 4, 1),
(18, 'ATT', 'ATT_3', 3, 1),
(19, 'ATT', 'ATT_4', 4, 1),
(20, 'ATT', 'ATT_5', 3, 1),
(21, 'TRST', 'TRST_1', 4, 1),
(22, 'TRST', 'TRST_2', 3, 1),
(23, 'TRST', 'TRST_3', 3, 1),
(24, 'TRST', 'TRST_4', 3, 1),
(25, 'TRST', 'TRST_5', 3, 1),
(26, 'SAT', 'SAT_1', 2, 1),
(27, 'SAT', 'SAT_2', 3, 1),
(28, 'SAT', 'SAT_3', 3, 1),
(29, 'SAT', 'SAT_4', 3, 1),
(30, 'SAT', 'SAT_5', 3, 1),
(31, 'CI', 'CI_1', 4, 1),
(32, 'CI', 'CI_2', 3, 1),
(33, 'CI', 'CI_3', 2, 1),
(34, 'CI', 'CI_4', 3, 1),
(35, 'PEOU', 'PEOU_1', 3, 2),
(36, 'PEOU', 'PEOU_2', 4, 2),
(37, 'PEOU', 'PEOU_3', 3, 2),
(38, 'PEOU', 'PEOU_4', 3, 2),
(39, 'PEOU', 'PEOU_5', 4, 2),
(40, 'PU', 'PU_1', 4, 2),
(41, 'PU', 'PU_2', 2, 2),
(42, 'PU', 'PU_3', 3, 2),
(43, 'PU', 'PU_4', 2, 2),
(44, 'PU', 'PU_5', 2, 2),
(45, 'CONF', 'CONF_1', 4, 2),
(46, 'CONF', 'CONF_2', 3, 2),
(47, 'CONF', 'CONF_3', 3, 2),
(48, 'CONF', 'CONF_4', 3, 2),
(49, 'CONF', 'CONF_5', 3, 2),
(50, 'ATT', 'ATT_1', 3, 2),
(51, 'ATT', 'ATT_2', 4, 2),
(52, 'ATT', 'ATT_3', 3, 2),
(53, 'ATT', 'ATT_4', 2, 2),
(54, 'ATT', 'ATT_5', 3, 2),
(55, 'TRST', 'TRST_1', 3, 2),
(56, 'TRST', 'TRST_2', 3, 2),
(57, 'TRST', 'TRST_3', 3, 2),
(58, 'TRST', 'TRST_4', 3, 2),
(59, 'TRST', 'TRST_5', 3, 2),
(60, 'SAT', 'SAT_1', 3, 2),
(61, 'SAT', 'SAT_2', 4, 2),
(62, 'SAT', 'SAT_3', 3, 2),
(63, 'SAT', 'SAT_4', 3, 2),
(64, 'SAT', 'SAT_5', 3, 2),
(65, 'CI', 'CI_1', 2, 2),
(66, 'CI', 'CI_2', 3, 2),
(67, 'CI', 'CI_3', 3, 2),
(68, 'CI', 'CI_4', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `biaya_pesan` int DEFAULT NULL,
  `lead_time` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `user_id`, `code`, `name`, `image`, `description`, `price`, `type`, `unit`, `biaya_pesan`, `lead_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'P-01', 'Color A', 'img/items/pewarna_batik.jpg', 'Pewarna A', 10000, NULL, 'kg', 1000, 2, '2023-10-20 12:59:30.929828', '2023-10-30 15:20:22.806253'),
(2, 1, 'P-02', 'Color B', '', 'Pewarna B', 10000, NULL, 'kg', 1000, 2, '2023-10-20 13:00:36.450210', '2023-10-20 13:00:36.450210'),
(3, 1, 'P-03', 'Color C', '', 'Pewarna C', 12000, NULL, 'kg', 1500, 3, '2023-10-20 13:00:51.665929', '2023-10-20 13:00:51.665929'),
(4, 1, 'DBP-01', 'Dobby Cloth', 'img/items/kain_dobby_polos.jpg', 'Kain Dobby Polos Meteran', 25000, NULL, 'meter', 2500, 3, '2023-10-20 13:16:15.801941', '2023-10-30 15:29:51.667993'),
(5, 1, 'KTP-01', 'Katun Cloth', '', 'Kain Katun Polos Meteran', 20000, NULL, 'meter', 2500, 3, '2023-10-20 13:17:34.216826', '2023-10-20 13:17:34.216826');

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `user_id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(3, 1, 'Main Warehouse', 'Sragen', '2023-08-29 16:55:45.201393', '2023-08-29 16:55:45.201393'),
(4, 1, 'Outlet 1', 'Semarang', '2023-08-29 16:55:53.101563', '2023-08-29 16:55:53.101563');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `user_id`, `amount`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
(8, 1, 100, '2023-10-30 15:36:51.053820', '2023-10-30 15:36:51.053820', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `price`, `amount`, `created_at`, `updated_at`, `item_id`, `outlet_id`, `unit`) VALUES
(43, 1, '57000', 100, '2025-05-17 13:22:17.489046', '2025-05-17 13:22:17.489046', 9, 4, 'pcs'),
(45, 1, '57000', 100, '2025-05-17 13:34:40.358987', '2025-05-17 13:34:40.358987', 9, 4, 'pcs'),
(46, 1, '10000', 70, '2025-05-17 13:56:37.572244', '2025-05-17 13:56:37.573234', 9, 4, 'pcs'),
(47, 1, '62500', 10, '2025-05-17 13:57:30.760245', '2025-05-17 13:57:30.760245', 9, 3, 'pcs'),
(48, 1, '100000', 70, '2025-05-17 14:04:18.844740', '2025-05-17 14:04:18.844740', 9, 4, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint NOT NULL,
  `amount` int NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `material_id` bigint DEFAULT NULL,
  `outlet_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `amount`, `unit`, `created_at`, `updated_at`, `item_id`, `material_id`, `outlet_id`) VALUES
(4, 1, 'UnitTypes.KG', '2023-10-20 13:29:52.456954', '2023-10-20 13:29:52.456954', 9, 4, 3),
(6, 1, 'UnitTypes.KG', '2023-10-20 13:41:46.134925', '2023-10-20 13:41:46.134925', 9, 1, 3),
(7, 1, 'UnitTypes.KG', '2023-10-20 13:42:02.118888', '2023-10-20 13:42:02.118888', 9, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id` bigint NOT NULL,
  `nama` varchar(150) NOT NULL,
  `usia` varchar(10) NOT NULL,
  `pendidikan_terakhir` varchar(5) NOT NULL,
  `umkm` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `submitted_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `responden`
--

INSERT INTO `responden` (`id`, `nama`, `usia`, `pendidikan_terakhir`, `umkm`, `address`, `phone_number`, `submitted_at`) VALUES
(1, 'tes', '< 18', 'SMA', 'tes umkm', 'tes alamat', '081226440978', '2026-05-02 09:32:39.943826'),
(2, 'tes 2', '25 - 34', 'S1', 'tes umkm 2', 'tes alamat 2', '081226440978', '2026-05-02 10:31:01.785597');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `price`, `amount`, `unit`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
(8, 1, '85000', 37, 'pcs', '2023-01-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(9, 1, '85000', 2, 'pcs', '2023-01-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(10, 1, '100000', 33, 'pcs', '2023-01-02 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(11, 1, '80000', 104, 'pcs', '2023-01-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(12, 1, '100000', 18, 'pcs', '2023-01-02 17:09:45.131960', '2023-08-29 17:19:27.490658', 19, 3),
(13, 1, '90000', 398, 'pcs', '2023-01-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(14, 1, '110000', 50, 'pcs', '2023-01-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 9, 3),
(15, 1, '95000', 605, 'pcs', '2023-01-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 12, 3),
(16, 1, '85000', 28, 'pcs', '2023-01-03 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(17, 1, '105000', 30, 'pcs', '2023-01-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(18, 1, '105000', 5, 'pcs', '2023-01-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(19, 1, '105000', 105, 'pcs', '2023-01-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(20, 1, '85000', 40, 'pcs', '2023-01-04 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(21, 1, '100000', 10, 'pcs', '2023-01-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(22, 1, '100000', 152, 'pcs', '2023-01-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(23, 1, '150000', 3, 'pcs', '2023-01-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(24, 1, '150000', 4, 'pcs', '2023-01-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(25, 1, '85000', 5, 'pcs', '2023-01-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(26, 1, '85000', 5, 'pcs', '2023-01-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(27, 1, '105000', 5, 'pcs', '2023-01-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(28, 1, '90000', 60, 'pcs', '2023-01-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(29, 1, '110000', 40, 'pcs', '2023-01-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(30, 1, '110000', 428, 'pcs', '2023-01-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(31, 1, '90000', 58, 'pcs', '2023-01-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(32, 1, '90000', 80, 'pcs', '2023-01-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(33, 1, '90000', 509, 'pcs', '2023-01-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(34, 1, '85000', 2, 'pcs', '2023-01-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(35, 1, '90000', 3, 'pcs', '2023-01-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(36, 1, '90000', 7, 'pcs', '2023-01-08 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(37, 1, '110000', 10, 'pcs', '2023-01-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(38, 1, '85000', 3, 'pcs', '2023-01-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(39, 1, '85000', 198, 'pcs', '2023-01-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(40, 1, '85000', 3, 'pcs', '2023-01-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(41, 1, '90000', 65, 'pcs', '2023-01-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(42, 1, '105000', 40, 'pcs', '2023-01-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 15, 3),
(43, 1, '105000', 49, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(44, 1, '85000', 27, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(45, 1, '125000', 14, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(46, 1, '140000', 12, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(47, 1, '90000', 18, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(48, 1, '85000', 4, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(49, 1, '85000', 40, 'pcs', '2023-01-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(50, 1, '85000', 158, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(51, 1, '225000', 8, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(52, 1, '200000', 4, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(53, 1, '225000', 6, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(54, 1, '175000', 7, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(55, 1, '225000', 4, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(56, 1, '175000', 11, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(57, 1, '225000', 53, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(58, 1, '130000', 58, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(59, 1, '85000', 28, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(60, 1, '110000', 15, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(61, 1, '120000', 6, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(62, 1, '105000', 50, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(63, 1, '105000', 4, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(64, 1, '85000', 4, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(65, 1, '90000', 360, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(66, 1, '100000', 100, 'pcs', '2023-01-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(67, 1, '120000', 2, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(68, 1, '105000', 14, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(69, 1, '105000', 30, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(70, 1, '85000', 21, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(71, 1, '85000', 21, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(72, 1, '110000', 20, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(73, 1, '85000', 33, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(74, 1, '110000', 3, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(75, 1, '100000', 300, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(76, 1, '80000', 498, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(77, 1, '100000', 100, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(78, 1, '225000', 29, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(79, 1, '160000', 32, 'pcs', '2023-01-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(80, 1, '145000', 2, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(81, 1, '200000', 1, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(82, 1, '110000', 65, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 14, 3),
(83, 1, '105000', 68, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(84, 1, '90000', 70, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(85, 1, '100000', 170, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(86, 1, '90000', 38, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(87, 1, '90000', 182, 'pcs', '2023-01-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(88, 1, '80000', 123, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(89, 1, '105000', 12, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(90, 1, '85000', 33, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(91, 1, '80000', 200, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(92, 1, '100000', 62, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(93, 1, '100000', 130, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(94, 1, '100000', 6, 'pcs', '2023-01-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(95, 1, '85000', 58, 'pcs', '2023-01-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(96, 1, '105000', 29, 'pcs', '2023-01-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(97, 1, '90000', 314, 'pcs', '2023-01-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(98, 1, '105000', 187, 'pcs', '2023-01-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(99, 1, '100000', 20, 'pcs', '2023-01-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(100, 1, '85000', 30, 'pcs', '2023-01-20 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(101, 1, '105000', 10, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(102, 1, '90000', 82, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(103, 1, '110000', 66, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(104, 1, '90000', 21, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(105, 1, '85000', 7, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(106, 1, '80000', 2, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(107, 1, '100000', 10, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(108, 1, '85000', 9, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(109, 1, '90000', 360, 'pcs', '2023-01-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(110, 1, '105000', 52, 'pcs', '2023-01-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(111, 1, '90000', 20, 'pcs', '2023-01-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(112, 1, '85000', 85, 'pcs', '2023-01-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(113, 1, '95000', 58, 'pcs', '2023-01-24 17:09:45.131960', '2023-08-29 17:12:57.375541', 12, 3),
(114, 1, '100000', 25, 'pcs', '2023-01-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(115, 1, '110000', 144, 'pcs', '2023-01-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(116, 1, '85000', 82, 'pcs', '2023-01-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(117, 1, '105000', 35, 'pcs', '2023-01-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(118, 1, '105000', 20, 'pcs', '2023-01-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(119, 1, '90000', 20, 'pcs', '2023-01-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(120, 1, '90000', 31, 'pcs', '2023-01-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(121, 1, '100000', 10, 'pcs', '2023-01-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(122, 1, '80000', 220, 'pcs', '2023-01-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(123, 1, '100000', 60, 'pcs', '2023-01-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(124, 1, '85000', 20, 'pcs', '2023-01-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(125, 1, '90000', 41, 'pcs', '2023-01-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 20, 3),
(126, 1, '90000', 93, 'pcs', '2023-01-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(127, 1, '85000', 20, 'pcs', '2023-01-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(128, 1, '105000', 11, 'pcs', '2023-01-30 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(129, 1, '105000', 10, 'pcs', '2023-01-31 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(132, 1, '85000', 37, 'pcs', '2023-02-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(133, 1, '85000', 2, 'pcs', '2023-02-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(134, 1, '100000', 33, 'pcs', '2023-02-02 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(135, 1, '80000', 104, 'pcs', '2023-02-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(136, 1, '100000', 28, 'pcs', '2023-02-02 17:09:45.131960', '2023-08-29 17:19:27.490658', 19, 3),
(137, 1, '90000', 520, 'pcs', '2023-02-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(138, 1, '110000', 50, 'pcs', '2023-02-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 9, 3),
(139, 1, '95000', 489, 'pcs', '2023-02-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 12, 3),
(140, 1, '85000', 60, 'pcs', '2023-02-03 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(141, 1, '105000', 30, 'pcs', '2023-02-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(142, 1, '105000', 4, 'pcs', '2023-02-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(143, 1, '105000', 105, 'pcs', '2023-02-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(144, 1, '85000', 40, 'pcs', '2023-02-04 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(145, 1, '100000', 10, 'pcs', '2023-02-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(146, 1, '100000', 45, 'pcs', '2023-02-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(147, 1, '150000', 3, 'pcs', '2023-02-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(148, 1, '150000', 4, 'pcs', '2023-02-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(149, 1, '85000', 5, 'pcs', '2023-02-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(150, 1, '85000', 5, 'pcs', '2023-02-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(151, 1, '105000', 5, 'pcs', '2023-02-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(152, 1, '90000', 60, 'pcs', '2023-02-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(153, 1, '110000', 40, 'pcs', '2023-02-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(154, 1, '110000', 428, 'pcs', '2023-02-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(155, 1, '90000', 98, 'pcs', '2023-02-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(156, 1, '90000', 80, 'pcs', '2023-02-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(157, 1, '90000', 1000, 'pcs', '2023-02-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(158, 1, '85000', 2, 'pcs', '2023-02-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(159, 1, '90000', 3, 'pcs', '2023-02-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(160, 1, '90000', 7, 'pcs', '2023-02-08 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(161, 1, '110000', 10, 'pcs', '2023-02-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(162, 1, '85000', 3, 'pcs', '2023-02-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(163, 1, '85000', 126, 'pcs', '2023-02-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(164, 1, '85000', 3, 'pcs', '2023-02-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(165, 1, '90000', 65, 'pcs', '2023-02-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(166, 1, '105000', 38, 'pcs', '2023-02-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 15, 3),
(167, 1, '105000', 20, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(168, 1, '85000', 20, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(169, 1, '125000', 14, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(170, 1, '140000', 51, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(171, 1, '90000', 18, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(172, 1, '85000', 4, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(173, 1, '85000', 40, 'pcs', '2023-02-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(174, 1, '85000', 158, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(175, 1, '225000', 8, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(176, 1, '200000', 4, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(177, 1, '225000', 6, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(178, 1, '175000', 7, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(179, 1, '225000', 53, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(180, 1, '175000', 11, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(181, 1, '225000', 2, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(182, 1, '130000', 80, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(183, 1, '85000', 18, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(184, 1, '110000', 15, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(185, 1, '120000', 6, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(186, 1, '105000', 50, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(187, 1, '105000', 4, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(188, 1, '85000', 4, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(189, 1, '90000', 360, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(190, 1, '100000', 14, 'pcs', '2023-02-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(191, 1, '120000', 2, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(192, 1, '105000', 14, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(193, 1, '105000', 30, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(194, 1, '85000', 21, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(195, 1, '85000', 21, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(196, 1, '110000', 20, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(197, 1, '85000', 33, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(198, 1, '110000', 83, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(199, 1, '100000', 199, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(200, 1, '80000', 200, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(201, 1, '100000', 49, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(202, 1, '225000', 18, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(203, 1, '160000', 20, 'pcs', '2023-02-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(204, 1, '145000', 2, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(205, 1, '200000', 1, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(206, 1, '110000', 57, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 14, 3),
(207, 1, '105000', 68, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(208, 1, '90000', 70, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(209, 1, '100000', 170, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(210, 1, '90000', 38, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(211, 1, '90000', 180, 'pcs', '2023-02-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(212, 1, '80000', 123, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(213, 1, '105000', 12, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(214, 1, '85000', 33, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(215, 1, '80000', 234, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(216, 1, '100000', 68, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(217, 1, '100000', 59, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(218, 1, '100000', 6, 'pcs', '2023-02-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(219, 1, '85000', 3, 'pcs', '2023-02-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(220, 1, '105000', 29, 'pcs', '2023-02-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(221, 1, '90000', 479, 'pcs', '2023-02-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(222, 1, '105000', 14, 'pcs', '2023-02-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(223, 1, '100000', 20, 'pcs', '2023-02-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(224, 1, '85000', 30, 'pcs', '2023-02-20 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(225, 1, '105000', 10, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(226, 1, '90000', 22, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(227, 1, '110000', 66, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(228, 1, '90000', 21, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(229, 1, '85000', 7, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(230, 1, '80000', 19, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(231, 1, '100000', 10, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(232, 1, '85000', 9, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(233, 1, '90000', 360, 'pcs', '2023-02-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(234, 1, '105000', 52, 'pcs', '2023-02-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(235, 1, '90000', 20, 'pcs', '2023-02-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(236, 1, '85000', 85, 'pcs', '2023-02-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(237, 1, '95000', 25, 'pcs', '2023-02-24 17:09:45.131960', '2023-08-29 17:12:57.375541', 12, 3),
(238, 1, '100000', 25, 'pcs', '2023-02-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(239, 1, '110000', 240, 'pcs', '2023-02-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(240, 1, '85000', 82, 'pcs', '2023-02-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(241, 1, '105000', 35, 'pcs', '2023-02-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(242, 1, '105000', 20, 'pcs', '2023-02-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(243, 1, '90000', 20, 'pcs', '2023-02-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(244, 1, '90000', 31, 'pcs', '2023-02-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(245, 1, '100000', 10, 'pcs', '2023-02-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(246, 1, '80000', 220, 'pcs', '2023-02-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(247, 1, '100000', 60, 'pcs', '2023-02-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(248, 1, '85000', 20, 'pcs', '2023-02-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(249, 1, '90000', 38, 'pcs', '2023-02-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 20, 3),
(250, 1, '90000', 93, 'pcs', '2023-02-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(251, 1, '85000', 20, 'pcs', '2023-02-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(254, 1, '85000', 37, 'pcs', '2023-03-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(255, 1, '85000', 2, 'pcs', '2023-03-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(256, 1, '100000', 33, 'pcs', '2023-03-02 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(257, 1, '80000', 104, 'pcs', '2023-03-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(258, 1, '100000', 18, 'pcs', '2023-03-02 17:09:45.131960', '2023-08-29 17:19:27.490658', 19, 3),
(259, 1, '90000', 520, 'pcs', '2023-03-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(260, 1, '110000', 50, 'pcs', '2023-03-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 9, 3),
(261, 1, '95000', 592, 'pcs', '2023-03-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 12, 3),
(262, 1, '85000', 60, 'pcs', '2023-03-03 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(263, 1, '105000', 30, 'pcs', '2023-03-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(264, 1, '105000', 5, 'pcs', '2023-03-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(265, 1, '105000', 105, 'pcs', '2023-03-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(266, 1, '85000', 40, 'pcs', '2023-03-04 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(267, 1, '100000', 10, 'pcs', '2023-03-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(268, 1, '100000', 45, 'pcs', '2023-03-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(269, 1, '150000', 3, 'pcs', '2023-03-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(270, 1, '150000', 4, 'pcs', '2023-03-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(271, 1, '85000', 5, 'pcs', '2023-03-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(272, 1, '85000', 5, 'pcs', '2023-03-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(273, 1, '105000', 5, 'pcs', '2023-03-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(274, 1, '90000', 60, 'pcs', '2023-03-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(275, 1, '110000', 40, 'pcs', '2023-03-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(276, 1, '110000', 397, 'pcs', '2023-03-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(277, 1, '90000', 60, 'pcs', '2023-03-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(278, 1, '90000', 80, 'pcs', '2023-03-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(279, 1, '90000', 691, 'pcs', '2023-03-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(280, 1, '85000', 2, 'pcs', '2023-03-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(281, 1, '90000', 3, 'pcs', '2023-03-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(282, 1, '90000', 7, 'pcs', '2023-03-08 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(283, 1, '110000', 10, 'pcs', '2023-03-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(284, 1, '85000', 3, 'pcs', '2023-03-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(285, 1, '85000', 126, 'pcs', '2023-03-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(286, 1, '85000', 3, 'pcs', '2023-03-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(287, 1, '90000', 65, 'pcs', '2023-03-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(288, 1, '105000', 40, 'pcs', '2023-03-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 15, 3),
(289, 1, '105000', 20, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(290, 1, '85000', 20, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(291, 1, '125000', 14, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(292, 1, '140000', 12, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(293, 1, '90000', 18, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(294, 1, '85000', 4, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(295, 1, '85000', 40, 'pcs', '2023-03-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(296, 1, '85000', 158, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(297, 1, '225000', 12, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(298, 1, '200000', 4, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(299, 1, '225000', 5, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(300, 1, '175000', 7, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(301, 1, '225000', 4, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(302, 1, '175000', 11, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(303, 1, '225000', 16, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(304, 1, '130000', 80, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(305, 1, '85000', 18, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(306, 1, '110000', 15, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(307, 1, '120000', 51, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(308, 1, '105000', 50, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(309, 1, '105000', 4, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(310, 1, '85000', 4, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(311, 1, '90000', 360, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(312, 1, '100000', 100, 'pcs', '2023-03-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(313, 1, '120000', 2, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(314, 1, '105000', 14, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(315, 1, '105000', 30, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(316, 1, '85000', 21, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(317, 1, '85000', 21, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(318, 1, '110000', 20, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(319, 1, '85000', 33, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(320, 1, '110000', 3, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(321, 1, '100000', 300, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(322, 1, '80000', 133, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(323, 1, '100000', 100, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(324, 1, '225000', 18, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(325, 1, '160000', 20, 'pcs', '2023-03-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(326, 1, '145000', 2, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(327, 1, '200000', 1, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(328, 1, '110000', 35, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 14, 3),
(329, 1, '105000', 68, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(330, 1, '90000', 70, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(331, 1, '100000', 170, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(332, 1, '90000', 38, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(333, 1, '90000', 180, 'pcs', '2023-03-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(334, 1, '80000', 123, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(335, 1, '105000', 12, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(336, 1, '85000', 33, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(337, 1, '80000', 200, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(338, 1, '100000', 68, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(339, 1, '100000', 130, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(340, 1, '100000', 6, 'pcs', '2023-03-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(341, 1, '85000', 3, 'pcs', '2023-03-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(342, 1, '105000', 29, 'pcs', '2023-03-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(343, 1, '90000', 479, 'pcs', '2023-03-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(344, 1, '105000', 14, 'pcs', '2023-03-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(345, 1, '100000', 20, 'pcs', '2023-03-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(346, 1, '85000', 30, 'pcs', '2023-03-20 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(347, 1, '105000', 10, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(348, 1, '90000', 22, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(349, 1, '110000', 66, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(350, 1, '90000', 21, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(351, 1, '85000', 7, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(352, 1, '80000', 2, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(353, 1, '100000', 10, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(354, 1, '85000', 9, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(355, 1, '90000', 360, 'pcs', '2023-03-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(356, 1, '105000', 52, 'pcs', '2023-03-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(357, 1, '90000', 20, 'pcs', '2023-03-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(358, 1, '85000', 85, 'pcs', '2023-03-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(359, 1, '95000', 65, 'pcs', '2023-03-24 17:09:45.131960', '2023-08-29 17:12:57.375541', 12, 3),
(360, 1, '100000', 25, 'pcs', '2023-03-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(361, 1, '110000', 240, 'pcs', '2023-03-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(362, 1, '85000', 82, 'pcs', '2023-03-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(363, 1, '105000', 35, 'pcs', '2023-03-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(364, 1, '105000', 20, 'pcs', '2023-03-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(365, 1, '90000', 20, 'pcs', '2023-03-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(366, 1, '90000', 31, 'pcs', '2023-03-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(367, 1, '100000', 10, 'pcs', '2023-03-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(368, 1, '80000', 220, 'pcs', '2023-03-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(369, 1, '100000', 60, 'pcs', '2023-03-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(370, 1, '85000', 20, 'pcs', '2023-03-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(371, 1, '90000', 23, 'pcs', '2023-03-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 20, 3),
(372, 1, '90000', 93, 'pcs', '2023-03-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(373, 1, '85000', 20, 'pcs', '2023-03-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(374, 1, '105000', 11, 'pcs', '2023-03-30 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(375, 1, '105000', 10, 'pcs', '2023-03-31 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(376, 1, '85000', 37, 'pcs', '2023-04-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(377, 1, '85000', 2, 'pcs', '2023-04-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(378, 1, '100000', 33, 'pcs', '2023-04-02 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(379, 1, '80000', 104, 'pcs', '2023-04-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(380, 1, '100000', 18, 'pcs', '2023-04-02 17:09:45.131960', '2023-08-29 17:19:27.490658', 19, 3),
(381, 1, '90000', 520, 'pcs', '2023-04-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(382, 1, '110000', 12, 'pcs', '2023-04-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 9, 3),
(383, 1, '95000', 605, 'pcs', '2023-04-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 12, 3),
(384, 1, '85000', 60, 'pcs', '2023-04-03 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(385, 1, '105000', 30, 'pcs', '2023-04-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(386, 1, '105000', 5, 'pcs', '2023-04-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(387, 1, '105000', 105, 'pcs', '2023-04-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(388, 1, '85000', 40, 'pcs', '2023-04-04 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(389, 1, '100000', 10, 'pcs', '2023-04-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(390, 1, '100000', 45, 'pcs', '2023-04-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(391, 1, '150000', 3, 'pcs', '2023-04-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(392, 1, '150000', 4, 'pcs', '2023-04-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(393, 1, '85000', 5, 'pcs', '2023-04-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(394, 1, '85000', 5, 'pcs', '2023-04-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(395, 1, '105000', 5, 'pcs', '2023-04-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(396, 1, '90000', 60, 'pcs', '2023-04-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(397, 1, '110000', 40, 'pcs', '2023-04-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(398, 1, '110000', 428, 'pcs', '2023-04-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(399, 1, '90000', 60, 'pcs', '2023-04-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(400, 1, '90000', 80, 'pcs', '2023-04-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(401, 1, '90000', 501, 'pcs', '2023-04-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(402, 1, '85000', 2, 'pcs', '2023-04-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(403, 1, '90000', 3, 'pcs', '2023-04-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(404, 1, '90000', 7, 'pcs', '2023-04-08 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(405, 1, '110000', 10, 'pcs', '2023-04-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(406, 1, '85000', 3, 'pcs', '2023-04-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(407, 1, '85000', 126, 'pcs', '2023-04-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(408, 1, '85000', 3, 'pcs', '2023-04-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(409, 1, '90000', 65, 'pcs', '2023-04-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(410, 1, '105000', 58, 'pcs', '2023-04-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 15, 3),
(411, 1, '105000', 20, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(412, 1, '85000', 20, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(413, 1, '125000', 14, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(414, 1, '140000', 12, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(415, 1, '90000', 18, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(416, 1, '85000', 4, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(417, 1, '85000', 40, 'pcs', '2023-04-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(418, 1, '85000', 158, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(419, 1, '225000', 8, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(420, 1, '200000', 4, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(421, 1, '225000', 6, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(422, 1, '175000', 7, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(423, 1, '225000', 4, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(424, 1, '175000', 11, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(425, 1, '225000', 16, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(426, 1, '130000', 80, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(427, 1, '85000', 18, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(428, 1, '110000', 15, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(429, 1, '120000', 6, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(430, 1, '105000', 50, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(431, 1, '105000', 4, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(432, 1, '85000', 4, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(433, 1, '90000', 360, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(434, 1, '100000', 100, 'pcs', '2023-04-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(435, 1, '120000', 2, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(436, 1, '105000', 14, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(437, 1, '105000', 30, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(438, 1, '85000', 21, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(439, 1, '85000', 21, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(440, 1, '110000', 20, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(441, 1, '85000', 33, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(442, 1, '110000', 3, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(443, 1, '100000', 300, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(444, 1, '80000', 200, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(445, 1, '100000', 93, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(446, 1, '225000', 18, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(447, 1, '160000', 20, 'pcs', '2023-04-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(448, 1, '145000', 2, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(449, 1, '200000', 1, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(450, 1, '110000', 42, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 14, 3),
(451, 1, '105000', 68, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(452, 1, '90000', 70, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(453, 1, '100000', 170, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(454, 1, '90000', 38, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(455, 1, '90000', 180, 'pcs', '2023-04-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(456, 1, '80000', 123, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(457, 1, '105000', 12, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(458, 1, '85000', 33, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(459, 1, '80000', 200, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(460, 1, '100000', 68, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(461, 1, '100000', 130, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(462, 1, '100000', 6, 'pcs', '2023-04-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(463, 1, '85000', 3, 'pcs', '2023-04-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(464, 1, '105000', 29, 'pcs', '2023-04-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(465, 1, '90000', 298, 'pcs', '2023-04-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(466, 1, '105000', 14, 'pcs', '2023-04-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(467, 1, '100000', 20, 'pcs', '2023-04-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(468, 1, '85000', 30, 'pcs', '2023-04-20 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(469, 1, '105000', 10, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(470, 1, '90000', 22, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(471, 1, '110000', 66, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(472, 1, '90000', 21, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(473, 1, '85000', 7, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(474, 1, '80000', 2, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(475, 1, '100000', 10, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(476, 1, '85000', 9, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(477, 1, '90000', 394, 'pcs', '2023-04-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(478, 1, '105000', 52, 'pcs', '2023-04-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(479, 1, '90000', 20, 'pcs', '2023-04-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(480, 1, '85000', 85, 'pcs', '2023-04-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(481, 1, '95000', 15, 'pcs', '2023-04-24 17:09:45.131960', '2023-08-29 17:12:57.375541', 12, 3),
(482, 1, '100000', 25, 'pcs', '2023-04-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(483, 1, '110000', 240, 'pcs', '2023-04-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(484, 1, '85000', 82, 'pcs', '2023-04-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(485, 1, '105000', 35, 'pcs', '2023-04-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(486, 1, '105000', 20, 'pcs', '2023-04-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(487, 1, '90000', 20, 'pcs', '2023-04-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(488, 1, '90000', 31, 'pcs', '2023-04-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(489, 1, '100000', 10, 'pcs', '2023-04-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(490, 1, '80000', 220, 'pcs', '2023-04-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(491, 1, '100000', 60, 'pcs', '2023-04-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(492, 1, '85000', 20, 'pcs', '2023-04-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(493, 1, '90000', 48, 'pcs', '2023-04-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 20, 3),
(494, 1, '90000', 93, 'pcs', '2023-04-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(495, 1, '85000', 20, 'pcs', '2023-04-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(496, 1, '105000', 11, 'pcs', '2023-04-30 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(498, 1, '85000', 37, 'pcs', '2023-05-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(499, 1, '85000', 2, 'pcs', '2023-05-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(500, 1, '100000', 33, 'pcs', '2023-05-02 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(501, 1, '80000', 142, 'pcs', '2023-05-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(502, 1, '100000', 18, 'pcs', '2023-05-02 17:09:45.131960', '2023-08-29 17:19:27.490658', 19, 3),
(503, 1, '90000', 520, 'pcs', '2023-05-02 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(504, 1, '110000', 50, 'pcs', '2023-05-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 9, 3),
(505, 1, '95000', 605, 'pcs', '2023-05-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 12, 3),
(506, 1, '85000', 60, 'pcs', '2023-05-03 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(507, 1, '105000', 30, 'pcs', '2023-05-03 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(508, 1, '105000', 5, 'pcs', '2023-05-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(509, 1, '105000', 105, 'pcs', '2023-05-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 10, 3),
(510, 1, '85000', 40, 'pcs', '2023-05-04 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(511, 1, '100000', 10, 'pcs', '2023-05-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(512, 1, '100000', 45, 'pcs', '2023-05-04 17:09:45.131960', '2023-08-29 17:09:45.131960', 11, 3),
(513, 1, '150000', 3, 'pcs', '2023-05-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(514, 1, '150000', 4, 'pcs', '2023-05-05 17:31:59.135940', '2023-08-29 17:31:59.135940', 21, 3),
(515, 1, '85000', 5, 'pcs', '2023-05-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(516, 1, '85000', 5, 'pcs', '2023-05-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(517, 1, '105000', 5, 'pcs', '2023-05-05 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(518, 1, '90000', 60, 'pcs', '2023-05-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(519, 1, '110000', 40, 'pcs', '2023-05-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(520, 1, '110000', 428, 'pcs', '2023-05-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(521, 1, '90000', 60, 'pcs', '2023-05-06 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(522, 1, '90000', 80, 'pcs', '2023-05-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(523, 1, '90000', 1000, 'pcs', '2023-05-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(524, 1, '85000', 2, 'pcs', '2023-05-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(525, 1, '90000', 3, 'pcs', '2023-05-07 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(526, 1, '90000', 7, 'pcs', '2023-05-08 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(527, 1, '110000', 10, 'pcs', '2023-05-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(528, 1, '85000', 3, 'pcs', '2023-05-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(529, 1, '85000', 126, 'pcs', '2023-05-09 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(530, 1, '85000', 3, 'pcs', '2023-05-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(531, 1, '90000', 65, 'pcs', '2023-05-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(532, 1, '105000', 49, 'pcs', '2023-05-10 17:09:45.131960', '2023-08-29 17:12:57.375541', 15, 3),
(533, 1, '105000', 20, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(534, 1, '85000', 20, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(535, 1, '125000', 14, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3);
INSERT INTO `sales` (`id`, `user_id`, `price`, `amount`, `unit`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
(536, 1, '140000', 12, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(537, 1, '90000', 18, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(538, 1, '85000', 4, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(539, 1, '85000', 40, 'pcs', '2023-05-11 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(540, 1, '85000', 158, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(541, 1, '225000', 8, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(542, 1, '200000', 4, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(543, 1, '225000', 6, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(544, 1, '175000', 7, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(545, 1, '225000', 4, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(546, 1, '175000', 11, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(547, 1, '225000', 16, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(548, 1, '130000', 80, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(549, 1, '85000', 18, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(550, 1, '110000', 15, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(551, 1, '120000', 6, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(552, 1, '105000', 50, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(553, 1, '105000', 4, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(554, 1, '85000', 4, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(555, 1, '90000', 360, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(556, 1, '100000', 100, 'pcs', '2023-05-12 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(557, 1, '120000', 2, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(558, 1, '105000', 14, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(559, 1, '105000', 30, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(560, 1, '85000', 21, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(561, 1, '85000', 21, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(562, 1, '110000', 20, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(563, 1, '85000', 33, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(564, 1, '110000', 3, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(565, 1, '100000', 300, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(566, 1, '80000', 200, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(567, 1, '100000', 100, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(568, 1, '225000', 18, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(569, 1, '160000', 20, 'pcs', '2023-05-13 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(570, 1, '145000', 2, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 21, 3),
(571, 1, '200000', 1, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 22, 3),
(572, 1, '110000', 42, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 14, 3),
(573, 1, '105000', 68, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(574, 1, '90000', 70, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(575, 1, '100000', 170, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(576, 1, '90000', 38, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(577, 1, '90000', 180, 'pcs', '2023-05-14 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(578, 1, '80000', 123, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(579, 1, '105000', 12, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(580, 1, '85000', 33, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(581, 1, '80000', 238, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(582, 1, '100000', 68, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(583, 1, '100000', 130, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(584, 1, '100000', 6, 'pcs', '2023-05-16 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(585, 1, '85000', 3, 'pcs', '2023-05-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(586, 1, '105000', 29, 'pcs', '2023-05-17 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(587, 1, '90000', 620, 'pcs', '2023-05-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(588, 1, '105000', 14, 'pcs', '2023-05-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(589, 1, '100000', 20, 'pcs', '2023-05-18 17:09:45.131960', '2023-08-29 17:12:57.375541', 19, 3),
(590, 1, '85000', 30, 'pcs', '2023-05-20 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(591, 1, '105000', 10, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(592, 1, '90000', 22, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(593, 1, '110000', 66, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 9, 3),
(594, 1, '90000', 21, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(595, 1, '85000', 7, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(596, 1, '80000', 2, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(597, 1, '100000', 10, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(598, 1, '85000', 9, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(599, 1, '90000', 360, 'pcs', '2023-05-21 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(600, 1, '105000', 52, 'pcs', '2023-05-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(601, 1, '90000', 20, 'pcs', '2023-05-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(602, 1, '85000', 85, 'pcs', '2023-05-23 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(603, 1, '95000', 25, 'pcs', '2023-05-24 17:09:45.131960', '2023-08-29 17:12:57.375541', 12, 3),
(604, 1, '100000', 25, 'pcs', '2023-05-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(605, 1, '110000', 240, 'pcs', '2023-05-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(606, 1, '85000', 82, 'pcs', '2023-05-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(607, 1, '105000', 35, 'pcs', '2023-05-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(608, 1, '105000', 20, 'pcs', '2023-05-25 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(609, 1, '90000', 20, 'pcs', '2023-05-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(610, 1, '90000', 31, 'pcs', '2023-05-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 13, 3),
(611, 1, '100000', 10, 'pcs', '2023-05-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(612, 1, '80000', 220, 'pcs', '2023-05-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 18, 3),
(613, 1, '100000', 60, 'pcs', '2023-05-26 17:09:45.131960', '2023-08-29 17:12:57.375541', 11, 3),
(614, 1, '85000', 20, 'pcs', '2023-05-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(615, 1, '90000', 41, 'pcs', '2023-05-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 20, 3),
(616, 1, '90000', 93, 'pcs', '2023-05-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 16, 3),
(617, 1, '85000', 20, 'pcs', '2023-05-27 17:09:45.131960', '2023-08-29 17:12:57.375541', 17, 3),
(618, 1, '105000', 11, 'pcs', '2023-05-30 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(619, 1, '105000', 10, 'pcs', '2023-05-31 17:09:45.131960', '2023-08-29 17:12:57.375541', 10, 3),
(620, 1, '57000', 100, 'pcs', '2025-05-17 13:14:46.382790', '2025-05-17 13:14:46.382790', 12, 4),
(621, 1, '10000', 10, 'pcs', '2025-05-17 14:01:32.664371', '2025-05-17 14:01:32.664371', 9, 4),
(622, 1, '62500', 100, 'pcs', '2025-05-17 14:04:38.944574', '2025-05-17 14:04:38.944574', 10, 4),
(623, 1, '62500', 20, 'pcs', '2025-05-17 14:05:11.161046', '2025-05-17 14:05:11.161046', 10, 4),
(624, 1, '57000', 50, 'pcs', '2025-05-17 14:07:15.591058', '2025-05-17 14:07:15.591058', 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint NOT NULL,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `amount`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
(9, 482, '2023-10-30 23:41:40.000000', '2023-10-30 23:41:44.000000', 9, 3),
(10, 584, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 10, 3),
(11, 543, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 11, 3),
(12, 817, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 12, 3),
(13, 490, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 13, 3),
(14, 294, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 14, 3),
(15, 873, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 15, 3),
(16, 989, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 16, 3),
(17, 549, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 17, 3),
(19, 314, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 18, 3),
(20, 52, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 19, 3),
(21, 88, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 20, 3),
(22, 54, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 21, 3),
(23, 52, '2023-10-30 23:41:47.000000', '2023-10-30 23:41:49.000000', 22, 3),
(24, 80, '2025-05-17 14:01:32.671368', '2025-05-17 14:04:18.849738', 9, 4),
(25, 80, '2025-05-17 14:04:38.950584', '2025-05-17 14:05:11.168057', 10, 4),
(26, -50, '2025-05-17 14:07:15.598057', '2025-05-17 14:07:15.598057', 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  `purchase_id` bigint DEFAULT NULL,
  `sales_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `type`, `created_at`, `updated_at`, `item_id`, `outlet_id`, `purchase_id`, `sales_id`) VALUES
(18, 1, 'purchase', '2025-05-17 13:34:40.360987', '2025-05-17 13:34:40.360987', 9, 4, 45, NULL),
(19, 1, 'purchase', '2025-05-17 13:56:37.575235', '2025-05-17 13:56:37.575235', 9, 4, 46, NULL),
(20, 1, 'purchase', '2025-05-17 13:57:30.763244', '2025-05-17 13:57:30.763244', 9, 3, 47, NULL),
(21, 1, 'sales', '2025-05-17 14:01:32.667367', '2025-05-17 14:01:32.667367', 9, 4, NULL, 621),
(22, 1, 'purchase', '2025-05-17 14:04:18.846739', '2025-05-17 14:04:18.846739', 9, 4, 48, NULL),
(23, 1, 'sales', '2025-05-17 14:04:38.946573', '2025-05-17 14:04:38.946573', 10, 4, NULL, 622),
(24, 1, 'sales', '2025-05-17 14:05:11.165044', '2025-05-17 14:05:11.165044', 10, 4, NULL, 623),
(25, 1, 'sales', '2025-05-17 14:07:15.594059', '2025-05-17 14:07:15.594059', 11, 4, NULL, 624);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `employee_outlet_id_cfdd65ab_fk_outlets_id` (`outlet_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jawaban_responden_id_kode_item_6f4d2986_uniq` (`responden_id`,`kode_item`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productions_item_id_4156545d_fk_items_id` (`item_id`),
  ADD KEY `productions_outlet_id_35aad789_fk_outlets_id` (`outlet_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_item_id_674e01f1_fk_items_id` (`item_id`),
  ADD KEY `purchases_outlet_id_c7300c4f_fk` (`outlet_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_item_id_3bd4bdaa_fk_items_id` (`item_id`),
  ADD KEY `recipes_material_id_0ae2771c_fk_materials_id` (`material_id`),
  ADD KEY `recipes_outlet_id_ff86729f_fk_outlets_id` (`outlet_id`);

--
-- Indexes for table `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_item_id_e1e0f548_fk_items_id` (`item_id`),
  ADD KEY `sales_outlet_id_fba613ae_fk` (`outlet_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_item_id_31ab3a71_fk_items_id` (`item_id`),
  ADD KEY `stocks_outlet_id_a3ac7af5_fk_outlets_id` (`outlet_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_item_id_6817dd0b_fk_items_id` (`item_id`),
  ADD KEY `transactions_purchase_id_96a24f1f_fk_purchases_id` (`purchase_id`),
  ADD KEY `transactions_sales_id_c965e09f_fk_sales_id` (`sales_id`),
  ADD KEY `transactions_outlet_id_7d089f78_fk` (`outlet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_outlet_id_cfdd65ab_fk_outlets_id` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`),
  ADD CONSTRAINT `inventory_employee_user_id_df4f6208_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_responden_id_d251f299_fk_responden_id` FOREIGN KEY (`responden_id`) REFERENCES `responden` (`id`);

--
-- Constraints for table `productions`
--
ALTER TABLE `productions`
  ADD CONSTRAINT `productions_item_id_4156545d_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `productions_outlet_id_35aad789_fk_outlets_id` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_item_id_674e01f1_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_outlet_id_c7300c4f_fk` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_item_id_3bd4bdaa_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `recipes_material_id_0ae2771c_fk_materials_id` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  ADD CONSTRAINT `recipes_outlet_id_ff86729f_fk_outlets_id` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_item_id_e1e0f548_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `sales_outlet_id_fba613ae_fk` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_item_id_31ab3a71_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `stocks_outlet_id_a3ac7af5_fk_outlets_id` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_item_id_6817dd0b_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `transactions_outlet_id_7d089f78_fk` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`),
  ADD CONSTRAINT `transactions_purchase_id_96a24f1f_fk_purchases_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `transactions_sales_id_c965e09f_fk_sales_id` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
