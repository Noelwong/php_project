-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019 年 04 月 01 日 20:50
-- 伺服器版本: 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `milestone2`
--

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

CREATE TABLE `history` (
  `requestNo` int(11) NOT NULL,
  `passengerName` varchar(20) NOT NULL,
  `driverName` varchar(20) NOT NULL,
  `pickup_location` text NOT NULL,
  `destination` text NOT NULL,
  `pickup_time` date NOT NULL,
  `tips` double NOT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL,
  `fare` double NOT NULL,
  `status` int(11) NOT NULL COMMENT 'Request = 0, Confirmed = 1, Cancelled = 2, Finished = 3, Dispute = 4, Accept_dispute = 5, Reject_dispute = 6',
  `reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `history`
--

INSERT INTO `history` (`requestNo`, `passengerName`, `driverName`, `pickup_location`, `destination`, `pickup_time`, `tips`, `startTime`, `finishTime`, `fare`, `status`, `reason`) VALUES
(34, 'anson', 'noelwong', 'é¦™æ¸¯é¦¬ä»”å‘ç«¹åœ’é“55è™Ÿ', 'é¦™æ¸¯æ—ºè§’å»£æ±é“1237è™Ÿ', '0000-00-00', 123, '2019-04-02 02:32:34', '2019-04-02 02:36:01', 0.001, 4, 'æ‰‹è»Šå””å¾—'),
(35, 'anson', 'noel123', 'é¦™æ¸¯é¦¬ä»”å‘å¤©é¦¬è‹‘; é¾ç¿”é“', 'é¦™æ¸¯æ—ºè§’å»£æ±é“1237è™Ÿ', '0000-00-00', 100, '2019-04-02 02:42:49', '2019-04-02 02:44:11', 0.001, 5, 'æˆ‘è¦æ¸£GTRï¼ï¼ï¼ï¼ï¼ï¼');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` int(12) DEFAULT NULL,
  `wallet` varchar(200) NOT NULL,
  `email` text,
  `verified` int(11) NOT NULL COMMENT '0=no, 1=yes',
  `verification_code` varchar(256) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `phoneNumber`, `wallet`, `email`, `verified`, `verification_code`, `created_at`) VALUES
(13, 'anson', '$2y$10$LPcXY7/mUoKpRFU6B1IA0OyJc00bLZnsq4fUT9agUJ4tZfYZ/Rx4m', 12312332, '', 'fds@gmail.com', 1, 'f32b09c44349d74ed23b935c28717a02', '2019-04-02 02:30:23'),
(14, 'noel123', '$2y$10$CxtcSFySmHyV1ndOZdxP3ueeTbQ3CvOUejl9S5l33qUeBm0qYAMA.', 12312322, '', '33@gmail.com', 1, '7336c48763792f64f51b431cd3c843fe', '2019-04-02 02:41:27'),
(12, 'noelwong', '$2y$10$lObFuzJ.djxnJ2SNKuou9eX2rp3ktZmVKe51koePrcT..xK9ex.uW', 12312312, '', 'asd@gmail.com', 1, '699c8f0489033dcb85f2efbcd2148993', '2019-04-02 02:28:17');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`requestNo`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `requestNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
