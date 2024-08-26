-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-26 10:51:27
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `teamwork`
--

-- --------------------------------------------------------

--
-- 資料表結構 `rent_product`
--

CREATE TABLE `rent_product` (
  `id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `price` int(8) NOT NULL,
  `deposit` int(3) NOT NULL COMMENT '訂金',
  `status` enum('true','false') NOT NULL COMMENT '租借狀態',
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `rent_product`
--

INSERT INTO `rent_product` (`id`, `product_id`, `price`, `deposit`, `status`, `valid`, `created_at`, `updated_time`) VALUES
(1, 1, 10, 2000, 'true', 1, '2024-08-22 06:20:05', '2024-08-26 09:42:11'),
(2, 1, 10, 2000, 'false', 1, '2024-08-22 06:20:05', '2024-08-25 14:44:21'),
(3, 5, 20, 590, 'true', 1, '2024-08-23 03:53:30', '2024-08-23 11:53:30'),
(4, 5, 20, 590, 'true', 1, '2024-08-23 03:53:30', '2024-08-23 11:53:30'),
(5, 5, 20, 590, 'true', 1, '2024-08-23 03:53:30', '2024-08-23 11:53:30'),
(6, 5, 20, 590, 'false', 1, '2024-08-23 03:53:30', '2024-08-26 10:06:14'),
(7, 5, 20, 590, 'false', 1, '2024-08-23 03:53:30', '2024-08-26 10:06:37'),
(8, 5, 20, 590, 'true', 1, '2024-08-23 03:53:30', '2024-08-23 11:53:30'),
(9, 394, 50, 1500, 'true', 1, '2024-08-23 03:55:53', '2024-08-23 11:55:53'),
(10, 394, 50, 1500, 'true', 1, '2024-08-23 03:55:53', '2024-08-23 11:55:53'),
(11, 394, 50, 1500, 'false', 1, '2024-08-23 03:55:53', '2024-08-26 10:06:42'),
(12, 18, 30, 500, 'true', 1, '2024-08-23 04:03:22', '2024-08-23 12:03:22'),
(13, 18, 30, 500, 'true', 1, '2024-08-23 04:03:22', '2024-08-23 12:03:22'),
(14, 465, 10, 100, 'true', 1, '2024-08-23 12:04:26', '2024-08-23 12:04:26'),
(15, 465, 10, 100, 'false', 1, '2024-08-23 12:04:26', '2024-08-26 10:06:45'),
(16, 465, 10, 100, 'true', 1, '2024-08-23 12:04:26', '2024-08-23 12:04:26'),
(17, 419, 70, 2000, 'true', 1, '2024-08-23 13:29:36', '2024-08-23 13:29:36'),
(18, 419, 70, 2000, 'true', 1, '2024-08-23 13:29:36', '2024-08-23 13:29:36'),
(19, 419, 70, 2000, 'true', 1, '2024-08-23 13:29:36', '2024-08-23 13:29:36'),
(20, 419, 70, 2000, 'true', 1, '2024-08-23 13:29:36', '2024-08-23 13:29:36'),
(21, 419, 70, 2000, 'false', 1, '2024-08-23 13:29:36', '2024-08-26 10:06:48'),
(22, 396, 60, 1500, 'true', 1, '2024-08-23 15:32:02', '2024-08-23 21:32:02'),
(23, 396, 60, 1500, 'false', 1, '2024-08-23 15:32:02', '2024-08-26 10:06:51'),
(24, 396, 60, 1500, 'true', 1, '2024-08-23 15:32:02', '2024-08-23 21:32:02'),
(25, 226, 40, 500, 'true', 1, '2024-08-23 18:08:01', '2024-08-24 00:08:01'),
(26, 226, 40, 500, 'true', 1, '2024-08-23 18:08:01', '2024-08-24 00:08:01'),
(27, 226, 40, 500, 'true', 1, '2024-08-23 18:08:01', '2024-08-24 00:08:01'),
(28, 3, 40, 500, 'true', 1, '2024-08-24 17:59:14', '2024-08-25 14:38:06'),
(29, 3, 40, 500, 'false', 1, '2024-08-24 17:59:14', '2024-08-26 10:04:36'),
(30, 3, 40, 500, 'false', 1, '2024-08-24 17:59:14', '2024-08-26 10:04:45'),
(31, 4, 55, 600, 'true', 1, '2024-08-24 18:01:24', '2024-08-25 14:50:57'),
(32, 4, 55, 600, 'false', 1, '2024-08-24 18:01:24', '2024-08-26 10:06:04'),
(33, 4, 55, 600, 'true', 1, '2024-08-24 18:01:24', '2024-08-25 14:51:05'),
(34, 7, 50, 900, 'true', 1, '2024-08-25 08:44:57', '2024-08-25 14:44:57'),
(35, 7, 50, 900, 'true', 1, '2024-08-25 08:44:57', '2024-08-25 14:44:57'),
(36, 7, 50, 900, 'true', 1, '2024-08-25 08:44:57', '2024-08-25 14:44:57'),
(37, 7, 50, 900, 'true', 1, '2024-08-25 08:44:57', '2024-08-25 14:44:57'),
(38, 7, 50, 900, 'true', 1, '2024-08-25 08:44:57', '2024-08-25 14:44:57'),
(39, 2, 20, 300, 'true', 1, '2024-08-25 08:45:58', '2024-08-25 14:45:58'),
(40, 2, 20, 300, 'false', 1, '2024-08-25 08:45:58', '2024-08-26 10:04:29'),
(41, 2, 20, 300, 'true', 1, '2024-08-25 08:45:58', '2024-08-25 14:45:58'),
(42, 548, 25, 400, 'true', 1, '2024-08-26 10:00:35', '2024-08-26 10:00:35'),
(43, 548, 25, 400, 'true', 1, '2024-08-26 10:00:35', '2024-08-26 10:00:35'),
(44, 548, 25, 400, 'true', 1, '2024-08-26 10:00:35', '2024-08-26 10:00:35'),
(45, 464, 10, 150, 'true', 1, '2024-08-26 10:01:59', '2024-08-26 10:01:59'),
(46, 464, 10, 150, 'true', 1, '2024-08-26 10:01:59', '2024-08-26 10:01:59'),
(47, 547, 20, 600, 'true', 1, '2024-08-26 10:04:14', '2024-08-26 10:04:14'),
(48, 547, 20, 600, 'true', 1, '2024-08-26 10:04:14', '2024-08-26 10:04:14'),
(49, 547, 20, 600, 'true', 1, '2024-08-26 10:04:14', '2024-08-26 10:04:14'),
(50, 547, 20, 600, 'true', 1, '2024-08-26 10:04:14', '2024-08-26 10:04:14'),
(51, 15, 60, 1000, 'true', 1, '2024-08-26 10:16:31', '2024-08-26 10:16:31'),
(52, 15, 60, 1000, 'true', 1, '2024-08-26 10:16:31', '2024-08-26 10:16:31'),
(53, 477, 20, 300, 'true', 1, '2024-08-26 10:18:17', '2024-08-26 10:18:17'),
(54, 477, 20, 300, 'true', 1, '2024-08-26 10:18:17', '2024-08-26 10:18:17'),
(55, 477, 20, 300, 'true', 1, '2024-08-26 10:18:17', '2024-08-26 10:18:17'),
(56, 477, 20, 300, 'true', 1, '2024-08-26 10:18:17', '2024-08-26 10:18:17'),
(57, 477, 20, 300, 'true', 1, '2024-08-26 10:18:17', '2024-08-26 10:18:17'),
(58, 477, 20, 300, 'true', 1, '2024-08-26 10:18:17', '2024-08-26 10:18:17'),
(59, 363, 60, 1100, 'true', 1, '2024-08-26 10:19:01', '2024-08-26 10:19:01'),
(60, 363, 60, 1100, 'true', 1, '2024-08-26 10:19:01', '2024-08-26 10:19:01'),
(61, 478, 20, 310, 'true', 1, '2024-08-26 10:20:10', '2024-08-26 10:20:10'),
(62, 478, 20, 310, 'true', 1, '2024-08-26 10:20:10', '2024-08-26 10:20:10'),
(63, 478, 20, 310, 'true', 1, '2024-08-26 10:20:10', '2024-08-26 10:20:10'),
(64, 199, 20, 900, 'true', 1, '2024-08-26 10:28:29', '2024-08-26 10:28:29'),
(65, 199, 20, 900, 'true', 1, '2024-08-26 10:28:29', '2024-08-26 10:28:29'),
(66, 199, 20, 900, 'true', 1, '2024-08-26 10:28:29', '2024-08-26 10:28:29'),
(67, 199, 20, 900, 'true', 1, '2024-08-26 10:28:29', '2024-08-26 10:28:29'),
(68, 514, 60, 2300, 'true', 1, '2024-08-26 10:36:01', '2024-08-26 10:36:01'),
(69, 514, 60, 2300, 'true', 1, '2024-08-26 10:36:01', '2024-08-26 10:36:01'),
(70, 514, 60, 2300, 'true', 1, '2024-08-26 10:36:01', '2024-08-26 10:36:01'),
(71, 514, 60, 2300, 'true', 1, '2024-08-26 10:36:01', '2024-08-26 10:36:01'),
(72, 360, 20, 200, 'true', 1, '2024-08-26 10:47:25', '2024-08-26 10:47:25'),
(73, 360, 20, 200, 'true', 1, '2024-08-26 10:47:25', '2024-08-26 10:47:25'),
(74, 360, 20, 200, 'true', 1, '2024-08-26 10:47:25', '2024-08-26 10:47:25'),
(75, 145, 20, 300, 'true', 1, '2024-08-26 10:47:51', '2024-08-26 10:47:51'),
(76, 145, 20, 300, 'true', 1, '2024-08-26 10:47:51', '2024-08-26 10:47:51'),
(77, 145, 20, 300, 'true', 1, '2024-08-26 10:47:51', '2024-08-26 10:47:51'),
(78, 145, 20, 300, 'true', 1, '2024-08-26 10:47:51', '2024-08-26 10:47:51'),
(79, 268, 20, 500, 'true', 1, '2024-08-26 10:48:11', '2024-08-26 10:48:11'),
(80, 268, 20, 500, 'true', 1, '2024-08-26 10:48:11', '2024-08-26 10:48:11'),
(81, 543, 20, 250, 'true', 1, '2024-08-26 10:48:34', '2024-08-26 10:48:34'),
(82, 543, 20, 250, 'true', 1, '2024-08-26 10:48:34', '2024-08-26 10:48:34'),
(83, 543, 20, 250, 'true', 1, '2024-08-26 10:48:34', '2024-08-26 10:48:34'),
(84, 540, 50, 1100, 'true', 1, '2024-08-26 10:49:01', '2024-08-26 10:49:01'),
(85, 540, 50, 1100, 'true', 1, '2024-08-26 10:49:01', '2024-08-26 10:49:01'),
(86, 540, 50, 1100, 'true', 1, '2024-08-26 10:49:01', '2024-08-26 10:49:01'),
(87, 387, 70, 1500, 'true', 1, '2024-08-26 10:49:38', '2024-08-26 10:49:38'),
(88, 387, 70, 1500, 'true', 1, '2024-08-26 10:49:38', '2024-08-26 10:49:38'),
(89, 387, 70, 1500, 'true', 1, '2024-08-26 10:49:38', '2024-08-26 10:49:38'),
(90, 466, 60, 1000, 'true', 1, '2024-08-26 10:49:58', '2024-08-26 10:49:58'),
(91, 466, 60, 1000, 'true', 1, '2024-08-26 10:49:58', '2024-08-26 10:49:58'),
(92, 174, 50, 550, 'true', 1, '2024-08-26 10:50:24', '2024-08-26 10:50:24'),
(93, 174, 50, 550, 'true', 1, '2024-08-26 10:50:24', '2024-08-26 10:50:24'),
(94, 174, 50, 550, 'true', 1, '2024-08-26 10:50:24', '2024-08-26 10:50:24'),
(95, 356, 70, 1300, 'true', 1, '2024-08-26 10:50:42', '2024-08-26 10:50:42'),
(96, 356, 70, 1300, 'true', 1, '2024-08-26 10:50:42', '2024-08-26 10:50:42'),
(97, 531, 60, 1000, 'true', 1, '2024-08-26 10:50:58', '2024-08-26 10:50:58'),
(98, 531, 60, 1000, 'true', 1, '2024-08-26 10:50:58', '2024-08-26 10:50:58'),
(99, 531, 60, 1000, 'true', 1, '2024-08-26 10:50:58', '2024-08-26 10:50:58');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `rent_product`
--
ALTER TABLE `rent_product`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rent_product`
--
ALTER TABLE `rent_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
