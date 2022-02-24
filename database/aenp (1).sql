-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 20, 2022 at 04:28 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aenp`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication_table`
--

DROP TABLE IF EXISTS `authentication_table`;
CREATE TABLE IF NOT EXISTS `authentication_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `secretkey` text NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enp` text NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `authentication_table`
--

INSERT INTO `authentication_table` (`id`, `name`, `email`, `mobile`, `username`, `secretkey`, `status`, `enp`, `type`) VALUES
(1, 'Admin', 'admin@domain.com', '1234567890', 'admin', '8C6976E5B5410415BDE908BD4DEE15DFB167A9C873FC4BB8A81F6F2AB448A918', 'Activated', 'V0YAx5FakINGfKdZrI7E8LeY+tyRBt/ZcC4x/hCh5oERblWoIPXlUf1OcIrjtV33ASuuNSl0v1PkQgWtyC7EXLpx2ixpM0XY+/+QwvtZ7gcKkN/b5AhAFrvWzFy65Gl70c+HLuLZUQvkwU3EkLLhi2+p4Mgz/2VwTPFeDMUAzCJu2rD7MwY8tHoikcjFHcn3G0s5GxgGbWXE37SAJkv1NZ7DMu+JI0ZzZ6xx1R71f3rroVVNC0cyy2n0w4EgDGowWrL1mVJmexTxuVm/qoiPGg==', 'admin'),
(2, 'Mahesh', 'maheshmahiv@gmail.com', '9605200892', 'mahi', '78D7A82604DE80D2B191E92A96D23A2803C0A0E910A32A6744E3ECD41E4DA4CF', 'Activated', '96H/Hw9lyMqMKANpMSRj/mfC5KfcQebZiv40+1hbPBuiTixyCJKjBOL5uGizdj6fFcINmKcCDXRn1m00ptWt35lBm8L9+r8SgJX+/0hSQW7WVK4vQGOBLgZI0n30qc3GlM5TDm34qIaJPzQNMSPAbFq44rHxmdUnsgWJOM6RgURN3fjj3lt/yNMjbqBm7xtj4W8CAh4kKu4d5o0vXdwlmPUVQupv7tNMNbJHayiyK91Q9QfzIYJd+q9BB7lHd4NComAbNWQsBKmfXbdG7EWpAA==', 'user'),
(3, 'Anjana', 'anjana@domain.com', '960520000', 'anju', '71717FE25666C00E37562485C3BA51E8D648554DF8122107AD7821E3794F57D0', 'Activated', '+ltP1DSuwvom3QDvv1DRS89TOHMfea3+RnLCJhEUG9QT8DGautLWFXgny4H2IXS+Cc+80jMGSTyf+DQLyZf6uCbz0A7bDZpDiyZ4fOAsKKMJsvQ1JQFVTpiZwY4uHW5CGOxXkcrBv0+y9XVzyVRgvZPNxnjHPbINtfaJu/+PLfKp3A/V+SvOCsHCZYjkkxSLV0HIIdEgy5xpkm0e5TVYfn3s8EKulAYEuAmBNUTyDc2F0lG63ulQ0RVd5g6wKWUxWo8PTCBmK1gr5+qjq8z9Gg==', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
