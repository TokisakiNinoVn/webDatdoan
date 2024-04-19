-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 11:42 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlmonan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ban_an`
--

CREATE TABLE `ban_an` (
  `id` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ban_an`
--

INSERT INTO `ban_an` (`id`, `name`) VALUES
(1, 'Bàn 1'),
(2, 'Bàn 2'),
(3, 'Bàn 3'),
(4, 'Bàn 4'),
(5, 'Bàn 5'),
(6, 'Bàn 6'),
(7, 'Bàn 7'),
(8, 'Bàn 8'),
(9, 'Bàn 9'),
(10, 'Bàn 10'),
(11, 'bàn 11'),
(12, 'Bàn 12');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int NOT NULL,
  `date_order` varchar(50) NOT NULL,
  `total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `date_order`, `total`) VALUES
(103, 'Wed-18-04-2018', 2610000),
(104, 'Wed-28-02-2024', 350000),
(105, 'Mon-04-03-2024', 700000),
(106, 'Tue-05-03-2024', 280000),
(107, 'Tue-05-03-2024', 350000),
(108, 'Tue-05-03-2024', 1750000),
(109, 'Tue-05-03-2024', 210000),
(110, 'Tue-05-03-2024', 2100000),
(111, 'Tue-05-03-2024', 500000),
(112, 'Tue-05-03-2024', 350000),
(113, 'Tue-05-03-2024', 2870000),
(114, 'Tue-05-03-2024', 350000),
(115, 'Tue-05-03-2024', 210000);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`) VALUES
(1, 'Lẩu sinh viên'),
(2, 'Đồ ăn thêm'),
(3, 'Đồ uống'),
(4, 'Đồ tráng miệng'),
(5, 'Đồ ăn nhanh');

-- --------------------------------------------------------

--
-- Table structure for table `detail_bills`
--

