-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 05:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obibank`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getdata` (IN `get` INT)  NO SQL
select * from basic_info where acc_no = get$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `username` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` int(4) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `uid` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`username`, `fname`, `branch_no`, `branch_name`, `dob`, `gender`, `age`, `occupation`, `phno`, `uid`, `email`, `address`) VALUES
('hozair', 'nasir', '1obi11', 'obi sbc', '1997-06-18', 'male', 21, 'student', 867881634, '1235568', 'hozair123@gmail.com', 'jss boys hostel banglore'),
('shubham', 'maurya', '1obi11', 'obi sbc', '1998-07-18', 'male', 20, 'student', 8378473932, '76527835', 'shubh13@gmail.com', 'banglore'),
('setu', 'mahendra', '1obi11', 'obi sbc', '1997-06-03', 'male', 21, 'student', 8678809897, '12398762', 'setu123@gmail.com', 'jss school banglore'),
('satyam', 'mohon', '1obi12', 'obi rr nagar', '1997-06-18', 'male', 21, 'student', 8678816345, '1235562', 'satyam123@gmail.com', 'jss school banglore'),
('vicky', 'umesh', '1obi12', 'obi rr nagar', '1998-02-09', 'male', 20, 'student', 8678891384, '123456', 'vicky123@gmail.com', 'banglore'),
('neha', 'ranjan', '1obi12', 'obi rr nagar', '1999-04-16', 'female', 21, 'student', 8979944905, '173005672', 'neha123@gmail.com', 'banglore'),
('amar', 'aranv', '1obi12', 'obi rr nagar', '1998-06-27', 'male', 21, 'student', 9809999646, '173956672', 'amar123@gmail.com', 'banglore'),
('praharsh', 'pankaj', '1obi11', 'obi sbc', '1999-04-15', 'male', 20, 'student', 9868697646, '17398972', 'praharsh123@gmail.com', 'manglore'),
('devendra', 'sanjit', '1obi12', 'obi rr nagar', '1998-06-12', 'male', 20, 'student', 9934567890, '2476476', 'dev123@gmail.com', 'jss boys hostel banglore'),
('prakhar', 'sukala', '1obi12', 'obi rr nagar', '1997-07-03', 'male', 21, 'student', 86788909878, '12398762', 'sukla123@gmail.com', ' banglore'),
('ravish', 'ranjan', '1obi12', 'obi rr nagar', '1999-04-19', 'male', 21, 'student', 89799445546, '173008972', 'ravish123@gmail.com', 'banglore'),
('david', 'jhon', '1obi11', 'obi sbc', '2001-07-14', 'male', 20, 'student', 98099445546, '173098672', 'david123@gmail.com', 'banglore'),
('banka', 'sukala', '1obi12', 'obi rr nagar', '1997-07-03', 'male', 23, 'accountent', 98686646466, '12398972', 'bunka123@gmail.com', 'mysore');

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

CREATE TABLE `basic_info` (
  `acc_no` int(100) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `balance` int(15) NOT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`acc_no`, `branch_no`, `balance`, `phno`) VALUES
(7, '1obi12', 2200, 8678891384),
(8, '1obi12', 6000, 9934567890),
(1000, '1obi11', 5900, 8378473932),
(1001, '1obi11', 1800, 867881634),
(1002, '1obi12', 4300, 8678816345),
(1003, '1obi11', 3000, 8678809897),
(1004, '1obi12', 2000, 86788909878),
(1005, '1obi12', 4000, 98686646466),
(1006, '1obi11', 2500, 9868697646),
(1007, '1obi12', 3500, 9809999646),
(1008, '1obi11', 3500, 98099445546),
(1009, '1obi12', 3500, 89799445546),
(1010, '1obi12', 2000, 8979944905);

-- --------------------------------------------------------

--
-- Table structure for table `deposite`
--

CREATE TABLE `deposite` (
  `acc_no` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `amount` int(15) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposite`
--

