-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 02:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ultracom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Popo Zakaria', 'pozaka16@gmail.com', NULL, '$2y$10$5Tod404E81BMrcUi4A16.eXjV5Z3xNr1SHxTNZ0QQNpKSdG4.s1Wi', 'kg8k2tx3nzWjhhmCJhk1PSWDXtqChOHPVwHTCWB6NuepYDPLVhi3ecI58kqb', '2023-05-05 23:31:37', '2023-05-05 23:31:37'),
(4, 'admin', 'admin123@gmail.com', NULL, '$2y$10$21TLG.QZlrYY2SmXNU7W4ONUsLYNelsgqwD.rV3L1p9WlwOmXXyuC', NULL, '2023-05-25 06:36:11', '2023-05-25 06:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `data_service`
--

CREATE TABLE `data_service` (
  `id_service` varchar(10) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `jml_service` int(10) NOT NULL,
  `catatan_service` varchar(250) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_service`
--

INSERT INTO `data_service` (`id_service`, `id`, `nama_kategori`, `jml_service`, `catatan_service`, `metode_pembayaran`, `status`, `deleted_at`, `updated_at`) VALUES
('ID76515', 3, 'Laptop', 2, 'Kasar bgt', 'cash', 'PENDING', NULL, '2023-05-27 00:46:14'),
('ID8318', 2, 'Printer', 3, 'vjcuvuv', 'cash', '', '2023-05-27 06:36:24', '2023-05-27 06:36:24'),
('ID86573', 9, 'Laptop', 3, 'Butuh dibersihkan', 'Cash', '', '2023-05-19 07:07:03', '2023-05-19 07:07:03');

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
(5, '2023_05_06_023935_create_products_table', 1),
(6, '2023_05_06_025753_create_product_galleries_table', 2),
(7, '2023_05_06_030719_create_transactions_table', 3),
(8, '2023_05_06_031215_create_transaction_details_table', 4),
(9, '2023_05_19_135802_add_deleted_at_to_data_service', 5),
(10, '2023_05_19_140620_add_updated_at_to_data_service', 6);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Mesin Hitung Uang Panasonic', 'mesin-hitung-uang-panasonic', 'Mesin Hitung Uang', '<p>Mesin Hitung uang dari panasonic</p>', 15000000, 2, '2023-05-16 06:38:38', '2023-05-06 08:19:16', '2023-05-16 06:38:38'),
(4, 'Passbook Panasonic', 'passbook-panasonic', 'Pasbook', '<p>Passbok untuk cetak buku</p>', 50000000, 10, '2023-05-22 07:15:19', '2023-05-06 22:15:07', '2023-05-22 07:15:19'),
(5, 'tes', 'tes', 'tes', '<p>tes</p>', 12000, 1, '2023-05-16 04:25:45', '2023-05-16 04:14:40', '2023-05-16 04:25:45'),
(6, 'tes', 'tes', 'orang', '<p>sda</p>', 1000, 1, '2023-05-16 06:19:09', '2023-05-16 06:15:19', '2023-05-16 06:19:09'),
(7, 'tes', 'tes', 'orang', '<p>12</p>', 2000, 1, '2023-05-16 06:44:25', '2023-05-16 06:22:12', '2023-05-16 06:44:25'),
(8, 'tes', 'tes', 'orang', '<p>adad</p>', 1000, 1, '2023-05-16 06:47:28', '2023-05-16 06:47:25', '2023-05-16 06:47:28'),
(9, 'tes', 'tes', 'orang', '<p>31</p>', 1000, 1, '2023-05-16 06:48:18', '2023-05-16 06:48:15', '2023-05-16 06:48:18'),
(10, 'tes', 'tes', 'orang', '<p>dasda</p>', 10000, 1, '2023-05-16 06:51:53', '2023-05-16 06:51:40', '2023-05-16 06:51:53'),
(11, 'sdsa', 'sdsa', 'anjai', '<p>dasdasd</p>', 100000, 1, '2023-05-16 06:55:25', '2023-05-16 06:51:51', '2023-05-16 06:55:25'),
(12, 'Passbook Olivetti Pr2 Plus', 'passbook-olivetti-pr2-plus', 'Passbook', '<p>Detail:</p><ul><li>Kondisi: New</li><li>Berat Satuan: 14 kg</li><li>Kategori: Printer Dot Matrix</li></ul><p>Spesifikasi:</p><ul><li>Technology 24-pin dot matrix</li><li>Resolution 240 x 360 dpi</li><li>Copies Original + 6 copies</li><li>Interfaces Standard: RS232 serial, IEEE</li><li>1284 parallel and USB 2.0 Optional: expansion slot</li></ul>', 4200000, 3, '2023-05-25 07:52:14', '2023-05-22 07:41:15', '2023-05-25 07:52:14'),
(13, 'asd', 'asd', 'asd', '<p>asd</p>', 200000, 2, '2023-05-25 07:54:18', '2023-05-25 07:54:13', '2023-05-25 07:54:18'),
(14, 'Passbook Benq', 'passbook-benq', 'Pasbook', '<p>Passbook</p>', 1200000, 3, '2023-05-27 00:12:42', '2023-05-25 07:57:42', '2023-05-27 00:12:42'),
(15, 'passbook', 'passbook', 'passbook', '<p>passbook</p>', 240000, 21, '2023-05-28 05:00:41', '2023-05-27 00:17:43', '2023-05-28 05:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `products_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 4, 'assets/product/mNCbnOjs1hYyqm9LhrgGP3JZ3PBnlIIiGzcxSmCP.jpg', 1, '2023-05-06 22:41:09', '2023-05-06 22:38:15', '2023-05-06 22:41:09'),
(8, 4, 'assets/product/0KTU9fTNYwaGG7tB7GgqeLQkNw3SiYjexUpUZcNW.jpg', 1, '2023-05-07 00:03:46', '2023-05-07 00:01:32', '2023-05-07 00:03:46'),
(9, 4, 'assets/product/d05x1rvtmvXc8zoMJziGca8VukLUwMZfu5SUVwLv.jpg', 1, '2023-05-22 07:15:19', '2023-05-08 11:18:22', '2023-05-22 07:15:19'),
(10, 4, 'assets/product/wgtkZ1uVRf6eRbIJkxXsp08GJrWlVlL5WvoN3eXK.png', 1, '2023-05-22 07:15:19', '2023-05-08 11:19:32', '2023-05-22 07:15:19'),
(11, 12, 'assets/product/f8ig8gU0Nj4SunvLbW4afeWbcByhmR8WtQ3amaDq.jpg', 1, '2023-05-25 07:52:14', '2023-05-22 07:41:36', '2023-05-25 07:52:14'),
(12, 12, 'assets/product/knkwsL1T5J53yeKodCYmYU0Rok8TPZaHoJUVat06.jpg', 1, '2023-05-25 07:52:14', '2023-05-22 07:41:56', '2023-05-25 07:52:14'),
(13, 12, 'assets/product/TRcc63bPZ3G0GaKdS35571jkZJF6ET5k43vcr3ss.jpg', 1, '2023-05-25 07:52:14', '2023-05-22 07:42:41', '2023-05-25 07:52:14'),
(14, 12, 'assets/product/ymMCbN8dGzYUZ7p7OUEe3jO8hKDnATWNVlg1F1AZ.jpg', 1, '2023-05-25 07:52:14', '2023-05-22 08:14:37', '2023-05-25 07:52:14'),
(15, 12, 'assets/product/cumv9msAfWxp3mwfTYGzfe6vJWWmlV1gjqrnU1HI.jpg', 0, '2023-05-25 07:52:14', '2023-05-22 08:17:42', '2023-05-25 07:52:14'),
(16, 14, 'assets/product/b4ct11VtG1uY0BhVYMZeChDNkAaUQSZtxBt1tfvD.jpg', 1, '2023-05-27 00:12:42', '2023-05-25 08:00:40', '2023-05-27 00:12:42'),
(17, 15, 'assets/product/Iqn390kXZUikPMLqRU2PXEMGjXinO4Qp9EhsDu0D.png', 1, '2023-05-27 19:45:15', '2023-05-27 06:23:09', '2023-05-27 19:45:15'),
(18, 15, 'assets/product/5uMlI9DhrFRGhwARYvrU1ipSwsI4hii4inmdKEWs.png', 1, '2023-05-27 19:47:08', '2023-05-27 19:45:31', '2023-05-27 19:47:08'),
(19, 15, 'assets/product/1c0sIjjL7ZKuk9xEInhGf7no0IBVokXREh0E6DC3.png', 1, '2023-05-27 19:54:25', '2023-05-27 19:53:49', '2023-05-27 19:54:25'),
(20, 15, 'assets/product/bE2WzNFMXXB0woMReH8McPsaLLy95BTdOODvOtYP.png', 1, '2023-05-27 19:54:57', '2023-05-27 19:54:45', '2023-05-27 19:54:57'),
(21, 15, 'assets/product/bJL0s2jKiFZvYSK6VmkaeFH3Ri0KXT1XpOJpKCgj.jpg', 0, '2023-05-27 20:01:46', '2023-05-27 20:00:14', '2023-05-27 20:01:46'),
(22, 15, 'assets/product/ArK7UeK8w4Sl98CvtoNhh5DgcyIg6M9FuoUJsh4N.png', 1, '2023-05-27 20:01:42', '2023-05-27 20:01:33', '2023-05-27 20:01:42'),
(23, 15, 'assets/product/yNJSSmutH13zIHaqKfO8AZWWPAUMezJVWaC6Mqpz.png', 1, '2023-05-28 05:00:41', '2023-05-27 20:50:49', '2023-05-28 05:00:41'),
(24, 15, 'assets/product/wZtROikPrVSCLGegmFGxhHoEiT76ZYoscZ2Hvx8G.png', 1, '2023-05-28 05:00:41', '2023-05-28 03:33:40', '2023-05-28 05:00:41'),
(25, 15, 'assets/product/EK4hFvWiSIY4rzjFjDrMPzMtEU0thyyBsz3MN0Vh.jpg', 1, '2023-05-28 04:59:10', '2023-05-28 04:57:44', '2023-05-28 04:59:10'),
(26, 15, 'http://localhost/storage/assets/product/E8r431QlyjMyS1e9YqWWHZg0hTgA3mpJU4jbHTTL.jpg', 1, '2023-05-28 04:59:03', '2023-05-28 04:58:20', '2023-05-28 04:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` char(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TRK001', 'Yudi', 'Yud@gmail.com', '0812176341', 'magelang', 200000, 'SUCCESS', '2023-05-22 07:15:08', '2023-05-08 17:19:36', '2023-05-22 07:15:08'),
(2, 'TRX94934280', 'Rayhan', 'rayhan77@gmail.com', '0821462545612', 'Pakuwon', 4200000, 'SUCCESS', '2023-05-27 20:52:59', '2023-05-23 01:52:28', '2023-05-27 20:52:59'),
(3, 'TRX36442946', 'alal', 'alallll1234@gmail.com', '085894894383', 'jl. Abcdefghijkl', 4200000, 'SUCCESS', '2023-05-28 05:00:55', '2023-05-24 00:54:42', '2023-05-28 05:00:55'),
(4, 'TRX95015533', 'Alif', 'Alif12@gmail.com', '0821456125123', 'Bondowoso', 4200000, 'PENDING', '2023-05-28 05:01:01', '2023-05-24 01:28:50', '2023-05-28 05:01:01'),
(5, 'TRX14773547', 'farhan', 'farhan12@gmail.com', '08162546412', 'Mangli', 240000, 'PENDING', '2023-05-28 05:01:06', '2023-05-27 20:52:32', '2023-05-28 05:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, '2023-05-08 17:22:56', '2023-05-08 17:22:56'),
(2, 2, 12, NULL, '2023-05-23 01:52:28', '2023-05-23 01:52:28'),
(3, 3, 12, NULL, '2023-05-24 00:54:42', '2023-05-24 00:54:42'),
(4, 4, 12, NULL, '2023-05-24 01:28:50', '2023-05-24 01:28:50'),
(5, 5, 15, NULL, '2023-05-27 20:52:32', '2023-05-27 20:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_mobile`
--

CREATE TABLE `user_mobile` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_mobile`
--

INSERT INTO `user_mobile` (`id`, `username`, `email`, `phone`, `address`, `password`) VALUES
(2, 'lumiebeethoven', 'lumie@gmail.com', '083772843283', 'Banyuwangi, Jawa Timur', '1234'),
(3, 'kristopher', 'kristopherbeethoven24@gmail.com', '086537463222', 'Banyuwangi,Jawa Timur', '1234'),
(4, 'ivan', 'ivan@gmail.com', '0729173826', 'Ambulu', '12345'),
(5, 'Kristo', 'kristo@gmail.com', '82131802740', 'Banyuwangi', '1234'),
(6, 'Mama', 'mama@gmail.com', '82131802740', 'Banyuwangi', '123'),
(7, 'Jeje', 'jeje@gmail.com', '82131802740', 'Banyuwangi', '123'),
(8, 'Propeler', 'pro@gmail.com', '82131802740', 'banyuwangi', '123'),
(9, 'Rhomaedi', 'edi@gmail.com', '82131802740', 'Bondowoso', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `data_service`
--
ALTER TABLE `data_service`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `nama_kategori` (`nama_kategori`),
  ADD KEY `id` (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_mobile`
--
ALTER TABLE `user_mobile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_mobile`
--
ALTER TABLE `user_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_service`
--
ALTER TABLE `data_service`
  ADD CONSTRAINT `data_service_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_mobile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
