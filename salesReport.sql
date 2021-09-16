-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2021 at 07:57 PM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesReport`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `sale_on` datetime DEFAULT NULL,
  `blocked` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `user_id`, `amount`, `sale_on`, `blocked`, `createdAt`, `updatedAt`) VALUES
(1, 3, 10, '2021-09-15 01:01:02', '0', '2021-09-15 14:12:32', '2021-09-15 14:12:32'),
(2, 3, 10, '2021-09-04 06:32:10', '0', '2021-09-15 10:29:49', '2021-09-15 10:29:49'),
(3, 3, 100, '2021-09-15 01:10:19', '0', '2021-09-15 13:55:41', '2021-09-15 13:55:41'),
(4, 3, 100, '2021-09-13 03:15:22', '0', '2021-09-15 10:41:30', '2021-09-15 10:41:30'),
(5, 3, 100, '2021-09-15 14:21:05', '0', '2021-09-15 13:21:45', '2021-09-15 13:21:45'),
(6, 3, 100, '2021-09-15 01:03:00', '0', '2021-09-15 13:54:04', '2021-09-15 13:54:04'),
(7, 3, 100, '2021-09-04 00:00:00', '0', '2021-09-15 10:17:30', '2021-09-15 10:17:30'),
(8, 3, 100, '2021-09-02 00:00:00', '0', '2021-09-15 10:17:35', '2021-09-15 10:17:35'),
(9, 3, 100, '2021-09-02 00:00:00', '0', '2021-09-15 10:18:16', '2021-09-15 10:18:16'),
(10, 3, 10, '2021-09-15 14:21:05', '0', '2021-09-15 13:45:49', '2021-09-15 13:45:49'),
(11, 3, 10, '2021-09-14 00:00:00', '0', '2021-09-15 11:45:55', '2021-09-15 11:45:55'),
(12, 3, 54, '2021-09-13 00:00:00', '0', '2021-09-15 11:47:12', '2021-09-15 11:47:12'),
(13, 3, 54, '2021-09-13 00:00:00', '0', '2021-09-15 13:43:57', '2021-09-15 13:43:57'),
(14, 3, 54, '2021-09-15 14:21:05', '0', '2021-09-15 13:45:20', '2021-09-15 13:45:20'),
(15, 3, 54, '2021-09-15 14:21:05', '0', '2021-09-15 13:44:18', '2021-09-15 13:44:18'),
(16, 3, 54, '2021-09-15 00:21:05', '0', '2021-09-15 13:55:46', '2021-09-15 13:55:46'),
(17, 3, 54, '2021-09-15 14:18:05', '0', '2021-09-15 13:44:26', '2021-09-15 13:44:26'),
(18, 3, 54, '2021-09-15 01:18:05', '0', '2021-09-15 13:55:56', '2021-09-15 13:55:56'),
(19, 3, 54, '2021-09-15 14:18:05', '0', '2021-09-15 13:44:34', '2021-09-15 13:44:34'),
(20, 3, 54, '2021-09-15 14:18:05', '0', '2021-09-15 14:11:09', '2021-09-15 14:11:09'),
(21, 3, 54, '2021-09-15 14:01:05', '0', '2021-09-15 14:11:57', '2021-09-15 14:11:57'),
(22, 3, 54, '2021-09-15 14:01:05', '0', '2021-09-15 14:12:45', '2021-09-15 14:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` int(11) NOT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  `blocked` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `phone_number`, `access_token`, `blocked`, `createdAt`, `updatedAt`) VALUES
(1, 'john', 'john@gmail.com', NULL, 987654321, NULL, '0', '2021-09-14 05:43:47', '2021-09-14 05:43:47'),
(2, 'willy', 'willy@gmail.com', NULL, 685496, NULL, '0', '2021-09-14 05:43:47', '2021-09-14 05:43:47'),
(3, 'wilson', 'wilson@gmail.com', '$2a$11$4fFFXwSbI.9njh7nd2XgTepXJzW336B8uD/k6YI.StDl7QlG6c8ES', 987654321, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNjMxNjkxOTYwfQ.Tek3ikKmQ7RDsB8z6fTyJgOGQMBlciwP8kDLZ-MsH-A', '0', '2021-09-15 07:46:00', '2021-09-15 07:46:00'),
(4, 'wilson', 'wilson@yahoo.com', '$2a$11$7SPRC2wTdZbMW9qhFLFuA.NpLklGS8thJZd8YmIKHTYQaoKp1WchC', 987654322, NULL, '0', '2021-09-15 07:24:24', '2021-09-15 07:24:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
