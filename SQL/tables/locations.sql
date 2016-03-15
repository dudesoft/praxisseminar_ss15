-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Mrz 2016 um 16:34
-- Server-Version: 10.1.9-MariaDB
-- PHP-Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `hoerburger`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location` text COLLATE utf8_bin NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `locations`
--

INSERT INTO `locations` (`id`, `location`, `latitude`, `longitude`) VALUES
(1, 'Bellobrad/ Belobrod', 42.117772, 20.683192),
(2, 'Bidžovo /Bidzhevo', 41.229982, 20.699209),
(3, 'Brodosavce/ Brodosanë', 42.10843, 20.725045),
(4, 'Frangovo', 41.146855, 20.626576),
(5, 'Gjonaj/ Đonaj', 42.253673, 20.624341),
(6, 'Gllogovc/ Glogovac', 42.621063, 20.890502),
(7, 'Glumovo', 41.980211, 21.304624),
(8, 'Krani', 40.940113, 21.107889),
(9, 'Nakolec', 40.89352, 21.10799),
(10, 'Ohrid', 41.123098, 20.801648),
(11, 'Peć', 42.659287, 20.288736),
(12, 'Prishtinë/ Priština', 42.662914, 21.165503),
(13, 'Radolishta', 41.164943, 20.626576),
(14, 'Rugovo', 42.683204, 21.15798),
(15, 'Skopje', 41.997346, 21.427996),
(16, 'Veleshta', 41.235323, 20.653321),
(17, 'Vranishtë/ Vranište', 42.042176, 20.628996),
(18, 'Zym/ Zjum', 42.113459, 20.668293),
(19, 'Arvati', 40.942663, 21.111357),
(20, 'Bîrca', 43.97095, 23.616636),
(21, 'Giurgiţa ', 44.015008, 23.632665),
(22, 'Bukarest', 44.426527, 26.103562);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
