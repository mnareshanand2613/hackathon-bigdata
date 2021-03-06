-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 08:54 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Source` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Mode` varchar(30) NOT NULL,
  `Company` varchar(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`Id`, `Name`, `Source`, `Destination`, `Mode`, `Company`, `Date`) VALUES
(1, 'Hari', 'Jaipur', 'Bikaner', 'Flight', 'Air Asia', '2018-07-26'),
(2, 'Abhilash', 'Jaipur', 'Bikaner', 'Rail', 'Indian Railways', '2018-07-26'),
(3, 'Naresh', 'Jaipur', 'Udaipur', 'Rail', 'Indian Railways', '2018-07-27'),
(4, 'Krishna', 'Jodhpur', 'Ajmer', 'Flight', 'SpiceJet', '2018-08-27'),
(5, 'Anand', 'Jaipur', 'Udaipur', 'Rail', 'Indian Railways', '2018-09-17'),
(6, 'Murthy', 'Kota', 'Alwar', 'Rail', 'Indian Railways', '2018-05-07'),
(7, 'Abs', 'Alwar', 'Kota', 'Rail', 'Indian Railways', '2018-04-17'),
(8, 'Hemanth', 'Udaipur', 'Jaipur', 'Rail', 'Indian Railways', '2018-03-02'),
(9, 'John', 'Amer', 'Bundi', 'Flight', 'AirAsia', '2018-02-19'),
(10, 'Andrew', 'Bundi', 'Amer', 'Rail', 'Indian Railways', '2018-05-05'),
(11, 'Antony', 'Ranakpur', 'Mandawa', 'Rail', 'Indian Railways', '2018-04-20'),
(12, 'Guna', 'Beawar', 'Udaipur', 'Flight', 'IndiGo', '2018-04-21'),
(13, 'Gopal', 'Ranakpur', 'Mandawa', 'Flight', 'IndiGo', '2018-01-17'),
(14, 'Muthu', 'Ranakpur', 'Mandawa', 'Flight', 'IndiGo', '2018-01-10'),
(15, 'Bala', 'Sojat', 'Sikar', 'Flight', 'Vistara', '2018-02-09'),
(16, 'Carolyn', 'Sikar', 'Mandore', 'Flight', 'Vistara', '2018-03-08'),
(17, 'Angel', 'Sikar', 'Sojat', 'Flight', 'IndiGo', '2018-04-07'),
(18, 'Adk', 'Sojat', 'Mandore', 'Flight', 'IndiGo', '2018-05-06'),
(19, 'Dinesh', 'Mandore', 'Sojat', 'Flight', 'IndiGo', '2018-06-05'),
(20, 'Kumar', 'Mandore', 'Sikar', 'Flight', 'GoAir', '2018-07-04'),
(21, 'Satheesh', 'Ranakpur', 'Mandore', 'Flight', 'GoAir', '2018-08-03'),
(22, 'Aravind', 'Bundi', 'Behror', 'Flight', 'Vistara', '2018-09-02'),
(23, 'Naidu', 'Sojat', 'Mandawa', 'Flight', 'Vistara', '2018-10-01'),
(24, 'Harishwar', 'Nohar', 'Sadri', 'Bus', 'R-Travels', '2018-10-01'),
(25, 'Janaki', 'Sojat', 'Ladnun', 'Bus', 'R-Travels', '2018-10-02'),
(26, 'Raman', 'Bundi', 'Mandawa', 'Flight', 'Vistara', '2018-10-03'),
(27, 'Karthik', 'Sadri', 'Mandawa', 'Bus', 'R-Travels', '2018-10-04'),
(28, 'Gautam', 'Deeg', 'Mandawa', 'Flight', 'Vistara', '2018-10-05'),
(29, 'Ram', 'Deeg', 'Mandore', 'Bus', 'R-Travels', '2018-10-06'),
(30, 'Manoj', 'Udaipur', 'Deeg', 'Bus', 'R-Travels', '2018-10-07'),
(31, 'Praveen', 'Jaipur', 'Mandawa', 'Bus', 'R-Travels', '2018-10-08'),
(32, 'Joshwa', 'Bikaner', 'Sadri', 'Bus', 'R-Travels', '2018-02-01'),
(33, 'Aman', 'Sojat', 'Osian', 'Bus', 'R-Travels', '2018-04-05'),
(34, 'Ameer', 'Jhalawar', 'Osian', 'Bus', 'Paras Travels', '2018-03-05'),
(35, 'Khan', 'Sojat', 'Pokhran', 'Bus', 'Rishabh Travels', '2018-06-05'),
(36, 'Rahul', 'Pokhran', 'Osian', 'Bus', 'Paras Travels', '2018-06-05'),
(37, 'Jayker', 'Sojat', 'Bhilwara', 'Bus', 'Paras Travels', '2018-03-05'),
(38, 'Arohi', 'Sadri', 'Osian', 'Bus', 'Paras Travels', '2018-04-05'),
(39, 'Poorna', 'Ajmer', 'Osian', 'Bus', 'Paras Travels', '2018-04-05'),
(40, 'Khatle', 'Ajmer', 'Pokhran', 'Bus', 'Rishabh Travels', '2018-04-05'),
(41, 'Sneha', 'Sadri', 'Bundi', 'Bus', 'Rishabh Travels', '2018-04-05'),
(42, 'Mayuri', 'Ladnun', 'Bhlwara', 'Bus', 'Rishabh Travels', '2018-04-05'),
(43, 'Arun', 'Jaipur', 'Osian', 'Bus', 'Rishabh Travels', '2018-04-05'),
(44, 'Ajith', 'Pushkar', 'Alwar', 'Flight', 'SpiceJet', '2018-03-07'),
(45, 'Vijay', 'Jaipur', 'Jodhpur', 'Flight', 'SpiceJet', '2018-07-08'),
(46, 'Surya', 'Pokhran', 'Osian', 'Bus', 'Rishabh Travels', '2018-08-09'),
(47, 'Siva', 'Jaipur', 'Kota', 'Rail', 'Indian Railways', '2018-01-02'),
(48, 'Vikram', 'Alwar', 'Kota', 'Flight', 'SpiceJet', '2018-02-03'),
(49, 'Ajmal', 'Jodhpur', 'Amer', 'Flight', 'IndiGo', '2018-01-04'),
(50, 'Atul', 'Jaipur', 'Sojat', 'Bus', 'Rishabh Travels', '2018-04-03'),
(51, 'Abdul', 'Bikaner', 'Alwar', 'Flight', 'Vistara', '2018-01-09'),
(52, 'Abdul', 'Bikaner', 'Alwar', 'Bus', 'Milan Travels', '2018-01-09'),
(53, 'Nayanthara', 'Jodhpur', 'Alwar', 'Bus', 'Milan Travels', '2018-08-09'),
(54, 'Trisha', 'Amer', 'Alwar', 'Bus', 'Milan Travels', '2018-08-01'),
(55, 'Hansika', 'Amer', 'Alwar', 'Bus', 'Milan Travels', '2018-08-09'),
(56, 'Kajal', 'Kota', 'Alwar', 'Bus', 'Milan Travels', '2018-08-09'),
(57, 'Sam', 'Bhilwara', 'Alwar', 'Bus', 'Milan Travels', '2018-08-09'),
(58, 'Meera', 'Bikaner', 'Ladnun', 'Bus', 'Milan Travels', '2018-08-08'),
(59, 'Archana', 'Bikaner', 'Sojat', 'Bus', 'Milan Travels', '2018-08-04'),
(60, 'Jebisha', 'Bikaner', 'Alwar', 'Bus', 'Milan Travels', '2018-08-05'),
(61, 'Agnes', 'Bikaner', 'Bundi', 'Flight', 'Vistara', '2018-08-03'),
(62, 'Afshan', 'Mandawa', 'Bundi', 'Flight', 'GoAir', '2018-08-03'),
(63, 'Ashmitha', 'Mandawa', 'Bundi', 'Flight', 'GoAir', '2018-08-11'),
(64, 'Esther', 'Kota', 'Bundi', 'Flight', 'GoAir', '2018-08-13'),
(65, 'Maria', 'Bikaner', 'Bundi', 'Flight', 'GoAir', '2018-08-23'),
(66, 'Jasmine', 'Bikaner', 'Alwar', 'Flight', 'GoAir', '2018-08-13'),
(67, 'Sushmitha', 'Bikaner', 'Sojat', 'Flight', 'GoAir', '2018-08-13'),
(68, 'Shruthi', 'Bikaner', 'Sadri', 'Flight', 'GoAir', '2018-08-13'),
(69, 'Sai', 'Pokhran', 'Bundi', 'Flight', 'GoAir', '2018-08-03'),
(70, 'Sophiya', 'Beawar', 'Bundi', 'Flight', 'GoAir', '2018-08-09'),
(71, 'Mary', 'Beawar', 'Bundi', 'Flight', 'GoAir', '2018-08-08'),
(72, 'Mary', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(73, 'Aabha', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(74, 'Aahna', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(75, 'Aashi', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(76, 'Aarushi', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(77, 'Aayushi', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(78, 'Aditi', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(79, 'Aishwarya', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(80, 'Ambika', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(81, 'Alka', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(82, 'Anjana', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(83, 'Anita', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(84, 'Anju', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(85, 'Aparna', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(86, 'Asha', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(87, 'Babita', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(88, 'Barkha', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(89, 'Basanti', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(90, 'Valak', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(91, 'Bhanu', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(92, 'Bharti', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(93, 'Bhavna', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(94, 'Bimla', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(95, 'Champa', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(96, 'Damini', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(97, 'Chandini', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(98, 'Indhuja', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(99, 'Priya', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(100, 'Mohana', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08'),
(101, 'Deepika', 'Beawar', 'Bundi', 'Rail', 'Indian Railways', '2018-08-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