INSERT INTO `deposite` (`acc_no`, `username`, `branch_no`, `amount`, `phno`, `date`) VALUES
(7, 'vicky', '1obi12', 1500, 8678891384, '2018-11-23 15:51:14'),
(7, 'vicky', '1obi12', 5000, 8678891384, '2018-11-23 16:00:00'),
(1001, 'hozair', '1obi12', 5000, 982837726, '2018-11-30 05:46:25'),
(1000, 'jhon', '1obi11', 5000, 982837800, '2018-11-30 05:46:49'),
(1003, 'vicky', '1obi11', 5000, 8678891384, '2018-11-30 05:47:23'),
(1004, 'vicky', '1obi12', 5000, 8678891384, '2018-11-30 05:47:34'),
(1005, 'shubham', '1obi11', 5000, 86788887684, '2018-11-30 05:47:54'),
(1006, 'shubham', '1obi11', 5000, 86788887684, '2018-11-30 05:48:01'),
(1007, 'ravi', '1obi11', 5000, 86788887684, '2018-11-30 05:48:10'),
(1008, 'ranjan', '1obi12', 5000, 867888899, '2018-11-30 05:48:29'),
(1009, 'raju', '1obi11', 5000, 8678932782, '2018-11-30 05:48:51'),
(8, 'rajan', '1obi12', 5000, 867090898, '2018-11-30 05:49:15'),
(1010, 'vicky', '1obi12', 5000, 8678891384, '2018-11-30 05:50:04'),
(1002, 'devendra', '1obi11', 4000, 9934646776, '2018-11-30 05:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `acc_no` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `loan_type` varchar(20) NOT NULL,
  `time_span` int(4) NOT NULL,
  `amount` int(15) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`acc_no`, `username`, `branch_no`, `loan_type`, `time_span`, `amount`, `phno`, `date`) VALUES
