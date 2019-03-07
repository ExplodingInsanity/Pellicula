-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2019 at 10:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pellicula`
--
CREATE DATABASE IF NOT EXISTS `pellicula` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pellicula`;

-- --------------------------------------------------------

--
-- Table structure for table `actori`
--

CREATE TABLE `actori` (
  `id` int(11) NOT NULL,
  `nume` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data_nasterii` date NOT NULL,
  `social_media` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `poza` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `actori`:
--

--
-- Dumping data for table `actori`
--

INSERT INTO `actori` (`id`, `nume`, `data_nasterii`, `social_media`, `poza`) VALUES
(1, 'Rosa Salazar', '1985-07-16', 'https://www.instagram.com/rosasalazar/', 'RosaSalazar.jpg'),
(2, 'Christoph Waltz', '1956-10-04', 'https://www.facebook.com/ChristophWaltz', 'ChristophWaltz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `citate`
--

CREATE TABLE `citate` (
  `id` int(11) NOT NULL,
  `text` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `citate`:
--

--
-- Dumping data for table `citate`
--

INSERT INTO `citate` (`id`, `text`) VALUES
(1, '\"Actorul este un mincinos sincer\" - Albert Camus'),
(2, '\"Actorul este un artist care sculpteaza în zapada\" - Lawrence Barrett'),
(3, '\"Actorul este un atlet afectiv\" - Antonin Artaud'),
(4, '\"Actorul e unul care spune pe dinafara ceea ce altii simt pe dinauntru\" - Tudor Musatescu'),
(5, '\"Actoria este abilitatea de a trai adevarat in circumstante imaginare\" - Andrei Aradits'),
(6, '\"Actoria este cea mai spirituala dintre profesii pentru simplul motiv ca actorul trebuie sa se afle într-o stare paradoxala: el s-a identificat cu personajul pe care îl interpreteaza, dar cu toate acestea a ramas un privitor\" - Osho'),
(7, '\"Actorul e un copil care se joaca permanent\" - Marian Ralea'),
(8, '\"Stiam ca pentru actori, viata se îmbina cu arta\" - Mircea Eliade\r\n'),
(9, '\"Noi, actorii, în fiecare seara traim o alta viata a vietii noastre\" - Mircea Albulescu\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `filme`
--

CREATE TABLE `filme` (
  `id` int(3) NOT NULL,
  `titlu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `an` int(4) NOT NULL,
  `descriere` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `durata` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gen` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `filme`:
--

--
-- Dumping data for table `filme`
--

INSERT INTO `filme` (`id`, `titlu`, `an`, `descriere`, `cover`, `durata`, `gen`) VALUES
(1, 'Alita: Battle Angel', 2019, 'Un cyborg feminin dezactivat este reînviat, dar nu-și mai poate aminti nimic din viața sa anterioară și se străduiește să afle cine este.', 'alita.jpg', '122 min', 'Acțiune, Aventură, Romance'),
(2, 'Maze Runner: The Scorch Trials', 2015, 'După ce au scăpat de labirint, Gladerii se confruntă acum cu un nou set de provocări pe drumurile deschise ale unui peisaj pustiu plin de obstacole inimaginabile.', 'mazeRunnerScorch.jpg', '133 min', 'Acțiune, SF, Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `roluri`
--

CREATE TABLE `roluri` (
  `id_actor` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `rol` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `roluri`:
--   `id_film`
--       `filme` -> `id`
--   `id_actor`
--       `actori` -> `id`
--

--
-- Dumping data for table `roluri`
--

INSERT INTO `roluri` (`id_actor`, `id_film`, `rol`) VALUES
(1, 1, 'Alita'),
(2, 1, 'Dr. Dyson Ido'),
(1, 2, 'Brenda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actori`
--
ALTER TABLE `actori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citate`
--
ALTER TABLE `citate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roluri`
--
ALTER TABLE `roluri`
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_actor` (`id_actor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actori`
--
ALTER TABLE `actori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `citate`
--
ALTER TABLE `citate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `filme`
--
ALTER TABLE `filme`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `roluri`
--
ALTER TABLE `roluri`
  ADD CONSTRAINT `roluri_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `filme` (`id`),
  ADD CONSTRAINT `roluri_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
