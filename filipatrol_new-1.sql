-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2017 at 01:12 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filipatrol_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `username`, `password`, `first_name`, `last_name`, `middle_name`, `age`, `email_address`, `mobile_no`, `country`, `province`, `city`) VALUES
(1, 'des', 'e10adc3949ba59abbe56e057f20f883e', 'Desiree', 'Gatchalian', 'Da', 18, 'dhes.gatchalian@gmail.coom', '09123456789', 'Philippines', 'Metro Manila', 'Paranaque City');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `govt_agency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `govt_agency`) VALUES
(00000000001, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'Desiree', 'Gatchalian', 'dhes.gatchalian@gmail.com', 'DepEd');

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `alert_title` varchar(30) NOT NULL,
  `alert_msg` varchar(255) NOT NULL,
  `country` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `date_issued` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `alert_title`, `alert_msg`, `country`, `region`, `province`, `city`, `date_issued`) VALUES
(00000000001, 'Defense Incoming', 'Gawin na ang thesis habang may oras pa', 'Philippines', 'NCR', 'Metro Manila', 'Manila', '2016-12-31 17:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `concern`
--

CREATE TABLE `concern` (
  `concern_id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(20) NOT NULL,
  `concern_title` varchar(30) NOT NULL,
  `concern_msg` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `govt_agency_recepient` varchar(50) NOT NULL,
  `message_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concern`
--