(7, 'vicky', '1obi12', 'study', 12, 4000, 83648632, '2018-11-30'),
(8, 'devendra', '1obi11', 'study', 9, 6457, 8364863246, '2018-11-30'),
(1000, 'rohan', '1obi12', 'study', 10, 6400, 836487989, '2018-11-30'),
(1004, 'jhon', '1obi11', 'study', 8, 500, 83648798900, '2018-11-30'),
(1005, 'david', '1obi12', 'bussiness', 23, 50000, 83648798900, '2018-11-30'),
(1006, 'pankaj', '1obi11', 'bussiness', 17, 5000, 9897767887, '2018-11-30'),
(1008, 'neha', '1obi12', 'student', 15, 5000, 9876565677, '2018-11-30'),
(1009, 'jacob', '1obi11', 'student', 10, 3000, 987658997, '2018-11-30'),
(1010, 'nishant', '1obi12', 'student', 10, 3500, 9383738732, '2018-11-30'),
(1000, 'nishant', '1obi12', 'student', 11, 4000, 9383738732, '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `moneytrans`
--

CREATE TABLE `moneytrans` (
  `sacc_no` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `racc_no` int(20) NOT NULL,
  `amount` int(15) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moneytrans`
--

INSERT INTO `moneytrans` (`sacc_no`, `username`, `branch_no`, `racc_no`, `amount`, `phno`, `date`) VALUES
(7, 'vicky', '1obi11', 8, 1200, 8678891384, '2018-11-30 05:59:26'),
(8, 'vicky', '1obi11', 7, 1200, 8678891384, '2018-11-30 05:59:37'),
(7, 'vicky', '1obi11', 8, 1000, 8678891384, '2018-11-30 05:59:48'),
(7, 'vicky', '1obi11', 1000, 1000, 8678891384, '2018-11-30 06:00:21'),
(1000, 'vicky', '1obi11', 7, 1100, 8678891384, '2018-11-30 06:00:37'),
(1001, 'vicky', '1obi11', 7, 1100, 8678891384, '2018-11-30 06:01:03'),
(1001, 'vicky', '1obi11', 1000, 1000, 8678891384, '2018-11-30 06:01:20'),
(1002, 'shubham', '1obi12', 1001, 500, 867889198, '2018-11-30 06:01:55'),
(1003, 'shubham', '1obi12', 1002, 500, 867889198, '2018-11-30 06:02:27'),
(1004, 'jhon', '1obi13', 1002, 500, 86788919812, '2018-11-30 06:02:44'),
(1004, 'jhon', '1obi12', 1003, 500, 86788919812, '2018-11-30 06:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `username` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `phno` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `fname`, `uid`, `phno`, `email`, `password`) VALUES
('vicky', 'umesh', '12345', 8678891, 'vicky123@gmail.com', 'vicky123'),
('devendra', 'sankar', '12874738', 2147483647, 'dev123@gmail.com', 'dev123'),
('rohan', 'sanjit', '36253762', 83648632, 'rohann123@gmail.com', 'rohan123'),
('jhon', 'david', '76527835', 2147483647, 'jhon123@gmail.com', 'jhon123'),
('shubham', 'maurya', '2476476', 982837726, 'shubh13@gmail.com', 'shubh123');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `acc_no` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `branch_no` varchar(20) NOT NULL,
  `amount` int(15) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`acc_no`, `username`, `branch_no`, `amount`, `phno`, `date`) VALUES
(7, 'vicky', '1obi12', 500, 8678891384, '2018-11-23 15:51:43'),
(7, 'vicky', '1obi12', 100, 8678891384, '2018-11-23 15:54:13'),
(7, 'vicky', '1obi12', 1500, 8678891384, '2018-11-23 16:06:24'),
(7, 'vicky', '1obi12', 1500, 8736762827, '2018-11-30 05:51:18'),
(1001, 'devendra', '1obi11', 100, 83648632, '2018-11-30 05:53:00'),
(1002, 'dev', '1obi12', 200, 8364863246, '2018-11-30 05:53:28'),
(1003, 'djhon', '1obi11', 2000, 8364869076, '2018-11-30 05:53:51'),
(1004, 'david', '1obi12', 2000, 83648695, '2018-11-30 05:54:11'),
(1005, 'shubham', '1obi11', 1000, 8364869905, '2018-11-30 05:54:41'),
(1006, 'shubham', '1obi12', 1000, 8364869905, '2018-11-30 05:55:09'),
(1006, 'vicky', '1obi11', 1500, 8678891384, '2018-11-30 05:56:08'),
(1007, 'vicky', '1obi11', 1500, 8678891384, '2018-11-30 05:57:24'),
(1008, 'vicky', '1obi11', 1500, 8678891384, '2018-11-30 05:57:29'),
(1009, 'vicky', '1obi11', 1500, 8678891384, '2018-11-30 05:57:34'),
(1010, 'vicky', '1obi11', 1500, 8678891384, '2018-11-30 05:57:40'),
(1010, 'vicky', '1obi11', 1500, 8678891384, '2018-11-30 05:57:45'),
(1001, 'jhon', '1obi12', 1500, 879998009, '2018-11-30 05:58:12');

--
-- Triggers `withdraw`
--
DELIMITER $$
CREATE TRIGGER `addmoney` AFTER INSERT ON `withdraw` FOR EACH ROW UPDATE basic_info b , withdraw w SET b.balance=b.balance-w.amount where b.acc_no=w.acc_no and w.date=CURRENT_TIMESTAMP
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`phno`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`acc_no`),
  ADD KEY `ddd` (`phno`);

--
-- Indexes for table `deposite`
--
ALTER TABLE `deposite`
  ADD KEY `d` (`acc_no`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD KEY `c` (`acc_no`);

--
-- Indexes for table `moneytrans`
--
ALTER TABLE `moneytrans`
  ADD KEY `b` (`racc_no`),
  ADD KEY `aa` (`sacc_no`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD KEY `a` (`acc_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `acc_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD CONSTRAINT `ddd` FOREIGN KEY (`phno`) REFERENCES `account_info` (`phno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposite`
--
ALTER TABLE `deposite`
  ADD CONSTRAINT `d` FOREIGN KEY (`acc_no`) REFERENCES `basic_info` (`acc_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `c` FOREIGN KEY (`acc_no`) REFERENCES `basic_info` (`acc_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moneytrans`
--
ALTER TABLE `moneytrans`
  ADD CONSTRAINT `aa` FOREIGN KEY (`sacc_no`) REFERENCES `basic_info` (`acc_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b` FOREIGN KEY (`racc_no`) REFERENCES `basic_info` (`acc_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `a` FOREIGN KEY (`acc_no`) REFERENCES `basic_info` (`acc_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
