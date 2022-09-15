-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Apr 20, 2021 at 01:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `santosh`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order'),
(41, 'Can add customer', 11, 'add_customer'),
(42, 'Can change customer', 11, 'change_customer'),
(43, 'Can delete customer', 11, 'delete_customer'),
(44, 'Can view customer', 11, 'view_customer'),
(45, 'Can add cart product', 12, 'add_cartproduct'),
(46, 'Can change cart product', 12, 'change_cartproduct'),
(47, 'Can delete cart product', 12, 'delete_cartproduct'),
(48, 'Can view cart product', 12, 'view_cartproduct'),
(49, 'Can add admin', 13, 'add_admin'),
(50, 'Can change admin', 13, 'change_admin'),
(51, 'Can delete admin', 13, 'delete_admin'),
(52, 'Can view admin', 13, 'view_admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$onhVI74qu06y$Emr9AyZ5TVAvgyeekZbQxOSRDoPXVcxqS9bXwA6o4P8=', '2021-04-20 10:45:38.907314', 1, 'admin', '', '', 'dangisantosh456@gmail.com', 1, 1, '2021-04-20 09:20:21.058788'),
(2, 'pbkdf2_sha256$216000$g3CJmlWOsjVk$V97jlOQAAlzj4EvF9MbBb37nZrEyPVea94r/VxKymV8=', '2021-04-20 10:53:00.551477', 0, 'kp', '', '', '', 0, 1, '2021-04-20 09:21:32.217559'),
(3, 'pbkdf2_sha256$216000$u2aPvhqhSa7m$2QYT48Jzhljrbq+4lZHUHb/ALtg2pINHw4aCrzDWqBY=', NULL, 0, 'abc', '', '', '', 0, 1, '2021-04-20 09:23:53.824321'),
(4, 'pbkdf2_sha256$216000$esdkzmzd3BOj$FXcoae/UKmVRFOd7PHUaaYC+qi/JZNaz3jUYhAjk9wQ=', '2021-04-20 10:53:44.149664', 0, 'cart1', '', '', 'dangisantosh456@gmail.com', 0, 1, '2021-04-20 09:39:44.558540');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-20 09:21:32.478808', '2', 'kp', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-04-20 09:23:54.066647', '3', 'abc', 1, '[{\"added\": {}}]', 4, 1),
(3, '2021-04-20 09:24:34.986647', '1', 'kp', 1, '[{\"added\": {}}]', 13, 1),
(4, '2021-04-20 10:46:11.171753', '17', 'Fantech Mouse', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(13, 'yakstore', 'admin'),
(7, 'yakstore', 'cart'),
(12, 'yakstore', 'cartproduct'),
(8, 'yakstore', 'category'),
(11, 'yakstore', 'customer'),
(10, 'yakstore', 'order'),
(9, 'yakstore', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-20 09:12:43.057784'),
(2, 'auth', '0001_initial', '2021-04-20 09:12:43.327506'),
(3, 'admin', '0001_initial', '2021-04-20 09:12:44.234718'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-20 09:12:44.395082'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-20 09:12:44.419916'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-20 09:12:44.556825'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-20 09:12:44.649072'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-20 09:12:44.692780'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-20 09:12:44.718604'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-20 09:12:44.782156'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-20 09:12:44.790103'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-20 09:12:44.813944'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-20 09:12:44.880901'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-20 09:12:44.922620'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-20 09:12:44.974274'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-20 09:12:45.008047'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-20 09:12:45.061691'),
(18, 'sessions', '0001_initial', '2021-04-20 09:12:45.290935'),
(19, 'yakstore', '0001_initial', '2021-04-20 09:12:45.743523'),
(20, 'yakstore', '0002_admin', '2021-04-20 09:12:46.170895'),
(21, 'yakstore', '0003_auto_20210418_0018', '2021-04-20 09:12:46.471434'),
(22, 'yakstore', '0004_auto_20210420_1453', '2021-04-20 09:12:46.495274');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ay94c2xhpt2oix91kb8afdnvnk6q40h', '.eJxVjEsOwiAUAO_C2hA-hYJL956BvPcAqZo2Aboy3t1guul2ZjIfRlB7WCK7qgsLsPcS9pbqnzDFTgyBXmkdIj5hfWyctrXXBflI-GEbv28xvW9HexoUaGVsURrjDKJEIaMklwVFQGW1tCLbaXbaGoXaeaPSLLw3lqaUk4aoADKx7w9i7Tt3:1lYmke:unuXgX7Pgh1sP_jxz7R3NIh5M0hTF9fyxYjD9_QwLU0', '2021-05-04 09:33:00.671346'),
('c08aa3o9on3gg4is1dxhvlodzwtdffrv', '.eJxVjDsOwjAQBe_iGlle_xIo6XMGa71r4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEmcVFWHH63SLSI9Ud8B3rrUlqdV3mKHdFHrTLqXF6Xg_376BgL986QzLokKNH0hRJsUI_GmcBaMzMNnm2OEDGiAas1k4ZIHJ5OGtS1ov3BxF3OGk:1lYo0m:USc5zifAp3Cv3tLPIMyBPY_ZqM1mNoaJLKfHvzgUFSk', '2021-05-04 10:53:44.159595'),
('n90rw5wu8ccnkpho699k4z9s9yrbhom0', '.eJxVjMsOwiAQRf-FtSE8CnRcuu83EJgZpWogKe3K-O_apAvd3nPOfYmYtrXErfMSZxJnocXpd8sJH1x3QPdUb01iq-syZ7kr8qBdTo34eTncv4OSevnWymQCpSEHDxD0mAZvWFmHVx6IjEcfLBAEMN45OyQCVsFbZBzBEWrx_gDAkTcz:1lYnsw:dEXssZFE-SfWsicjTNAXfMkQXVLqp3eonIOWF822cMA', '2021-05-04 10:45:38.954996'),
('opyjp8k5xvnt6ruo2i8msew6hwwmuhcz', '.eJxVjjsOwjAQBe_iGln-xI5NSZ8zRLvrNQ4gW8qnQtwdglJA-2Y0ek8xwraWcVt4HqckzsKI0--GQHeuO0g3qNcmqdV1nlDuijzoIoeW-HE53L9AgaXsWdTOBYeoUemkKWRFCdB4q73KvuuD9c6gDdEZ7lWMzlPHmS0kA5DpEyWY1-9H_XoDglc7dg:1lYmfB:QvLB90P-1hLAJdq3lN1T_dA09yJjSm_oxbYFjVUIFAM', '2021-05-04 09:27:21.064190'),
('uio3hj6djw1tf14c9ksqmwqkno2x09xw', '.eJxVjDsOwjAQBe_iGlle_xIo6XMGa71r4wCypTipEHeHSCmgfTPzXiLgtpaw9bSEmcVFWHH63SLSI9Ud8B3rrUlqdV3mKHdFHrTLqXF6Xg_376BgL986QzLokKNH0hRJsUI_GmcBaMzMNnm2OEDGiAas1k4ZIHJ5OGtS1ov3BxF3OGk:1lYnyH:e42mAfg_JeRNJmWxJs7SaEjz38Ka6dDW5y8X5UFpkiE', '2021-05-04 10:51:09.112353');

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_admin`
--

CREATE TABLE `yakstore_admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_admin`
--

INSERT INTO `yakstore_admin` (`id`, `full_name`, `image`, `mobile`, `user_id`) VALUES
(1, 'kp', 'admins/3.jpg', '9806238565', 2);

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_cart`
--

CREATE TABLE `yakstore_cart` (
  `id` int(11) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL CHECK (`total` >= 0),
  `created_at` datetime(6) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_cart`
--

INSERT INTO `yakstore_cart` (`id`, `total`, `created_at`, `customer_id`) VALUES
(1, 1820, '2021-04-20 09:27:21.027480', NULL),
(2, 1820, '2021-04-20 09:28:03.697133', NULL),
(3, 1820, '2021-04-20 09:39:52.528698', 1),
(4, 85000, '2021-04-20 10:50:35.722940', NULL),
(5, 170000, '2021-04-20 10:52:21.340333', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_cartproduct`
--

CREATE TABLE `yakstore_cartproduct` (
  `id` int(11) NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL CHECK (`rate` >= 0),
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `subtotal` int(10) UNSIGNED NOT NULL CHECK (`subtotal` >= 0),
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_cartproduct`
--

INSERT INTO `yakstore_cartproduct` (`id`, `rate`, `quantity`, `subtotal`, `cart_id`, `product_id`) VALUES
(1, 1820, 1, 1820, 1, 1),
(2, 1820, 1, 1820, 2, 1),
(3, 1820, 1, 1820, 3, 1),
(4, 85000, 1, 85000, 4, 9),
(5, 85000, 2, 170000, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_category`
--

CREATE TABLE `yakstore_category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_category`
--

INSERT INTO `yakstore_category` (`id`, `title`, `slug`) VALUES
(1, 'Shoes items', 'Shoes-items'),
(2, 'clothing and fashion', 'clothings-and-fashion'),
(3, 'laptop items', 'laptop-items'),
(4, 'mobile items', 'mobile-items'),
(5, 'mouse items', 'mouse-items');

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_customer`
--

CREATE TABLE `yakstore_customer` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `joined_on` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_customer`
--

INSERT INTO `yakstore_customer` (`id`, `full_name`, `address`, `joined_on`, `user_id`) VALUES
(1, 'cart1', 'cart1', '2021-04-20 09:39:44.837587', 4);

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_order`
--

CREATE TABLE `yakstore_order` (
  `id` int(11) NOT NULL,
  `ordered_by` varchar(200) NOT NULL,
  `shipping_address` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `subtotal` int(10) UNSIGNED NOT NULL CHECK (`subtotal` >= 0),
  `discount` int(10) UNSIGNED NOT NULL CHECK (`discount` >= 0),
  `total` int(10) UNSIGNED NOT NULL CHECK (`total` >= 0),
  `order_status` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `payment_completed` tinyint(1),
  `payment_method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_order`
--

INSERT INTO `yakstore_order` (`id`, `ordered_by`, `shipping_address`, `mobile`, `email`, `subtotal`, `discount`, `total`, `order_status`, `created_at`, `cart_id`, `payment_completed`, `payment_method`) VALUES
(1, 'santosh dangi', 'ktm', '9806238565', 'dangisantosh456@gmail.com', 1820, 0, 1820, 'Order Received', '2021-04-20 09:40:09.111678', 3, 0, 'Cash On Delivery'),
(2, 'santosh dangi', 'lalitpur', '9806238565', 'dangisantosh456@gmail.com', 170000, 0, 170000, 'Order Processing', '2021-04-20 10:52:42.538314', 5, 0, 'Cash On Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `yakstore_product`
--

CREATE TABLE `yakstore_product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `marked_price` int(10) UNSIGNED NOT NULL CHECK (`marked_price` >= 0),
  `selling_price` int(10) UNSIGNED NOT NULL CHECK (`selling_price` >= 0),
  `description` longtext NOT NULL,
  `warranty` varchar(300) DEFAULT NULL,
  `return_policy` varchar(300) DEFAULT NULL,
  `view_count` int(10) UNSIGNED NOT NULL CHECK (`view_count` >= 0),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yakstore_product`
--

INSERT INTO `yakstore_product` (`id`, `title`, `slug`, `image`, `marked_price`, `selling_price`, `description`, `warranty`, `return_policy`, `view_count`, `category_id`) VALUES
(1, 'Black Shoes', 'Black-Shoes', 'products/s1.jpg', 1900, 1820, 'this is the best shoes', 'No Warranty', '1 week return if not damaged conditions app', 0, 1),
(2, 'white shoes', 'white-shoes', 'products/s2.jpg', 2000, 1700, 'Product: City Ride\r\nBrand: Lotto\r\nUpper Height: Medium Cut\r\nLine : AMF Inspired\r\nBase material : Nylon\r\nMaterial : Nylon\r\nExtremely Comfortable\r\nTrendy Look\r\nDurable and Reliable\r\nSporty Look', 'No Warranty', '1 week return if not damaged conditions app', 0, 1),
(3, 'girl shoes', 'girl-shose', 'products/s3_uh93mYG.jpg', 3200, 29000, 'Product: City Ride\r\nBrand: Lotto\r\nUpper Height: Medium Cut\r\nLine : AMF Inspired\r\nBase material : Nylon\r\nMaterial : Nylon\r\nExtremely Comfortable\r\nTrendy Look\r\nDurable and Reliable\r\nSporty Look', 'No Warranty', '1 week return if not damaged conditions app', 0, 1),
(4, 'white shirt', 'white-shirt', 'products/c1.jpg', 1200, 990, 'Brand: Oxemberg\r\nMaterial: Mixed Cotton\r\nStyle: Casual\r\nFit Type: Slim Fit\r\nSleeves: Full Sleeves', 'No Warranty', '1 week return if not damaged conditions app', 0, 2),
(5, 'T-Shirt', 'T-Shirt', 'products/c2.jpg', 1000, 800, 'Fit Type: Slim Fit\r\nSleeves: Full Sleeves', 'No Warranty', '1 week return if not damaged conditions app', 0, 2),
(6, 'red shirt for girl', 'red-shirt-for-girl', 'products/c3.jpg', 1100, 1000, 'Fit Type: Slim Fit\r\nSleeves: Full Sleeves', 'No Warranty', '1 week return if not damaged conditions app', 0, 2),
(7, 'jeans pant', 'jeans-pant', 'products/c4.jpg', 1500, 1200, '100% Genuine Product of Virjeans\r\nMaterial: Non-Stretchable Denim/ Jeans\r\nType: Casual\r\nFit: Regular', 'No Warranty', '1 week return if not damaged conditions app', 0, 2),
(8, 'Sport Shoes', 'Sport-Shoes', 'products/s9_Tnc0PhB.jpg', 1800, 1599, '100% Genuine Product of Virjeans\r\nMaterial: Non-Stretchable Denim/ Jeans\r\nType: Casual\r\nFit: Regular', 'No Warranty', '1 week return if not damaged conditions app', 0, 1),
(9, 'asus laptop', 'asus-laptop', 'products/l1.jpg', 96000, 85000, 'Brand: Asus\r\nModel: Vivobook E410MA\r\nProcessor: Intel Celeron N4020 CPU Processor (1.10 GHz, 4 Cache, Upto 2.80GHz)\r\nDisplay: 14\" HD\r\nGraphics: Intel(R) UHD Graphics 600\r\nRam: 4GB DDR4\r\nStorage: 256GB SSD', '1 years warranty', '1 week return if not damaged conditions app', 0, 3),
(10, 'Apple Laptop', 'apple-laptop', 'products/l2.jpg', 102000, 99000, 'Brand: Apple laptop\r\nModel: Vivobook E410MA\r\nProcessor: Intel Celeron N4020 CPU Processor (1.10 GHz, 4 Cache, Upto 2.80GHz)\r\nDisplay: 14\" HD\r\nGraphics: Intel(R) UHD Graphics 600\r\nRam: 4GB DDR4\r\nStorage: 256GB SSD', '1 years warranty', '1 week return if not damaged conditions app', 0, 3),
(11, 'acer laptop', 'acer-laptop', 'products/l3.png', 120000, 112000, 'Brand: Acer\r\nModel: Vivobook E410MA\r\nProcessor: Intel Celeron N4020 CPU Processor (1.10 GHz, 4 Cache, Upto 2.80GHz)\r\nDisplay: 14\" HD\r\nGraphics: Intel(R) UHD Graphics 600\r\nRam: 4GB DDR4\r\nStorage: 256GB SSD', '1 years warranty', '1 week return if not damaged conditions app', 0, 3),
(12, 'Asus laptop nitro 5', 'Asus-laptop-nitro', 'products/l4.png', 102000, 95000, 'Brand: Asus\r\nModel: Vivobook E410MA\r\nProcessor: Intel Celeron N4020 CPU Processor (1.10 GHz, 4 Cache, Upto 2.80GHz)\r\nDisplay: 14\" HD\r\nGraphics: Intel(R) UHD Graphics 600\r\nRam: 4GB DDR4\r\nStorage: 256GB SSD', '1 years warranty', '1 week return if not damaged conditions app', 0, 3),
(13, 'Samsung Galaxy M62', 'Samsung-Galaxy-M62', 'products/mbl1.jpg', 30000, 28000, '4GB/64GB @20999, 4GB/128GB @22999, 6/128 @24999\r\n48MP Quad Camera Hotshot\r\n5020mAh Massive battery, longer lasting power\r\n6.53 “FHD+ DotDisplay, equipped with Corning® Gorilla® Glass 5, stylish and notch-free\r\nMTK Helio G85 High-performance octa-core processor', '1 years warranty', '1 week return if not damaged conditions app', 0, 4),
(14, 'iphone 12 max', 'iphone-12-plus', 'products/mbl2.jpg', 162000, 160000, 'Super Retina XDR display\r\n6.7‑inch (diagonal) all‑screen OLED display\r\n2778‑by‑1284-pixel resolution at 458 ppi\r\nHDR display\r\nTrue Tone\r\nWide color (P3)\r\nHaptic Touch\r\n2,000,000:1 contrast ratio (typical)\r\n800 nits max brightness (typical); 1200 nits max brightness (HDR)\r\nFingerprint-resistant oleophobic coating\r\nSupport for display of multiple languages and characterssimultaneously', '1 years warranty', '1 week return if not damaged conditions app', 0, 4),
(15, 'iphone 7 plus', 'iphone-7-plus', 'products/mbl3.png', 82000, 76000, '6.1-inch Liquid Retina HD LCD display³\r\nWater and dust resistant (2 meters for up to 30 minutes, IP68)\r\nDual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps\r\n12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo\r\nFace ID for secure authentication and Apple Pay', 'No Warranty', '1 week return if not damaged conditions app', 0, 4),
(16, 'Redmi Note 9', 'Redmi-Note-9', 'products/mbl4.png', 32999, 30000, 'OS Android\r\nRAM 4 GB\r\nProduct Dimensions 16.6 x 0.9 x 7.7 cm; 209 Grams\r\nBatteries 1 Lithium Polymer batteries required. (included)\r\nItem model number Redmi Note 9 Pro\r\nWireless communication technologies Bluetooth, WiFi Hotspot\r\nConnectivity technologies 4g\r\nSpecial features Dual SIM, Infrared, E-mail, Accelerometer, Ambient light sensor, Gyroscope, GPS, FM Radio, Video Player, Music Player, Proximity sensor', 'No Warranty', '1 week return if not damaged conditions app', 0, 4),
(17, 'Fantech Mouse', 'fantech-mouse', 'products/m1.jpg', 1800, 1500, '1.STABLE WIRELEES CONNECTION\r\n2 SWITCHES MADE FOR DURABLITY\r\n3 GAMING SENSOR\r\n4 TECHNICAL SPECIFATION\r\n5 SUPER POWER SAVER SENSOR\r\n6. SMOOTH TEFLON MOUSE SKATES\r\n7.EASY AND CONVENIENT ON/ OFF POWER', '6 months warranty', '1 week return if not damaged conditions app', 0, 5),
(18, 'mouse fantech', 'mouse-fantech', 'products/m2.jpg', 1600, 1400, '1.STABLE WIRELEES CONNECTION\r\n2 SWITCHES MADE FOR DURABLITY\r\n3 GAMING SENSOR\r\n4 TECHNICAL SPECIFATION\r\n5 SUPER POWER SAVER SENSOR\r\n6. SMOOTH TEFLON MOUSE SKATES\r\n7.EASY AND CONVENIENT ON/ OFF POWER', '6 months warranty', '1 week return if not damaged conditions app', 0, 5),
(19, 'VX7 mouse', 'VX7-mouse', 'products/m3.jpg', 1900, 1800, '1.STABLE WIRELEES CONNECTION\r\n2 SWITCHES MADE FOR DURABLITY\r\n3 GAMING SENSOR\r\n4 TECHNICAL SPECIFATION\r\n5 SUPER POWER SAVER SENSOR\r\n6. SMOOTH TEFLON MOUSE SKATES\r\n7.EASY AND CONVENIENT ON/ OFF POWER', '6 months warranty', '1 week return if not damaged conditions app', 0, 5),
(20, 'RAIGOR mouse', 'RAIGOR-mouse', 'products/m4.jpg', 2000, 1799, '1.STABLE WIRELEES CONNECTION\r\n2 SWITCHES MADE FOR DURABLITY\r\n3 GAMING SENSOR\r\n4 TECHNICAL SPECIFATION\r\n5 SUPER POWER SAVER SENSOR\r\n6. SMOOTH TEFLON MOUSE SKATES\r\n7.EASY AND CONVENIENT ON/ OFF POWER', 'No Warranty', '1 week return if not damaged conditions app', 0, 5);

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
-- Indexes for table `yakstore_admin`
--
ALTER TABLE `yakstore_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `yakstore_cart`
--
ALTER TABLE `yakstore_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yakstore_cart_customer_id_76c1bbbb_fk_yakstore_customer_id` (`customer_id`);

--
-- Indexes for table `yakstore_cartproduct`
--
ALTER TABLE `yakstore_cartproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yakstore_cartproduct_cart_id_aac32ead_fk_yakstore_cart_id` (`cart_id`),
  ADD KEY `yakstore_cartproduct_product_id_c2ffa249_fk_yakstore_product_id` (`product_id`);

--
-- Indexes for table `yakstore_category`
--
ALTER TABLE `yakstore_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `yakstore_customer`
--
ALTER TABLE `yakstore_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `yakstore_order`
--
ALTER TABLE `yakstore_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_id` (`cart_id`);

--
-- Indexes for table `yakstore_product`
--
ALTER TABLE `yakstore_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `yakstore_product_category_id_5967b1cc_fk_yakstore_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `yakstore_admin`
--
ALTER TABLE `yakstore_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yakstore_cart`
--
ALTER TABLE `yakstore_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yakstore_cartproduct`
--
ALTER TABLE `yakstore_cartproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yakstore_category`
--
ALTER TABLE `yakstore_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `yakstore_customer`
--
ALTER TABLE `yakstore_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yakstore_order`
--
ALTER TABLE `yakstore_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `yakstore_product`
--
ALTER TABLE `yakstore_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Constraints for table `yakstore_admin`
--
ALTER TABLE `yakstore_admin`
  ADD CONSTRAINT `yakstore_admin_user_id_8bf7f5fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `yakstore_cart`
--
ALTER TABLE `yakstore_cart`
  ADD CONSTRAINT `yakstore_cart_customer_id_76c1bbbb_fk_yakstore_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `yakstore_customer` (`id`);

--
-- Constraints for table `yakstore_cartproduct`
--
ALTER TABLE `yakstore_cartproduct`
  ADD CONSTRAINT `yakstore_cartproduct_cart_id_aac32ead_fk_yakstore_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `yakstore_cart` (`id`),
  ADD CONSTRAINT `yakstore_cartproduct_product_id_c2ffa249_fk_yakstore_product_id` FOREIGN KEY (`product_id`) REFERENCES `yakstore_product` (`id`);

--
-- Constraints for table `yakstore_customer`
--
ALTER TABLE `yakstore_customer`
  ADD CONSTRAINT `yakstore_customer_user_id_eac57981_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `yakstore_order`
--
ALTER TABLE `yakstore_order`
  ADD CONSTRAINT `yakstore_order_cart_id_f3e8c81f_fk_yakstore_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `yakstore_cart` (`id`);

--
-- Constraints for table `yakstore_product`
--
ALTER TABLE `yakstore_product`
  ADD CONSTRAINT `yakstore_product_category_id_5967b1cc_fk_yakstore_category_id` FOREIGN KEY (`category_id`) REFERENCES `yakstore_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
