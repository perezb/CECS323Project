-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 05:21 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `games`
--

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `idCommand` int(11) NOT NULL AUTO_INCREMENT,
  `idPlayer` int(11) DEFAULT NULL,
  `idDLC` int(11) DEFAULT NULL,
  `idPayment` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCommand`),
  UNIQUE KEY `idCommand_UNIQUE` (`idCommand`),
  KEY `idPlayer_idx` (`idPlayer`),
  KEY `idDLC_idx` (`idDLC`),
  KEY `idPayment_idx` (`idPayment`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`idCommand`, `idPlayer`, `idDLC`, `idPayment`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16),
(17, 17, 17, 17),
(18, 18, 18, 18),
(19, 19, 19, 19),
(20, 20, 20, 20),
(21, 21, 21, 21),
(22, 22, 22, 22),
(23, 23, 23, 23),
(24, 24, 24, 24),
(25, 25, 25, 25),
(26, 26, 1, 26),
(27, 27, 2, 27),
(28, 28, 3, 28),
(29, 29, 4, 29),
(30, 30, 5, 30),
(31, 31, 6, 31),
(32, 32, 7, 32),
(33, 33, 8, 33),
(34, 34, 9, 34),
(35, 35, 10, 35),
(36, 36, 11, 36),
(37, 37, 12, 37),
(38, 38, 13, 38),
(39, 39, 14, 39),
(40, 40, 15, 40),
(41, 41, 16, 41),
(42, 42, 17, 42),
(43, 43, 18, 43),
(44, 44, 19, 44),
(45, 45, 20, 45),
(46, 46, 21, 46),
(47, 47, 22, 47),
(48, 48, 23, 48),
(49, 49, 24, 49),
(50, 50, 25, 50),
(51, 1, 8, 51),
(52, 2, 12, 52),
(53, 3, 5, 53),
(54, 4, 7, 54),
(55, 5, 8, 55),
(56, 6, 12, 56),
(57, 7, 14, 57),
(58, 8, 24, 58),
(59, 9, 21, 59),
(60, 10, 13, 60),
(61, 11, 17, 61),
(62, 12, 3, 62),
(63, 13, 7, 63),
(64, 14, 9, 64),
(65, 15, 10, 65),
(66, 16, 12, 66),
(67, 17, 3, 67),
(68, 18, 7, 68),
(69, 19, 23, 69),
(70, 20, 25, 70),
(71, 21, 1, 71),
(72, 22, 4, 72),
(73, 23, 14, 73),
(74, 24, 23, 74),
(75, 25, 12, 75),
(76, 1, 10, 91),
(77, 1, 22, 92),
(78, 1, 20, 93),
(80, 1, 15, 95),
(81, 1, 17, 96),
(82, 1, 24, 97),
(83, 1, 15, 98),
(84, 1, 18, 99),
(85, NULL, NULL, 100),
(86, NULL, NULL, 101),
(87, NULL, NULL, 102),
(88, 1, 12, 103),
(89, 1, 4, 104),
(90, 1, 6, 105),
(91, 15, 18, 106),
(92, 1, 4, 107),
(93, 1, 7, 108);

-- --------------------------------------------------------

--
-- Table structure for table `creditcard`
--

DROP TABLE IF EXISTS `creditcard`;
CREATE TABLE IF NOT EXISTS `creditcard` (
  `idCreditCard` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `cardNumber` varchar(20) DEFAULT NULL,
  `expireMonth` int(11) NOT NULL,
  `expireYear` int(11) DEFAULT NULL,
  `cvv2` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `idPlayer` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCreditCard`),
  UNIQUE KEY `idCreditCard_UNIQUE` (`idCreditCard`),
  UNIQUE KEY `cardNumber_UNIQUE` (`cardNumber`),
  KEY `idPlayer_idx` (`idPlayer`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creditcard`
--

INSERT INTO `creditcard` (`idCreditCard`, `type`, `cardNumber`, `expireMonth`, `expireYear`, `cvv2`, `name`, `idPlayer`) VALUES
(1, 'Visa', '4019482957124950', 2, 2018, 723, 'Adrien Perez', 1),
(2, 'Visa', '8726491749204780', 4, 2018, 345, 'Mary Perry', 2),
(3, 'American Express', '9826741729402740', 3, 2020, 234, 'Jessie Vega', 3),
(4, 'Visa', '4716592326658820', 1, 2019, 123, 'Leland Larson', 4),
(5, 'Mastercard', '4716927848773800', 4, 2023, 234, 'Spencer Huff', 5),
(6, 'Masercard', '5106899648087630', 7, 2023, 734, 'Juana Chavez', 6),
(7, 'American Express', '5113436966581870', 5, 2024, 234, 'Pete Caldwell', 7),
(8, 'Visa', '5383292721650160', 11, 2020, 756, 'Opal Bush', 8),
(9, 'Mastercard', '5534776381000580', 2, 2017, 273, 'Glenn Webb', 9),
(10, 'American Express', '5489583173736680', 12, 2018, 235, 'Stacey Alvarado', 10),
(11, 'Visa', '6011286841198230', 11, 2019, 856, 'Flora Adkins', 11),
(12, 'American Express', '6011976778176040', 4, 2020, 234, 'Rene Curtis', 12),
(13, 'American Express', '6011006957869220', 5, 2025, 123, 'Pablo Nash', 13),
(14, 'Mastercard', '6011674818980670', 3, 2019, 867, 'Katrina Ball', 14),
(15, 'Visa', '375735767758707', 2, 2026, 234, 'Irma Hall', 15),
(16, 'Mastercard', '340703602576603', 11, 2018, 576, 'Brad Lawson', 16),
(17, 'Visa', '342596560704573', 10, 2016, 234, 'Rebecca Roberts', 17),
(18, 'American Express', '376830815205121', 2, 2017, 756, 'Monique Gomez', 18),
(19, 'Visa', '4539645686344240', 4, 2021, 980, 'Rickey Martin', 19),
(20, 'Visa', '4024007110767340', 7, 2019, 345, 'Ronald Mendoza', 20),
(21, 'Mastercard', '4024007154909500', 8, 2029, 232, 'Alberto McDaniel', 21),
(22, 'Visa', '5574825494215710', 8, 2028, 765, 'Ismael Wise', 22),
(23, 'American Express', '5110162588967510', 9, 2022, 678, 'Samuel Meyer', 23),
(24, 'Visa', '5136169910105460', 10, 2024, 237, 'Marvin Hunter', 24),
(25, 'Mastercard', '5548491894891770', 11, 2025, 523, 'Michael Owen', 25),
(26, 'Masercard', '5306044403803940', 12, 2018, 734, 'Brandon Cross', 26),
(27, 'American Express', '6011359743415900', 4, 2019, 756, 'Clay Harvey', 27),
(28, 'Visa', '6911979598186860', 5, 2022, 343, 'Jane Collier', 28),
(29, 'Mastercard', '6011373599361690', 5, 2023, 234, 'Peter Sims', 29),
(30, 'American Express', '6011862874459340', 4, 2020, 867, 'Dominic Gray', 30),
(31, 'Visa', '6011359773415900', 3, 2019, 978, 'Nick Webster', 31),
(32, 'American Express', '6011373599061690', 11, 2026, 234, 'Van Howell', 32),
(33, 'American Express', '6011979598186860', 2, 2019, 645, 'Caleb Briggs', 33),
(34, 'Mastercard', '6011559150521140', 3, 2020, 234, 'Jesus Martinez', 34),
(35, 'Mastercard', '6011867874459340', 9, 2021, 235, 'Olive Roberts', 35),
(36, 'Mastercard', '370174663830789', 5, 2019, 234, 'Clyde Wong', 36),
(37, 'Visa', '375648820013830', 6, 2016, 123, 'Christian Abbot', 37),
(38, 'American Express', '372419208087173', 12, 2017, 432, 'Mario Bates', 38),
(39, 'Visa', '370359223665243', 11, 2024, 297, 'Carrie Rice', 39),
(40, 'Masercard', '374627334548554', 1, 2024, 546, 'Shawn Allison', 40),
(41, 'Visa', '4024007103554540', 1, 2024, 234, 'Lillie Kelly', 41),
(42, 'Visa', '4534101514580520', 3, 2021, 765, 'Melinda Townsend', 42),
(43, 'American Express', '4556919761223640', 6, 2022, 755, 'Bruce Lee', 43),
(44, 'Visa', '4485560978088920', 7, 2027, 567, 'Dixie Black', 44),
(45, 'Mastercard', '4915239842508760', 8, 2028, 234, 'Jaime Wright', 45),
(46, 'Masercard', '5541775121465250', 11, 2019, 345, 'Michelle Jones', 46),
(47, 'American Express', '5306730819268510', 12, 2018, 648, 'Evan Brewer', 47),
(48, 'Visa', '5520853073700400', 3, 2016, 237, 'Diana Jensen', 48),
(49, 'Mastercard', '5138726348403010', 4, 2017, 645, 'Jeanette Lucas', 49),
(50, 'American Express', '6011407669325660', 7, 2020, 643, 'Lawrence Loyd', 50),
(51, 'American Express', '0123948518394018', 4, 2018, 734, 'Adrien Perez', 1),
(52, 'Visa', '0149308716283936', 1, 2020, 827, 'Bruce Lee', 43);

-- --------------------------------------------------------

--
-- Table structure for table `dlc`
--

DROP TABLE IF EXISTS `dlc`;
CREATE TABLE IF NOT EXISTS `dlc` (
  `idDLC` int(11) NOT NULL AUTO_INCREMENT,
  `DLCName` varchar(45) DEFAULT NULL,
  `DLCPrice` double DEFAULT NULL,
  PRIMARY KEY (`idDLC`),
  UNIQUE KEY `idDLC_UNIQUE` (`idDLC`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlc`
--

INSERT INTO `dlc` (`idDLC`, `DLCName`, `DLCPrice`) VALUES
(1, 'Pacman', 9.99),
(2, 'Teken', 12.45),
(3, 'Mario', 9.99),
(4, 'Fifa', 59.99),
(5, 'Diablo', 59.99),
(6, 'Need For Speed', 49.99),
(7, 'Final Fantasy', 39.99),
(8, 'Metal Gear Solid', 24.5),
(9, 'Crash Bandicoot', 45),
(10, 'Resident Evil', 69.99),
(11, 'Tetris', 2.5),
(12, 'Fallout', 69.99),
(13, 'Devil May Cry', 43.34),
(14, 'Portal', 18.43),
(15, 'GTA 3', 59.99),
(16, 'GTA 4', 59.99),
(17, 'Star Wars', 42.94),
(18, 'Battlefield', 43.84),
(19, 'Portal 2', 14.39),
(20, 'Call of Duty', 52.49),
(21, 'World of Warcraft', 34.99),
(22, 'Silent Hill', 12.98),
(23, 'Splinter Cell', 37.34),
(24, 'Bioshock', 29.32),
(25, 'Far Cry', 23.44);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `idPayment` int(11) NOT NULL AUTO_INCREMENT,
  `idPlayer` int(11) DEFAULT NULL,
  `paymentAmount` double DEFAULT NULL,
  `paymentDate` varchar(30) DEFAULT NULL,
  `idCreditCard` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPayment`),
  UNIQUE KEY `idPayment_UNIQUE` (`idPayment`),
  KEY `idPlayer_idx` (`idPlayer`),
  KEY `idCreditCard_idx` (`idCreditCard`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`idPayment`, `idPlayer`, `paymentAmount`, `paymentDate`, `idCreditCard`) VALUES
(1, 1, 9.99, '28/01/2016', 1),
(2, 2, 12.45, '14/08/2015', 2),
(3, 3, 9.99, '12/11/2015', 3),
(4, 4, 59.99, '26/04/2014', 4),
(5, 5, 59.99, '21/07/2015', 5),
(6, 6, 49.99, '17/04/2015', 6),
(7, 7, 39.99, '03/02/2016', 7),
(8, 8, 24.5, '05/03/2016', 8),
(9, 9, 45, '25/12/2013', 9),
(10, 10, 69.99, '24/09/2015', 10),
(11, 11, 2.5, '18/03/2015', 11),
(12, 12, 69.99, '17/06/2011', 12),
(13, 13, 43.34, '01/01/2016', 13),
(14, 14, 18.43, '01/10/2015', 14),
(15, 15, 59.99, '28/01/2014', 15),
(16, 16, 59.99, '23/05/2015', 16),
(17, 17, 42.94, '14/06/2015', 17),
(18, 18, 43.84, '15/09/2015', 18),
(19, 19, 14.39, '14/11/2014', 19),
(20, 20, 52.49, '06/07/2012', 20),
(21, 21, 34.99, '18/12/2014', 21),
(22, 22, 12.98, '29/07/2015', 22),
(23, 23, 37.34, '04/08/2014', 23),
(24, 24, 29.32, '20/08/2015', 24),
(25, 25, 23.44, '05/11/2011', 25),
(26, 26, 9.99, '13/11/2015', 26),
(27, 27, 12.45, '06/01/2015', 27),
(28, 28, 9.99, '11/04/2013', 28),
(29, 29, 59.99, '22/03/2015', 29),
(30, 30, 59.99, '15/11/2013', 30),
(31, 31, 49.99, '28/01/2016', 31),
(32, 32, 39.99, '14/08/2015', 32),
(33, 33, 24.5, '12/11/2015', 33),
(34, 34, 45, '26/04/2014', 34),
(35, 35, 69.99, '21/07/2015', 35),
(36, 36, 2.5, '17/04/2015', 36),
(37, 37, 69.99, '03/02/2016', 37),
(38, 38, 43.34, '05/03/2016', 38),
(39, 39, 18.43, '25/12/2013', 39),
(40, 40, 59.99, '24/09/2015', 40),
(41, 41, 59.99, '18/03/2015', 41),
(42, 42, 42.94, '17/06/2011', 42),
(43, 43, 43.84, '01/01/2016', 43),
(44, 44, 14.39, '01/10/2015', 44),
(45, 45, 52.49, '28/01/2014', 45),
(46, 46, 34.99, '23/05/2015', 46),
(47, 47, 12.98, '14/06/2015', 47),
(48, 48, 37.34, '15/09/2015', 48),
(49, 49, 29.32, '14/11/2014', 49),
(50, 50, 23.44, '06/07/2012', 50),
(51, 1, 24.5, '18/12/2014', 1),
(52, 2, 69.99, '29/07/2015', 2),
(53, 3, 59.99, '04/08/2014', 3),
(54, 4, 39.99, '20/08/2015', 4),
(55, 5, 24.5, '05/11/2011', 5),
(56, 6, 69.99, '13/11/2015', 6),
(57, 7, 18.43, '06/01/2015', 7),
(58, 8, 29.32, '11/04/2013', 8),
(59, 9, 34.99, '22/03/2015', 9),
(60, 10, 43.34, '15/11/2013', 10),
(61, 11, 42.94, '28/01/2016', 11),
(62, 12, 9.99, '14/08/2015', 12),
(63, 13, 39.99, '12/11/2015', 13),
(64, 14, 45, '26/04/2014', 14),
(65, 15, 69.99, '21/07/2015', 15),
(66, 16, 69.99, '17/04/2015', 16),
(67, 17, 9.99, '03/02/2016', 17),
(68, 18, 39.99, '05/03/2016', 18),
(69, 19, 37.74, '25/12/2013', 19),
(70, 20, 23.44, '24/09/2015', 20),
(71, 21, 9.99, '18/03/2015', 21),
(72, 22, 59.99, '17/06/2011', 22),
(73, 23, 18.43, '01/01/2016', 23),
(74, 24, 37.74, '01/10/2015', 24),
(75, 25, 69.99, '28/01/2014', 25),
(91, 1, 69.99, '07/03/2016', 1),
(92, 1, 12.98, '07/03/2016', 1),
(93, 1, 52.49, '07/03/2016', 1),
(95, 1, 59.99, '07/03/2016', 1),
(96, 1, 42.94, '07/03/2016', 1),
(97, 1, 29.32, '08/03/2016', 1),
(98, 1, 59.99, '05/05/2016', 51),
(99, 1, 43.84, '05/05/2016', 1),
(100, NULL, NULL, '09/05/2016', NULL),
(101, NULL, NULL, '09/05/2016', NULL),
(102, NULL, NULL, '09/05/2016', NULL),
(103, 1, 69.99, '09/05/2016', 51),
(104, 1, 59.99, '09/05/2016', 51),
(105, 1, 49.99, '09/05/2016', 1),
(106, 15, 43.84, '09/05/2016', 15),
(107, 1, 59.99, '10/05/2016', 51),
(108, 1, 39.99, '10/05/2016', 51);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `idPlayer` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idPlayer`),
  UNIQUE KEY `idPlayer_UNIQUE` (`idPlayer`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`idPlayer`, `name`, `email`) VALUES