CREATE TABLE `detail_bills` (
  `id` int NOT NULL,
  `id_bill` int NOT NULL,
  `id_product` int NOT NULL,
  `soluong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_bills`
--

INSERT INTO `detail_bills` (`id`, `id_bill`, `id_product`, `soluong`) VALUES
(97, 103, 1, 1),
(98, 103, 3, 1),
(99, 103, 7, 1),
(100, 103, 17, 1),
(101, 103, 21, 1),
(102, 103, 22, 1),
(103, 103, 23, 1),
(104, 103, 27, 1),
(105, 103, 11, 1),
(106, 103, 25, 1),
(107, 103, 47, 1),
(108, 103, 49, 1),
(109, 103, 15, 1),
(110, 104, 1, 1),
(111, 105, 1, 2),
(112, 106, 7, 4),
(113, 107, 3, 1),
(114, 108, 1, 2),
(115, 108, 3, 3),
(116, 109, 7, 3),
(117, 110, 3, 6),
(118, 111, 21, 1),
(119, 112, 1, 1),
(120, 113, 1, 7),
(121, 114, 3, 1),
(122, 115, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_mon_an`
--

CREATE TABLE `order_mon_an` (
  `id` int NOT NULL,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL,
  `ban` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_mon_an`
--

INSERT INTO `order_mon_an` (`id`, `id_product`, `quantity`, `ban`) VALUES
(98, 3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int NOT NULL,
  `unit_price` int NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_category`, `unit_price`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Lẩu thập cẩm ', 1, 350000, 'lauthapcam.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(3, 'Lẩu hải sản ', 1, 350000, 'lauhaisanM.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(5, 'Lẩu ếch', 1, 350000, 'lauech.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(6, 'Lẩu cần', 1, 250000, 'laucodon.jpg', '2024-03-05 16:50:40', '2024-03-05 16:50:40'),
(7, 'Lẩu thái ', 1, 70000, 'lauthaiM.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(9, 'Thịt gà', 2, 200000, 'thitga.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(10, 'Thịt bò mĩ', 2, 350000, 'thitbomi.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(11, 'Rượu vokamen', 3, 30000, 'ruouvoka.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(12, 'Rượu chuối hột', 3, 30000, 'ruouchuoihot.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(13, 'Dưa hấu', 4, 50000, 'duahau.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(14, 'Quýt', 4, 350000, 'quyt.jpg', '2018-02-07 09:25:25', '2018-02-07 09:25:54'),
(15, 'Khoai tây chiên', 5, 20000, 'khoaitaychien.jpg', '2018-02-07 09:26:17', '2018-02-07 09:26:17'),
(17, 'Lẩu hải sản 2', 1, 250000, 'P04_MS1_lauhaisan2.jpg', '2018-04-16 13:10:51', '2018-04-16 13:10:51'),
(18, 'Lẩu cá', 1, 350000, 'UpD_lauca.jpg', '2018-04-18 14:55:11', '2018-04-18 14:55:11'),
(19, 'Lẩu thập cẩm 2', 1, 400000, '283_lauthapcam2.jpg', '2018-04-18 14:55:33', '2018-04-18 14:55:33'),
(20, 'Lẩu chim câu', 1, 400000, 'uXu_lauchimcau.jpg', '2018-04-18 14:56:17', '2018-04-18 14:56:17'),
(21, 'Lẩu gà + cá', 1, 500000, 'Seu_lauga+ca.jpg', '2018-04-18 14:57:16', '2018-04-18 14:57:16'),
(22, 'Lẩu cua', 1, 500000, 'zc4_laucua.jpg', '2018-04-18 15:00:04', '2018-04-18 15:00:04'),
(23, 'Lẩu ốc', 1, 400000, 'mzp_lauoc.jpg', '2018-04-18 15:00:21', '2018-04-18 15:00:21'),
(24, 'rượu dừa', 3, 50000, 'eBB_rượu dừa.jpg', '2018-04-18 15:07:30', '2018-04-18 15:07:30'),
(25, 'rượu nếp cái', 3, 50000, '5YT_ruou-nếp.jpg', '2018-04-18 15:08:01', '2018-04-18 15:08:01'),
(26, 'rượu đinh lăng', 3, 50000, 'E3b_ruou-dinh-lang-500ml.png', '2018-04-18 15:08:23', '2018-04-18 15:08:23'),
(27, 'rượu táo mèo', 3, 50000, 'VHP_rượu táo mèo.png', '2018-04-18 15:08:49', '2018-04-18 15:08:49'),
(28, 'rượu ong khoái', 3, 50000, 'X6R_OngKhoaiBe.jpg', '2018-04-18 15:09:16', '2018-04-18 15:09:16'),
(29, 'Cocacola', 3, 10000, 'EiJ_coca.jpg', '2018-04-18 15:09:39', '2018-04-18 15:09:39'),
(30, 'pepsi', 3, 10000, 'x9m_pepsi.jpg', '2018-04-18 15:09:58', '2018-04-18 15:09:58'),
(31, '7up', 3, 10000, 'VNR_7up.jpg', '2018-04-18 15:10:11', '2018-04-18 15:10:11'),
(32, 'numberone', 3, 10000, 'chp_bo-huc-1.jpg', '2018-04-18 15:10:27', '2018-04-18 15:10:27'),
(33, 'lavie', 3, 5000, '77n_lavie.png', '2018-04-18 15:11:10', '2018-04-18 15:11:10'),
(34, 'Cá phi lê', 2, 50000, 'AKu_cá.jpg', '2018-04-18 15:14:04', '2018-04-18 15:14:04'),
(35, 'Cua đá', 2, 150000, 'dfg_cua.jpg', '2018-04-18 15:14:31', '2018-04-18 15:14:31'),
(36, 'ốc xào', 2, 50000, '2D7_ốc xào.jpg', '2018-04-18 15:16:03', '2018-04-18 15:16:03'),
(37, 'Váng đậu', 2, 10000, '9nB_vang-dau-02.jpg', '2018-04-18 15:20:26', '2018-04-18 15:20:26'),
(38, 'Nấm kim', 2, 15000, '1h8_nấm kím.jpg', '2018-04-18 15:17:45', '2018-04-18 15:17:45'),
(39, 'Bò quấn nấm', 2, 50000, 'h7I_bò nấm.jpg', '2018-04-18 15:18:27', '2018-04-18 15:18:27'),
(40, 'đậu phụ', 2, 10000, 'D8S_dau-phu.jpg', '2018-04-18 15:19:08', '2018-04-18 15:19:08'),
(41, 'Mỳ tôm', 2, 5000, '1CP_my tôm.jpg', '2018-04-18 15:20:07', '2018-04-18 15:20:07'),
(42, 'Xoài lắc', 4, 20000, 'TJc_xoai lắc.jpg', '2018-04-18 15:21:27', '2018-04-18 15:21:27'),
(43, 'Dưa chuột', 4, 15000, 'aQU_dưa chuột.jpg', '2018-04-18 15:22:40', '2018-04-18 15:22:40'),
(44, 'Củ đậu', 4, 15000, 'Qxw_cu-dau-700x500.jpg', '2018-04-18 15:23:18', '2018-04-18 15:23:18'),
(45, 'Cóc dầm', 4, 15000, 'LoI_coc-dam-2.jpg', '2018-04-18 15:24:17', '2018-04-18 15:24:17'),
(46, 'Humberger', 5, 25000, 'obZ_humberger.jpg', '2018-04-18 15:24:58', '2018-04-18 15:24:58'),
(47, 'Ngô chiên', 5, 25000, 'Drg_Ngô chiên.jpg', '2018-04-18 15:25:41', '2018-04-18 15:25:41'),
(48, 'Khoai lang kén', 5, 15000, 'cFa_khoai-lang-ken-1450342877-1569975-1482478714.jpg', '2018-04-18 15:26:29', '2018-04-18 15:26:29'),
(49, 'Khoai lang chiên', 5, 15000, 'bJO_Khoai lang chiên.jpg', '2018-04-18 15:27:44', '2018-04-18 15:27:44'),
(50, 'Mì hành', 1, 70000, '37g_miHanh.jpg', '2024-03-05 17:02:29', '2024-03-05 17:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `passw` varchar(100) NOT NULL,
  `toprole` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `passw`, `toprole`) VALUES
(1, 'Tokisaki Nino', 'admin@gmail.com', '0000', 1),
(2, 'Order', 'order@gmail.com', '0000', 2),
(3, 'Nhabep', 'nhabep@gmail.com', '0000', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ban_an`
--
ALTER TABLE `ban_an`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_bills`
--
ALTER TABLE `detail_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_mon_an`
--
ALTER TABLE `order_mon_an`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ban_an`
--
ALTER TABLE `ban_an`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_bills`
--
ALTER TABLE `detail_bills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `order_mon_an`
--
ALTER TABLE `order_mon_an`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
