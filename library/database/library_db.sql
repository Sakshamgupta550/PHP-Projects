-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2022 at 11:20 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`)
) 

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `password`, `username`, `email`) VALUES
(1, 'SK', 'admin', 'admin', 'admin123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `bookTitle` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisherName` varchar(50) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `callNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`book_id`)
) 

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `bookTitle`, `author`, `publisherName`, `categories`, `ISBN`, `callNumber`) VALUES
(121, 'Effective Java', 'Joshua Bloch', 'Addison-Wesley', 'Programming Language Book', '9780134686097', '6393454946');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE IF NOT EXISTS `borrow` (
  `borrowDate` varchar(50) NOT NULL,
  `returnDate` varchar(50) NOT NULL,
  `studentId` varchar(50) NOT NULL,
  `bookId` varchar(50) NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`studentId`)
)

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `email`, `name`, `department`, `phoneNumber`) VALUES
(1, 'mailme.saku@gmail.com', 'Saksham Gupta', 'BCA', '6393454946');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