(1, 'Adrien Perez', 'adrien.perez54@gmail.com'),
(2, 'Mary Perry', 'mary.perry@gmail.com\r'),
(3, 'Jessie Vega', 'jessie.vega@gmail.com\r'),
(4, 'Leland Larson', 'leland.larson@gmail.com\r'),
(5, 'Spencer Huff', 'spencer.huff@gmail.com\r'),
(6, 'Juana Chavez', 'juana.chavez@gmail.com\r'),
(7, 'Pete Caldwell', 'pete.caldwell@gmail.com\r'),
(8, 'Opal Bush', 'opal.bush@gmail.com\r'),
(9, 'Glenn Webb', 'glenn.webb@gmail.com\r'),
(10, 'Stacey Alvarado', 'stacey.alvarado@gmail.com\r'),
(11, 'Flora Adkins', 'flora.adkins@gmail.com\r'),
(12, 'Rene Curtis', 'rene.curtis@gmail.com\r'),
(13, 'Pablo Nash', 'pablo.nash@gmail.com\r'),
(14, 'Katrina Ball', 'katrina.ball@gmail.com\r'),
(15, 'Irma Hall', 'irma.hall@gmail.com\r'),
(16, 'Brad Lawson', 'brad.lawson@gmail.com\r'),
(17, 'Rebecca Roberts', 'rebecca.roberts@gmail.com\r'),
(18, 'Monique Gomez', 'monique.gomez@gmail.com\r'),
(19, 'Rickey Martin', 'rickey.martin@gmail.com\r'),
(20, 'Ronald Mendoza', 'ronald.mendoza@gmail.com\r'),
(21, 'Alberto McDaniel', 'alberto.mcdaniel@gmail.com\r'),
(22, 'Ismael Wise', 'ismael.wise@gmail.com\r'),
(23, 'Samuel Meyer', 'samuel.meyer@gmail.com\r'),
(24, 'Marvin Hunter', 'marvin.hunter@gmail.com\r'),
(25, 'Michael Owen', 'michael.owen@gmail.com\r'),
(26, 'Brandon Cross', 'brandon.cross@gmail.com\r'),
(27, 'Clay Harvey', 'clay.harvey@gmail.com\r'),
(28, 'Jane Collier', 'jane.collier@gmail.com\r'),
(29, 'Peter Sims', 'peter.sims@gmail.com\r'),
(30, 'Dominic Gray', 'dominic.gray@gmail.com\r'),
(31, 'Nick Webster', 'nick.webster@gmail.com\r'),
(32, 'Van Howell', 'van.howell@gmail.com\r'),
(33, 'Caleb Briggs', 'caleb.briggs@gmail.com\r'),
(34, 'Jesus Martinez', 'jesus.martinez@gmail.com\r'),
(35, 'Olive Roberts', 'olive.roberts@gmail.com\r'),
(36, 'Clyde Wong', 'clyde.wong@gmail.com\r'),
(37, 'Christian Abbot', 'christian.abbot@gmail.com\r'),
(38, 'Mario Bates', 'mario.bates@gmail.com\r'),
(39, 'Carrie Rice', 'carrie.rice@gmail.com\r'),
(40, 'Shawn Allison', 'shawn.allison@gmail.com\r'),
(41, 'Lillie Kelly', 'lillie.kelly@gmail.com\r'),
(42, 'Melinda Townsend', 'melinda.townsend@gmail.com\r'),
(43, 'Bruce Lee', 'bruce.lee@gmail.com\r'),
(44, 'Dixie Black', 'dixie.black@gmail.com\r'),
(45, 'Jaime Wright', 'jaime.wright@gmail.com\r'),
(46, 'Michelle Jones', 'michelle.jones@gmail.com\r'),
(47, 'Evan Brewer', 'evan.brewer@gmail.com\r'),
(48, 'Diana Jensen', 'diana.jensen@gmail.com\r'),
(49, 'Jeanette Lucas', 'jeanette.lucas@gmail.com\r'),
(50, 'Lawrence Loyd', 'lawrence.loyd@gmail.com\r');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `idDLCCommand` FOREIGN KEY (`idDLC`) REFERENCES `dlc` (`idDLC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idPaymentCommand` FOREIGN KEY (`idPayment`) REFERENCES `payment` (`idPayment`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idPlayerCommand` FOREIGN KEY (`idPlayer`) REFERENCES `player` (`idPlayer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `creditcard`
--
ALTER TABLE `creditcard`
  ADD CONSTRAINT `idPlayerCreditCard` FOREIGN KEY (`idPlayer`) REFERENCES `player` (`idPlayer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `idCreditCardPlayer` FOREIGN KEY (`idCreditCard`) REFERENCES `creditcard` (`idCreditCard`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idPlayer` FOREIGN KEY (`idPlayer`) REFERENCES `player` (`idPlayer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
