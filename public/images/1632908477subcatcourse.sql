-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 11:51 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `subcatcourse`
--

CREATE TABLE `subcatcourse` (
  `subcatcourse_id` int(4) NOT NULL,
  `subcatcourse_catid` int(4) NOT NULL,
  `subcatcourse_name` varchar(99) COLLATE utf8_persian_ci NOT NULL,
  `subcatcourse_active` int(2) NOT NULL,
  `subcatcourse_coverimg` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `subcatcourse_icon` varchar(222) COLLATE utf8_persian_ci NOT NULL,
  `subcatcourse_countteacher` int(6) NOT NULL,
  `subcatcourse_countcourse` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `subcatcourse`
--

INSERT INTO `subcatcourse` (`subcatcourse_id`, `subcatcourse_catid`, `subcatcourse_name`, `subcatcourse_active`, `subcatcourse_coverimg`, `subcatcourse_icon`, `subcatcourse_countteacher`, `subcatcourse_countcourse`) VALUES
(15, 2, 'انگلیسی', 0, '1600037414uk.png', '1600423000united-kingdom.png', 197, 10),
(16, 2, 'فرانسوی', 0, '1600037383france.png', '1600422991france.png', 4, 1),
(17, 2, 'آلمانی', 0, '1600037368german.png', '1600422978germany.png', 2, 0),
(18, 2, 'روسی', 0, '1600037353russia.png', '1600422967russia.png', 1, 0),
(19, 2, 'اسپانیایی', 0, '1600037338spain.png', '1600423116spain.png', 0, 0),
(20, 2, 'ایتالیایی', 0, '1600037212italy.png', '1600422928italy.png', 1, 1),
(21, 2, 'چینی', 0, '1600037191china.png', '1600422824china.png', 4, 1),
(22, 2, 'کره ای', 0, '1600037170korea.png', '1600422758south-korea.png', 0, 0),
(23, 2, 'ژاپنی', 0, '1600037146japan.png', '1600422718japan.png', 0, 0),
(24, 2, 'ترکی استانبولی', 0, '1600037117turkey.png', '1600422577turkey.png', 1, 1),
(25, 2, 'هندی', 0, '1600593517india.jpg', '16005939421600422577turkey.png', 2, 1),
(26, 2, 'عربی', 0, '1600595220Untitled-2.jpg', '16005952201600422577turkey.png', 1, 0),
(27, 14, 'حسابداری', 0, '1600648002acc.png', '', 0, 2),
(28, 5, 'ساز سنتی دف', 0, '1601116887g.png', '', 0, 0),
(29, 2, 'فارسی', 0, '1601731134ir1.png', '1601731134ir2.png', 2, 1),
(30, 3, 'ICDL', 0, '1602231424icdl.png', '', 0, 0),
(31, 3, 'SPSS', 0, '1602231405spss.png', '', 0, 0),
(32, 3, 'میکس و مونتاژ', 0, '1602230952mix.png', '', 0, 0),
(33, 3, 'برنامه نویسی', 0, '1602231204cc.png', '', 0, 0),
(34, 3, 'فتوشاپ', 0, '1602229892ps.png', '', 0, 2),
(35, 7, 'ریاضیات', 0, '1602229240math.png', '', 0, 0),
(36, 7, 'شیمی', 0, '1602273049shimi.png', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subcatcourse`
--
ALTER TABLE `subcatcourse`
  ADD PRIMARY KEY (`subcatcourse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subcatcourse`
--
ALTER TABLE `subcatcourse`
  MODIFY `subcatcourse_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