INSERT INTO `concern` (`concern_id`, `username`, `concern_title`, `concern_msg`, `image`, `govt_agency_recepient`, `message_date`) VALUES
(00000000001, 'des', 'THESIS', 'Penge energy para sa thesis ty', NULL, 'COS', '2016-11-19 12:28:24'),
(00000000002, 'desgatch', 'Yung modal na ayaw gumana', 'Nakakainis na yang modal na yan pagsabihan mo yan', NULL, 'COS', '2016-12-17 21:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `concern_response`
--

CREATE TABLE `concern_response` (
  `concern_response_id` int(20) NOT NULL,
  `concern_response_title` varchar(100) NOT NULL,
  `concern_response_msg` varchar(500) NOT NULL,
  `image` varchar(20) NOT NULL,
  `message_date` datetime(6) NOT NULL,
  `concern_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `geography`
--

CREATE TABLE `geography` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `region` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geography`
--

INSERT INTO `geography` (`id`, `region`, `province`, `city`) VALUES
(001, 'Region 1', 'Ilocos Norte', 'Laoag'),
(002, 'Region 1', 'Ilocos Sur', 'Candon'),
(003, 'Region 1', 'Ilocos Sur', 'Vigan'),
(004, 'Region 1', 'La Union', 'null'),
(005, 'Region 1', 'Pangasinan', 'Alaminos'),
(006, 'Region 1', 'Pangasinan', 'Dagupan'),
(007, 'Region 1', 'Pangasinan', 'San Carlos'),
(008, 'Region 1', 'Pangasinan', 'Urdaneta'),
(009, 'Region 2', 'Batanes', 'null'),
(010, 'Region 2', 'Cagayan', 'null'),
(011, 'Region 2', 'Isabela', 'null'),
(012, 'Region 2', 'Nueva Vizcaya', 'null'),
(013, 'Region 2', 'Quirino', 'null'),
(014, 'Region 3', 'Aurora', 'null'),
(015, 'Region 3', 'Bataan', 'null'),
(016, 'Region 3', 'Bulacan', 'null'),
(017, 'Region 3', 'Nueva Ecija', 'null'),
(018, 'Region 3', 'Pampanga', 'null'),
(019, 'Region 3', 'Tarlac', 'null'),
(020, 'Region 3', 'Zambales', 'null'),
(021, 'Region 4A', 'Batangas', 'Batangas'),
(022, 'Region 4A', 'Batangas', 'Lipa'),
(023, 'Region 4A', 'Batangas', 'Tanauan'),
(024, 'Region 4A', 'Cavite', 'Cavite'),
(025, 'Region 4A', 'Cavite', 'Dasmariñas'),
(026, 'Region 4A', 'Cavite', 'Tagaytay'),
(027, 'Region 4A', 'Cavite', 'Tagaytay'),
(028, 'Region 4A', 'Cavite', 'Trece Martires'),
(029, 'Region 4A', 'Laguna', 'Calamba'),
(030, 'Region 4A', 'Laguna', 'San Pablo'),
(031, 'Region 4A', 'Laguna', 'Santa Rosa'),
(032, 'Region 4A', 'Quezon', 'Lucena'),
(033, 'Region 4A', 'Quezon', 'Tayabas'),
(034, 'Region 4A', 'Rizal', 'Antipolo'),
(035, 'Region 4B', 'Marinduque', 'null'),
(036, 'Region 4B', 'Mindoro Occidental', 'null'),
(037, 'Region 4B', 'Mindoro Oriental', 'null'),
(038, 'Region 4B', 'Palawan', 'null'),
(039, 'Region 4B', 'Romblon', 'null'),
(040, 'Region 5', 'Albay', 'Legazpi'),
(041, 'Region 5', 'Albay', 'Ligao'),
(042, 'Region 5', 'Albay', 'Tabaco'),
(043, 'Region 5', 'Camarines Norte', 'null'),
(044, 'Region 5', 'Camarines Sur', 'Iriga'),
(045, 'Region 5', 'Camarines Sur', 'Naga'),
(046, 'Region 5', 'Catanduanes', 'null'),
(047, 'Region 5', 'Masbate', 'Masbate'),
(048, 'Region 5', 'Sorsogon', 'Sorsogon'),
(049, 'Region 6', 'Aklan', 'null'),
(050, 'Region 6', 'Antique', 'null'),
(051, 'Region 6', 'Capiz', 'null'),
(052, 'Region 6', 'Iloilo', 'null'),
(053, 'Region 6', 'Guimaras', 'null'),
(054, 'Region 7', 'Bohol', 'Tagbiliran'),
(055, 'Region 7', 'Cebu', 'Bogo'),
(056, 'Region 7', 'Cebu', 'Carcar'),
(057, 'Region 7', 'Cebu', 'Cebu'),
(058, 'Region 7', 'Cebu', 'Danao'),
(059, 'Region 7', 'Cebu', 'Danao'),
(060, 'Region 7', 'Cebu', 'Lapu-lapu'),
(061, 'Region 7', 'Cebu', 'Mandaue'),
(062, 'Region 7', 'Cebu', 'Naga'),
(063, 'Region 7', 'Cebu', 'Talisay'),
(064, 'Region 7', 'Cebu', 'Toledo'),
(065, 'Region 7', 'Siquijor', 'null'),
(066, 'Region 8', 'Biliran', 'null'),
(067, 'Region 8', 'Biliran', 'null'),
(068, 'Region 8', 'Eastern Samar', 'null'),
(069, 'Region 8', 'Leyte', 'null'),
(070, 'Region 8', 'Northern Samar', 'null'),
(071, 'Region 8', 'Samar', 'null'),
(072, 'Region 8', 'Southern Leyte', 'null'),
(073, 'Region 9', 'Zamboanga Del Norte', 'Dapitan'),
(074, 'Region 9', 'Zamboanga Del Norte', 'Dipolog'),
(075, 'Region 9', 'Basilan', 'Isabela'),
(076, 'Region 9', 'Zamboanga Sibugay', 'null'),
(077, 'Region 9', 'Zamboanga City', 'null'),
(078, 'Region 10', 'Bukidnon', 'Malaybalay'),
(079, 'Region 10', 'Bukidnon', 'Valencia'),
(080, 'Region 10', 'Camiguin', 'null'),
(081, 'Region 10', 'Lanao del Norte', 'null'),
(082, 'Region 10', 'Misamis Occidental', 'null'),
(083, 'Region 10', 'Misamis Oriental', 'null'),
(084, 'Region 11', 'Compostela Valley', 'null'),
(085, 'Region 11', 'Davao del Norte', 'null'),
(086, 'Region 11', 'Davao del Sur', 'null'),
(087, 'Region 11', 'null', 'Davao City'),
(088, 'Region 11', 'Davao Occidental', 'null'),
(089, 'Region 11', 'Davao Oriental', 'null'),
(090, 'Region 12', 'Cotabato', 'Cotabato'),
(091, 'Region 12', 'South Cotabato', 'null'),
(092, 'Region 12', 'Sultan Kudarat', 'null'),
(093, 'Region 12', 'Sarangani', 'null'),
(094, 'Region 13', 'Agusan del Norte', 'null'),
(095, 'Region 13', 'Agusan del Sur', 'null'),
(096, 'Region 13', 'Surigao del Norte', 'null'),
(097, 'Region 13', 'Surigao del Sur', 'null'),
(098, 'Region 13', 'Dinagat Island', 'null'),
(099, 'Region 14', 'Abra', 'null'),
(100, 'Region 14', 'Apayao', 'null'),
(101, 'Region 14', 'Benguet', 'null'),
(102, 'Region 14', 'Ifugao', 'null'),
(103, 'Region 14', 'Kalinga', 'null'),
(104, 'Region 14', 'Mountain province', 'null'),
(105, 'Region 15', 'Basilan', 'Lamitan'),
(106, 'Region 15', 'Lanao del Sur', 'Marawi'),
(107, 'Region 15', 'Maguindanao', 'null'),
(108, 'Region 15', 'Sulu', 'null'),
(109, 'Region 15', 'Tawi-tawi', 'null'),
(110, 'NCR', 'Metro Manila', 'Caloocan'),
(111, 'NCR', 'Metro Manila', 'Las Piñas'),
(112, 'NCR', 'Metro Manila', 'Makati'),
(113, 'NCR', 'Metro Manila', 'Malabon'),
(114, 'NCR', 'Metro Manila', 'Mandaluyong'),
(115, 'NCR', 'Metro Manila', 'Manila'),
(116, 'NCR', 'Metro Manila', 'Marikina'),
(117, 'NCR', 'Metro Manila', 'Muntinlupa'),
(118, 'NCR', 'Metro Manila', 'Navotas'),
(119, 'NCR', 'Metro Manila', 'Paranaque'),
(120, 'NCR', 'Metro Manila', 'Pasay'),
(121, 'NCR', 'Metro Manila', 'Pasig'),
(122, 'NCR', 'Metro Manila', 'Pateros'),
(123, 'NCR', 'Metro Manila', 'Quezon City'),
(124, 'NCR', 'Metro Manila', 'San Juan'),
(125, 'NCR', 'Metro Manila', 'Taguig');

-- --------------------------------------------------------

--
-- Table structure for table `govt_agency`
--

CREATE TABLE `govt_agency` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `agency_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `govt_agency`
--

INSERT INTO `govt_agency` (`id`, `agency_name`) VALUES
(027, 'AFP'),
(031, 'BSP'),
(032, 'CESB'),
(006, 'COA'),
(007, 'COMELEC'),
(005, 'CSC'),
(008, 'DA'),
(033, 'DAP'),
(009, 'DAR'),
(010, 'DBM'),
(034, 'DBP'),
(013, 'DENR'),
(011, 'DepEd'),
(015, 'DFA'),
(017, 'DILG'),
(020, 'DND'),
(012, 'DOE'),
(014, 'DOF'),
(016, 'DOH'),
(018, 'DOJ'),
(019, 'DOLE'),
(022, 'DOST'),
(024, 'DOT'),
(026, 'DOTC'),
(021, 'DPWH'),
(023, 'DSWD'),
(025, 'DTI'),
(035, 'GSIS'),
(004, 'House of Representatives'),
(036, 'LBP'),
(041, 'NAMRIA'),
(037, 'NCC'),
(038, 'NCDA'),
(039, 'NEDA'),
(040, 'NFA'),
(042, 'NSCB'),
(043, 'NSO'),
(044, 'NTC'),
(001, 'Office of the President'),
(045, 'OWWA'),
(029, 'PA'),
(028, 'PAF'),
(046, 'PhilHealth'),
(030, 'PN'),
(047, 'SEC'),
(003, 'Senate of the Philippines'),
(048, 'SSS'),
(002, 'Supreme Court of the Philippines');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concern`
--
ALTER TABLE `concern`
  ADD PRIMARY KEY (`concern_id`);

--
-- Indexes for table `concern_response`
--
ALTER TABLE `concern_response`
  ADD PRIMARY KEY (`concern_response_id`),
  ADD KEY `concern_id` (`concern_id`);

--
-- Indexes for table `geography`
--
ALTER TABLE `geography`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `govt_agency`
--
ALTER TABLE `govt_agency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agency` (`agency_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `concern`
--
ALTER TABLE `concern`
  MODIFY `concern_id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `govt_agency`
--
ALTER TABLE `govt_agency`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
