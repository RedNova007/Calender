-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 21 jun 2016 om 09:28
-- Serverversie: 5.6.17
-- PHP-versie: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `calender`
--
CREATE DATABASE IF NOT EXISTS `calender` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `calender`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `birthdays`
--

DROP TABLE IF EXISTS `birthdays`;
CREATE TABLE IF NOT EXISTS `birthdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person` varchar(255) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `month_id` tinyint(4) NOT NULL,
  `year` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Gegevens worden geëxporteerd voor tabel `birthdays`
--

INSERT INTO `birthdays` (`id`, `person`, `day`, `month_id`, `year`) VALUES
(1, 'Vera', 5, 8, 1963),
(2, 'Nadia', 14, 5, 1996),
(3, 'Petrov', 7, 12, 1985),
(4, 'Anoushka', 22, 2, 1981),
(5, 'Dimitri', 21, 5, 2001),
(6, 'Anna', 28, 4, 1989),
(7, 'Miroslav', 17, 7, 2010),
(8, 'Vesela', 14, 5, 1992),
(9, 'Vlad', 18, 3, 1975),
(10, 'Mila', 22, 2, 1993),
(11, 'Goran', 19, 12, 2006),
(12, 'Brana', 7, 3, 1967),
(13, 'Darko', 4, 6, 1973),
(14, 'Dragoslav', 13, 6, 1982),
(15, 'Godemir', 9, 9, 1984),
(16, 'Boris', 19, 4, 2001),
(17, 'Ludmila', 5, 5, 1969),
(18, 'Stanibor', 14, 5, 1999),
(29, 'Kevin Cohen', 14, 1, 1998);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `month`
--

DROP TABLE IF EXISTS `month`;
CREATE TABLE IF NOT EXISTS `month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Gegevens worden geëxporteerd voor tabel `month`
--

INSERT INTO `month` (`id`, `month`) VALUES
(1, 'Januari'),
(2, 'Febuari'),
(3, 'Maart'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Augustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'December');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
