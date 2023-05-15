-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql205.epizy.com
-- Generation Time: May 15, 2023 at 08:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_34022729_crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(2, 959621223454, 'Puna', 'Robbery', '2023-03-27', 'Mobile Robbery', 'Assign', 'ChargeSheet Filed', 'd01'),
(4, 959621223454, 'Puna', 'Pick Pocket', '2023-04-18', 'Pocket Robbery', 'Assigned', 'In Process', 'k01'),
(5, 959643126576, 'Mumbai', 'Theft', '2023-03-29', 'usagfuiadsg', 'Assigned', 'In Process', 's01'),
(6, 959643235465, 'Mumbai', 'Pick Pocket', '2023-04-17', 'lifidgiu', 'Assigned', 'ChargeSheet Filed', 's01'),
(8, 959643561213, 'Jamnagar', 'Pick Pocket', '2023-03-27', 'ouygsdofsg', 'Assigned', 'In Process', 't01'),
(9, 959643561213, 'Vadodara', 'Robbery', '2023-04-17', 'iusdgyifv isdgfsadyubc vyviyf', 'Assigned', 'ChargeSheet Filed', 'n01'),
(12, 959645641231, 'Valsad', 'Robbery', '2023-04-09', 'Mobile Robbery', 'Assigned', 'In Process', 'h01'),
(14, 912264461212, 'Chennai', 'Murder', '2023-04-25', 'Smit got killed. Please find the murderer as fast as possible.', 'Assigned', 'ChargeSheet Filed', 's1'),
(15, 459208398500, 'Mumbai', 'Robbery', '2023-04-05', 'Mobile Robbery', 'Assigned', 'ChargeSheet Filed', 's01');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@gmail.com', 'head'),
('head@gmail.com', 'head');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Dev', 'd01', 'Robbery', 'Puna', '123456'),
('Het', 'h01', 'Pick Pocket', 'Valsad', '123456'),
('Krish', 'k01', 'Missing Person', 'Puna', '123456'),
('Krishna', 'k11', 'Robbary', 'kolkata', '123456'),
('Nishit', 'n01', 'Pick Pocket', 'Vadodara', '123456'),
('Surya', 's01', 'Robbary', 'Mumbai', '123456'),
('Sahil', 's1', 'Pick Pocket', 'Chennai', '123456'),
('Tarang', 't01', 'Pick Pocket', 'Jamnagar', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('a01', 'Ayush', 'Rajkot', '123456'),
('b01', 'Bhavik', 'Jamnagar', '123456'),
('c01', 'Chetan', 'Chennai', '123456'),
('d01', 'Dev', 'Mumbai', '123456'),
('K01', 'Krishna', 'kolkata', '123456'),
('r01', 'Rohan', 'Vadodara', '123456'),
('s01', 'Suresh', 'Valsad', '123456'),
('y01', 'Yash', 'Puna', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(2, '2023-04-21 05:57:50', 'Criminal Verified'),
(2, '2023-04-21 05:58:16', 'Completed'),
(3, '2023-04-21 06:12:08', 'Criminal Verified'),
(6, '2023-04-21 11:10:09', 'Criminal Verified'),
(6, '2023-04-21 11:10:17', 'Criminal Caught'),
(6, '2023-04-21 11:10:24', 'Criminal Accepted the Crime'),
(6, '2023-04-21 11:10:29', 'Criminal Charged'),
(6, '2023-04-21 11:10:37', 'Close Case'),
(7, '2023-04-21 11:31:34', 'Criminal Caught'),
(7, '2023-04-21 11:31:45', 'Criminal Caught'),
(7, '2023-04-21 11:31:49', 'Criminal Interrogated'),
(7, '2023-04-21 11:31:52', 'Criminal Accepted the Crime'),
(7, '2023-04-21 11:31:57', 'Criminal Charged'),
(7, '2023-04-21 11:32:06', 'close case'),
(9, '2023-04-21 11:57:27', 'Criminal Verified'),
(9, '2023-04-21 11:57:33', 'Criminal Interrogated'),
(9, '2023-04-21 11:57:54', 'Close Case'),
(10, '2023-04-21 12:16:02', 'Criminal Verified'),
(10, '2023-04-21 12:16:09', 'Criminal Caught'),
(10, '2023-04-21 12:16:27', 'Close Case'),
(11, '2023-04-21 13:22:58', 'Criminal Verified'),
(11, '2023-04-21 13:23:06', 'Criminal Charged'),
(11, '2023-04-21 13:23:15', 'Close Case'),
(13, '2023-04-24 06:35:17', 'Criminal Interrogated'),
(13, '2023-04-24 06:35:21', 'Criminal Accepted the Crime'),
(13, '2023-04-24 06:36:40', 'jdgiu2diu'),
(14, '2023-04-25 05:35:47', 'Criminal Verified'),
(14, '2023-04-25 05:35:51', 'Criminal Caught'),
(14, '2023-04-25 05:35:59', 'Criminal Interrogated'),
(14, '2023-04-25 05:36:06', 'Criminal Accepted the Crime'),
(14, '2023-04-25 05:36:11', 'Criminal Charged'),
(14, '2023-04-25 05:36:19', 'Case Solve'),
(15, '2023-04-29 03:15:20', 'Criminal Verified'),
(15, '2023-04-29 03:15:29', 'Criminal Charged'),
(15, '2023-04-29 03:15:36', 'Criminal Accepted the Crime'),
(15, '2023-04-29 03:15:45', 'Case Close'),
(16, '2023-04-29 05:03:27', 'Criminal Verified'),
(16, '2023-04-29 05:03:42', 'Criminal Charged'),
(16, '2023-04-29 05:03:57', 'Csae Close');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Krishna Prajapati', 'krishna12@gmail.com', '123456', 'Surat', 459208398500, 'Female', 6430274556),
('Anjali Kunwer', 'anjali@gmail.com', 'anjali', 'Jamnagar', 912264461212, 'Female', 9017284823),
('Yash ', 'yash@gmail.com', '123456', 'Rajkot', 959621223454, 'Male', 8150434815),
('Rahul', 'rahul@gmail.com', '123456', 'Ahmedabad', 959643126576, 'Male', 8160434756),
('Vismay', 'vismay@gmail.com', '123456', 'Rajkot', 959643235465, 'Male', 9932145723),
('krishna', 'krishna@gmail.com', '123456', 'Surat', 959643561213, 'Male', 9925134523),
('Darsh', 'darsh@gmail.com', '123456', 'Vadodara', 959645641231, 'Male', 9925129277),
('Aajay', 'aajay@gmail.com', '123456', 'Delhi', 959667541324, 'Male', 9678054364),
('Kalpesh', 'kalpesh@gmail.com', '123456', 'Valsad', 989745643423, 'Male', 8160424815);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`a_no`),
  ADD UNIQUE KEY `u_id` (`u_id`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
