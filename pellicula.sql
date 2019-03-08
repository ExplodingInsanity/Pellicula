-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2019 at 02:50 PM
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
(2, 'Christoph Waltz', '1956-10-04', 'https://www.facebook.com/ChristophWaltz', 'ChristophWaltz.jpg'),
(3, 'Dylan O\'Brien', '1991-08-26', 'https://twitter.com/dylanobrien', 'DylanOBrien.jpg'),
(4, 'Ki Hong Lee', '1986-09-30', 'https://twitter.com/kihonglee', 'KiHongLee.jpg'),
(5, 'Thomas Brodie-Sangster', '1990-05-16', 'https://twitter.com/sangsterthomas', 'ThomasBrodieSangster.jpg'),
(6, 'Scarlett Johansson', '1984-11-22', 'https://twitter.com/scarlett_jo', 'ScarlettJohansson.jpg'),
(7, 'Morgan Freeman', '1937-06-01', 'https://twitter.com/mjfree', 'MorganFreeman.jpg');

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
(2, 'Maze Runner: The Scorch Trials', 2015, 'După ce au scăpat de labirint, Gladerii se confruntă acum cu un nou set de provocări pe drumurile deschise ale unui peisaj pustiu plin de obstacole inimaginabile.', 'mazeRunnerScorch.jpg', '133 min', 'Acțiune, SF, Thriller'),
(3, 'The Maze Runner', 2014, 'Thomas este depus într-o comunitate de băieți după ce memoria lui este șters, în curând fiind învățați că toți sunt prinși într-un labirint care îi va cere să-și unească forțele cu alți \"alergători\" pentru o șansă de scăpare.', 'mazeRunner.jpg', '113 min', 'Acțiune, Mister, SF'),
(4, 'Maze Runner: The Death Cure', 2018, 'Tânărul erou Thomas se angajează într-o misiune pentru a găsi un remediu pentru o boală mortală cunoscută sub numele de \"Flare\".', 'mazeRunnerDeath.jpg', '143 min', 'Acțiune, SF, Thriller'),
(5, 'Now You See Me', 2013, 'Un F.B.I. Agent și un detectiv Interpol urmăresc o echipă de iluzioniști care au tras off bătăi bănci în timpul spectacolelor lor, și recompensează publicul lor cu banii.', 'nowYouSeeMe.jpg', '135 min', 'Crimă, Mister, Thriller '),
(6, 'Now You See Me 2', 2016, 'Cei patru călăreți se reîntoarce și sunt recrutați forțat de un genial tehnic pentru a-și scoate din greșeală cel mai imposibil heist.\r\n', 'nowYouSeeMe2.jpg', '129 min', 'Acțiune, Aventură, Comedie'),
(7, 'Lucy', 2014, 'O femeie, prinsă accidental într-o afacere întunecată, transformă tabelele asupra captorilor ei și se transformă într-un războinic nemilos care a evoluat dincolo de logica umană.', 'Lucy.jpg', '89 min', 'Acțiune, SF, Thriller'),
(8, 'Ghost in the Shell', 2017, 'În viitorul apropiat, maiorul Mila Killian este primul de genul său: Un om salvat dintr-un accident teribil, care este îmbunătățit cibernetic pentru a fi un soldat perfect dedicat opririi celor mai periculoși criminali din lume.', 'GhostInTheShell.jpg', '107 min', 'Acțiune, Dramă, SF');

-- --------------------------------------------------------

--
-- Table structure for table `roluri`
--

CREATE TABLE `roluri` (
  `id_actor` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `rol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `caca` int(11) NOT NULL
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

INSERT INTO `roluri` (`id_actor`, `id_film`, `rol`, `caca`) VALUES
(1, 1, 'Alita', 1),
(2, 1, 'Dr. Dyson Ido', 2),
(1, 2, 'Brenda', 3),
(1, 4, 'Brenda', 4),
(3, 4, 'Thomas', 5),
(3, 2, 'Thomas', 6),
(3, 3, 'Thomas', 7),
(4, 3, 'Minho', 8),
(4, 2, 'Minho', 9),
(4, 4, 'Minho', 10),
(5, 3, 'Newt', 11),
(5, 2, 'Newt', 12),
(5, 4, 'Newt', 13),
(7, 7, 'Professor Norman', 14),
(6, 7, 'Lucy', 15),
(7, 6, 'Thaddeus Bradley', 16),
(6, 8, 'Major', 17),
(7, 5, 'Thaddeus Bradley', 18);

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
  ADD PRIMARY KEY (`caca`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_actor` (`id_actor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actori`
--
ALTER TABLE `actori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `citate`
--
ALTER TABLE `citate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `filme`
--
ALTER TABLE `filme`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roluri`
--
ALTER TABLE `roluri`
  MODIFY `caca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
