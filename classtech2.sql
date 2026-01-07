-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2026 at 01:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classtech2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`) VALUES
(1, 'Apple', 'apple', '1'),
(2, 'Samsung', 'samsung', '1'),
(3, 'Xiaomi', 'xiaomi', '1'),
(4, 'Redmi', 'redmi', '1'),
(5, 'Realme', 'realme', '1'),
(6, 'Infinix', 'infinix', '1'),
(7, 'Hoco', 'hoco', '1'),
(8, 'Joyroom', 'joyroom', '1'),
(9, 'Green Lion', 'green-lion', '1'),
(10, 'Stanley', 'stanley', '1'),
(11, 'Baseus', 'baseus', '1'),
(12, 'Lenovo', 'lenovo', '1'),
(13, 'Anker', 'anker', '1'),
(14, 'Awei', 'awei', '1'),
(15, 'Beats', 'beats', '1'),
(16, 'Sony', 'sony', '1'),
(17, 'Huawei', 'huawei', '1'),
(18, 'JBL', 'jbl', '1');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `variant_id`, `quantity`, `created_at`) VALUES
(49, 24, 14, 1, '2025-12-30 09:39:57'),
(92, 8, 8, 1, '2025-12-31 16:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`) VALUES
(4, 'Smartwatches', 'smartwatches', 1, '2025-11-28 17:14:43'),
(5, 'Phones', 'phones', 1, '2025-11-28 17:14:43'),
(6, 'Headsets', 'headsets', 1, '2025-11-28 17:14:43'),
(7, 'Speakers', 'speakers', 1, '2025-11-28 17:14:43'),
(8, 'Chargers', 'chargers', 1, '2025-11-28 17:14:43'),
(9, 'Power Banks', 'power-banks', 1, '2025-11-28 17:14:43'),
(10, 'Cables', 'cables', 1, '2025-11-28 17:14:43'),
(11, 'Bags', 'bags', 1, '2025-11-28 17:14:43'),
(12, 'Men Accessories', 'men-accessories', 1, '2025-11-28 17:14:43'),
(13, 'Women Accessories', 'women-accessories', 1, '2025-11-28 17:14:43'),
(14, 'Men Watches', 'men-watches', 1, '2025-11-28 17:14:43'),
(15, 'Women Watches', 'women-watches', 1, '2025-11-28 17:14:43'),
(16, 'Bluetooth Earbuds', 'bluetooth-earbuds', 1, '2025-11-28 17:14:43'),
(17, 'Keyboards', 'keyboards', 1, '2025-11-28 17:14:43'),
(18, 'Mouses', 'mouses', 1, '2025-11-28 17:14:43'),
(19, 'Sunglasses', 'sunglasses', 1, '2025-11-28 17:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `user_id`, `name`, `phone`, `email`, `address`, `created_at`) VALUES
(16, 24, 'ali', '76543457', 'ali22@gmail.com', '', '2025-12-29 23:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `title`, `start_date`, `end_date`, `status`) VALUES
(84, 'New Year Offer', '2025-12-31', '2026-01-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `is_read`, `created_at`) VALUES
(1, 8, 'New order #1\nCustomer: admin\nPhone: 76317898\nEmail: admin@classtech.com\nTotal: $140.00\n\nItems:\n- Infinix HOT 60i 8GB 256GB Black x1 @ 140.00\n', 0, '2025-12-14 21:24:31'),
(2, 8, 'New order #2\nCustomer: admin\nPhone: 76317898\nEmail: admin@classtech.com\nTotal: $630.00\n\nItems:\n- iPhone 15 128GB Black x1 @ 630.00\n', 0, '2025-12-14 21:26:02'),
(3, 8, 'New order #3\nCustomer: Zozo\nPhone: 71256783\nEmail: majzoubzozo@gmail.com\nTotal: $605.20\n\nItems:\n- Xiaomi 15T Pro 12GB 512GB Black x1 @ 605.20\n', 0, '2025-12-16 15:56:27'),
(4, 8, 'New order #4\nCustomer: Zozo\nPhone: 71256783\nEmail: majzoubzozo@gmail.com\nTotal: $470.00\n\nItems:\n- Used iPhone 13 Pro 128GB Black x1 @ 470.00\n', 0, '2025-12-16 16:00:44'),
(5, NULL, 'Delivery assigned to Delivery Guy (76317898). Mode: wa\nLink: wa.me://not-configured', 0, '2025-12-17 14:41:33'),
(6, NULL, 'Delivery assigned to Delivery Guy (76317898). Mode: wa\nLink: wa.me://not-configured', 0, '2025-12-17 14:45:59'),
(7, 24, 'Delivery assigned to ali (76543457). Message: New delivery assigned.\nOrder#: 1\nCustomer: admin\nPhone: 76317898\nAddress: Ghaza west bekaa\nItems: 1 x #5 @ $140.00\nTotal: $140.00', 0, '2025-12-30 00:07:55'),
(8, 24, 'Delivery assigned to ali (76543457). Message: New delivery assigned.\nOrder#: 3\nCustomer: Zozo\nPhone: 71256783\nAddress: JebJanine\nItems: 1 x #7 @ $605.20\nTotal: $605.20', 0, '2025-12-30 00:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'pending',
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(50) DEFAULT 'cod',
  `payment_status` varchar(50) DEFAULT 'pending',
  `notifications_sent` tinyint(1) NOT NULL DEFAULT 0,
  `stock_restored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `status`, `delivery_id`, `assigned_at`, `delivered_at`, `total_amount`, `discount_id`, `name`, `email`, `phone`, `address`, `total`, `payment_method`, `payment_status`, `notifications_sent`, `stock_restored`) VALUES
(1, 8, '2025-12-14 21:24:31', 'cancelled', 16, '2025-12-30 00:34:22', NULL, 140.00, NULL, 'admin', 'admin@classtech.com', '76317898', 'Ghaza west bekaa', 140.00, 'cod', 'pending', 0, 0),
(2, 8, '2025-12-14 21:26:02', 'delivered', 16, '2025-12-30 00:33:52', '2025-12-30 09:37:58', 630.00, NULL, 'admin', 'admin@classtech.com', '76317898', 'Ghaza west bekaa', 630.00, 'cod', 'pending', 0, 0),
(8, 8, '2025-12-29 17:43:55', 'cancelled', NULL, '2025-12-29 17:46:08', NULL, 1073.00, NULL, 'admin', 'admin@classtech.com', '76317898', 'ghazza west bekaa near the big mosque', 1073.00, 'cod', 'pending', 0, 0),
(9, 40, '2025-12-30 22:28:53', 'pending', NULL, NULL, NULL, 299.00, NULL, 'rozan', 'rozanmj1212@gmail.com', '76317898', 'beirut', 299.00, 'cod', 'pending', 1, 0),
(10, 40, '2025-12-30 22:31:59', 'processing', 16, '2025-12-31 14:02:34', NULL, 12.99, NULL, 'rozan', 'rozanmj1212@gmail.com', '76317898', 'beirut', 12.99, 'cod', 'pending', 1, 0),
(11, 40, '2025-12-31 12:12:00', 'processing', 16, '2025-12-31 14:02:21', NULL, 2239.00, NULL, 'rozan', 'rozanmj1212@gmail.com', '76317898', 'saida', 2239.00, 'cod', 'pending', 1, 0),
(12, 40, '2025-12-31 12:55:21', 'cancelled', NULL, NULL, NULL, 154.99, NULL, 'rozan', 'rozanmj1212@gmail.com', '76317898', 'akkar', 154.99, 'cod', 'pending', 1, 0),
(13, 40, '2025-12-31 13:48:29', 'cancelled', NULL, NULL, NULL, 1523.98, NULL, 'rozan', 'rozanmj1212@gmail.com', '76317898', 'akkar', 1523.98, 'cod', 'pending', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `variant_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `variant_id`, `variant_name`) VALUES
(1, 1, 5, 1, 140.00, 9, 'Infinix HOT 60i 8GB 256GB Black'),
(2, 2, 4, 1, 630.00, 7, 'iPhone 15 128GB Black'),
(9, 8, 6, 1, 1040.00, 10, 'Galaxy S25 Ultra 12GB 256GB Black'),
(11, 9, 18, 1, 299.00, 15, 'Xiaomi Redmi Note 13 (default)'),
(12, 10, 23, 1, 12.99, 16, 'Green Lion Protective Phone Case (Clear) (default)'),
(13, 11, 6, 1, 1040.00, 10, 'Galaxy S25 Ultra 12GB 256GB Black'),
(15, 12, 5, 1, 140.00, 9, 'Infinix HOT 60i 8GB 256GB Black'),
(16, 12, 22, 1, 14.99, 17, 'Hoco Wireless Charging Pad (10W) (default)'),
(17, 13, 6, 1, 1185.00, 11, 'Galaxy S25 Ultra 12GB 512GB Silver'),
(18, 13, 22, 1, 14.99, 17, 'Hoco Wireless Charging Pad (10W) (default)'),
(19, 13, 18, 1, 299.00, 15, 'Xiaomi Redmi Note 13 (default)'),
(20, 13, 15, 1, 24.99, 18, 'Anker Nano 30W USB-C Charger (default)');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `user_id`, `token`, `expires`) VALUES
(1, 4, 'b7f8c503b664f1a3fd25d7fa565c2d946ab2d4c500aa40903636b2167fcd557f1f46f31b7bea53bf8a4bd6989719ad612afc', 1762956209),
(2, 4, '859db850a1d9beaf47cd9a5d1b91f3b0f80d7acf3e627d9efa34ef6433cdd4206d99565f899376eb33e4f33a6d4c977ffa20', 1762957724),
(3, 4, '87b93c915e120a68af583128acbe030185ba2b51c05e094b2b859605fb5035c0f157cf4ad9de15ee4d17b884d0a6f2672de5', 1762957739),
(4, 4, 'fb10833284d415c99172e61086fe00dceef0d0237d020e9eae1b1f9b04180973a6d825125cecc0db74db0caf838de9d466e3', 1762957837),
(7, 4, '0a8aa0df578b7dd11d1c86f056b7eb367a0f9559e95cd8de7f8c628376d0887f81b9f5006d85d18a698fa445ccd374c81d81', 1763477552),
(8, 4, 'cc209d9dfb063f5531584d86dd7b8b7a709a39b1e6e0f6183344b3d1c7fde8d4d20097d9eb1755c27b9258fcd57f7e7619bb', 1763477639),
(9, 4, 'c52760337a5b5342c5c74c961dad12767ac6331b889a8ec40d40b050d6b3a266f0ae876229fe622a9066e8d250ced1fb824b', 1763477673),
(10, 4, '227d259571eb8510595eb3b55d0fb93ee001d23dfc545f41db023ea49e696d929c95fa9896ad4a2bbe20e763eafdc94c3840', 1763477695),
(11, 4, 'dff7f4128e9e9fee7dd2c3c9d00300903dba9f4b38319c90c2e9b4a4da7426553938e89d9fa69f09371131e4eb85a2bcf47a', 1763477729),
(12, 1, 'e85210c7e9694fd0d75d8727fe6349c2628f1efa6fbada7955250f5551a816edcb5e055413ba6e4c605bf602b20d7a840e62', 1763545392),
(14, 4, '96a714c47abd5b99836c2a5244609cd652b8df7b388509e3cc069039cc61afa1655c829195bba9794c8d46a7d13c2fec5bc5', 1765987988);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `payment_method` enum('whish','cashondelivery','cashplus') NOT NULL,
  `payment_status` varchar(50) DEFAULT 'pending',
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_main`
--

CREATE TABLE `products_main` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `price` decimal(10,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_main`
--

INSERT INTO `products_main` (`id`, `name`, `image`, `category_id`, `brand_id`, `description`, `featured`, `status`, `created_at`, `price`, `stock`, `supplier_id`) VALUES
(4, 'iPhone 15', 'iphone15_black.jpg', 5, 1, 'Apple smartphone', 1, 1, '2025-12-07 16:02:27', 630.00, 1, NULL),
(5, 'Infinix HOT 60i', 'infinix60i_blue.jpg', 5, 6, 'Infinix hot 60i smartphone  ', 1, 1, '2025-12-07 16:02:27', 130.00, 2, NULL),
(6, 'Galaxy S25 Ultra', 'galaxys25_black.webp', 5, 2, 'Samsung flagship smartphone', 0, 1, '2025-12-07 16:02:27', 1040.00, 1, NULL),
(7, 'Xiaomi 15T Pro', 'xiaomi15t_black.jpg', 5, 3, 'Affordable Xiaomi smartphone', 0, 1, '2025-12-07 16:02:27', 712.00, 1, NULL),
(8, 'Used iPhone 13 Pro', 'iphone13pro_black.webp', 5, 1, 'Used iphone 13 pro like new ', 0, 1, '2025-12-07 16:02:27', 470.00, 1, NULL),
(15, 'Anker Nano 30W USB-C Charger', 'anker_nano_30w.jpg', 8, 13, 'Compact 30W GaN charger for fast-charging phones and tablets.', 0, 1, '2025-12-30 22:59:03', 24.99, 50, NULL),
(16, 'Anker Soundcore Liberty Air', 'anker_soundcore_liberty_air.jpeg', 16, 13, 'True wireless earbuds with noise reduction and 28h playtime (case included).', 0, 1, '2025-12-30 22:59:03', 59.99, 30, NULL),
(18, 'Xiaomi Redmi Note 13', 'redmi_note_13.jpg', 5, 3, 'Redmi Note 13 - great value with large battery and good performance.', 0, 1, '2025-12-30 22:59:03', 299.00, 15, NULL),
(20, 'Baseus USB-C to Lightning Cable (1.5m)', 'baseus_cable_1_5m.jpg', 10, 11, 'Durable braided USB-C to Lightning cable, 1.5m, fast charging compatible.', 0, 1, '2025-12-30 22:59:03', 9.99, 100, NULL),
(22, 'Hoco Wireless Charging Pad (10W)', 'hoco_wireless_pad.jpg', 8, 7, 'Slim wireless charger pad supporting 10W Qi charging for compatible phones.', 0, 1, '2025-12-30 22:59:03', 14.99, 35, NULL),
(23, 'Green Lion Protective Phone Case (Clear)', 'greenlion-transparent-s24-ultra.jpg', 11, 9, 'Flexible TPU protective case – slim fit, shock absorbent, clear finish.', 0, 1, '2025-12-30 22:59:03', 12.99, 60, NULL),
(24, 'Sony WH-CH720N Wireless Headphones', 'sony_whch720n.jpg', 6, 16, 'Sony wireless over-ear headphones with noise cancellation and long battery life.', 1, 1, '2025-12-30 22:59:03', 129.99, 10, NULL),
(30, 'hoco headset', 'hoco_headset.jpg', 6, 7, 'high quality headset with variety of colors', 0, 1, '2025-12-31 18:59:05', 35.00, 0, NULL),
(31, 'hair dryer', 'hairdryer.jpg', 13, 7, 'hair dryer premium product', 0, 1, '2025-12-31 19:04:32', 33.00, 0, NULL),
(32, 'Realme gt neo', 'realme_gt_neo6.jpg', 5, 5, 'realme phone high quality phone', 1, 1, '2026-01-01 13:32:39', 750.00, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_discounts`
--

CREATE TABLE `product_discounts` (
  `id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `discount` int(11) NOT NULL DEFAULT 0,
  `variant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_discounts`
--

INSERT INTO `product_discounts` (`id`, `discount_id`, `status`, `created_at`, `discount`, `variant_id`) VALUES
(29, 84, 1, '2025-12-31 17:33:33', 4, 26),
(30, 84, 1, '2025-12-31 17:33:33', 6, 27);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `is_primary`, `created_at`) VALUES
(9, 30, 'hoco_headset.jpg', 1, '2025-12-31 16:59:05'),
(10, 31, 'hairdryer.jpg', 1, '2025-12-31 17:04:32'),
(11, 32, 'realme_gt_neo6.jpg', 1, '2026-01-01 11:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `color` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `storage` varchar(50) DEFAULT NULL,
  `warranty_period` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_name`, `price`, `stock`, `description`, `image`, `sku`, `featured`, `status`, `created_at`, `color`, `ram`, `storage`, `warranty_period`) VALUES
(7, 4, 'iPhone 15 128GB Black', 630.00, 0, '128GB Black', 'iphone15_black.jpg', 'IP15-BLK-128', 1, 1, '2025-12-07 16:13:47', 'Black', '6GB', '128GB', '1 Year'),
(8, 5, 'Infinix HOT 60i 4GB 256GB Blue', 125.00, 4, '4GB RAM, 256GB Storage', 'infinix60i_blue.jpg', 'INF60-BL-256', 0, 1, '2025-12-07 16:13:47', 'Blue', '4GB', '256GB', '6 Months'),
(9, 5, 'Infinix HOT 60i 8GB 256GB Black', 140.00, 1, '8GB RAM, 256GB Storage', 'infinix60i_black.jpg', 'INF60-BL-256', 0, 1, '2025-12-07 16:13:47', 'Black', '8GB', '256GB', '6 Months'),
(10, 6, 'Galaxy S25 Ultra 12GB 256GB Black', 1040.00, 0, '12GB RAM, 256GB Storage', 'galaxys25_black.webp', 'GS25-U-12-256-BLK', 1, 1, '2025-12-07 16:15:00', 'Black', '12GB', '256GB', '1 Year'),
(11, 6, 'Galaxy S25 Ultra 12GB 512GB Silver', 1185.00, 1, '12GB RAM, 512GB Storage', 'galaxys25_silver.webp', 'GS25-U-12-512-SLV', 0, 1, '2025-12-07 16:15:00', 'Silver', '12GB', '512GB', '1 Year'),
(12, 7, 'Xiaomi 15T Pro 12GB 512GB Black', 712.00, 0, '12GB RAM, 512GB Storage', 'xiaomi15t_black.jpg', 'XM15T-12-512-BLk', 0, 1, '2025-12-07 16:15:00', 'Black', '12GB', '512GB', '1 Year'),
(13, 8, 'Used iPhone 13 Pro 128GB Black', 470.00, 0, '128GB Storage', 'iphone13pro_black.webp', 'IP13-S-128', 0, 1, '2025-12-07 16:15:00', 'Black', '6GB', '128GB', '6 Months'),
(15, 18, 'Xiaomi Redmi Note 13 (default)', 299.00, 14, 'Redmi Note 13 - great value with large battery and good performance.', 'redmi_note_13.jpg', NULL, 0, 1, '2025-12-31 00:19:45', NULL, NULL, NULL, NULL),
(16, 23, 'Green Lion Protective Phone Case (Clear) (default)', 12.99, 59, 'Flexible TPU protective case – slim fit, shock absorbent, clear finish.', 'greenlion-transparent-s24-ultra.jpg', NULL, 0, 1, '2025-12-31 00:31:24', NULL, NULL, NULL, NULL),
(17, 22, 'Hoco Wireless Charging Pad (10W) (default)', 14.99, 35, 'Slim wireless charger pad supporting 10W Qi charging for compatible phones.', 'hoco_wireless_pad.jpg', NULL, 0, 1, '2025-12-31 00:38:33', NULL, NULL, NULL, NULL),
(18, 15, 'Anker Nano 30W USB-C Charger (default)', 24.99, 50, 'Compact 30W GaN charger for fast-charging phones and tablets.', 'anker_nano_30w.jpg', NULL, 0, 1, '2025-12-31 13:07:48', NULL, NULL, NULL, NULL),
(22, 20, 'baseuus USB_c Lightning cable', 9.99, 100, NULL, 'baseus_cable_1_5m.jpg', '', 0, 1, '2025-12-31 18:21:21', NULL, NULL, NULL, NULL),
(25, 30, 'hoco headset (default)', 35.00, 5, NULL, 'hoco_headset.jpg', '', 0, 1, '2025-12-31 18:59:05', NULL, NULL, NULL, NULL),
(26, 16, 'anker soundcore liberty ai black', 45.00, 5, NULL, 'anker_soundcore_liberty_air.jpeg', '', 1, 1, '2025-12-31 19:01:56', NULL, NULL, NULL, NULL),
(27, 31, 'hair dryer (default)', 33.00, 2, NULL, 'hairdryer.jpg', '', 0, 1, '2025-12-31 19:04:32', NULL, NULL, NULL, NULL),
(28, 32, 'Realme gt neo (default)', 750.00, 3, NULL, 'realme_gt_neo6.jpg', '', 0, 1, '2026-01-01 13:32:39', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `variant_id`, `rating`, `review`, `created_at`) VALUES
(4, 8, NULL, NULL, 4, 'nice', '2025-12-10 08:53:12'),
(5, 8, NULL, NULL, 4, 'i like it', '2025-12-16 12:52:29'),
(8, 8, 5, 8, 4, 'very great phone', '2025-12-16 17:19:05'),
(10, 15, NULL, NULL, 5, 'test', '2025-12-17 19:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type` enum('admin','customer','delivery') NOT NULL DEFAULT 'customer',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verify_token` varchar(255) DEFAULT NULL,
  `verify_expires` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `phone`, `address`, `type`, `is_active`, `created_at`, `email_verified`, `is_verified`, `verify_token`, `verify_expires`) VALUES
(8, 'admin', 'admin@classtech.com', '$2y$10$Mfw65aSICzLFufzN2wiup.W6QdbGfzChRqloMTUaIAqH1G6XPO6Wi', '76317898', '', 'admin', 1, '2025-11-14 15:13:35', 1, 1, NULL, NULL),
(13, 'delivery1', 'delivery1@example.com', '$2y$10$SA6Ny9xwHazIcfEu.QsECeb1uqzS3XvQ4GE4ZJuFuhQ8IA0/op72a', '76317898', NULL, '', 0, '2025-12-17 14:40:53', 0, 0, NULL, NULL),
(15, 'Kholoud', 'kholoudm@gmail.com', '$2y$10$Sv8CSemXy1KE31luWuaCReZbj1bPHNynwWLq3VugKOuIUBF.Buzdi', NULL, NULL, 'customer', 0, '2025-12-17 19:08:52', 0, 0, NULL, NULL),
(24, 'ali', 'ali22@gmail.com', '$2y$10$JWayv90cNpn8VZ7kxJWoYOaxFW2lBuQc8NuETieT7/JZhJ/UEjyCK', '76543457', NULL, 'delivery', 1, '2025-12-29 23:54:48', 1, 1, NULL, NULL),
(37, 'zozo', 'majzoubzozo@gmail.com', '$2y$10$1f0kiig1T24g8GwjlGG3ZujQkcH.f0A2SGv8qSpOZGNLLlj5QPZJ6', NULL, NULL, 'customer', 1, '2025-12-30 21:31:33', 1, 1, NULL, NULL),
(40, 'rozan', 'rozanmj1212@gmail.com', '$2y$10$91.VS899pb0rSr1CDWyadOiJKk8ZRjZdkhzIzT6XId9eNWZ2hSLYW', NULL, NULL, 'customer', 1, '2025-12-30 22:18:32', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`) VALUES
(88, 4, 5, '2025-12-17 07:37:13'),
(89, 4, 7, '2025-12-17 07:37:19'),
(90, 4, 4, '2025-12-17 07:37:21'),
(91, 15, 5, '2025-12-17 19:09:16'),
(92, 15, 4, '2025-12-17 19:09:49'),
(100, 40, 5, '2025-12-31 11:46:46'),
(103, 40, 17, '2025-12-31 12:15:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_name` (`name`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_variant` (`user_id`,`variant_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `variant_id` (`variant_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_deliveries_user_id` (`user_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifications_user` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_user` (`user_id`),
  ADD KEY `fk_orders_discount` (`discount_id`),
  ADD KEY `idx_delivery_id` (`delivery_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_items_product` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `variant_id` (`variant_id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payments_order` (`order_id`);

--
-- Indexes for table `products_main`
--
ALTER TABLE `products_main`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_products_main_brand` (`brand_id`),
  ADD KEY `fk_products_supplier` (`supplier_id`);

--
-- Indexes for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reviews_user` (`user_id`),
  ADD KEY `fk_reviews_product` (`product_id`),
  ADD KEY `fk_reviews_variant` (`variant_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_product` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_main`
--
ALTER TABLE `products_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_discounts`
--
ALTER TABLE `product_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `fk_deliveries_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD CONSTRAINT `ev_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_discount` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_order_items_product` FOREIGN KEY (`product_id`) REFERENCES `products_main` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_main`
--
ALTER TABLE `products_main`
  ADD CONSTRAINT `fk_products_main_brand` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_products_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_main_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_discounts`
--
ALTER TABLE `product_discounts`
  ADD CONSTRAINT `product_discounts_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products_main` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products_main` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_product` FOREIGN KEY (`product_id`) REFERENCES `products_main` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reviews_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reviews_variant` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
