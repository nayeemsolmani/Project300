-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2017 at 05:31 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdonline`
--
CREATE DATABASE IF NOT EXISTS `bdonline` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdonline`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNo` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `lastname`, `email`, `password`, `accountNo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahi', 'Hussain', 'mahihussain020@gmail.com', '$2y$10$jOVHothAIHvBE5n02HoKfuTkV7BwwTmXfxVjsxBxVVYqaK6kzL0/e', 123456789, NULL, NULL, '2017-11-26 08:02:27'),
(2, 'Ashraf', 'Niloy', 'ashrafNiloy@gmail.com', '$2y$10$jOVHothAIHvBE5n02HoKfuTkV7BwwTmXfxVjsxBxVVYqaK6kzL0/e', 12345678, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_17_124809_create_products_table', 2),
(4, '2017_11_18_155259_createAdminTable', 2),
(5, '2017_11_24_113003_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `streetAddress` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `streetAddress`, `city`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:20.5;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:4:\"desc\";i:2;s:5:\"price\";i:3;s:7:\"imgPath\";i:4;s:12:\"manufacturer\";i:5;s:8:\"category\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:5:\"title\";s:12:\"Harry Potter\";s:4:\"desc\";s:487:\"This book is written in script format, which is different from a novel format. \r\nThe Eighth Tale in the Harry Potter Saga\r\nBeing labelled as \'the boy who lived\' for his whole life has not been easy for Harry Potter. In the official eighth instalment of the Harry Potter series penned in the form of a two-part stage production play, J. K. Rowling weaves yet another thrilling and magical yarn featuring the life of Harry Potter nineteen years later in the post-Voldemort wizarding world.\";s:5:\"price\";d:20.5;s:7:\"imgPath\";s:38:\"Image/HarryPotterAndTheCursedChild.jpg\";s:12:\"manufacturer\";s:11:\"J.K Rowling\";s:8:\"category\";s:5:\"Books\";s:10:\"created_at\";s:19:\"2017-11-17 22:10:00\";s:10:\"updated_at\";s:19:\"2017-11-17 22:10:28\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:5:\"title\";s:12:\"Harry Potter\";s:4:\"desc\";s:487:\"This book is written in script format, which is different from a novel format. \r\nThe Eighth Tale in the Harry Potter Saga\r\nBeing labelled as \'the boy who lived\' for his whole life has not been easy for Harry Potter. In the official eighth instalment of the Harry Potter series penned in the form of a two-part stage production play, J. K. Rowling weaves yet another thrilling and magical yarn featuring the life of Harry Potter nineteen years later in the post-Voldemort wizarding world.\";s:5:\"price\";d:20.5;s:7:\"imgPath\";s:38:\"Image/HarryPotterAndTheCursedChild.jpg\";s:12:\"manufacturer\";s:11:\"J.K Rowling\";s:8:\"category\";s:5:\"Books\";s:10:\"created_at\";s:19:\"2017-11-17 22:10:00\";s:10:\"updated_at\";s:19:\"2017-11-17 22:10:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:15;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:4:\"desc\";i:2;s:5:\"price\";i:3;s:7:\"imgPath\";i:4;s:12:\"manufacturer\";i:5;s:8:\"category\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:5:\"title\";s:5:\"Shirt\";s:4:\"desc\";s:55:\"High Quality cotton shirt for men.\r\nMade in Bangladesh.\";s:5:\"price\";d:15;s:7:\"imgPath\";s:22:\"Image/BlueShirtMan.jpg\";s:12:\"manufacturer\";s:4:\"Zara\";s:8:\"category\";s:16:\"Clothing & Shoes\";s:10:\"created_at\";s:19:\"2017-11-17 22:22:03\";s:10:\"updated_at\";s:19:\"2017-11-17 22:23:07\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:5:\"title\";s:5:\"Shirt\";s:4:\"desc\";s:55:\"High Quality cotton shirt for men.\r\nMade in Bangladesh.\";s:5:\"price\";d:15;s:7:\"imgPath\";s:22:\"Image/BlueShirtMan.jpg\";s:12:\"manufacturer\";s:4:\"Zara\";s:8:\"category\";s:16:\"Clothing & Shoes\";s:10:\"created_at\";s:19:\"2017-11-17 22:22:03\";s:10:\"updated_at\";s:19:\"2017-11-17 22:23:07\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:6.99;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:4:\"desc\";i:2;s:5:\"price\";i:3;s:7:\"imgPath\";i:4;s:12:\"manufacturer\";i:5;s:8:\"category\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:3;s:5:\"title\";s:10:\"Men\'s Shoe\";s:4:\"desc\";s:78:\"2017 FASHION Mens Sneakers Canvas Mesh Fashion Breathable Sports Running Shoes\";s:5:\"price\";d:6.99;s:7:\"imgPath\";s:23:\"Image/AdidasShoeMen.jpg\";s:12:\"manufacturer\";s:6:\"Adidas\";s:8:\"category\";s:16:\"Clothing & Shoes\";s:10:\"created_at\";s:19:\"2017-11-17 23:50:05\";s:10:\"updated_at\";s:19:\"2017-11-17 23:50:44\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:3;s:5:\"title\";s:10:\"Men\'s Shoe\";s:4:\"desc\";s:78:\"2017 FASHION Mens Sneakers Canvas Mesh Fashion Breathable Sports Running Shoes\";s:5:\"price\";d:6.99;s:7:\"imgPath\";s:23:\"Image/AdidasShoeMen.jpg\";s:12:\"manufacturer\";s:6:\"Adidas\";s:8:\"category\";s:16:\"Clothing & Shoes\";s:10:\"created_at\";s:19:\"2017-11-17 23:50:05\";s:10:\"updated_at\";s:19:\"2017-11-17 23:50:44\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";d:42.49;}', 'Nayorpul', 'Sylhet', 'Dhupa digir par, Anabil 103/C', '+8801688732729', '2017-11-24 07:14:36', '2017-11-24 07:14:36'),
(2, 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:1;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:20.5;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:4:\"desc\";i:2;s:5:\"price\";i:3;s:7:\"imgPath\";i:4;s:12:\"manufacturer\";i:5;s:8:\"category\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:5:\"title\";s:12:\"Harry Potter\";s:4:\"desc\";s:487:\"This book is written in script format, which is different from a novel format. \r\nThe Eighth Tale in the Harry Potter Saga\r\nBeing labelled as \'the boy who lived\' for his whole life has not been easy for Harry Potter. In the official eighth instalment of the Harry Potter series penned in the form of a two-part stage production play, J. K. Rowling weaves yet another thrilling and magical yarn featuring the life of Harry Potter nineteen years later in the post-Voldemort wizarding world.\";s:5:\"price\";d:20.5;s:7:\"imgPath\";s:38:\"Image/HarryPotterAndTheCursedChild.jpg\";s:12:\"manufacturer\";s:11:\"J.K Rowling\";s:8:\"category\";s:5:\"Books\";s:10:\"created_at\";s:19:\"2017-11-17 22:10:00\";s:10:\"updated_at\";s:19:\"2017-11-17 22:10:28\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:5:\"title\";s:12:\"Harry Potter\";s:4:\"desc\";s:487:\"This book is written in script format, which is different from a novel format. \r\nThe Eighth Tale in the Harry Potter Saga\r\nBeing labelled as \'the boy who lived\' for his whole life has not been easy for Harry Potter. In the official eighth instalment of the Harry Potter series penned in the form of a two-part stage production play, J. K. Rowling weaves yet another thrilling and magical yarn featuring the life of Harry Potter nineteen years later in the post-Voldemort wizarding world.\";s:5:\"price\";d:20.5;s:7:\"imgPath\";s:38:\"Image/HarryPotterAndTheCursedChild.jpg\";s:12:\"manufacturer\";s:11:\"J.K Rowling\";s:8:\"category\";s:5:\"Books\";s:10:\"created_at\";s:19:\"2017-11-17 22:10:00\";s:10:\"updated_at\";s:19:\"2017-11-17 22:10:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:5;s:5:\"price\";d:75;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:6:{i:0;s:5:\"title\";i:1;s:4:\"desc\";i:2;s:5:\"price\";i:3;s:7:\"imgPath\";i:4;s:12:\"manufacturer\";i:5;s:8:\"category\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:2;s:5:\"title\";s:5:\"Shirt\";s:4:\"desc\";s:55:\"High Quality cotton shirt for men.\r\nMade in Bangladesh.\";s:5:\"price\";d:15;s:7:\"imgPath\";s:22:\"Image/BlueShirtMan.jpg\";s:12:\"manufacturer\";s:4:\"Zara\";s:8:\"category\";s:16:\"Clothing & Shoes\";s:10:\"created_at\";s:19:\"2017-11-17 22:22:03\";s:10:\"updated_at\";s:19:\"2017-11-17 22:23:07\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:2;s:5:\"title\";s:5:\"Shirt\";s:4:\"desc\";s:55:\"High Quality cotton shirt for men.\r\nMade in Bangladesh.\";s:5:\"price\";d:15;s:7:\"imgPath\";s:22:\"Image/BlueShirtMan.jpg\";s:12:\"manufacturer\";s:4:\"Zara\";s:8:\"category\";s:16:\"Clothing & Shoes\";s:10:\"created_at\";s:19:\"2017-11-17 22:22:03\";s:10:\"updated_at\";s:19:\"2017-11-17 22:23:07\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:6;s:10:\"totalPrice\";d:95.5;}', 'Rikabi Bazar', 'Sylhet', '12 Modhushohid', '01717777777', '2017-11-28 06:33:52', '2017-11-28 06:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `imgPath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `desc`, `price`, `imgPath`, `manufacturer`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Harry Potter', 'This book is written in script format, which is different from a novel format. \r\nThe Eighth Tale in the Harry Potter Saga\r\nBeing labelled as \'the boy who lived\' for his whole life has not been easy for Harry Potter. In the official eighth instalment of the Harry Potter series penned in the form of a two-part stage production play, J. K. Rowling weaves yet another thrilling and magical yarn featuring the life of Harry Potter nineteen years later in the post-Voldemort wizarding world.', 20.50, 'Image/HarryPotterAndTheCursedChild.jpg', 'J.K Rowling', 'Books', '2017-11-17 16:10:00', '2017-11-17 16:10:28'),
(2, 'Shirt', 'High Quality cotton shirt for men.\r\nMade in Bangladesh.', 15.00, 'Image/BlueShirtMan.jpg', 'Zara', 'Clothing', '2017-11-17 16:22:03', '2017-11-28 09:25:38'),
(3, 'Men\'s Shoe', '2017 FASHION Mens Sneakers Canvas Mesh Fashion Breathable Sports Running Shoes', 6.99, 'Image/AdidasShoeMen.jpg', 'Adidas', 'Shoes', '2017-11-17 17:50:05', '2017-11-28 09:26:27'),
(4, 'RA-090', 'Acoustic Guitar RA-090 Dreadnought  Sunburst.', 29.99, 'Image/Guitar.jpg', 'Ibanez', 'Instruments', '2017-11-17 18:10:07', '2017-11-17 18:10:23'),
(5, 'Raspberry Pi 3', 'Raspberry Pi 3 Model B Quad Core 1.2GHz 64bit CPU 1GB RAM WiFi & Bluetooth 4.1', 42.65, 'Image/RaspberryPi3.jpg', 'Raspberry Pi Foundation', 'Electronics', '2017-11-17 18:18:02', '2017-11-17 18:18:53'),
(6, 'JET-I MK Cree XP-G2 Torch', 'This is a genuinely pocket-sized torch, fitting in the palm of your hand, and with a belt clip for added portability. There are three brightness levels, up to the extremely bright 480 lumens (the torch uses Cree LEDs, a brand which specialises in particularly bright lights). You change the brightness by twisting the torch on and off again within a second – it’s simple once you’ve done it a few times. It feels sturdily built – it’s impact resistant up to 4.1m – and it’s waterproof up to 2m. Takes AA batteries.', 15.45, 'Image/Torch.jpg', 'JETbeam', 'Electronics', '2017-11-17 18:38:12', '2017-11-17 18:39:00'),
(9, 'Piano', 'Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\n Konix-PB88-88-Key-Roll-Up-Piano-with-Rechargable-Batteries-Micphone-White\r\nKonix PB88 88 Key Roll Up Piano with Rechargable Batteries Micphone White', 70.66, 'Image/Piano.jpg', 'A. Mittag', 'Instruments', '2017-11-28 09:41:01', '2017-11-28 09:41:01'),
(8, 'Cricket Ball', 'Presentation Leather Cricket Balls', 22.50, 'Image/ball.jpg', 'MRF', 'Sporting Goods', '2017-11-28 09:19:31', '2017-11-28 09:19:31'),
(7, 'Cricket Bat', 'New Balance Achieve Junior Cricket Bat', 50.00, 'Image/bat.jpg', 'SS', 'Sporting Goods', '2017-11-28 09:08:02', '2017-11-28 09:08:02'),
(10, 'Jacket', 'New Mens Craghoppers Compresslite Packaway Insulated Jacket Outdoor Coat', 40.00, 'Image/Jacket.jpg', 'Next', 'Clothing', '2017-11-28 09:46:27', '2017-11-28 09:46:27'),
(11, 'Hamlet', 'The Tragedy of Hamlet, Prince of Denmark, often shortened to Hamlet (/ˈhæmlɪt/), is a tragedy written by William Shakespeare at an uncertain date between 1599 and 1602. Set in Denmark, the play dramatises the revenge Prince Hamlet is called to wreak upon his uncle, Claudius, by the ghost of Hamlet\'s father, King Hamlet. Claudius had murdered his own brother and seized the throne, also marrying his deceased brother\'s widow.', 15.00, 'Image/Hamlet.jpg', 'William Shakespear', 'Books', '2017-11-28 09:53:56', '2017-11-28 09:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNo` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `accountNo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahi', 'Hussain', 'mahihussain020@gmail.com', '$2y$10$jOVHothAIHvBE5n02HoKfuTkV7BwwTmXfxVjsxBxVVYqaK6kzL0/e', 123456789, 'vlO61SC8Mpup0dFuBu4w8PDM2xiMlUHaZunwSbxX4TB6FsbM9UZf8RAQsOUG', '2017-11-18 06:37:47', '2017-11-25 11:46:12'),
(2, 'Shihabur', 'Fahim', 'Fahim@gmail.com', '$2y$10$jqDo21Gc8NZEsHgUkXGLaOrD5at7ZXQ6ixv4MZ2yctRlrGm56U9Gi', 98765432, 'nNi5BbKihPbStX8MuTWS7hJndKtG9Tf6W2q3md2Febx0D7bVgIdM3NqKSRYV', '2017-11-28 06:29:50', '2017-11-28 08:16:22');
--
-- Database: `db_hhh`
--
CREATE DATABASE IF NOT EXISTS `db_hhh` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_hhh`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
CREATE TABLE IF NOT EXISTS `tbl_info` (
  `P_ID` int(11) DEFAULT NULL,
  `FirstName` char(20) DEFAULT NULL,
  `LastName` char(20) DEFAULT NULL,
  `City` char(20) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`P_ID`, `FirstName`, `LastName`, `City`, `Gender`) VALUES
(1, 'Mahi', 'Hussain', 'Sylhet', NULL),
(2, 'Maksud', 'Hussain', 'Sylhet', NULL),
(3, 'Tareq', 'Sirajee', 'Sylhet', NULL),
(4, 'Imran', 'Motin', 'Sylhet', NULL),
(5, 'Ashraf', 'Niloy', 'Sylhet', NULL),
(6, 'Ema', 'Akter', 'Sylhet', NULL),
(7, 'Majuma', 'Akter', 'Sylhet', NULL),
(8, 'Saklin', 'Haque', 'Sylhet', NULL),
(9, 'Sadik', 'Rahman', 'Sylhet', NULL),
(10, 'Sakib', 'Rahman', 'Sylhet', NULL);
--
-- Database: `lsapp`
--
CREATE DATABASE IF NOT EXISTS `lsapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lsapp`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_29_155826_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Post One', 'This is post body', '2017-09-29 10:29:39', '2017-09-29 10:29:39'),
(2, 'Post Two', 'This is post 2', '2017-09-29 10:33:25', '2017-09-29 10:33:25'),
(3, 'Post Three', 'This is Post Three', '2017-09-30 07:57:37', '2017-09-30 07:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahihussain', 'mahihussain020@gmail.com', '$2y$10$ux5ORgBbst/ENpzN8YZpFO2pguTTR89i6fyLJYdJxmHlQMOXL6bw6', 'QgOzmibEsKylGlroYUIaqrZ4Hj1iWZF8eg2tiQLnf4uRSgbB5q2unKwoLAwq', '2017-11-11 09:08:11', '2017-11-11 09:08:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
