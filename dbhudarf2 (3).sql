-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 04:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhudarf2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminID` int(7) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emailadd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminID`, `firstname`, `lastname`, `gender`, `emailadd`) VALUES
(2, 'Tony', 'Stark', 'Male', 'tony@email.com'),
(3, 'Thor', 'Odinson', 'Male', 'worthy@gmail.com'),
(4, 'Bruce', 'Banner', 'Male', 'hulk@email.com'),
(5, 'Peter', 'Parker', 'Male', 'spider@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `acctid` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`acctid`, `username`, `password`) VALUES
(5, 'Captain', '$2y$10$LBnbPZ8jjM/kNFPa57JsSOBJxzfHfPIJhV.8io3lWKxkN0IqF5Mby'),
(6, 'Blackwidow', '$2y$10$QdqNV6MTLeM5HMff43atceFGM46E67VXzjOCifi2mY3KpeJSIw94G'),
(7, 'Hawkeye', '$2y$10$V9apSCGjzSZ9xlpJlRGtWeIfbDdyx2zCBjOoE61UzS9BQiWCPkQ.C'),
(8, 'Loki', '$2y$10$4Va5smrZ5SfuAUjwhB59Sea4dpLMlOSiXQWRGjJYvOGiRwaxJJpsm'),
(9, 'Wanda', '$2y$10$55jC6CLv9tPJ/1A6SXkTDOCma9aqkoYwmJc.nYbQoP.a2qoWPfc1u');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseradmin`
--

CREATE TABLE `tbluseradmin` (
  `useradminID` int(7) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseradmin`
--

INSERT INTO `tbluseradmin` (`useradminID`, `username`, `password`) VALUES
(2, 'Ironman', '$2y$10$Sc71JhM5k41fB5nh4D99fOPsgwK0IcMRj5JixR6N2c38UgAHNvVei'),
(3, 'Pointbreak', '$2y$10$X9W3Q/eftkQI9516MfJACOrW2N.o/g78Av8VoTP83vKf6s9qvwxDK'),
(4, 'Hulk', '$2y$10$DS6LGvpEKyuwIuxtVoqh7O.UDW7xSKtB07e3YTundyPXS3WdGS90G'),
(5, 'Spiderman', '$2y$10$3jMUOKj0ABkY/x33A8GTKunbrr98dxd4l0PmZ4JlJrdNBIXpjElvK');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserprofile`
--

CREATE TABLE `tbluserprofile` (
  `userid` int(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emailadd` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `userstatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluserprofile`
--

INSERT INTO `tbluserprofile` (`userid`, `firstname`, `lastname`, `gender`, `emailadd`, `birthdate`, `userstatus`) VALUES
(5, 'Steve', 'Rogers', 'Male', 'captain@email.com', '1945-12-12', 'Single'),
(6, 'Natasha', 'Romanoff', 'Male', 'widow@email.com', '1987-09-05', 'Single'),
(7, 'Clint', 'Barton', 'Male', 'hawkeye@gmail.com', '1986-05-25', 'Married'),
(8, 'Loki', 'Odinson', 'Male', 'loki@email.com', '1204-09-21', 'Single'),
(9, 'Wanda', 'Maximoff', 'Female', 'wanda@email.com', '1998-04-12', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`acctid`);

--
-- Indexes for table `tbluseradmin`
--
ALTER TABLE `tbluseradmin`
  ADD PRIMARY KEY (`useradminID`);

--
-- Indexes for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adminID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `acctid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbluseradmin`
--
ALTER TABLE `tbluseradmin`
  MODIFY `useradminID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
