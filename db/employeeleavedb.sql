-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 09:18 AM
-- Server version: 10.4.32-MariaDB-log
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(1, 'admin', 'd00f5d5217896fb7fd601412cb890830', 'Lorem', 'admin@mail.com', '2024-06-13 15:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Customer Service', 'CS', '001', '2024-06-14 03:24:33'),
(2, 'Information Technology', 'IT', '002', '2024-06-14 03:24:56'),
(3, 'Marketing', 'MK', '003', '2024-06-14 03:25:20'),
(4, 'Human Resources ', 'HR', '004', '2024-06-14 03:25:39'),
(5, 'Finance', 'FN', '005', '2024-06-14 03:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '123', 'kbjkj', 'kbbbjb', 'bbbh@gmail.com', '5b307381861d9a4c51b0e881eef973d3', '', '', '', 'fgfx', 'xfgxg', 'fngfn', '887', 1, '2024-06-13 21:02:07'),
(2, '123', 'dini', 's', 'dini@gmail.com', '83476316a972856163fb987b861a0a2c', 'Female', '1999-09-09', 'tes', 'ipsum', 'dolor', 'lorem', '08', 1, '2024-06-14 01:48:55'),
(3, '00', 'SDF', 'FDS', 'smsfs@gmail.com', 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'Male', '2002-01-02', 'Information Technology', 'fdfd', 'dsfs', 'fsfsd', '2213', 1, '2024-06-14 03:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'Casual Leave', '2024-06-14', '2024-06-14', 'lorem ipsum', '2024-06-14 01:49:42', 'hem', '2024-06-14 7:27:59 ', 2, 1, 10),
(24, 'Cuti Alasan Penting', '2024-06-14', '2024-06-14', 'lorem ipsum', '2024-06-14 03:46:08', 'ga', '2024-06-14 9:21:28 ', 2, 1, 2),
(25, 'Cuti Pernikahan', '2024-06-15', '2024-06-21', 'njnjnj', '2024-06-14 03:47:15', 'oke', '2024-06-14 9:20:45 ', 1, 1, 2),
(26, 'Cuti Sakit', '2024-06-22', '2024-06-28', '', '2024-06-14 03:48:33', NULL, NULL, 0, 1, 2),
(27, 'Cuti Tahunan', '2024-06-14', '2024-06-14', '', '2024-06-14 05:04:16', NULL, NULL, 0, 0, 2),
(28, 'Cuti Sakit', '2024-06-14', '2024-06-14', '', '2024-06-14 05:04:41', NULL, NULL, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Cuti Sakit', 'Cuti yang diajukan karena tidak bisa bekerja karena alasan kesehatan.', '2024-06-14 02:47:04'),
(2, 'Cuti Melahirkan', 'Cuti khusus yang diberikan kepada karyawan perempuan yang melahirkan.', '2024-06-14 02:47:28'),
(4, 'Cuti Pernikahan', 'Cuti yang diajukan untuk mempersiapkan dan menghadiri pernikahan sendiri atau anggota keluarga terdekat.', '2024-06-14 02:48:22'),
(5, 'Cuti Kematian', 'Cuti yang diambil untuk menghadiri atau mengurus proses pemakaman anggota keluarga terdekat.', '2024-06-14 02:48:38'),
(6, 'Cuti Alasan Penting', 'Cuti yang diajukan karena alasan mendesak atau penting yang tidak dapat ditunda.', '2024-06-14 02:49:06'),
(7, 'Cuti Tahunan', 'Cuti yang diberikan secara rutin setiap tahun sebagai hak karyawan untuk beristirahat.', '2024-06-14 02:49:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
