-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2025 at 12:22 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realtime_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `idols`
--

CREATE TABLE `idols` (
  `idol_id` int NOT NULL,
  `idol_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `country` varchar(50) NOT NULL,
  `kpop_group` varchar(100) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `height_cm` int DEFAULT NULL,
  `debut_year` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `idols`
--

INSERT INTO `idols` (`idol_id`, `idol_name`, `birth_date`, `country`, `kpop_group`, `position`, `height_cm`, `debut_year`, `created_at`, `updated_at`) VALUES
(1, 'Kim Namjoon', '1994-09-12', 'South Korea', 'BTS', 'Leader, Rapper', 181, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(2, 'Kim Seokjin', '1992-12-04', 'South Korea', 'BTS', 'Vocalist', 179, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(3, 'Min Yoongi', '1993-03-09', 'South Korea', 'BTS', 'Rapper', 174, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(4, 'Jung Hoseok', '1994-02-18', 'South Korea', 'BTS', 'Rapper, Dancer', 177, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(5, 'Park Jimin', '1995-10-13', 'South Korea', 'BTS', 'Vocalist, Dancer', 174, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(6, 'Kim Taehyung', '1995-12-30', 'South Korea', 'BTS', 'Vocalist', 178, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(7, 'Jeon Jungkook', '1997-09-01', 'South Korea', 'BTS', 'Main Vocalist', 179, 2013, '2025-12-24 22:46:06', '2025-12-24 22:46:06'),
(8, 'Kim Jisoo', '1995-01-03', 'South Korea', 'BLACKPINK', 'Vocalist', 162, 2016, '2025-12-24 22:48:01', '2025-12-24 22:48:01'),
(9, 'Jennie Kim', '1996-01-16', 'South Korea', 'BLACKPINK', 'Rapper, Vocalist', 163, 2016, '2025-12-24 22:48:01', '2025-12-24 22:48:01'),
(10, 'Rose Park', '1997-02-11', 'New Zealand', 'BLACKPINK', 'Main Vocalist', 168, 2016, '2025-12-24 22:48:01', '2025-12-24 22:48:01'),
(11, 'Lisa Manoban', '1997-03-27', 'Thailand', 'BLACKPINK', 'Main Dancer, Rapper', 167, 2016, '2025-12-24 22:48:01', '2025-12-24 22:48:01'),
(12, 'Im Nayeon', '1995-09-22', 'South Korea', 'TWICE', 'Vocalist', 163, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(13, 'Yoo Jeongyeon', '1996-11-01', 'South Korea', 'TWICE', 'Vocalist', 169, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(14, 'Hirai Momo', '1996-11-09', 'Japan', 'TWICE', 'Main Dancer', 162, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(15, 'Minatozaki Sana', '1996-12-29', 'Japan', 'TWICE', 'Dancer', 164, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(16, 'Park Jihyo', '1997-02-01', 'South Korea', 'TWICE', 'Leader, Main Vocalist', 160, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(17, 'Myoui Mina', '1997-03-24', 'Japan', 'TWICE', 'Vocalist', 163, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(18, 'Kim Dahyun', '1998-05-28', 'South Korea', 'TWICE', 'Rapper', 159, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(19, 'Son Chaeyoung', '1999-04-23', 'South Korea', 'TWICE', 'Rapper', 159, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(20, 'Chou Tzuyu', '1999-06-14', 'Taiwan', 'TWICE', 'Vocalist', 170, 2015, '2025-12-24 22:49:28', '2025-12-24 22:49:28'),
(21, 'Kim Junmyeon', '1991-05-22', 'South Korea', 'EXO', 'Leader, Vocalist', 172, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(22, 'Byun Baekhyun', '1992-05-06', 'South Korea', 'EXO', 'Main Vocalist', 174, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(23, 'Kim Jongdae', '1992-09-21', 'South Korea', 'EXO', 'Main Vocalist', 172, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(24, 'Park Chanyeol', '1992-11-27', 'South Korea', 'EXO', 'Rapper', 185, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(25, 'Do Kyungsoo', '1993-01-12', 'South Korea', 'EXO', 'Main Vocalist', 173, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(26, 'Kim Jongin', '1994-01-14', 'South Korea', 'EXO', 'Main Dancer', 182, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(27, 'Oh Sehun', '1994-04-12', 'South Korea', 'EXO', 'Dancer, Rapper', 183, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(28, 'Zhang Yixing', '1991-10-07', 'China', 'EXO', 'Dancer, Vocalist', 176, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(29, 'Huang Zitao', '1993-05-02', 'China', 'EXO', 'Rapper', 183, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(30, 'Wu Yifan', '1990-11-06', 'Canada', 'EXO', 'Rapper', 187, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(31, 'Lu Han', '1990-04-20', 'China', 'EXO', 'Vocalist', 178, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(32, 'Kim Minseok', '1990-03-26', 'South Korea', 'EXO', 'Vocalist', 173, 2012, '2025-12-24 22:50:45', '2025-12-24 22:50:45'),
(33, 'Choi Hyunsuk', '1999-04-21', 'South Korea', 'TREASURE', 'Leader, Rapper', 171, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(34, 'Park Jihoon', '2000-03-14', 'South Korea', 'TREASURE', 'Leader, Dancer', 178, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(35, 'Yoshi', '2000-05-15', 'Japan', 'TREASURE', 'Rapper', 178, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(36, 'Kim Junkyu', '2000-09-09', 'South Korea', 'TREASURE', 'Vocalist', 178, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(37, 'Yoon Jaehyuk', '2001-07-23', 'South Korea', 'TREASURE', 'Vocalist', 178, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(38, 'Asahi', '2001-08-20', 'Japan', 'TREASURE', 'Vocalist', 173, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(39, 'Takata Mashiho', '2001-03-25', 'Japan', 'TREASURE', 'Vocalist, Dancer', 170, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(40, 'Bang Yedam', '2002-05-07', 'South Korea', 'TREASURE', 'Main Vocalist', 172, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(41, 'Kim Doyoung', '2003-12-04', 'South Korea', 'TREASURE', 'Vocalist', 171, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(42, 'Haruto', '2004-04-05', 'Japan', 'TREASURE', 'Rapper', 185, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(43, 'Park Jeongwoo', '2004-09-28', 'South Korea', 'TREASURE', 'Main Vocalist', 178, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(44, 'So Junghwan', '2005-02-18', 'South Korea', 'TREASURE', 'Maknae, Dancer', 180, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(45, 'Lee Heeseung', '2001-10-15', 'South Korea', 'ENHYPEN', 'Main Vocalist', 181, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(46, 'Park Jongseong', '2002-04-20', 'South Korea', 'ENHYPEN', 'Rapper', 180, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(47, 'Sim Jaeyun', '2002-11-15', 'South Korea', 'ENHYPEN', 'Vocalist', 176, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(48, 'Park Sunghoon', '2002-12-08', 'South Korea', 'ENHYPEN', 'Dancer', 181, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(49, 'Kim Sunoo', '2003-06-24', 'South Korea', 'ENHYPEN', 'Vocalist', 175, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(50, 'Yang Jungwon', '2004-02-09', 'South Korea', 'ENHYPEN', 'Leader', 175, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(51, 'Nishimura Riki', '2005-12-04', 'Japan', 'ENHYPEN', 'Main Dancer, Maknae', 183, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(52, 'S.Coups', '1995-08-08', 'South Korea', 'SEVENTEEN', 'Leader, Rapper', 178, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(53, 'Jeonghan', '1995-10-04', 'South Korea', 'SEVENTEEN', 'Vocalist', 178, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(54, 'Joshua Hong', '1995-12-30', 'USA', 'SEVENTEEN', 'Vocalist', 177, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(55, 'Hoshi', '1996-06-15', 'South Korea', 'SEVENTEEN', 'Main Dancer', 177, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(56, 'Wonwoo', '1996-07-17', 'South Korea', 'SEVENTEEN', 'Rapper', 182, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(57, 'Woozi', '1996-11-22', 'South Korea', 'SEVENTEEN', 'Producer, Vocalist', 164, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(58, 'DK', '1997-02-18', 'South Korea', 'SEVENTEEN', 'Main Vocalist', 179, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(59, 'Mingyu', '1997-04-06', 'South Korea', 'SEVENTEEN', 'Rapper', 187, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(60, 'The8', '1997-11-07', 'China', 'SEVENTEEN', 'Dancer', 178, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(61, 'Seungkwan', '1998-01-16', 'South Korea', 'SEVENTEEN', 'Main Vocalist', 174, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(62, 'Vernon', '1998-02-18', 'USA', 'SEVENTEEN', 'Rapper', 178, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(63, 'Dino', '1999-02-11', 'South Korea', 'SEVENTEEN', 'Maknae, Dancer', 170, 2015, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(64, 'Bang Chan', '1997-10-03', 'Australia', 'Stray Kids', 'Leader, Producer', 171, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(65, 'Lee Know', '1998-10-25', 'South Korea', 'Stray Kids', 'Dancer', 172, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(66, 'Changbin', '1999-08-11', 'South Korea', 'Stray Kids', 'Rapper', 167, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(67, 'Hyunjin', '2000-03-20', 'South Korea', 'Stray Kids', 'Dancer', 179, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(68, 'Han Jisung', '2000-09-14', 'South Korea', 'Stray Kids', 'Rapper', 169, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(69, 'Felix Lee', '2000-09-15', 'Australia', 'Stray Kids', 'Rapper', 171, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(70, 'Kim Seungmin', '2000-09-22', 'South Korea', 'Stray Kids', 'Vocalist', 178, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(71, 'Yang Jeongin', '2001-02-08', 'South Korea', 'Stray Kids', 'Maknae, Vocalist', 172, 2018, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(72, 'Karina', '2000-04-11', 'South Korea', 'aespa', 'Leader, Dancer', 167, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(73, 'Giselle', '2000-10-30', 'Japan', 'aespa', 'Rapper', 163, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(74, 'Winter', '2001-01-01', 'South Korea', 'aespa', 'Main Vocalist', 163, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(75, 'Ningning', '2002-10-23', 'China', 'aespa', 'Main Vocalist', 161, 2020, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(76, 'An Yujin', '2003-09-01', 'South Korea', 'IVE', 'Leader', 173, 2021, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(77, 'Gaeul', '2002-09-24', 'South Korea', 'IVE', 'Rapper', 164, 2021, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(78, 'Rei', '2004-02-03', 'Japan', 'IVE', 'Rapper', 169, 2021, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(79, 'Jang Wonyoung', '2004-08-31', 'South Korea', 'IVE', 'Vocalist', 173, 2021, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(80, 'Liz', '2004-11-21', 'South Korea', 'IVE', 'Main Vocalist', 170, 2021, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(81, 'Leeseo', '2007-02-21', 'South Korea', 'IVE', 'Maknae', 168, 2021, '2025-12-24 22:52:59', '2025-12-24 22:52:59'),
(82, 'Jiwoo', '2006-09-07', 'South Korea', 'Heart2Heart', 'Leader, Vocalist', 165, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(83, 'Carmen', '2006-03-28', 'Indonesia', 'Heart2Heart', 'Vocalist', 167, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(84, 'Yuha', '2007-04-12', 'South Korea', 'Heart2Heart', 'Dancer', 168, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(85, 'Stella', '2007-06-18', 'South Korea', 'Heart2Heart', 'Vocalist', 166, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(86, 'Yeon', '2008-01-03', 'South Korea', 'Heart2Heart', 'Vocalist', 164, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(87, 'Ian', '2008-11-21', 'South Korea', 'Heart2Heart', 'Rapper', 170, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(88, 'A-na', '2009-02-14', 'Japan', 'Heart2Heart', 'Dancer', 163, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(89, 'Juun', '2009-09-30', 'South Korea', 'Heart2Heart', 'Maknae', 162, 2025, '2025-12-24 22:54:56', '2025-12-24 22:54:56'),
(90, 'Bae Joohyun', '1991-03-29', 'South Korea', 'Red Velvet', 'Leader, Rapper', 160, 2014, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(91, 'Kang Seulgi', '1994-02-10', 'South Korea', 'Red Velvet', 'Main Dancer, Vocalist', 164, 2014, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(92, 'Wendy Son', '1994-02-21', 'South Korea', 'Red Velvet', 'Main Vocalist', 160, 2014, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(93, 'Park Sooyoung', '1996-09-03', 'South Korea', 'Red Velvet', 'Rapper, Vocalist', 168, 2014, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(94, 'Kim Yerim', '1999-03-05', 'South Korea', 'Red Velvet', 'Vocalist', 160, 2015, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(95, 'Choi Yeonjun', '1999-09-13', 'South Korea', 'TXT', 'Rapper, Dancer', 181, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(96, 'Choi Soobin', '2000-12-05', 'South Korea', 'TXT', 'Leader, Vocalist', 185, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(97, 'Choi Beomgyu', '2001-03-13', 'South Korea', 'TXT', 'Vocalist', 180, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(98, 'Kang Taehyun', '2002-02-05', 'South Korea', 'TXT', 'Main Vocalist', 177, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(99, 'Huening Kai', '2002-08-14', 'USA', 'TXT', 'Vocalist, Maknae', 183, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(100, 'Hwang Yeji', '2000-05-26', 'South Korea', 'ITZY', 'Leader, Dancer', 167, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(101, 'Choi Jisu', '2000-12-04', 'South Korea', 'ITZY', 'Vocalist', 165, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(102, 'Shin Ryujin', '2001-04-17', 'South Korea', 'ITZY', 'Rapper', 164, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(103, 'Lee Chaeryeong', '2001-06-05', 'South Korea', 'ITZY', 'Main Dancer', 166, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(104, 'Shin Yuna', '2003-12-09', 'South Korea', 'ITZY', 'Maknae, Dancer', 170, 2019, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(105, 'Jeon Soyeon', '1998-08-26', 'South Korea', '(G)I-DLE', 'Leader, Rapper', 157, 2018, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(106, 'Cho Miyeon', '1997-01-31', 'South Korea', '(G)I-DLE', 'Main Vocalist', 161, 2018, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(107, 'Minnie Nicha', '1997-10-23', 'Thailand', '(G)I-DLE', 'Vocalist', 164, 2018, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(108, 'Seo Soojin', '1998-03-09', 'South Korea', '(G)I-DLE', 'Main Dancer, Vocalist', 163, 2018, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(109, 'Song Yuqi', '1999-09-23', 'China', '(G)I-DLE', 'Dancer, Vocalist', 162, 2018, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(110, 'Yeh Shuhua', '2000-01-06', 'Taiwan', '(G)I-DLE', 'Vocalist', 161, 2018, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(111, 'Kim Chaewon', '2000-08-01', 'South Korea', 'LE SSERAFIM', 'Leader, Vocalist', 163, 2022, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(112, 'Sakura Miyawaki', '1998-03-19', 'Japan', 'LE SSERAFIM', 'Vocalist', 163, 2022, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(113, 'Huh Yunjin', '2001-10-08', 'USA', 'LE SSERAFIM', 'Vocalist', 172, 2022, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(114, 'Kazuha Nakamura', '2003-08-09', 'Japan', 'LE SSERAFIM', 'Dancer', 170, 2022, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(115, 'Kim Garam', '2005-11-16', 'South Korea', 'LE SSERAFIM', 'Vocalist', 170, 2022, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(116, 'Hong Eunchae', '2006-11-10', 'South Korea', 'LE SSERAFIM', 'Maknae', 170, 2022, '2025-12-24 23:01:19', '2025-12-24 23:01:19'),
(117, 'Lee Saerom', '1997-01-07', 'South Korea', 'fromis_9', 'Leader, Dancer', 163, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(118, 'Song Hayoung', '1997-09-29', 'South Korea', 'fromis_9', 'Main Vocalist', 165, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(119, 'Jang Gyuri', '1997-12-27', 'South Korea', 'fromis_9', 'Vocalist', 168, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(120, 'Lee Seoyeon', '2000-01-22', 'South Korea', 'fromis_9', 'Rapper', 158, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(121, 'Baek Jiheon', '2003-04-17', 'South Korea', 'fromis_9', 'Maknae, Vocalist', 165, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(122, 'Lee Chaeyoung', '2000-05-14', 'South Korea', 'fromis_9', 'Vocalist', 169, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(123, 'Park Jiwon', '1998-03-20', 'South Korea', 'fromis_9', 'Main Vocalist', 164, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(124, 'Roh Jisun', '1998-11-23', 'South Korea', 'fromis_9', 'Vocalist', 163, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(125, 'Lee Nagyung', '2000-06-01', 'South Korea', 'fromis_9', 'Vocalist', 158, 2018, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(126, 'Ruka', '2002-03-20', 'Japan', 'BABYMONSTER', 'Rapper, Dancer', 168, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(127, 'Pharita', '2005-08-26', 'Thailand', 'BABYMONSTER', 'Vocalist', 170, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(128, 'Asa', '2006-04-17', 'Japan', 'BABYMONSTER', 'Rapper', 165, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(129, 'Ahyeon', '2007-04-11', 'South Korea', 'BABYMONSTER', 'Vocalist', 170, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(130, 'Rami', '2007-10-17', 'South Korea', 'BABYMONSTER', 'Main Vocalist', 172, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(131, 'Rora', '2008-08-14', 'South Korea', 'BABYMONSTER', 'Vocalist', 168, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(132, 'Chiquita', '2009-02-17', 'Thailand', 'BABYMONSTER', 'Maknae', 168, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(133, 'Shotaro', '2000-11-25', 'Japan', 'RIIZE', 'Main Dancer', 178, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(134, 'Eunseok', '2001-03-19', 'South Korea', 'RIIZE', 'Vocalist', 180, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(135, 'Sungchan', '2001-09-13', 'South Korea', 'RIIZE', 'Rapper', 185, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(136, 'Wonbin', '2002-03-02', 'South Korea', 'RIIZE', 'Dancer', 176, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(137, 'Sohee', '2003-11-21', 'South Korea', 'RIIZE', 'Main Vocalist', 174, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(138, 'Anton', '2004-03-21', 'USA', 'RIIZE', 'Maknae', 185, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(139, 'Sung Hanbin', '2001-06-13', 'South Korea', 'ZEROBASEONE', 'Leader, Dancer', 179, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(140, 'Kim Jiwoong', '1998-12-14', 'South Korea', 'ZEROBASEONE', 'Vocalist', 178, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(141, 'Zhang Hao', '2000-07-25', 'China', 'ZEROBASEONE', 'Main Vocalist', 180, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(142, 'Seok Matthew', '2002-05-28', 'Canada', 'ZEROBASEONE', 'Vocalist', 170, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(143, 'Kim Taerae', '2002-07-14', 'South Korea', 'ZEROBASEONE', 'Vocalist', 174, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(144, 'Ricky', '2004-05-20', 'China', 'ZEROBASEONE', 'Rapper', 184, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(145, 'Kim Gyuvin', '2004-08-30', 'South Korea', 'ZEROBASEONE', 'Dancer', 182, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(146, 'Park Gunwook', '2005-01-10', 'South Korea', 'ZEROBASEONE', 'Rapper', 183, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(147, 'Han Yujin', '2007-03-20', 'South Korea', 'ZEROBASEONE', 'Maknae', 178, 2023, '2025-12-24 23:02:13', '2025-12-24 23:02:13'),
(148, 'Lily Morrow', '2002-10-17', 'Australia', 'NMIXX', 'Main Vocalist', 166, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(149, 'Haewon', '2003-02-25', 'South Korea', 'NMIXX', 'Leader, Vocalist', 163, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(150, 'Sullyoon', '2004-01-26', 'South Korea', 'NMIXX', 'Vocalist', 168, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(151, 'Bae Jinsol', '2004-12-28', 'South Korea', 'NMIXX', 'Vocalist', 171, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(152, 'Jiwoo', '2005-04-13', 'South Korea', 'NMIXX', 'Rapper, Dancer', 162, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(153, 'Kyujin', '2006-05-26', 'South Korea', 'NMIXX', 'Maknae, Dancer', 170, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(154, 'Jinni', '2004-04-16', 'South Korea', 'NMIXX', 'Dancer, Vocalist', 164, 2022, '2025-12-24 23:09:27', '2025-12-24 23:09:27'),
(155, 'Lee Taeyong', '1995-07-01', 'South Korea', 'NCT U', 'Leader, Rapper', 174, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(156, 'Seo Youngho', '1995-02-14', 'Canada', 'NCT U', 'Vocalist', 177, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(157, 'Nakamoto Yuta', '1995-10-26', 'Japan', 'NCT U', 'Dancer', 176, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(158, 'Kim Doyoung', '1996-02-01', 'South Korea', 'NCT U', 'Main Vocalist', 179, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(159, 'Jung Jaehyun', '1997-02-14', 'South Korea', 'NCT U', 'Vocalist', 180, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(160, 'Kim Jungwoo', '1998-02-19', 'South Korea', 'NCT U', 'Vocalist', 180, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(161, 'Mark Lee', '1999-08-02', 'Canada', 'NCT U', 'Rapper', 175, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(162, 'Lee Donghyuck', '2000-06-04', 'South Korea', 'NCT U', 'Vocalist', 174, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(163, 'Na Jaemin', '2000-08-13', 'South Korea', 'NCT U', 'Rapper', 177, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(164, 'Huang Renjun', '2000-03-23', 'China', 'NCT U', 'Vocalist', 170, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(165, 'Lee Jeno', '2000-04-23', 'South Korea', 'NCT U', 'Dancer, Rapper', 177, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(166, 'Zhong Chenle', '2001-11-22', 'China', 'NCT U', 'Vocalist', 176, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(167, 'Park Jisung', '2002-02-05', 'South Korea', 'NCT U', 'Main Dancer', 180, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(168, 'Kun', '1996-01-01', 'China', 'NCT U', 'Leader, Vocalist', 176, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(169, 'Ten Chittaphon', '1996-02-27', 'Thailand', 'NCT U', 'Main Dancer, Vocalist', 170, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(170, 'Dong Sicheng', '1997-10-25', 'China', 'NCT U', 'Dancer', 178, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(171, 'Wong Kunhang', '1998-11-21', 'China', 'NCT U', 'Rapper', 182, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(172, 'Xiao Dejun', '1999-08-08', 'China', 'NCT U', 'Main Vocalist', 180, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(173, 'Hendery', '1999-09-28', 'Macau', 'NCT U', 'Rapper', 175, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(174, 'Liu Yangyang', '2000-10-10', 'Germany', 'NCT U', 'Rapper', 176, 2016, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(175, 'Jung Sungchan', '2001-09-13', 'South Korea', 'NCT U', 'Rapper', 185, 2020, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(176, 'Osaki Shotaro', '2000-11-25', 'Japan', 'NCT U', 'Main Dancer', 178, 2020, '2025-12-24 23:13:10', '2025-12-24 23:13:10'),
(177, 'Serim', '1999-03-03', 'South Korea', 'CRAVITY', 'Leader, Rapper', 175, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(178, 'Allen', '1999-04-26', 'Taiwan', 'CRAVITY', 'Rapper', 170, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(179, 'Jungmo', '2000-02-05', 'South Korea', 'CRAVITY', 'Vocalist', 175, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(180, 'Woobin', '2000-10-16', 'South Korea', 'CRAVITY', 'Main Vocalist', 175, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(181, 'Wonjin', '2001-03-22', 'South Korea', 'CRAVITY', 'Vocalist', 170, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(182, 'Minhee', '2002-09-17', 'South Korea', 'CRAVITY', 'Vocalist', 182, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(183, 'Hyeongjun', '2002-11-30', 'South Korea', 'CRAVITY', 'Dancer', 173, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(184, 'Taeyoung', '2003-01-27', 'South Korea', 'CRAVITY', 'Rapper', 178, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(185, 'Seongmin', '2003-08-01', 'South Korea', 'CRAVITY', 'Maknae', 170, 2020, '2025-12-24 23:16:18', '2025-12-24 23:16:18'),
(186, 'Songyee', '2000-01-27', 'South Korea', 'WOO!AH!', 'Former Member, Vocalist', 160, 2020, '2025-12-24 23:20:14', '2025-12-24 23:20:14'),
(187, 'Nana', '2001-12-09', 'South Korea', 'WOO!AH!', 'Leader, Vocalist', 168, 2020, '2025-12-24 23:20:14', '2025-12-24 23:20:14'),
(188, 'Wooyeon', '2003-02-11', 'South Korea', 'WOO!AH!', 'Vocalist', 160, 2020, '2025-12-24 23:20:14', '2025-12-24 23:20:14'),
(189, 'Sora', '2003-08-30', 'Japan', 'WOO!AH!', 'Vocalist', 162, 2020, '2025-12-24 23:20:14', '2025-12-24 23:20:14'),
(190, 'Lucy', '2004-04-09', 'South Korea', 'WOO!AH!', 'Rapper', 164, 2020, '2025-12-24 23:20:14', '2025-12-24 23:20:14'),
(191, 'Minseo', '2004-08-12', 'South Korea', 'WOO!AH!', 'Maknae, Vocalist', 166, 2020, '2025-12-24 23:20:14', '2025-12-24 23:20:14'),
(192, 'Sangyeon', '1996-11-04', 'South Korea', 'THE BOYZ', 'Leader, Vocalist', 176, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(193, 'Jacob', '1997-05-30', 'Canada', 'THE BOYZ', 'Vocalist', 175, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(194, 'Younghoon', '1997-08-08', 'South Korea', 'THE BOYZ', 'Vocalist, Visual', 183, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(195, 'Hyunjae', '1997-09-13', 'South Korea', 'THE BOYZ', 'Main Vocalist', 177, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(196, 'Juyeon', '1998-01-15', 'South Korea', 'THE BOYZ', 'Main Dancer', 181, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(197, 'Kevin', '1998-02-23', 'Canada', 'THE BOYZ', 'Vocalist', 176, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(198, 'New', '1998-04-26', 'South Korea', 'THE BOYZ', 'Main Vocalist', 178, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(199, 'Q', '1998-11-05', 'South Korea', 'THE BOYZ', 'Main Dancer', 175, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(200, 'Haknyeon', '1999-03-09', 'South Korea', 'THE BOYZ', 'Vocalist', 176, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(201, 'Hwall', '2000-03-09', 'South Korea', 'THE BOYZ', 'Former Member, Rapper', 176, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(202, 'Sunwoo', '2000-04-12', 'South Korea', 'THE BOYZ', 'Main Rapper', 177, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(203, 'Eric', '2000-12-22', 'South Korea', 'THE BOYZ', 'Maknae, Rapper', 174, 2017, '2025-12-24 23:21:54', '2025-12-24 23:21:54'),
(204, 'Kang Daniel', '1996-12-10', 'South Korea', 'Wanna One', 'Center, Main Dancer', 181, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(205, 'Park Jihoon', '1999-05-29', 'South Korea', 'Wanna One', 'Vocalist', 173, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(206, 'Lee Daehwi', '2001-01-29', 'South Korea', 'Wanna One', 'Main Vocalist', 172, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(207, 'Kim Jaehwan', '1996-05-27', 'South Korea', 'Wanna One', 'Main Vocalist', 175, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(208, 'Ong Seongwu', '1995-08-25', 'South Korea', 'Wanna One', 'Vocalist, Dancer', 179, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(209, 'Ha Sungwoon', '1994-03-22', 'South Korea', 'Wanna One', 'Main Vocalist', 168, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(210, 'Yoon Jisung', '1991-03-08', 'South Korea', 'Wanna One', 'Leader, Vocalist', 175, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(211, 'Hwang Minhyun', '1995-08-09', 'South Korea', 'Wanna One', 'Vocalist', 181, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(212, 'Bae Jinyoung', '2000-05-10', 'South Korea', 'Wanna One', 'Vocalist', 185, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(213, 'Park Woojin', '1999-11-02', 'South Korea', 'Wanna One', 'Main Rapper', 175, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(214, 'Lai Kuanlin', '2001-09-23', 'Taiwan', 'Wanna One', 'Maknae, Rapper', 183, 2017, '2025-12-24 23:22:43', '2025-12-24 23:22:43'),
(215, 'Minji', '2004-05-07', 'South Korea', 'NewJeans', 'Leader, Vocalist', 169, 2022, '2025-12-24 23:23:36', '2025-12-24 23:23:36'),
(216, 'Hanni', '2004-10-06', 'Australia', 'NewJeans', 'Vocalist', 162, 2022, '2025-12-24 23:23:36', '2025-12-24 23:23:36'),
(217, 'Danielle', '2005-04-11', 'Australia', 'NewJeans', 'Vocalist', 165, 2022, '2025-12-24 23:23:36', '2025-12-24 23:23:36'),
(218, 'Haerin', '2006-05-15', 'South Korea', 'NewJeans', 'Vocalist', 164, 2022, '2025-12-24 23:23:36', '2025-12-24 23:23:36'),
(219, 'Hyein', '2008-04-21', 'South Korea', 'NewJeans', 'Maknae, Vocalist', 170, 2022, '2025-12-24 23:23:36', '2025-12-24 23:23:36'),
(220, 'Kim Jinhwan', '1994-02-07', 'South Korea', 'iKON', 'Leader, Vocalist', 165, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30'),
(221, 'Bobby', '1995-12-21', 'South Korea', 'iKON', 'Main Rapper', 175, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30'),
(222, 'B.I', '1996-10-22', 'South Korea', 'iKON', 'Leader, Main Rapper, Producer', 177, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30'),
(223, 'Song Yunhyeong', '1995-02-08', 'South Korea', 'iKON', 'Vocalist', 174, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30'),
(224, 'Koo Junhoe', '1997-03-31', 'South Korea', 'iKON', 'Main Vocalist', 182, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30'),
(225, 'Kim Donghyuk', '1997-01-03', 'South Korea', 'iKON', 'Dancer, Vocalist', 175, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30'),
(226, 'Jung Chanwoo', '1998-01-26', 'South Korea', 'iKON', 'Maknae, Vocalist', 174, 2015, '2025-12-24 23:24:30', '2025-12-24 23:24:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `idols`
--
ALTER TABLE `idols`
  ADD PRIMARY KEY (`idol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `idols`
--
ALTER TABLE `idols`
  MODIFY `idol_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
