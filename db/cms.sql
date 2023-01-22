-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 22, 2023 at 11:26 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '19-01-2023 04:33:28 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(2, 'Financial', 'High tuition costs ', '2023-01-21 10:33:33', '21-01-2023 08:34:15 PM'),
(3, 'Academics', 'Complaints about the quality of instruction, curriculum, resources, and other academic-related issues', '2023-01-21 10:33:33', '21-01-2023 04:06:21 PM'),
(4, 'Administration', 'Complaints about the availability and quality of technology resources, such as computer labs, internet access, and other electronic tools', '2023-01-21 10:33:33', '21-01-2023 04:06:41 PM'),
(5, 'Safety Concerns', 'Complaints about the availability and quality of student services, such as counseling, health care, and job placement', '2023-01-21 10:33:33', '21-01-2023 04:07:00 PM'),
(6, 'Amenities', 'Complaints about the campus environment, such as safety, noise levels, and cleanliness', '2023-01-21 10:33:33', '21-01-2023 04:07:23 PM'),
(7, 'Unfair treatment', 'Complaints about Unjustified grading, Discriminatory behavior, Unprofessional behavior from faculty or staff', '2023-01-21 10:33:33', '01-01-2023 07:23:45 PM'),
(8, 'Administrative', 'Complaints about policies and procedures of college administrators, such as registration, financial aid, and parking', '2023-01-21 10:33:33', '01-01-2023 07:23:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'jjj', '2023-01-18 23:01:17'),
(2, 1, 'closed', 'This action is done', '2023-01-18 23:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Emergency', 'Emergency', '2023-01-18 22:56:22', '21-01-2023 05:01:51 PM'),
(2, 'High', 'Very Severe', '2023-01-21 11:27:59', ''),
(3, 'Medium', 'Lightly Severe', '2023-01-21 11:28:47', ''),
(4, 'Low', 'Not Severe', '2023-01-21 11:29:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 2, 'High tuition costs', '2023-01-21 10:56:36', '21-01-2023 08:34:58 PM'),
(3, 2, 'Lack of financial aid ', '2023-01-21 10:56:36', '21-01-2023 08:35:23 PM'),
(4, 2, 'Unclear billing policies ', '2023-01-21 10:56:36', '21-01-2023 08:35:45 PM'),
(5, 2, 'Others', '2023-01-21 10:56:36', '21-01-2023 08:36:03 PM'),
(6, 3, 'Unclear course expectations', '2023-01-21 10:56:55', '21-01-2023 08:36:24 PM'),
(7, 3, 'Poor advising', '2023-01-21 10:56:55', '21-01-2023 08:36:44 PM'),
(8, 3, 'Too much work ', '2023-01-21 10:56:55', '21-01-2023 08:37:10 PM'),
(9, 3, 'Others', '2023-01-21 10:56:55', '21-01-2023 08:37:25 PM'),
(10, 4, 'Slow response times ', '2023-01-21 10:57:10', '21-01-2023 08:37:53 PM'),
(11, 4, 'Unclear policies and procedures', '2023-01-21 10:57:10', '21-01-2023 08:38:19 PM'),
(12, 4, 'Unclear policies and procedures', '2023-01-21 10:57:10', '21-01-2023 08:40:24 PM'),
(13, 4, 'Others', '2023-01-21 10:57:10', '21-01-2023 08:40:41 PM'),
(14, 5, 'Inadequate security measures', '2023-01-21 10:57:22', '21-01-2023 08:45:46 PM'),
(15, 5, 'Poor lighting in parking lots', '2023-01-21 10:57:22', '21-01-2023 08:46:19 PM'),
(16, 5, 'Unsafe walking paths ', '2023-01-21 10:57:22', '21-01-2023 08:46:55 PM'),
(17, 5, 'Others', '2023-01-21 10:57:22', '21-01-2023 08:40:56 PM'),
(18, 6, 'Uncomfortable dorms', '2023-01-21 10:57:36', '21-01-2023 08:47:15 PM'),
(19, 6, 'Poor quality cafeteria food', '2023-01-21 10:57:36', '21-01-2023 08:47:33 PM'),
(20, 6, 'Limited recreational activities', '2023-01-21 10:57:36', '21-01-2023 08:47:55 PM'),
(21, 6, 'Others', '2023-01-21 10:57:36', '21-01-2023 08:45:20 PM'),
(22, 7, 'Unjustified grading', '2023-01-21 10:58:19', '21-01-2023 08:48:23 PM'),
(23, 7, 'Discriminatory behavior ', '2023-01-21 10:58:19', '21-01-2023 08:48:43 PM'),
(24, 7, 'Unprofessional behavior from faculty or staff4', '2023-01-21 10:58:19', '21-01-2023 08:49:01 PM'),
(25, 7, 'Sexual assult', '2023-01-21 10:58:19', '21-01-2023 08:49:39 PM'),
(26, 1, 'Complaints about the cost of tuition and other expenses related to college life, such as textbooks and housing', '2023-01-21 10:58:32', '01-01-2023 07:23:45 PM'),
(27, 1, 'Complaints about the quality of instruction, curriculum, resources, and other academic-related issues', '2023-01-21 10:58:32', '01-01-2023 07:23:45 PM'),
(28, 1, 'Complaints about the availability and quality of technology resources, such as computer labs, internet access, and other electronic tools', '2023-01-21 10:58:32', '01-01-2023 07:23:45 PM'),
(29, 1, 'Complaints about the availability and quality of student services, such as counseling, health care, and job placement', '2023-01-21 10:58:32', '01-01-2023 07:23:45 PM'),
(30, 8, 'Complaints about the cost of tuition and other expenses related to college life, such as textbooks and housing', '2023-01-21 10:58:47', '01-01-2023 07:23:45 PM'),
(31, 8, 'Complaints about the quality of instruction, curriculum, resources, and other academic-related issues', '2023-01-21 10:58:47', '01-01-2023 07:23:45 PM'),
(32, 8, 'Complaints about the availability and quality of technology resources, such as computer labs, internet access, and other electronic tools', '2023-01-21 10:58:47', '01-01-2023 07:23:45 PM'),
(33, 8, 'Complaints about the availability and quality of student services, such as counseling, health care, and job placement', '2023-01-21 10:58:47', '01-01-2023 07:23:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 2, 1, 'll', 'General Query', 'oo', 'Very Severe', 'ggg', 'Screenshot 2023-01-18 at 11.33.47 AM.png', '2023-01-18 22:57:53', 'closed', '2023-01-18 23:13:16'),
(2, 2, 1, 'Select Subcategory', 'General Query', 'oo', 'Amet voluptate qui ', 'Qui obcaecati aute aut consequatur Magni tenetur', '', '2023-01-21 00:20:45', NULL, '0000-00-00 00:00:00'),
(3, 2, 2, 'Complaints about the quality of instruction, curriculum, resources, and other academic-related issues', 'General Query', 'oo', 'Very Severe', 'qwerty', '', '2023-01-21 11:09:36', NULL, '0000-00-00 00:00:00'),
(4, 2, 5, 'Select Subcategory', 'General Query', 'oo', 'Sexual Assult', 'Mollit natus saepe officia deserunt et eligendi ullam ipsa earum et nostrum maxime', '', '2023-01-21 11:25:59', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 0, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:43', '', 0),
(2, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:14:50', '08-05-2020 07:44:51 PM', 1),
(3, 1, 'john@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-08 14:16:30', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'John Smith', 'john@gmail.com', '202cb962ac59075b964b07152d234b70', 9999999999, NULL, NULL, NULL, NULL, NULL, '2020-05-08 14:10:50', '2020-05-08 14:16:22', 1),
(2, 'Madonna Keller', 'test@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 7067533373, '2, Engr Owoeye Street, Okuta Elerinla Estate Akure', 'oo', 'Nigeria', 340212, NULL, '2023-01-18 22:30:16', '2023-01-21 00:20:15', 1),
(3, 'Clem Bosseth', 'bosseth@mymail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 8109342339, NULL, NULL, NULL, NULL, NULL, '2023-01-21 14:41:38', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
