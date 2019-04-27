-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 10:23 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std6002041630026`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branchNo` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postcode` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `cientNo` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `telNo` varchar(200) DEFAULT NULL,
  `perftype` varchar(200) DEFAULT NULL,
  `maxRent` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1556346283),
('m130524_201442_init', 1556346288),
('m190124_110200_add_verification_token_column_to_user_table', 1556346289),
('m190427_062745_create_branch_table', 1556346752),
('m190427_065858_create_staff_table', 1556348688),
('m190427_070812_create_privateowner_table', 1556349019),
('m190427_071218_create_propertyforrent_table', 1556349350),
('m190427_071930_create_client_table', 1556349767),
('m190427_072426_create_viewing_table', 1556350068),
('m190427_073151_create_registration_table', 1556350447);

-- --------------------------------------------------------

--
-- Table structure for table `privateowner`
--

CREATE TABLE `privateowner` (
  `id` int(11) NOT NULL,
  `ownerNo` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `telNo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `propertyforrent`
--

CREATE TABLE `propertyforrent` (
  `id` int(11) NOT NULL,
  `propertyNo` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postcode` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `room` varchar(200) DEFAULT NULL,
  `rent` varchar(200) DEFAULT NULL,
  `ownerNo` varchar(200) DEFAULT NULL,
  `staffNo` varchar(200) DEFAULT NULL,
  `branchNo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `clientNo` varchar(200) DEFAULT NULL,
  `branchNo` varchar(200) DEFAULT NULL,
  `staffNo` varchar(200) DEFAULT NULL,
  `dateJoined` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staffNo` varchar(200) DEFAULT NULL,
  `fName` varchar(200) DEFAULT NULL,
  `lName` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `DOB` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `branchNo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'maslider1234', 'iPRs2OhzsTHUIesZUYgYkeEShLQi0L7g', '$2y$13$ISGaXYq54QezYNFG/iiYRe/WoGLGNeOF.VugnQEb8KJ71x/EVW0qO', NULL, 'noppakrit_om@hotmail.com', 10, 1556346359, 1556346359, 'tcI0FEG__xl1kczU0kJry2aw46LVXac8_1556346359');

-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

CREATE TABLE `viewing` (
  `id` int(11) NOT NULL,
  `clientNo` varchar(200) DEFAULT NULL,
  `propertyNo` varchar(200) DEFAULT NULL,
  `viewDate` varchar(200) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `privateowner`
--
ALTER TABLE `privateowner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `propertyforrent`
--
ALTER TABLE `propertyforrent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `viewing`
--
ALTER TABLE `viewing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privateowner`
--
ALTER TABLE `privateowner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertyforrent`
--
ALTER TABLE `propertyforrent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `viewing`
--
ALTER TABLE `viewing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
