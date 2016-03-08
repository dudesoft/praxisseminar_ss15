-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 29. Feb 2016 um 18:18
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
-- Tabellenstruktur für Tabelle `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` mediumtext,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Daten für Tabelle `images`
--

INSERT INTO `images` (`id`, `url`, `location_id`) VALUES
(1, 'http://localhost/Praxisseminar/WebProject/content/images/kit1.jpg', 11),
(2, 'http://localhost/Praxisseminar/WebProject/content/images/kit2.jpg', 11),
(3, 'http://localhost/Praxisseminar/WebProject/content/images/long_retard.jpg', 11);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `locations`
--

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
(19, 'Arvati', 40.942663, 21.111357);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `Titel/Textanfang` varchar(156) DEFAULT NULL,
  `location` varchar(37) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `Genre` varchar(65) DEFAULT NULL,
  `Herkunft` varchar(33) DEFAULT NULL,
  `Besetzung` varchar(70) DEFAULT NULL,
  `Sprache` varchar(67) DEFAULT NULL,
  `Aufnahmesituation` varchar(133) DEFAULT NULL,
  `Funktion` varchar(11) DEFAULT NULL,
  `Inhalt` varchar(197) DEFAULT NULL,
  `Interpreten` varchar(111) DEFAULT NULL,
  `Interpret 1 - Name, Alter, Herkunft, Beruf, Ethnie` varchar(184) DEFAULT NULL,
  `Aufgenommen durch` varchar(56) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `songs`
--

INSERT INTO `songs` (`id`, `Titel/Textanfang`, `location`, `date`, `Genre`, `Herkunft`, `Besetzung`, `Sprache`, `Aufnahmesituation`, `Funktion`, `Inhalt`, `Interpreten`, `Interpret 1 - Name, Alter, Herkunft, Beruf, Ethnie`, `Aufgenommen durch`, `station_id`, `url`) VALUES
(1, '[Gebetszeremonie]', 'Prishtinë/ Priština', '09.08.1959', 'Gebetszeremonie', '', 'Gesang (Mann)', '', 'Gebetszeremonie in der Sultan-Mehmet-II-al-Fātih-Moschee um 16:30 Uhr', '', '', 'UNBEKANNT', '', 'Felix Hoerburger', 1, 'http://localhost/Praxisseminar/WebProject/content/images/audio_test.mp3'),
(2, '[Gebetsruf]', 'Prishtinë/ Priština', '09.08.1959', 'Gebetsruf', '', 'Gesang (Mann)', '', 'in der Sultan-Mehmet-II-al-Fātih-Moschee', '', '', 'Imam Hafis Ilias Zakuti', 'Imam Hafis Ilias Zakuti: m.; Herkunft: Priština; Ethnie: Albaner', 'Felix Hoerburger', 1, 'testest'),
(3, '[Muezzinruf]', 'Prishtinë/ Priština', '09.08.1959', 'Muezzinruf', '', 'Gesang (Mann)', '', 'in der Sultan-Mehmet-II-al-Fātih-Moschee', '', '', 'Ismail Glavurda', 'Ismail Glavurda: m.; Herkunft: Priština; Ethnie: Albaner', 'Felix Hoerburger', 1, NULL),
(4, '[Muezzinruf]', 'Prishtinë/ Priština', '09.08.1959', 'Muezzinruf', '', 'Gesang (Mann)', '', 'in der Sultan-Mehmet-II-al-Fātih-Moschee', '', '', 'Abdurrahim Ejupi ', 'Abdurrahim Ejupi: m.; Beruf: Arbeiter [?]; Herkunft: Priština; Ethnie: Albaner', 'Felix Hoerburger', 1, NULL),
(5, 'Kanga e Salman Brahimit / Ani krisi pushka, more përtej Drinit… [Vgl. 15, 313 und 406]', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', 'Albanisch', 's. schriftl. Quellen ', '', 'Über Selman [Salman? s. Titel] Brahimi und Blutrache', 'Halit Mahmuti Cocaj', 'Halit Mahmuti Cocaj: m., 15 Jahre', 'Felix Hoerburger', 2, 'cdfsdfdc'),
(6, 'Mari e mira ce skon me dhan…', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Halit Mahmuti Cocaj', 'Halit Mahmuti Cocaj: m., 15 Jahre', 'Felix Hoerburger', 2, NULL),
(7, 'Mari e mira ce skon me lop…', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Halit Mahmuti Cocaj', 'Halit Mahmuti Cocaj: m., 15 Jahre', 'Felix Hoerburger', 2, NULL),
(8, 'Kur jam kann ni her i ri e kom pos ni ceteli… [Vgl. 439]', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied ', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Kacel Sylaj', 'Kacel Sylaj: m.', 'Felix Hoerburger', 2, NULL),
(9, 'Kus po zdirdjet lugit drasas…', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen', '', '', 'Halit Mahmuti Cocaj', 'Halit Mahmuti Cocaj: m., 15 Jahre', 'Felix Hoerburger', 2, NULL),
(10, 'Mori e mira nato male…', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Selmani ?', 'Selmani ?: m., 7 Jahre', 'Felix Hoerburger', 2, NULL),
(11, 'Ne Prizren nau ba beteri', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Halit Mahmuti Cocaj', 'Halit Mahmuti Cocaj: m., 15 Jahre', 'Felix Hoerburger', 2, NULL),
(12, 'Moj Demile cerpik me remo', 'Gjonaj/ Đonaj', '12.08.1959', 'städtisches Lied', '', 'Gesang (2 Jungen)', '', 's. schriftl. Quellen ', '', '', 'Haki Halimi und Destan Halimi', 'Haki Halimi: m., ca. 18 Jahre', 'Felix Hoerburger', 2, NULL),
(13, 'Pranvera filoj me dal…', 'Gjonaj/ Đonaj', '12.08.1959', 'städtisches Lied', '', 'Gesang (2 Jungen)', '', 's. schriftl. Quellen ', '', '', 'Haki Halimi und Destan Halimi', 'Haki Halimi: m., ca. 18 Jahre', 'Felix Hoerburger', 2, NULL),
(14, 'Kënga e Salman Brahimit / Ani krisi pushka, more përtej Drinit… [Vgl. 6, 313 und 406]', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', 'Blutrache', 'Riz Abedini', 'Riz Abedini: m., 16 Jahre', 'Felix Hoerburger', 2, NULL),
(15, '[Hirtenlied]', 'Gjonaj/ Đonaj', '12.08.1959', 'Hirtenlied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Cocaj Raman Rrushenegha', 'Cocaj Raman Rrushenegha: m., 8 Jahre', 'Felix Hoerburger', 2, NULL),
(16, 'Sazvugten jet', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Mann)', '', 's. schriftl. Quellen ', '', '', 'Sali Ramadani', 'Sali Ramadani: m., 48 Jahre', 'Felix Hoerburger', 2, NULL),
(17, 'Flakt e halla', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (2 Männer)', '', 's. schriftl. Quellen ', '', '', 'Dan Ameti und Gani Bahtgari', 'Dan Ameti: m., 30 Jahre', 'Felix Hoerburger', 2, NULL),
(18, 'Cu mare regja', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Mann)', '', 's. schriftl. Quellen ', '', '', 'Dan Cocaj', 'Dan Cocaj: m., 30 Jahre', 'Felix Hoerburger', 2, NULL),
(19, 'Pakaj saget', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Mann)', '', 's. schriftl. Quellen ', '', '', 'Tataj Ibis', 'Tataj Ibis: m., 26 Jahre', 'Felix Hoerburger', 2, NULL),
(20, 'Braim Sadiki', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Elez Ademi [Adeirami?]', 'Elez Ademi [Adeirami?]: m., 11 Jahre', 'Felix Hoerburger', 2, NULL),
(21, 'Frini e ra lugje [vgl. 332]', 'Gjonaj/ Đonaj', '12.08.1959', 'Lied', '', 'Gesang (Junge)', '', 's. schriftl. Quellen ', '', '', 'Fazli Ademi', 'Fazli Ademi: m., 11 Jahre', 'Felix Hoerburger', 2, NULL),
(22, 'Kudel dilli peran hona …. [vgl. 37 ]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Junge)', 'Albanisch', '', '', '', 'Riza Cocaj', 'Riza Cocaj: m., 16 Jahre', 'Felix Hoerburger', 3, NULL),
(23, 'Ljume ljume pet telumin Zot', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Junge)', 'Albanisch', '', '', '', 'Dervish Cocaj', 'Dervish Cocaj: m., 20 Jahre', 'Felix Hoerburger', 3, NULL),
(24, 'Kusk povje casaj are', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Jungen)', 'Albanisch', '', '', '', 'Dervish Cocaj und Rexhep Cocaj ', 'Dervish Cocaj: m., 20 Jahre', 'Felix Hoerburger', 3, NULL),
(25, 'Dysek lok radjem kan… ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Junge)', 'Albanisch', '', '', '', 'Halit Mahmuti Cocaj', 'Halit Mahmuti Cocaj: m., 15 Jahre', 'Felix Hoerburger', 3, NULL),
(26, 'Halit Gashi ni dajl i ri e mur rrugën… Oder: Halit Gashi djalë i ri Beqir', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Männer)', 'Albanisch', '', '', '', 'Dervish Cocaj und Brahimi Cocaj', 'Dervish Cocaj: m., 20 Jahre', 'Felix Hoerburger', 3, NULL),
(27, 'Rreth e rreth bashqes ju solla  ', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki, Karadyzen', 'Albanisch', 'bei der Hochzeitsfeier im Haus der Männer ', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Glogovac', 'Felix Hoerburger', 3, NULL),
(28, 'Çuni vjen sokakut oder Quni vjen Sokakut ', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki, Karadyzen', 'Albanisch', 'bei der Hochzeitsfeier im Haus der Männer ', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Glogovac', 'Felix Hoerburger', 3, NULL),
(29, 'Ner ni hije ner ni molle oder: Nër një hije ', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki, Karadyzen', 'Albanisch', 'bei der Hochzeitsfeier im Haus der Männer ', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Glogovac', 'Felix Hoerburger', 3, NULL),
(30, 'Moj dragane iza brega ', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki, Karadyzen', 'Zweisprachig: Serbisch (Hashim Shala) und Albanisch (Tahir Drenica)', 'bei der Hochzeitsfeier im Haus der Männer ', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Glogovac', 'Felix Hoerburger', 3, NULL),
(31, 'Ivujten ne kidnja. [Oder: Ivujton jom]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'Haziz Muharremi', 'Haziz Muharremi: m., 11 Jahre', 'Felix Hoerburger', 3, NULL),
(32, '(ohne Titel)', 'Gjonaj/ Đonaj', '13.08.1959', 'Hirtenmusik', '', 'Fyell', '', '', '', '', 'Rexhep Cocaj ', 'Rexhep Cocaj: m.', 'Felix Hoerburger', 3, NULL),
(33, 'Mari e mir ce mi male dhet ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Tahir Cocaj', 'Tahir Cocaj: m., 24 Jahre', 'Felix Hoerburger', 3, NULL),
(34, 'O Dunave ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Serbisch', '', '', '', 'Raman Cocaj', 'Raman Cocaj: m., 27 Jahre', 'Felix Hoerburger', 3, NULL),
(35, '[Hirtenmusik]', 'Gjonaj/ Đonaj', '13.08.1959', 'Hirtenmusik', '', 'Fyell', '', '', '', '', 'Rexhep Cocaj ', 'Rexhep Cocaj: m.', 'Felix Hoerburger', 3, NULL),
(36, 'Kudel dille peran hana …. [Vgl. Nr. 23]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'Fetah Cocaj ', 'Fetah Cocaj: m.', 'Felix Hoerburger', 3, NULL),
(37, 'Me taml kedon go… ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Raman Cocaj', 'Raman Cocaj: m., 27 Jahre', 'Felix Hoerburger', 3, NULL),
(38, 'Kush ba gjiga ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', '', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'Riza Cocaj', 'Riza Cocaj: m., 16 Jahre', 'Felix Hoerburger', 3, NULL),
(39, 'Kush ba gjiga', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied als Instrumentalstück', '', 'Fyell', '', '', '', '', 'Rexhep Cocaj ', 'Rexhep Cocaj: m.', 'Felix Hoerburger', 3, NULL),
(40, 'Vllah e ma ter [vgl. 428]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', 'Gjakovica/ Đakovica', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'UNBEKANNT', 'UNBEKANNT  [vielleicht Haziz Muharremi: m., 11 Jahre; Herkunft: Dakovica]', 'Felix Hoerburger', 3, NULL),
(41, 'Cilb rredh bellas', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'Riza Cocaj', 'Riza Cocaj: m., 16 Jahre', 'Felix Hoerburger', 3, NULL),
(42, '[Dudelsack in einem Konzert, Beifall]', 'UNBEKANNT', 'UNBEKANNT', '', '', '', '', '', '', '', 'UNBEKANNT', '', '', 4, NULL),
(43, '[Vogelgesang]', 'UNBEKANNT', 'UNBEKANNT', '', '', '', '', '', '', '', '', '', '', 4, NULL),
(44, 'Prej misnati gjela…', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'Kacel Sylaj', 'Kacel Sylaj: m.', 'Felix Hoerburger', 3, NULL),
(45, 'Morie mie morie, oj sugore, ejat kanzone ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Mustafa Masini', 'Mustafa Masini: m., 30 Jahre', 'Felix Hoerburger', 3, NULL),
(46, 'Bajram beghi ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Mustafa Masini', 'Mustafa Masini: m., 30 Jahre', 'Felix Hoerburger', 3, NULL),
(47, 'Tridhet shpi katundi mishkon Oder: Pojkahtun nishkun tri dash trie ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (2 Männer)', 'Albanisch', '', '', 'Über das Häuser-Anzünden der Serben bei den Albanern', 'Dervish Cocaj und Riceb [Rexhep?] Cocaj ', 'Dervish Cocaj: m., 20 Jahre ', 'Felix Hoerburger', 3, NULL),
(48, '[Muezzinruf]', 'Gjonaj/ Đonaj', '13.08.1959', 'Muezzinruf', '', 'Sologesang (Mann)', '', '', '', '', 'Zeg Dani', 'Zeg Dani: m., 32 Jahre', 'Felix Hoerburger', 3, NULL),
(49, 'Marje miro sybardhan ', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang, Cifteli, Sharki', 'Albanisch', 'im Haus des Sängers Zeg Dani', '', 'Liebeslied', 'Gesang und Cifteli: Zeg Dani; Gesang und Sharki: Ali Dani', 'Zeg Dani: m., 32 Jahre', 'Felix Hoerburger', 3, NULL),
(50, 'Djem te syles', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang, Cifteli, Sharki', 'Albanisch', 'im Haus des Sängers Zeg Dani', '', 'Zwei Brüder haben Kühe gestohlen und gerieten beim Versuch, sie zu verkaufen, in eine Schießerei, bei der sie  20 Männer getötet haben und selbst ums Leben gekommen sind. Siehe Hb Notizen (masch.) ', 'Gesang und Cifteli: Zeg Dani; Gesang und Sharki: Ali Dani', 'Zeg Dani: m., 32 Jahre', 'Felix Hoerburger', 3, NULL),
(51, 'Hoji medet naran komita', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang, Cifteli, Sharki', 'Albanisch', 'im Haus des Sängers Zeg Dani', '', 'Diebstahl von Ziegen, Schießerei, Hasan Kuka', 'Gesang und Cifteli: Zeg Dani; Gesang und Sharki: Ali Dani', 'Zeg Dani: m., 32 Jahre', 'Felix Hoerburger', 3, NULL),
(52, '[Fortsetzung der Aufnahme 78 (F III 7)]', 'Gjonaj/ Đonaj', '13.08.1959', 'episches Lied mit Begleitung', '', 'Gesang, Cifteli, Sharki', 'Albanisch', 'im Haus des Sängers Zeg Dani', '', '', 'Gesang und Cifteli: Zeg Dani; Gesang und Sharki: Ali Dani', 'Zeg Dani: m., 32 Jahre', 'Felix Hoerburger', 3, NULL),
(53, 'Qka [oder: Ç''ka] po i thot Dema Kadris', 'Gjonaj/ Đonaj', '14.08.1959', 'Lied mit Begleitung', '', 'Gesang, Sharki', 'Albanisch', '', '', '', 'Gesang? Sharki?: Sherif Shigheci und Tahir Nina', 'Sherif Shigheci: m.; Herkunft: Dorf Planej', 'Felix Hoerburger', 5, NULL),
(54, '[Fyell]', 'Gjonaj/ Đonaj', '14.08.1959', 'Instrumentalstück', '', 'Fyell', '', 'am Fluß bei Done', '', '', 'Alash Binaki', 'Alash Binaki: m.; Herkunft: Done', 'Felix Hoerburger', 5, NULL),
(55, '[Musik zum Hochzeitszug]', 'Vranishtë/ Vranište', '15.08.1959', 'Musik zum Hochzeitszug durch das Dorf', '', '2 Surlen, 2 Tupan', '', 'Hochzeitszug, aus etwa 500m Entfernung aufgenommen', '', '', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija ', 'Feriz Osmani: m.; geb. 1928, Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Instrument: Surla; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Felix Hoerburger', 6, NULL),
(56, '[Musik zum Hochzeitszug]', 'Vranishtë/ Vranište', '15.08.1959', 'Musik zum Hochzeitszug durch das Dorf', '', '2 Surlen, 2 Tupan', '', 'Hochzeitszug, aus der Nähe aufgenommen', '', '', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija ', 'Feriz Osmani: geb. 1928; Herkunft: Dorf Mlike in Gora; Ethnie: Roma; Sprache: Goranisch, Albanisch; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Felix Hoerburger', 6, NULL),
(57, '[Eselsgeschrei]', 'Vranishtë/ Vranište', '16.08.1959', 'Naturaufnahme', '', '', '', '', '', '', '', '', 'Felix Hoerburger', 7, NULL),
(58, '[Musik zum Wetkampf]', 'Vranishtë/ Vranište', '16.08.1959', 'Musik zum Wettkampf', '', '2 Surlen, 2 Tupan', '', 'im Freien aufgenommen; Wettkämpfe bei einer Hochzeit, Dreisprung', '', '', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija ', 'Feriz Osmani: m., 31 Jahre; geb. 1928; Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Instrument: Surla; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Felix Hoerburger', 7, NULL),
(59, 'Pehlevanska muzika', 'Vranishtë/ Vranište', '16.08.1959', 'Musik zum Ringkampf', '', '2 Surlen, 2 Tupan', '', 'im Freien aufgenommen; Ringkampf bei einer Hochzeit', '', '', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija ', 'Feriz Osmani: m.; geb. 1928, Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Instrument: Surla; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Felix Hoerburger', 7, NULL),
(60, 'Podrum hodam, podrum spijem ', 'Vranishtë/ Vranište', '16.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Serbisch', '', '', '', 'Humet Zenuni', 'Humet Zenuni: m., 27 Jahre', 'Felix Hoerburger', 7, NULL),
(61, 'Tri mati gosti mori dojdo', 'Vranishtë/ Vranište', '16.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Serbisch', '', '', '', 'Ajradin Azizi', 'Ajradin Azizi: m., 35 Jahre', 'Felix Hoerburger', 7, NULL),
(62, 'Mori sevdo sevdalijo', 'Vranishtë/ Vranište', '16.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Serbisch', '', '', '', 'Ajradin Azizi', 'Ajradin Azizi: m., 35 Jahre', 'Felix Hoerburger', 7, NULL),
(63, 'Davaj me, majko, serd selo ', 'Vranishtë/ Vranište', '16.08.1959', 'Lied', '', 'Gesang (4 Mädchen)', 'Serbisch', 'im Dorf auf der Strasse', '', '', 'Sevda, Altana, Vajda und Samija', 'Sevda: w., 14 Jahre', 'Felix Hoerburger', 7, NULL),
(64, 'Kojna jaha, kojn da pukne pod mene', 'Vranishtë/ Vranište', '16.08.1959', 'Lied', '', 'Gesang (2 Männer)', 'Serbisch', '', '', '', 'Ajvos Azizi und Nesat Zulfikari', '', 'Felix Hoerburger', 7, NULL),
(65, '[Liederserie für 2 Surlen]', 'Vranishtë/ Vranište', '16.08.1959', 'Liederserie als Instrumentalstück', '', '2 Surlen', '', '', '', '', 'Surla 1: Feriz Osmani; Surla 2: Beriša Ibiš', 'Feriz Osmani: m., geb. 1928; Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Felix Hoerburger', 7, NULL),
(66, 'Evo gi majko idet putnici', 'Vranishtë/ Vranište', '17.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Serbisch', '', '', '', 'Skender Estrefi', 'Skender Estrefi: m., 32 Jahre, Globocica', 'Felix Hoerburger', 8, NULL),
(67, 'Još te li će bre brate ', 'Bellobrad/ Belobrod', '17.08.1959', 'Lied ', '', 'Sologesang (Mann)', '', '', '', '', 'Skender Estrefi', 'Skender Estrefi: m., 32 Jahre, Globocica', 'Felix Hoerburger', 9, NULL),
(68, 'Nashon pesme dal ngadal… ', 'Bellobrad/ Belobrod', '17.08.1959', 'Lied', '', 'Sologesang (Junge)', 'Albanisch', '', '', '', 'Coflish Sami', 'Coflish Sami: m., 12 Jahre', 'Felix Hoerburger', 9, NULL),
(69, 'Selmon lika', 'Bellobrad/ Belobrod', '17.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Hajrullah Murat Krabaj', 'Hajrullah Murat Krabaj: m., 64 Jahre; Herkunft: Zym/Zjum', 'Felix Hoerburger', 9, NULL),
(70, 'Sali syla ', 'Bellobrad/ Belobrod', '17.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Somazet Sefer', 'Somazet Sefer: m., 31 Jahre', 'Felix Hoerburger', 9, NULL),
(71, '1) Kolçoja; 2) Gostivarçe [ab 02:23]; 3) Tetovska [ab 04:12?]; 4) [Tanz - ab ?]', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz ohne Fassung; Männertanz; zwei Männertanze mit Fassung', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(72, '[Tanz]', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz mit Fassung', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(73, '[2 Tänze]', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanze mit Fassung', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(74, 'Kombaskombë', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(75, 'Hasjonka', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(76, 'Valle Prizreni (Prizrenska)', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(77, 'Valle prëj Podrime', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(78, '[Tanz]', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(79, 'Xhevahiri', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(80, 'Valle prëj Podrime', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz ohne Fassung', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(81, 'Valle prej Prizreni', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz mit Fassung', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(82, 'Guri i Xhevahirit', 'Brodosavce/ Brodosanë', '17.08.1959', 'Männertanz mit Fassung', '', 'Surle, Tupan', '', '', '', '', 'Surle: Ramadan Saiti; Tupan: Sali Ramadan', 'Ramadan Saiti: m., 20 Jahre; Herkunft: Brodosavce; Ethnie: Roma', 'Felix Hoerburger', 28, NULL),
(83, 'Çirit pejbon drit…', 'Bellobrad/ Belobrod', '17.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Shukri Gashi ', 'Shukri Gashi: m.; Herkuft: Brezna', 'Felix Hoerburger', 9, NULL),
(84, 'Moj e mira ç''ato male [vgl. 440]', 'Bellobrad/ Belobrod', '17.08.1959', 'Lied', '', 'Sologesang (Mann)', 'Albanisch', '', '', '', 'Shukri Gashi', 'Shukri Gashi: m.; Herkuft: Brezna', 'Felix Hoerburger', 9, NULL),
(85, '1) Hajde cun shkojim te kadija;  2) Kurljem dita dill dishirojs metpa [ab 06:20]', 'Zym/ Zjum', '18.08.1959', 'Lieder mit Begleitung', '', 'Gesang (2 Männer), Sharki', 'Albanisch', 'im Haus von Murat', '', '', 'Gesang: Hajrullah Murat Krabaj; Gesang und Sharki: Murat Hajrullah Krabaj', 'Hajrullah Murat Krabaj: m., 64 Jahre', 'Birthe Traerup (? - s. Bemerkungen) und Felix Hoerburger', 10, NULL),
(86, '[Sprachaufnahme]', 'Zym/ Zjum', '18.08.1959', 'Sprachaufnahme', '', 'Stimme (Mann)', '', '', '', 'Erzählung', 'Hajrullah Murat Krabaj', 'Hajrullah Murat Krabaj: m., 64 Jahre', 'Felix Hoerburger', 10, NULL),
(87, '1) Kudel dilli peran hona …. ; 2) Lumelum polje Zinzhergjin [ab 17:25]; 3) Pođi mi gjika (oder: Poljen gika pre livahdit buzte kyge si lula ollit [ab 20:38]', 'Zym/ Zjum', '18.08.1959', 'Lieder mit Begleitung', '', 'Gesang (2 Männer), Sharki', 'Albanisch', 'im Haus von Murat', '', '', 'Gesang: Hajrullah Murat Krabaj; Gesang und Sharki: Murat Hajrullah Krabaj', 'Hajrullah Murat Krabaj: m., 64 Jahre', 'Felix Hoerburger', 10, NULL),
(88, 'Selmon lika', 'Zym/ Zjum', '18.08.1959', 'Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki', 'Albanisch', 'im Haus von Murat', '', '', 'Gesang: Hajrullah Murat Krabaj; Gesang und Sharki: Murat Hajrullah Krabaj', 'Hajrullah Murat Krabaj: m., 64 Jahre', 'Felix Hoerburger', 10, NULL),
(89, 'Abubu per kta garslato', 'Zym/ Zjum', '18.08.1959', 'Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki', 'Albanisch', 'im Haus von Murat', '', '', 'Gesang: Hajrullah Murat Krabaj; Gesang und Sharki: Murat Hajrullah Krabaj', 'Hajrullah Murat Krabaj: m., 64 Jahre', 'Felix Hoerburger', 10, NULL),
(90, '1) Dras te vekit kush po kann; 2) Rushe regja fund livolit [ab 03:39]', 'Rugovo', '23.08.1959', 'Lieder mit Begleitung', '', '1) Gesang (2 Frauen), Tepsi; 2) Gesang (Frau + Mädchen), Tepsi', 'Albanisch', 'im Freien aufgenommen', '', '', 'Gesang und Tepsi: Laka Nikći; Gesang: Bute Nikći; danach: Gesang: Bute Nikći und Hagja Nikći; Tepsi: Laka Nikći', 'Laka Nikći: w., 60 Jahre; Ethnie: Albanerin; Religion: Islam', 'Felix Hoerburger', 11, NULL),
(91, '1) More miri qe del nod bjeshk [ab 06:25] 2) Marshal Titen se bon ma honá [ab 09:45, also als zweites Lied], 3) More miro nder bojli [ab 12:50]', 'Rugovo', '23.08.1959', 'Lieder mit Begleitung', '', '1) Gesang (Frauen), Tepsi', 'Albanisch', 'im Freien aufgenommen', '', '', 'Gesang: Bute Nikći und Hagja Nikći; Tepsi: Laka Nikći', 'Laka Nikći: w., 60 Jahre; Ethnie: Albanerin; Religion: Islam', 'Felix Hoerburger', 11, NULL),
(92, 'Nina nona [vgl. 74] more bir', 'Rugovo', '23.08.1959', 'Wiegenlied', '', 'Gesang (Frau)', 'Albanisch', 'im Freien aufgenommen', '', '', 'Laka Nikći', 'Laka Nikći: w., 60 Jahre; Ethnie: Albanerin; Religion: Islam', 'Felix Hoerburger', 11, NULL),
(93, 'Shkon syra zeza me hazz nior', 'Rugovo', '23.08.1959', 'Lied', '', 'Gesang (Frau)', 'Albanisch', '', '', '', 'Laka Nikći', 'Laka Nikći: w., 60 Jahre; Ethnie: Albanerin; Religion: Islam', 'Felix Hoerburger', 11, NULL),
(94, 'Ibrahim Hodjija [Hadzija?] rón Gjokonë', 'Rugovo', '23.08.1959', 'Lied mit Begleitung', '', 'Gesang (2 Frauen)', 'Albanisch', '', '', '', 'Gesang: Laka Nikći und Bute Nikći ', 'Laka Nikći: w., 60 Jahre; Ethnie: Albanerin; Religion: Islam', 'Felix Hoerburger', 11, NULL),
(95, 'Hysem bajri [vgl. 166]', 'Rugovo', '24.08.1959', 'Lied', '', 'Gesang (Mann)', 'Albanisch', '', '', '', 'Selim Bajrami', 'Selim Bajrami: m., ca. 60 Jahre; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 12, NULL),
(96, 'Tek len [Kudel] dilli preran hana [peran hona] [preron hona]… [vgl. Kudel dilli, 37 u. 23]', 'Rugovo', '24.08.1959', 'Lied ', '', 'Gesang (Mann)', 'Albanisch', '', '', '', 'Selim Bajrami', 'Selim Bajrami: m., ca. 60 Jahre; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 12, NULL),
(97, '[Musik zum Schwerttanz]', 'Rugovo', '26.08.1959', 'Musik zum Schwerttanz', '', 'Tupan, Kavall/Fyell', '', 'auf einem Berg nahe Rugovo bei Filmaufnahmen für das Fernsehen mitaufgenommen', '', '', 'Ram Nikći und andere', 'Ram Nikći: m., 31 Jahre; Bürgermeister von Rugovo; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 13, NULL),
(98, '[Eposvorpiel]', 'Rugovo', '26.08.1959', 'Eposvorspiel', '', 'Lahuta', '', 'auf einem Berg nahe Rugovo bei Filmaufnahmen für das Fernsehen mitaufgenommen', '', '', 'Halil Fazlija', 'Halil Fazlija: m.; Ethnie: Albaner, Religion: Islam', 'Felix Hoerburger', 13, NULL),
(99, '[episches Lied mit Begleitung]', 'Rugovo', '26.08.1959', 'episches Lied mit Begleitung', '', 'Gesang (Mann), Lahuta', 'Albanisch', 'auf einem Berg nahe Rugovo bei Filmaufnahmen für das Fernsehen mitaufgenommen', '', '', 'Ismail Alija', 'Ismail Alija: m., 48 Jahre; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 13, NULL),
(100, '[Spielstück auf Gajda]', 'Gllogovc/ Glogovac', '28.08.1959', 'Spielstück auf Gajda', '', 'Gajda', '', 'unterwegs von Pristina nach Glogovac; neben Gajda hört man das Geratter eines in der Nähe arbeitenden Traktors', '', '', 'Lika Nebi ', 'Lika Nebi: m., 50 Jahre; Herkunft: Stankovce bei Komorane', 'Felix Hoerburger', 32, NULL),
(101, 'Çunore çun shkojin [shkojim? shkujua?] tekadija [vgl. 137 u.197]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki, Karadyzen', 'Albanisch', '', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Glogovac', 'Felix Hoerburger', 33, NULL),
(102, 'Sultan hameta', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (2 Männer), Sharki, Cifteli', 'Albanisch', '', '', '', 'Gesang und Sharki: Mehmet Hajzeri; Cifteli: Ragib Ramadan; Gesang: Avde Smajli ', 'Mehmet Hajzeri: m.; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 33, NULL),
(103, 'Sultan Mahmed', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (3 Männer, sukzessiv), Sharki, Cifteli', 'Albanisch', '', '', '', 'Gesang und Sharki: Mehmet Hajzeri; Cifteli: Ragib Ramadan; Gesang: Avde Smajli ', 'Mehmet Hajzeri: m.; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 33, NULL),
(104, 'Hajde cun shkujua [shkojim] te kadija [vgl. 137 u. 194]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (3 Männer, sukzessiv), Sharki, Cifteli', 'Albanisch', '', '', '', 'Gesang und Sharki: Mehmet Hajzeri; Cifteli: Ragib Ramadan; Gesang: Avde Smajli ', 'Mehmet Hajzeri: m.; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 33, NULL),
(105, '(ohne Titel)', 'Gllogovc/ Glogovac', '29.08.1959', 'Hirtenmusik', '', 'Fyell', '', '', '', 'u.a.: serbisches Kolo', 'Islam Hasani', 'Islam Hasani: m., 16 Jahre; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 33, NULL),
(106, 'Rushe rexha fond ne vallet', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', 'Albanisch', '', '', '', 'Gesang und Sharki: Mehmet Hajzeri', 'Mehmet Hajzeri: m.; Ethnie: Albaner; Religion: Islam', 'Felix Hoerburger', 33, NULL),
(107, '1) Kënga e rexhes;  2) Parapëmes', 'Gllogovc/ Glogovac', '29.08.1959', 'Lieder mit Begleitung', '', 'Gesang (Junge), Sharki', 'Albanisch', '', '', '', 'Gesang und Sharki: Murat Alija', 'Murat Alija: m., 12 Jahre', 'Felix Hoerburger', 33, NULL),
(108, '[Sprachaufnahme]', 'Nakolec', '05.09.1959', 'Sprachaufnahme', '', 'Stimme (Mann)', 'Albanisch, Toskisch', '', '', 'Sprachprobe', 'Gani Mehmeti', 'Gani Mehmeti: m., 36 Jahre, Lehrer; Vater von Ajmali und Astrit', 'Felix Hoerburger', 14, NULL),
(109, '[Sprachaufnahme]', 'Nakolec', '05.09.1959', 'Sprachaufnahme', '', 'Stimme (Kind)', 'Albanisch, Toskisch', '', '', 'Gedicht', 'Astrit Mehmeti', 'Astrit Mehmeti: m., 7 Jahre, Sohn von Gani Mehmeti', 'Felix Hoerburger', 14, NULL),
(110, 'Ku këndonon zogat [Vgl. 305]', 'Nakolec', '05.09.1959', 'Hochzeitslied mit Iso', '', 'Gesang (Kinder), Iso-Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Astrit Mehmeti und Ajmali Mehmeti ', 'Astrit Mehmeti: m., 7 Jahre, Sohn von Gani Mehmeti', 'Felix Hoerburger', 14, NULL),
(111, 'Bir te lava, bir te ndrova', 'Nakolec', '05.09.1959', 'Trauerlied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Gani Mehmeti und 4 Männer (Iso)', 'Gani Mehmeti: m., 36 Jahre, Lehrer; Vater von Ajmali und Astrit', 'Felix Hoerburger', 14, NULL),
(112, '[Lied, Fragment]', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', '', '', 'Felix Hoerburger', 14, NULL),
(113, 'Mjera un e mjera si ta shkojme ket jete [Vgl. 263 und 279]', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', 'Petchalbarenlied vom Abschied eines Arbeiters ', 'Xhevcet Shemshedini und Gani Mehmeti ', 'Xhevcet Shemshedini: m., 53 Jahre', 'Felix Hoerburger', 14, NULL),
(114, 'Mjera un e mjera si ta shkojme ket jete [Vgl. 263 und 279]', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', 'Petchalbarenlied vom Abschied eines Arbeiters ', 'Xhevcet Shemshedini und Gani Mehmeti ', 'Xhevcet Shemshedini: m., 53 Jahre', 'Felix Hoerburger', 14, NULL),
(115, 'De nji fshat te vogel tri djame beqarë', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Bedri Halimi und Gani Mehmeti', 'Bedri Halimi: m., 26 Jahre', 'Felix Hoerburger', 14, NULL),
(116, 'Kenga a minollojt', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Skender Reizi und Medi Fazli', 'Skender Reizi: m.', 'Felix Hoerburger', 14, NULL),
(117, 'Ku Merzen capinjme zile [Vgl. 300]', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Medi Fazli und Gani Mehmeti ', 'Medi Fazli: m.', 'Felix Hoerburger', 14, NULL),
(118, 'Kjo libëhova shum e mirë', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Gani Mehmeti und Medi Fazli', 'Gani Mehmeti: m., 36 Jahre, Lehrer; Vater von Ajmali und Astrit', 'Felix Hoerburger', 14, NULL),
(119, 'Të kendon bilbili moj kryeqytetitë', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen), Iso-Gesang (Mann)', 'Albanisch, Toskisch', '', '', '', 'Ajmali Mehmeti und Gani Mehmeti ', 'Ajmali Mehmeti: w., 10 Jahre, Tochter von Gani Mehmeti', 'Felix Hoerburger oder Birthe Traerup (s. Ansage)', 14, NULL),
(120, 'Kenga e bilbili', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', 'Bilbil bedeutet Nachtigall', 'Xhevcet Shemshedini und Medi Fazli', 'Xhevcet Shemshedini: m., 53 Jahre', 'Felix Hoerburger', 14, NULL),
(121, '[Muezzinruf]', 'Nakolec', '06.09.1959', 'Muezzinruf', '', 'Gesang (Mann)', 'Albanisch, Toskisch', '', '', '', 'Beqir Oshlani', 'Beqir Oshlani: m.; Herkunft: Hoca', 'Felix Hoerburger', 15, NULL),
(122, '[Gebetslied]', 'Nakolec', '06.09.1959', 'Gebetslied', '', 'Gesang (Mann)', 'Albanisch, Toskisch', '', '', '', 'Beqir Oshlani', 'Beqir Oshlani: m.; Herkunft: Hoca', 'Felix Hoerburger', 15, NULL),
(123, 'Balen me se depe meser ma qen disur', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Asllan Veliu und Fatmir Oxha', 'Asllan Veliu: m.', 'Felix Hoerburger', 16, NULL),
(124, 'Oj si ste Aroki keg moj esmerke vogl', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Fatmir Oxha und Asllan Veliu mit Gruppe', 'Fatmir Oxha: m.', 'Felix Hoerburger', 16, NULL),
(125, 'Cmora nje ruge ternori [Vgl. 309]', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Suli Ibrajim und Fatmir Oxha mit Gruppe', 'Fatmir Oxha: m.', 'Felix Hoerburger', 16, NULL),
(126, 'Kaca dit ga syt nuku sho', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Asllan Veliu und Fatmir Oxha mit Gruppe', 'Asllan Veliu: m.', 'Felix Hoerburger', 16, NULL),
(127, 'O cast ajo qe zbret noj mali', 'Krani', '06.09.1959', 'Lied', '', 'Gesang (Männer, mehrstimmig)', 'Albanisch, Toskisch', '', '', '', 'Muarem Mamushlari, Asllan Veliu und Fatmir Oxha', 'Muarem Mamushlari: m., 36 Jahre', 'Felix Hoerburger', 16, NULL),
(128, 'O ma banje olru ne porzeline', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Fatmir Oxha und Asllan Veliu', 'Fatmir Oxha: m.', 'Felix Hoerburger', 16, NULL),
(129, 'Bandil lesh perdre thur', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Ibrahim Shabani und UNBEKANNT', 'Ibrahim Shabani: m.', 'Felix Hoerburger', 16, NULL),
(130, 'Ro kjo ane lumit ho bilbile shyne', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Teki Aramili und Fatmir Oxha', 'Teki Aramili: m.', 'Felix Hoerburger', 16, NULL),
(131, 'Atje lart necezma e bardhe', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', 'es wird zum Tanz gesungen', '', '', 'Asllan Veliu mit Gruppe (4 Personen)', 'Asllan Veliu: m.', 'Felix Hoerburger', 16, NULL),
(132, 'Moj syzeza', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', 'Jodelartiges Singen bei einzelnen Motiven (s. Hoerburger, Notizen, S. 15)', 'Amit Veliu und Asllan Veliu', 'Amit Veliu: m., 47 Jahre', 'Felix Hoerburger', 17, NULL),
(133, 'Si dota shkojme dimrin sivjet [Vgl. 227-8 und 279]', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Amit Veliu und Asllan Veliu', 'Amit Veliu: m., 47 Jahre', 'Felix Hoerburger', 17, NULL),
(134, '[Lied mit Iso]', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Fikri Amdi und Asllan Veliu', 'Fikri Amdi: m., 36 Jahre', 'Felix Hoerburger', 17, NULL),
(135, 'Yve male qysh duroni', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen und Männer)', 'Albanisch, Toskisch', '', '', '', 'Yrka Serveti und Amit Veliu', 'Yrka Serveti: w., 45 Jahre', 'Felix Hoerburger', 17, NULL),
(136, 'Ne qytet benet pazar', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen und Männer)', 'Albanisch, Toskisch', '', '', '', 'Bule Shaqiri und Yrka Serveti', 'Bule Shaqiri: m.', 'Felix Hoerburger', 17, NULL),
(137, 'Nje megjes dola pa ngokire', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen und Männer)', 'Albanisch, Toskisch', '', '', '', 'Remzije [Rezmije?] Nefiu und Yrka Serveti', 'Remzije [Rezmije?] Nefiu: w., 18 Jahre', 'Felix Hoerburger', 17, NULL),
(138, 'Binin daulet', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Fikri Amdi und Asllan Veliu', 'Fikri Amdi: m., 36 Jahre', 'Felix Hoerburger', 17, NULL),
(139, 'Mi se na erokte mar musafire', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Amit Veliu und Asllan Veliu', 'Amit Veliu: m., 47 Jahre', 'Felix Hoerburger', 17, NULL),
(140, 'Mer furken jakë pazdarke [Vgl. 365]', 'Arvati', '07.09.1959', 'Tanzlied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Fikri Amdi und Gruppe ', 'Fikri Amdi: m., 36 Jahre', 'Felix Hoerburger', 17, NULL),
(141, 'Ajde me ga dale vallen se plu ron kaftanen', 'Arvati', '07.09.1959', 'Tanzlied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Amit Veliu und Gruppe', 'Amit Veliu: m., 47 Jahre', 'Felix Hoerburger', 17, NULL),
(142, 'Ci ariva dites sot si lunja un', 'Arvati', '07.09.1959', 'Tanzlied mit Iso', '', 'Gesang (Frauen), Iso-Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Yrka Serveti und Gruppe', 'Yrka Serveti: w., 45 Jahre', 'Felix Hoerburger', 17, NULL),
(143, 'Daulet më lemët të aga beut', 'Arvati', '07.09.1959', 'Tanzlied  mit Iso', '', 'Gesang (Frauen)', 'Albanisch, Toskisch', '', '', '', 'Nefise Amit und Gruppe', 'Nefise Amit: w., 50 Jahre', 'Felix Hoerburger', 17, NULL),
(144, 'Megadal me zutulon', 'Arvati', '07.09.1959', 'Tanzlied', '', 'Gesang (Männer und Frauen)', 'Albanisch, Toskisch', 'Das Zweiermotiv am Schluss der Aufnahme wird von dem jungen Mann [Abedin Sulejmani] und der Frau (Yrka) sowie Birthe Traerup getanzt.', '', '', 'Abedin Sulejmani und Yrka Serveti', 'Abedin Sulejmani: m., 25 Jahre', 'Felix Hoerburger', 17, NULL),
(145, 'Te me hejë zoti mua bilbil e tjater zotua', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Nazim Maliku und Amit Veliu', 'Nazim Maliku: m., 25 Jahre', 'Felix Hoerburger', 17, NULL),
(146, 'Zenel Abedini i shtrire', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Nazim Maliku und Amit Veliu', 'Nazim Maliku: m., 25 Jahre', 'Felix Hoerburger', 17, NULL),
(147, 'Ja mi loder i kapitur', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Ibraim Shabani und Nazim Malihu [Maliku?]', 'Ibrahim Shabani: m.', 'Felix Hoerburger', 17, NULL),
(148, 'Briji qete cap ne are', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang', 'Albanisch, Toskisch', '', '', '', 'Amit Veliu und Alit Veliu', 'Amit Veliu: m., 47 Jahre', 'Felix Hoerburger', 17, NULL),
(149, 'Si do shkojme kete jete [Vgl. 227-8 und 263]', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Ymer Ibrajimi und Nazim Malihu [Maliku?]', 'Ymer Ibrajimi: m., 16 Jahre', 'Felix Hoerburger', 17, NULL),
(150, 'O male sa male ini', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Odo Tefiku und Asllan Veliu', 'Odo Tefiku: m., 30 Jahre, Lehrer', 'Felix Hoerburger', 18, NULL),
(151, 'Ku me zejen copi me zile [Ku merzen capinjme zile? - vgl. 232]', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Bari Memeti und Asllan Veliu', 'Bari Memeti: m., 27 Jahre', 'Felix Hoerburger', 18, NULL),
(152, 'Me shami të zeze ma shkebe biarë', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch, Toskisch', '', '', '', 'Enver Serveti und Bari Memeti', 'Enver Serveti: m., 24 Jahre', 'Felix Hoerburger', 18, NULL),
(153, 'Moj rabonke muleveskë', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Jungen)', 'Albanisch, Toskisch', '', '', '', 'Muamer [Muharrem?] Bransh und Ejup Memeti ', 'Muamer [Muharrem?] Bransh: m.,  13 Jahre', 'Felix Hoerburger', 18, NULL),
(154, 'Ori bilbil ehde bilbil', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Jungen)', 'Albanisch, Toskisch', '', '', '', 'Guroli und Neshat Islami ', 'Guroli ?: m., 14 Jahre', 'Felix Hoerburger', 18, NULL),
(155, 'Domoc ciften dodol per gja', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen)', 'Albanisch, Toskisch', '', '', '', 'Qiboret Rushani und Nizamije Nurin', 'Qiboret Rushani: m., 12 Jahre', 'Felix Hoerburger', 18, NULL),
(156, 'Ku këndojne zogat [Ku këndonon zogat - vgl. 224]', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen)', 'Albanisch, Toskisch', '', '', '', 'Paqike Shabon und Kinije Zoimi', 'Paqike Shabon: w., 13 Jahre', 'Felix Hoerburger', 18, NULL),
(157, 'Malarja në shtote mole', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen)', 'Albanisch, Toskisch', '', '', '', 'Emini Mole und Fikcie Feimi', 'Emini Mole: w.', 'Felix Hoerburger', 18, NULL),
(158, 'Lulejo qe ri de dera', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen)', 'Albanisch, Toskisch', '', '', '', 'Merlude Abdulla und Alime Iljazi', 'Merlude Abdulla: w., 15 Jahre', 'Felix Hoerburger', 18, NULL),
(159, 'Dy të mballo zoll ti më dolle plat', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen)', 'Albanisch, Toskisch', '', '', '', 'Zinie Zaim und Nekic Lobriu', 'Zinie Zaim: w.', 'Felix Hoerburger', 18, NULL),
(160, 'Cmora nje ruge [Cmora nje ruge ternori - vgl. 242]', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen)', 'Albanisch, Toskisch', '', '', '', 'Olimbi Oxha und Nekije Gabriu', 'Olimbi Oxha: w., 13 Jahre', 'Felix Hoerburger', 18, NULL),
(161, 'Qan ijati të birë', 'Krani', '08.09.1959', 'Tanzmusik', '', 'Klarinette (grneta), Trommel (daulle) und Harmonike (armonikë)', '', '', '', '', 'Klarinette/ Grneta: Lule Islam; Trommel/ Daule: Bexho Pendo; Akkordeon/ Armonikë: Najdo Panov', 'Lule Islam: m.; Ethnie: Roma', 'Felix Hoerburger', 18, NULL),
(162, 'Rëzonet Laei ngaj stani', 'Krani', '08.09.1959', 'Tanzmusik mit Gesang', '', 'Klarinette (grneta), Trommel (daulle), Harmonike (armonikë) und Gesang', 'Albanisch, Toskisch', '', '', '', 'Klarinette/ grneta und Gesang: Lule Islam; Trommel/ daulle: Bexho Pendo; Akkordeon/ armonikë: Najdo Panov', 'Lule Islam: m.; Ethnie: Roma', 'Felix Hoerburger', 18, NULL),
(163, '[Lied mit Iso]', 'Ohrid', '13.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch (Toskisch?)', '', '', '', 'UNBEKANNT', '', 'Felix Hoerburger', 19, NULL),
(164, 'Krisi Pushka [Vgl. 6, 15, 406 und 422]', 'UNBEKANNT', 'UNBEKANNT', 'Lied', '', 'Gesang (Junge)', 'Albanisch, Gegisch', '', '', '', 'Pemë Xelo Islam', 'Pemë Xelo Islam: m., 10 Jahre', 'Felix Hoerburger', 4, NULL),
(165, 'Cui Rexo cui diallo ', 'Ohrid', '13.09.1959', 'Lied ', '', 'Gesang (Mann)', 'Albanisch (Gegisch?)', '', '', '', 'Xelo Islam', 'Xelo Islam: m., 26 Jahre', 'Felix Hoerburger', 19, NULL),
(166, 'Dy topçit te Shkodras naikam dal [vgl. 339]', 'Ohrid', '13.09.1959', 'Lied', '', 'Gesang (Mann)', 'Albanisch (Gegisch?)', '', '', '', 'Xelo Islam', 'Xelo Islam: m., 26 Jahre', 'Felix Hoerburger', 19, NULL),
(167, 'Me cigare drit spombon', 'Ohrid', '13.09.1959', 'Lied', '', 'Gesang (Mann)', 'Albanisch (Gegisch?)', '', '', '', 'Xelo Islam', 'Xelo Islam: m., 26 Jahre', 'Felix Hoerburger', 19, NULL),
(168, 'O mbaç më çaf ti çëmë vrave mue', 'Ohrid', '13.09.1959', 'Lied ', '', 'Gesang (Frau und Mann)', 'Albanisch', '', '', '', 'Mislime Xelo Oslam und Nersad Shaban Xyla', 'Mislime Xelo Oslam: m., 20 Jahre', 'Felix Hoerburger', 19, NULL),
(169, 'Mëmar toj baba të vogël ', 'Radolishta', '14.09.1959', 'Lied mit Iso und Begleitung', '', 'Gesang (Männer), Tambura', 'Albanisch', '', '', '', 'Raif Mamuti und Shaqir Çermenika mit Gruppe (4 Sänger); Tambura: ?', 'Raif Mamuti: m.', 'Felix Hoerburger', 20, NULL),
(170, 'Në plepat e bilishtit', 'Radolishta', '14.09.1959', 'Lied mit Iso', 'Krani', 'Gesang (Männer)', 'Albanisch', '', '', '', 'Adem Ademi, Shaqir Çermenika und Gruppe ', 'Adem Ademi: m.; Herkunft: Krani', 'Felix Hoerburger', 20, NULL),
(171, 'Ti moj Çobanka emailit', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang und Tambura: Kaim Murtishi', 'Kaim Murtishi: m., 25 Jahre, Lehrer', 'Felix Hoerburger', 20, NULL),
(172, 'Kush ka than sy zeza përty [Ku kendon dy zeza?]', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', 'Albanisch, Gegisch', '', '', '', 'Gesang und Def: Resmije Murtishi', 'Resmije Murtishi: w., 16 Jahre; Herkunft: Veleshta', 'Felix Hoerburger', 20, NULL),
(173, 'E zura fëllënxëno', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang und Tambura: Abdurahman Çermenika', 'Abdurahman Çermenika: m., 27 Jahre', 'Felix Hoerburger', 20, NULL),
(174, 'Ja lla më kamar malli me u martue', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang und Tambura: Kaim Murtishi ', '', 'Felix Hoerburger', 20, NULL),
(175, 'Kanga e asimes', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', 'Albanisch', '', '', '', 'Gesang und Def: Resmije Murtishi', 'Resmije Murtishi: w., 16 Jahre; Herkunft: Veleshta', 'Felix Hoerburger', 20, NULL),
(176, 'Trandafil ne boka rrin', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Tambura', 'Albanisch, Toskisch', '', '', '', 'Gesang: Raif Mamuti mit Gruppe; Tambura: ?', '', 'Felix Hoerburger', 20, NULL),
(177, 'Te Mullini me dy gjur', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang und Tambura: Abdurahman Çermenika', 'Abdurahman Çermenika: m., 27 Jahre', 'Felix Hoerburger', 20, NULL),
(178, 'Djal sadrija', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Tambura', 'Albanisch', '', '', '', 'Gesang: Medi ? und Raif Mamuti; Tambura: Kaim Murtishi ', 'Medi ? und Raif Mamuti', 'Felix Hoerburger', 20, NULL),
(179, 'Tundu shkundu moj pollumbesh [vgl. 283]', 'Radolishta', '14.09.1959', 'Lied mit Iso und Begleitung', '', 'Gesang (Männer), Tambura', 'Albanisch', '', '', '', 'Gesang: Shaqir Çermenika und Kaim Murtishi; Tambura: [wahrscheinlich Kaim Murtishi]', 'Shaqir Çermenika: m.', 'Felix Hoerburger', 20, NULL),
(180, 'Gugushke ku vete kështu', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang und Tambura: Kaim Murtishi ', 'Kaim Murtishi: m., 25 Jahre, Lehrer', 'Felix Hoerburger', 20, NULL),
(181, 'Nji syo moj të lartë [vgl. 358]', 'Radolishta', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', 'Albanisch', '', '', '', 'Shaqir Çermenika mit Gruppe', 'Shaqir Çermenika: m.', 'Felix Hoerburger', 20, NULL),
(182, 'Tin moj medis holla', 'Radolishta', '14.09.1959', 'Frauentanz', '', 'Gesang (Mann und Frau), Tambura, Def', 'Albanisch', '', '', '', 'Gesang und Tambura: Kaim Murtishi; Gesang und Def: Resmije Murtishi ', 'Kaim Murtishi: m., 25 Jahre, Lehrer', 'Felix Hoerburger', 20, NULL),
(183, 'Frini era u cel dera [Frini e ra lugje - vgl. 22]', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang (und Tambura ?): Abdurrahman Çermenika', 'Abdurahman Çermenika: m., 27 Jahre', 'Felix Hoerburger', 20, NULL),
(184, 'Shtad bilbilat kra je shila [oder: O shtat … - vgl. 403 und 425]', 'Radolishta', '14.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', 'Albanisch', '', '', '', 'Gesang und Tambura: Kaim Murtishi ', 'Kaim Murtishi: m., 25 Jahre, Lehrer', 'Felix Hoerburger', 20, NULL),
(185, 'Toskaŗçe', 'Radolishta', '14.09.1959', 'Männertanz', '', 'Tambura, Def', '', '', '', '', 'Tambura: Kaim Murtishi; Def: Resmije Murtishi', 'Kaim Murtishi: m., 25 Jahre, Lehrer', 'Felix Hoerburger', 20, NULL),
(186, 'Ostrence (teska igra)', 'Radolishta', '14.09.1959', 'Tanz', '', 'Tambura, Def', '', 'Es wird dazu getanzt.', '', '', 'Tambura: Abdurrahman Çermenika;  Def: Resmije Murtishi', 'Abdurahman Çermenika: m., 27 Jahre', 'Felix Hoerburger', 20, NULL),
(187, 'Toskaŗçe', 'Radolishta', '14.09.1959', 'Männertanz', '', 'Tambura, Def', '', '', '', '', 'Tambura: Kaim Murtishi (Lehrer? - überprüfen, Info aus dem Film); Def: Resmije Murtishi', 'Kaim Murtishi: m., 25 Jahre, Lehrer', 'Felix Hoerburger', 20, NULL),
(188, 'Plepi bilishti', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Pasho Lleshi und Imet Osmani mit Gruppe', 'Pasho Lleshi: m., 31 Jahre', 'Felix Hoerburger', 21, NULL),
(189, 'Munstan te colaku', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Pasho Lleshi und Imet Osmani mit Gruppe', 'Pasho Lleshi: m., 31 Jahre', 'Felix Hoerburger', 21, NULL),
(190, 'Brendan Stambol', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Sadula Iljazoski und Gruppe', 'Sadula Iljazoski ', 'Felix Hoerburger', 21, NULL),
(191, 'Ntje posht ke porte madhe', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Izet Iljazoski und Imet Osmani mit Gruppe', 'Izet Iljazoski: m., 56 Jahre', 'Felix Hoerburger', 21, NULL),
(192, 'Jas e mer moj tamorim', 'Frangovo', '14.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Izet Iljazoski und Imet Osmani mit Gruppe', 'Izet Iljazoski: m., 56 Jahre', 'Felix Hoerburger', 21, NULL),
(193, 'Nji su ma lart nji ma posht [oder: Nji syo moj të lartë? - vgl. 330]', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Mustafa Ramadan und Imet Osmani mit Gruppe', 'Mustafa Ramadan', 'Felix Hoerburger', 21, NULL),
(194, 'Munte rupi mashkulare', 'Frangovo', '14.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Imet Osmani mit Gruppe', 'Imet Osmani: m., 51 Jahre', 'Felix Hoerburger', 21, NULL),
(195, 'Ce zvdice nji mot me por', 'Frangovo', '14.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Sadula Iljazoski und Izet Iljazoski ', 'Sadula Iljazoski', 'Felix Hoerburger', 21, NULL),
(196, 'Frumi era e letit', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Pasho [Basho?] Lleshi und Imet Osmani', 'Pasho Lleshi: m., 31 Jahre', 'Felix Hoerburger', 21, NULL);
INSERT INTO `songs` (`id`, `Titel/Textanfang`, `location`, `date`, `Genre`, `Herkunft`, `Besetzung`, `Sprache`, `Aufnahmesituation`, `Funktion`, `Inhalt`, `Interpreten`, `Interpret 1 - Name, Alter, Herkunft, Beruf, Ethnie`, `Aufgenommen durch`, `station_id`, `url`) VALUES
(197, 'Leto mora udhen me yrush', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Nafis Etemoski und Imet Osmani', 'Nafis Etemoski: m.', 'Felix Hoerburger', 21, NULL),
(198, 'Plac te roft moj colemole', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Izet Iljazoski und Imet Osmani', 'Izet Iljazoski: m., 56 Jahre', 'Felix Hoerburger', 21, NULL),
(199, 'Osok te can devoli', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Pasho Lleshi und Imet Osmani ', 'Pasho [Basho?] Lleshi: m., 31 Jahre', 'Felix Hoerburger', 21, NULL),
(200, 'Mere moj ferkem ajda paz darke [Mer furken jakë pazdarke - vgl. 270]', 'Frangovo', '14.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Izet Iljazoski und Imet Osmani mit Gruppe', 'Izet Iljazoski: m., 56 Jahre', 'Felix Hoerburger', 21, NULL),
(201, 'Zun vet po raloem', 'Frangovo', '14.09.1959', 'Lied ', '', 'Gesang (Männer)', '', '', '', '', 'Lutvi Ramadani und Memet Zamberi', 'Lutvi Ramadani: m.', 'Felix Hoerburger', 21, NULL),
(202, 'Shme rremben gega ne mal', 'Frangovo', '14.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Avdula Camili mit Gruppe', 'Avdula Camili: m., 52 Jahre', 'Felix Hoerburger', 21, NULL),
(203, 'Petanik me lorra', 'Frangovo', '14.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Lutvi Ramadani und Gruppe', 'Lutvi Ramadani: m.', 'Felix Hoerburger', 21, NULL),
(204, '[Muezzinruf]', 'Radolishta', '15.09.1959', 'Muezzinruf', '', 'Gesang (Mann)', '', '', '', '', 'Ramadan Hajrulla', 'Ramadan Hajrulla: m., 70 Jahre', 'Felix Hoerburger', 22, NULL),
(205, 'Amen er rasulli', 'Radolishta', '15.09.1959', 'Koranrezitation', '', 'Gesang (Mann)', '', '', '', '', 'Ramadan Hajrulla', 'Ramadan Hajrulla: m., 70 Jahre', 'Felix Hoerburger', 22, NULL),
(206, 'El edine je kulune', 'Radolishta', '15.09.1959', 'Koranrezitation', '', 'Gesang (Mann)', '', '', '', '', 'Ramadan Hajrulla', 'Ramadan Hajrulla: m., 70 Jahre', 'Felix Hoerburger', 22, NULL),
(207, '[Muezzinruf]', 'Frangovo', '15.09.1959', 'Muezzinruf', '', 'Gesang (Mann)', '', '', '', '', 'Beshir Latif ', 'Beshir Latif: m., 55 Jahre; Herkunft: Hoca in Frengovo', 'Felix Hoerburger', 23, NULL),
(208, 'Ejopate ti ci vrave muve', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Koxhexhik Shevket', 'Koxhexhik Shevket: m.', 'Felix Hoerburger', 24, NULL),
(209, 'Dy topçit e Shkodres [oder: Dy topçit te Shkodras naikam dal - vgl. 315]', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Koxhexhik Shevket', 'Koxhexhik Shevket: m.', 'Felix Hoerburger', 24, NULL),
(210, 'Hajde, hajde halil limoni', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Vinca Zija', 'Vinca Zija: m.', 'Felix Hoerburger', 24, NULL),
(211, 'Oj se gani beg toptan', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Vinca Zija', 'Vinca Zija: m.', 'Felix Hoerburger', 24, NULL),
(212, 'Sy seza', 'Bidžovo ', '17.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Hani Belqa und andere', 'Hani Belqa: w.', 'Felix Hoerburger', 25, NULL),
(213, 'Shtat bylbyla [oder: Shtad bilbilat kra je shila - vgl. 333 und 435]', 'Bidžovo ', '17.09.1959', 'Lied ', '', 'Gesang (Frauen und Männer, mehrstimmig)', '', '', '', '', 'Hani Belqa und Gruppe', 'Hani Belqa: w.', 'Felix Hoerburger', 25, NULL),
(214, '[Lied]', 'Bidžovo ', '17.09.1959', 'Lied', '', 'Gesang (Frauen und Männer)', '', '', '', '', '[keine Angaben, wahrscheinlich wie 403]', '', 'Felix Hoerburger', 25, NULL),
(215, '[Tanz]', 'Bidžovo ', '17.09.1959', 'Tanzmusik', 'Serbien', 'kleine Surla, großer Tupan', '', '', '', '', 'Surla: Shira Aziz; Tupan: Shira Zekir', 'Shira Aziz: m.', 'Felix Hoerburger', 25, NULL),
(216, 'Krisi Pushka [Vgl. 6, 15, 313 und 422]', 'Bidžovo ', '17.09.1959', 'Lied als Instrumentalstück', '', 'Surla, Tupan', '', '', '', '', 'Surla: Shira Aziz; Tupan: Shira Zekir', 'Shira Aziz: m.', 'Felix Hoerburger', 25, NULL),
(217, 'Koxho xhija', 'Bidžovo ', '17.09.1959', 'Instrumentalstück', '', 'Surla, Tupan', '', '', '', '', 'Surla: Shira Aziz; Tupan: Shira Zekir', 'Shira Aziz: m.', 'Felix Hoerburger', 25, NULL),
(218, 'Asaman moj non', 'Bidžovo ', '17.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Krliu Nushi', '', 'Felix Hoerburger', 25, NULL),
(219, 'Çamçe', 'Bidžovo ', '17.09.1959', 'Tanz', '', '2 Surle, großer Tupan', '', '', '', '', 'Surla 1: Shira Aziz; Surla 2: keine Angabe; Tupan: Shira Zekir', 'Shira Aziz: m.', 'Felix Hoerburger', 25, NULL),
(220, 'Qindra herë te ty jam nisë', 'Skopje', '24.09.1959', 'Lied mit Begleitung', '', 'Gesang (Gruppe), 4 Mandolinen, Harmonika', '', '', '', '', 'Gruppe aus der albanischen pädagogischen Schule in Skopje ', '', 'Felix Hoerburger', 26, NULL),
(221, 'Qofsh e zezë moj bukurije', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Rahim Ganiu', 'Rahim Ganiu: m., 17 Jahre; Herkunft: Kumanovo', 'Felix Hoerburger', 26, NULL),
(222, 'Në drrasë të vekut kush po qanë', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Rahim Ganiu', 'Rahim Ganiu: m., 17 Jahre; Herkunft: Kumanovo', 'Felix Hoerburger', 26, NULL),
(223, 'Kur dy zemza dashunohen', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Mohamer Cami', 'Mohamer Cami: m., 13 Jahre; Herkunft: Debra', 'Felix Hoerburger', 26, NULL),
(224, 'Zare moj dil ke lama', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Feriz Kaliqi', 'Feriz Kaliqi: m., 19 Jahre, Herkunft: Dorf Koroshishta bei Struga', 'Felix Hoerburger', 26, NULL),
(225, 'Krisi Pushka në karaorman [Vgl. 6, 15, 313 und 406]', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', 'Hb VZ: neues Partisanenlied aus dem Karaormangebirge nördlich von Struga', 'Feriz Kaliqi', 'Feriz Kaliqi: m., 19 Jahre, Herkunft: Dorf Koroshishta bei Struga', 'Felix Hoerburger', 26, NULL),
(226, 'Pjergullo moj me rrush qenke derdhun-o', 'Skopje', '24.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchengruppe), Def', '', '', '', '', 'keine Angaben', '', 'Felix Hoerburger', 26, NULL),
(227, 'Kush asht ai që rrin ndër odë ', 'Skopje', '24.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchengruppe), Def', '', '', '', '', 'keine Angaben', '', 'Felix Hoerburger', 26, NULL),
(228, 'Na duel musja e mirë', 'Skopje', '24.09.1959', 'Hochzeitslied', '', 'Gesang (Mädchengruppe), Def', '', '', '', '', 'keine Angaben', '', 'Felix Hoerburger', 26, NULL),
(229, 'Ti moj mollë e kuqe', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Mädchengruppe), Def', '', '', '', '', 'keine Angaben', '', 'Felix Hoerburger', 26, NULL),
(230, 'Biri i nanës ', 'Skopje', '24.09.1959', 'Klagelied', '', 'Gesang (Frau)', '', '', '', '', 'Sekine Lamaxhema', 'Sekine Lamaxhema: w., 18 Jahre; Herkunft: Urosevac', 'Felix Hoerburger', 26, NULL),
(231, 'Vlla dhe motër Bashkë [oder: Vllah e ma ter - vgl. 41]', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Sekine Lamaxhema', 'Sekine Lamaxhema: w., 18 Jahre; Herkunft: Urosevac', 'Felix Hoerburger', 26, NULL),
(232, 'Në zabel të erdha', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Qerimane Imami', 'Qerimane Imami: w., 17 Jahre, aus Struga', 'Felix Hoerburger', 26, NULL),
(233, 'Karamfili e zëmbaku paskan celë për bukuri', 'Skopje', '24.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Qerimane Imami', 'Qerimane Imami: w., 17 Jahre, aus Struga', 'Felix Hoerburger', 26, NULL),
(234, '[Sprachaufnahme]', 'Skopje', '24.09.1959', 'Sprachaufnahme ', '', 'Stimme (Mann)', 'Gegisch und Toskisch', '', 'Sprachprobe', 'Der selbe Satz auf Gegisch und Toskisch', 'Xhevat Gega', 'Xhevat Gega: m.; Herkunft: Skopje', 'Felix Hoerburger', 26, NULL),
(235, '[Sprachaufnahme]', 'Skopje', '24.09.1959', 'Sprachaufnahme ', '', 'Stimme (Mann)', 'Gegisch', '', 'Sprachprobe', '', 'Xhevat Gega', 'Xhevat Gega: m.; Herkunft: Skopje', 'Felix Hoerburger', 26, NULL),
(236, '[Sprachaufnahme]', 'Skopje', '24.09.1959', 'Sprachaufnahme ', '', 'Stimme (Mann)', 'Toskisch', '', 'Sprachprobe', '', 'Xhevat Gega', 'Xhevat Gega: m.; Herkunft: Skopje', 'Felix Hoerburger', 26, NULL),
(237, 'Ore kandil i garipit cke kandil qi spo bandrit', 'Glumovo', '27.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Afet Qail und Riza Ramadan ', 'Afet Qail: m., 28 Jahre', 'Felix Hoerburger', 27, NULL),
(238, 'O shtat bilbilat ishin mbledhë [vgl. 403 und 333]', 'Glumovo', '27.09.1959', 'Hochzeitslied', '', 'Gesang (Männer)', '', '', '', 'Bilbil bedeutet Nachtigall', 'Afet Qail und Riza Ramadan ', 'Afet Qail: m., 28 Jahre', 'Felix Hoerburger', 27, NULL),
(239, 'Oj Munire motër ku e more veremin', 'Glumovo', '27.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Setki Faik und Qemal Nazmi', 'Setki Faik: m., 22 Jahre', 'Felix Hoerburger', 27, NULL),
(240, 'Time mori Time shum çik e mirë', 'Glumovo', '27.09.1959', 'Lied mit Iso (Vajtim)', '', 'Gesang (Männer)', '', '', '', '', 'Sherif Zejnulla; Iso: Setki Nazmi ', 'Sherif Zejnulla: m., 24 Jahre', 'Felix Hoerburger', 27, NULL),
(241, 'Punë epa punë Nife çka po del te gardhi', 'Glumovo', '27.09.1959', 'Lied mit Iso (Vajtim)', '', 'Gesang (Männer)', '', '', '', '', 'Sherif Zejnulla; Iso: Setki Nazmi ', 'Sherif Zejnulla: m., 24 Jahre', 'Felix Hoerburger', 27, NULL),
(242, 'Kur jam kan nji vaqt ma i ri [oder: Kur jam kann ni her i ri e kom pos ni ceteli… - vgl. 9]', 'Glumovo', '27.09.1959', 'Lied mit Iso (Vajtim)', '', 'Gesang (Männer)', '', '', '', '', 'Sherif Zejnulla; Iso: Setki Nazmi ', 'Sherif Zejnulla: m., 24 Jahre', 'Felix Hoerburger', 27, NULL),
(243, 'Moj e mira te pojata [oder: Moj e mira ç''ato male - vgl. 102]', 'Glumovo', '27.09.1959', 'Lied mit Iso (Vajtim)', '', 'Gesang (Männer)', '', '', '', '', 'Sherif Zejnulla; Iso: Setki Nazmi ', 'Sherif Zejnulla: m., 24 Jahre', 'Felix Hoerburger', 27, NULL),
(244, 'Çu bre Rexho dil de lama', 'Glumovo', '27.09.1959', 'Lied als Instrumentalstück', '', 'kernloses Fyell', '', '', '', 'Hb VZ: trauriges Lied', 'Sulejman Shemo', 'Sulejman Shemo: m., 38 Jahre', 'Felix Hoerburger', 27, NULL),
(245, 'Krisi Pushka [vgl. 6,15,…]', 'Glumovo', '27.09.1959', 'Lied als Instrumentalstück', '', 'kernloses Fyell', '', '', '', '', 'Setki Jusuf ', 'Fyell: Setki Jusuf (38 Jahre)', 'Felix Hoerburger', 27, NULL),
(246, 'O Sultan Selim', 'Glumovo', '27.09.1959', 'Lied als Instrumentalstück', '', '2 kernlose Fyell', '', '', '', '', 'Sulejman Shemo und Said Bexhet', 'Sulejman Shemo: m., 38 Jahre', 'Felix Hoerburger', 27, NULL),
(247, '[Muezzinruf]', 'Glumovo', '27.09.1959', 'Muezzinruf', '', 'Gesang (Mann)', '', '', '', '', 'Sulejman Shemo', 'Sulejman Shemo: m., 38 Jahre', 'Felix Hoerburger', 27, NULL),
(248, 'Ciganska mala', 'Gjonaj/ Đonaj', '12.08.1959', 'Frauentanz', '', 'Def', '', '', '', '', 'Kumri Selmon', 'Kumri Selmon: w., 18 Jahre; Herkunft: Zjum; Ethnie: Roma', 'Birthe Traerup', 2, NULL),
(249, 'Mari mine', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mann)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Lusoj Soqir', 'Lusoj Soqir: m., 22 Jahre', 'Birthe Traerup', 3, NULL),
(250, 'Padel Hana Bukur ase', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', '', 'Gesang (Kinder)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Nazifja Rexhepit und UNBEKANNT', 'Nazifja Rexhepit: w.?, 6 Jahre', 'Birthe Traerup', 3, NULL),
(251, 'Lumja per tezen', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', '', 'Gesang (Kinder)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Nazifja Rexhepit und UNBEKANNT', 'Nazifja Rexhepit: w.?, 6 Jahre', 'Birthe Traerup', 3, NULL),
(252, 'Oj sensije kalaves', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Seretjo ? und Seqenija ?', 'Seretjo ?: w., 16 Jahre', 'Birthe Traerup', 3, NULL),
(253, 'E dhe nusja', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Seretjo ? und Seqenija ?', 'Seretjo ?: w., 16 Jahre', 'Birthe Traerup', 3, NULL),
(254, 'Kusta kapi kalim', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Nanna Hanifes', 'Nanna Hanifes: w., 60 Jahre', 'Birthe Traerup', 3, NULL),
(255, 'Oj semsije Malla', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Seret [Seretjo?]  [und Seqenija?]', '[wahrscheinlich:] Seretjo ?: w., 16 Jahre', 'Birthe Traerup', 3, NULL),
(256, 'Comore regjo', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Cifteli, Sharki', '', 'im Haus des Rexhip Osmanollaj', '', '', 'Cifteli: Zeg Dani; Sharki: ?; Gesang: Seretjo ?, Muski ?, Ira ?, Ceteles ?', 'Zeg Dani: m., 32 Jahre', 'Birthe Traerup', 3, NULL),
(257, 'Ojfllaz ce ri nekafaze [UNKLAR]', 'Gjonaj/ Đonaj', '13.08.1959', '', '', '', '', '', '', '', 'UNKLAR', '', 'Birthe Traerup', 3, NULL),
(258, 'Teura trasevib', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Gesang: Zeg Dani und Adlla Resyti', 'Zeg Dani: m., 32 Jahre', 'Birthe Traerup', 3, NULL),
(259, 'Nat zastaj', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Cifteli, Sharki', '', '', '', 'Liebeslied', 'Gesang und Cifteli: Zeg Dani; Gesang und Sharki: Ali Dani', 'Zeg Dani: m., 32 Jahre', 'Birthe Traerup', 3, NULL),
(260, 'Kus pazdirgjet', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Cifteli, Sharki', '', '', '', '', 'Gesang und Cifteli: Zeg Dani; Gesang und Sharki: Ali Dani', 'Zeg Dani: m., 32 Jahre', 'Birthe Traerup', 3, NULL),
(261, 'Ani mari nuse', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Nanna Hanifes und UNBEKANNT', 'Nanna Hanifes: w., 60 Jahre', 'Birthe Traerup', 3, NULL),
(262, 'Kuke cik knava', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Nana Hanifes und UNBEKANNT', 'Nanna Hanifes: w., 40 Jahre', 'Birthe Traerup', 3, NULL),
(263, 'Kupa knan zagi', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Nana Hanifes und UNBEKANNT', 'Nanna Hanifes: w., 40 Jahre', 'Birthe Traerup', 3, NULL),
(264, 'Lulekuca', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Nana Kanifes und UNBEKANNT', 'Nana Kanifes: w., 32 Jahre', 'Birthe Traerup', 3, NULL),
(265, 'Nina nona [im VZ: Nina nina, klingt aber nina nona - vgl. 74 und ???]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Nono [Nana?] Seretes', 'Nono  [Nana?] Seretes: w., 32 Jahre', 'Birthe Traerup', 3, NULL),
(266, 'Lule kuce  [Lulekuca?] tro bajpene', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Kinder)', '', '', '', '', 'Nazifja Rexhepit und Fatmaja ?', 'Nazifja Rexhepit: w., 6 Jahre', 'Birthe Traerup', 3, NULL),
(267, 'Belbye knan knan', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Nono [Nana?] Seretes', 'Nono [Nana?] Seretes: w., 32 Jahre', 'Birthe Traerup', 3, NULL),
(268, 'Dastan begu', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Kerkez Joza ', 'Kerkez Joza: w., 29 Jahre', 'Birthe Traerup', 3, NULL),
(269, 'Oj gjaka kuke lanj', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Seretja Rexhepit', 'Seretja Rexhepit: m., 30 Jahre', 'Birthe Traerup', 3, NULL),
(270, 'Hajde sabo malo', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Seletja und Secerezja', 'Seletja ?: w., 15 Jahre', 'Birthe Traerup', 3, NULL),
(271, 'Lule e verdh [unvollständig]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied ', '', 'Gesang (Mädchen)', '', '', '', '', 'Seletja und Secerezja ', 'Seletja ?: w., 15 Jahre', 'Birthe Traerup', 3, NULL),
(272, 'Lule e verdh [vollständig]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Seletja und Secerezja', 'Seletja ?: w., 15 Jahre', 'Birthe Traerup', 3, NULL),
(273, 'Prasllavi ce zemla', 'Gjonaj/ Đonaj', '13.08.1959', 'Sprachaufnahme', '', 'Stimme (Mädchen)', '', '', '', '', 'Seretja Rexhepit', 'Seretja Rexhepit: m., 14 Jahre', 'Birthe Traerup', 3, NULL),
(274, 'Mara udhen per gjerbet', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Mara ?', 'Mara ?: w.', 'Birthe Traerup', 3, NULL),
(275, 'Ziza mera', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Nana Jeme', 'Nana Jeme: w., 42 Jahre', 'Birthe Traerup', 3, NULL),
(276, 'Kur imusu Nizet', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Secerija Syles', 'Secerija Syles: w., 14 Jahre', 'Birthe Traerup', 3, NULL),
(277, 'Nina nona', 'Gjonaj/ Đonaj', '13.08.1959', 'Wiegenlied', '', 'Gesang (Frau)', '', '', '', '', 'Nana Zenunit', 'Nana Zenunit: w., 62 Jahre', 'Birthe Traerup', 3, NULL),
(278, 'Kur pon deb neder', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Sharki, Karadyzen', '', 'bei der Hochzeitsfeier im Haus der Männer, Abends um 22:30 Uhr', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 3, NULL),
(279, 'Dyseklak kot jam kon nur [Dysek lok radjem kan…- vgl. Sologesang Nr. 26]', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Sharki, Karadyzen', '', 'bei der Hochzeitsfeier im Haus der Männer, Abends um 22:30 Uhr', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 3, NULL),
(280, 'Dusho moj dusho dusho', 'Gjonaj/ Đonaj', '13.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Sharki, Karadyzen', '', 'bei der Hochzeitsfeier im Haus der Männer, Abends um 22:30 Uhr', '', '', 'Gesang und Sharki: Tahir Drenica; Gesang und Karadyzen: Hashim Shala ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 3, NULL),
(281, 'Gandet celim trandafila', 'Brodosavce/ Brodosanë', '17.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Abazi Abidin Ismail', 'Abazi Abidin Ismail: m., 14 Jahre', 'Birthe Traerup', 28, NULL),
(282, 'Kush e bani sebep gurbetin', 'Brodosavce/ Brodosanë', '17.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Abazi Abidin Ismail', 'Abazi Abidin Ismail: m., 14 Jahre', 'Birthe Traerup', 28, NULL),
(283, 'Kendon bilbili per hava', 'Brodosavce/ Brodosanë', '17.08.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Gjini Salajdin Sherif', 'Gjini Salajdin Sherif: m., 34 Jahre', 'Birthe Traerup', 28, NULL),
(284, 'Emir boll ne ato maje', 'Brodosavce/ Brodosanë', '17.08.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Bajram Immer ', 'Bajram Immer: m., 37 Jahre; Herkunft: Hogja/Hoda', 'Birthe Traerup', 28, NULL),
(285, 'Ah ce poskon djall tou fuftue', 'Brodosavce/ Brodosanë', '17.08.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Bajram Immer und Saboz Salim', 'Bajram Immer: m., 37 Jahre; Herkunft: Hogja/Hoda', 'Birthe Traerup', 28, NULL),
(286, 'Oh krisi puska bregit drinit [Krisi pushka!]', 'Brodosavce/ Brodosanë', '17.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Abazi Abidin Ismail', 'Abazi Abidin Ismail: m., 14 Jahre', 'Birthe Traerup', 28, NULL),
(287, '[Nibet]', 'Vranishtë/ Vranište', '15.08.1959', 'Nibet', '', '2 Surlen', '', 'im Haus des Bräutigams, am Vorabend der Hochzeit', '', 'Liederserie: 1) Domiljina, 2) Kara Jusuf Hadžijina, 3) Canakalja, 4) Kadifa, 5) Soko nipe-vodo no vardor 6) Pehlivanska, 7) Turiski marš, 8) Gajda', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija', 'Feriz Osmani: m., 31 Jahre; geb. 1928; Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Instrument: Surla; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Birthe Traerup', 6, NULL),
(288, '[Liederserie als Instrumentalstück]', 'Vranishtë/ Vranište', '15.08.1959', 'Liederserie als Instrumentalstück', '', '2 Surlen, 2 Tupan', '', 'im Haus des Bräutigams, am Vorabend der Hochzeit', '', '9) Tosimima, 10) Osman Paša', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija', 'Feriz Osmani: m., 31 Jahre; geb. 1928; Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Instrument: Surla; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Birthe Traerup', 6, NULL),
(289, '[Hochzeitsmusik]', 'Vranishtë/ Vranište', '16.08.1959', 'Hochzeitsmusik, Männertänze', '', '2 Surlen, 2 Tupan', '', 'Hochzeitsfeier, auf dem Tanzplatz', '', '', 'Surla 1: Feriz Osmani, Surla 2: Beriša Ibiš; Tupan 1: Ramadan Osmani, Tupan 2: Kadri Sadrija', 'Feriz Osmani: m., 31 Jahre; geb. 1928; Herkunft: Dorf Mlike in Gora, Ethnie: Roma; Sprache: Goranisch, Albanisch; Instrument: Surla; Sonstiges: Bruder des Tupan-Spielers Ramadan Osmani', 'Ernst Emsheimer', 7, NULL),
(290, 'Ernoro lapsin ne dore', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Emini Ramadan Zorije und UNBEKANNT', 'Emini Ramodan Zorije: w., 15 Jahre', 'Birthe Traerup', 29, NULL),
(291, 'Lola per Colih', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'UNBEKANNT (2 Mädchen) - vgl. Aufnahme 200', '', 'Birthe Traerup', 29, NULL),
(292, '[Lied mit Begleitung]', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'UNBEKANNT (3 Mädchen und Def)', '', 'Birthe Traerup', 29, NULL),
(293, 'Nojta rosh ni ruges gusht', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied ', '', 'Gesang (Mädchen)', '', '', '', '', 'B. Zorija und Bexheti Shemsije', 'B. Zorija: w., 14 Jahre', 'Birthe Traerup', 29, NULL),
(294, 'Ana ani lakandojmi', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: B: Zorija, Ejypi Zemrije und Abidini Ajrije; Def: UNBEKANNT', 'B. Zorija: w., 14 Jahre', 'Birthe Traerup', 29, NULL),
(295, 'Dy bylbyro masholah', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: Ajrija, Shemsija; Def: UNBEKANNT', 'Abidini Ajrije: w., 13 Jahre', 'Birthe Traerup', 29, NULL),
(296, 'Çe postkan lerpjet floket donolet', 'Brodosavce/ Brodosanë', '18.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: Emini Ramodan Zorije, B. Zorija, Ejypi Zemrije, Abidini Ajrije und Bexheti Shemsije; Def: UNBEKANNT', 'Emini Ramodan Zorije: w., 15 Jahre', 'Birthe Traerup', 29, NULL),
(297, 'Kar dera të erdha me të pa nji her''', 'Bellobrad/ Belobrod', '18.08.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Arifi Bajram', 'Arifi Bajram: m., 26 Jahre', 'Birthe Traerup', 30, NULL),
(298, 'Por si pllanza ne pranver je por syt e mi', 'Bellobrad/ Belobrod', '18.08.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Arifi Bajram', 'Arifi Bajram: m., 26 Jahre', 'Birthe Traerup', 30, NULL),
(299, 'Oh sa e bukur hajde kenkar gjylja', 'Bellobrad/ Belobrod', '18.08.1959', 'Lied ', '', 'Gesang (Mann)', '', '', '', '', 'Arifi Bajram', 'Arifi Bajram: m., 26 Jahre', 'Birthe Traerup', 30, NULL),
(300, 'Ndras te vekit', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Minush Hoxha', 'Minush Hoxha: m., 15 Jahre', 'Birthe Traerup', 31, NULL),
(301, 'Mbaje besen', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Minush Hoxha', 'Minush Hoxha: m., 15 Jahre', 'Birthe Traerup', 31, NULL),
(302, 'Cou rexho', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Minush Hoxha', 'Minush Hoxha: m., 15 Jahre', 'Birthe Traerup', 31, NULL),
(303, 'Kajramfili qel me dy', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Kind)', '', '', '', '', 'Leman Begolli', 'Leman Begolli: m., 10 Jahre', 'Birthe Traerup', 31, NULL),
(304, 'Nena', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Kind)', '', '', 'Schullied', '', 'Leman Begolli', 'Leman Begolli: m., 10 Jahre', 'Birthe Traerup', 31, NULL),
(305, 'Po kendojinme gezim', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Kind)', '', '', '', '', 'Leman Begolli', 'Leman Begolli: m., 10 Jahre', 'Birthe Traerup', 31, NULL),
(306, 'Hajde hajde moj selvi', 'Peć', '25.08.1959', 'Lied', '', 'Gesang (Junge)', '', '', '', '', 'Minush Hoxha', 'Minush Hoxha: m., 15 Jahre', 'Birthe Traerup', 31, NULL),
(307, 'Lum per tu lumi zot', 'Rugovo', '26.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Lahuta', '', '', '', '', 'Gesang und Lahuta: Bash Muji ', 'Bash Muji: m.; Ethnie: Albaner; Religion: Islam', 'Birthe Traerup', 13, NULL),
(308, 'Hysen bajri [oder: Hysem bajri - vgl. 160]', 'Rugovo', '26.08.1959', 'Lied mit Begleitung', 'Rugovo', 'Gesang (Männer), 2 Sharki', '', 'auf einem Berg nahe Rugovo bei Filmaufnahmen für das Fernsehen mitaufgenommen', '', '', 'Gesang und Sharki: Ram Nikći und Hysen Nikći; Gesang: Ram Nikći ', 'Ram Nikći: m., 28 Jahre; Ethnie: Albaner, Religion: Islam', 'Birthe Traerup', 13, NULL),
(309, 'Hagji Zeka në sholl të bardh', 'Rugovo', '26.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), 2 Sharki', '', 'auf einem Berg nahe Rugovo bei Filmaufnahmen für das Fernsehen mitaufgenommen', '', '', 'Gesang und Sharki: Ram Nikći und Hysen Nikći; Gesang: Ram Nikći ', 'Ram Nikći: m., 28 Jahre; Ethnie: Albaner, Religion: Islam', 'Birthe Traerup', 13, NULL),
(310, 'Rame Selmoni', 'Rugovo', '26.08.1959', 'Lied', 'Lied der Malsoren', 'Gesang (Männer)', '', '', '', '', 'Rama Herdemoj und Rustemi Herdemoj', 'Rama Herdemoj: m., 40 Jahre; Ethnie: Albaner; Religion: Islam', 'Birthe Traerup', 13, NULL),
(311, 'Në Belograd Krali po bret', 'Rugovo', '26.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), Lahuta, Sharki', '', '', '', '', 'Gesang und Lahuta: Regja Alra Jojrci; Gesang und Sharki: Hajrush Tahiri Dakoj', 'Regja Alra Jojrci: m., 30 Jahre; Ethnie: Albaner, Religion: Islam', 'Birthe Traerup', 13, NULL),
(312, 'Lute fuka raja', 'Rugovo', '26.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Lahuta', '', '', '', '', 'Gesang und Lahuta: Dreshaj Smajl Alija [s. Aufnahme 164 - Ismail Alija]', 'Dreshaj Smajl Alija: m., 48 Jahre; Ethnie: Albaner, Religion: Islam', 'Birthe Traerup', 13, NULL),
(313, '[Fyell]', 'Rugovo', '26.08.1959', 'Instrumentalstück', '', 'Fyell (Kaval-Typ)', '', '', '', '3 Melodien', 'Kapllan Nikći', 'Kapllan Nikći: m., 18 Jahre; Ethnie: Albaner; Religion: Islam', 'Birthe Traerup', 13, NULL),
(314, 'Kana e voji e cikes', 'Rugovo', '26.08.1959', 'Lied', '', 'Gesang (Mann und Frauen)', '', '', '', '', 'Rame Herdemoj, Xheva Nikći, Bute ? ', 'Rame Herdemoj: m., 39 Jahre; Ethnie: Albaner; Religion: Islam', 'Birthe Traerup', 13, NULL),
(315, 'Saly syla thrret moj nan', 'Rugovo', '26.08.1959', 'Lied mit Begleitung', '', 'Gesang (Männer), 2 Sharki', '', '', '', '', 'Gesang und Sharki: Hysen Asllan und Ram Fazlija; Gesang: Halil Fazlija und Ram Elezi', 'Hysen Asllan: m.; Ethnie: Albaner; Religion: Islam', 'Birthe Traerup', 13, NULL),
(316, 'Oti djol posh bacaljokin', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', '', '', '', 'Gesang und Sharki: Cori Tahir Rashit [wahrscheinlich Tahir Drenica]', 'Cori Tahir Rashit: m., 32 Jahre [Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Glogovac]', 'Birthe Traerup', 32, NULL),
(317, 'Pej shtepis kur jume dol', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', 'im Freien aufgenommen; am Ende hört man das Geräusch eines Motors', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(318, 'Kupa knone qaj zogi i zi permi vorr te djolit ri [oder: Kupa knan zagi - vgl. ???]', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', '', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(319, 'More penca jote malush oges [Fragment]', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', '', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(320, 'More penca jote malush oges [vollständig]', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', '', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(321, 'Nina nona', 'Gllogovc/ Glogovac', '28.08.1959', 'Wiegenlied, gesprochen', '', 'Frauenstimme', '', '', '', '', 'Heteme Zena', 'Heteme Zena: m., 45 Jahre', 'Birthe Traerup', 32, NULL),
(322, 'Arot tona naji livron traktori', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Cori Minush Zena und Fatime Abdulah', 'Cori Minush Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 200-202, aber unter anderem Namen (Ferida Zena)', 'Birthe Traerup', 32, NULL),
(323, 'Hajde dalin vajzo tebunori', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Cori Minush Zena und Fatime Abdulah [Avdulahi?]', 'Cori Minush Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 200-202, aber unter anderem Namen (Ferida Zena)', 'Birthe Traerup', 32, NULL),
(324, 'Jene miro ejena shpi e modhe', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Cori Minush Zena und Fatime Abdulah [Avdulahi?]', 'Cori Minush Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 200-202, aber unter anderem Namen (Ferida Zena)', 'Birthe Traerup', 32, NULL),
(325, 'Nina nona ne djep', 'Gllogovc/ Glogovac', '28.08.1959', 'Wiegenlied', '', 'Gesang (Frau)', '', '', '', '', 'Mihane Istrefi', 'Mihane Istrefi: w., 28 Jahre', 'Birthe Traerup', 32, NULL),
(326, 'Ne drrase te vekit kush pa kon', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 32, NULL),
(327, 'Syzeza per ja ron vete djalin… [oder: Sy seza - vgl. 262 und 402]', 'Gllogovc/ Glogovac', '28.08.1959', 'Spinnlied', '', 'Gesang (Frau)', '', '', '', '', 'Heteme Zena', 'Heteme Zena: w., 45 Jahre', 'Birthe Traerup', 32, NULL),
(328, 'Nina motra me djep ne lulja', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Feride ? und UNBEKANNT', 'Feride ?: w., 12 Jahre und unbekannt', 'Birthe Traerup', 32, NULL),
(329, 'Lula e kuqe ne bojpeme', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Cori Minush Zena und Fatime Abdulah', 'Cori Minush Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 200-202 und 217-219, aber unter anderem Namen (Ferida Zena)', 'Birthe Traerup', 32, NULL),
(330, '[Kaval]', 'Gllogovc/ Glogovac', '28.08.1959', 'Instrumentalstück', '', 'Kaval', '', '', '', '', 'Islam Hasan', 'Islam Hasan: m., 14 Jahre', 'Birthe Traerup', 32, NULL),
(331, 'O kandil kandil garip', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Jungen)', '', '', '', '', 'Hamit Alijo und Nasul Aslani', 'Hamit Alijo: m., 12 Jahre', 'Birthe Traerup', 32, NULL),
(332, 'O krisi pushka [unvollständig]', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied', '', 'Gesang (Jungen)', '', '', '', '', 'Hamit Alijo und Nasul Aslani', 'Hamit Alijo: m., 12 Jahre', 'Birthe Traerup', 32, NULL),
(333, 'Reseb mehneti djab iri ponojicet', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', 'am Abend im Freien aufgenommen', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(334, 'Teligrem poban marshali', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', 'am Abend im Freien aufgenommen', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(335, 'Kush pozdiret', 'Gllogovc/ Glogovac', '28.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Sharki', '', 'am Abend im Freien aufgenommen', '', '', 'Gesang und Sharki: Tahir Drenica ', 'Tahir Drenica: m., 29 Jahre (?), geb. 1921 (?); Herkunft: Gllogovc/Glogovac', 'Birthe Traerup', 32, NULL),
(336, '[Lied]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Ferida Zena und Dinore Avdulahi [Abdulah?]', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 33, NULL),
(337, '[Lied]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Ferida Zena und Dinore Avdulahi', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 33, NULL),
(338, '[Lied]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Ferida Zena und Dinore Avdulahi', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 33, NULL),
(339, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Fati Sadiza ', 'Fati Sadiza: w.; Ethnie: Roma.', 'Birthe Traerup', 33, NULL),
(340, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Fati Sadiza ', 'Fati Sadiza: w.; Ethnie: Roma.', 'Birthe Traerup', 33, NULL),
(341, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Fati Sadiza ', 'Fati Sadiza: w.; Ethnie: Roma.', 'Birthe Traerup', 33, NULL),
(342, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: UNBEKANNT', 'UNBEKANNT, w.; Ethnie: Roma', 'Birthe Traerup', 33, NULL),
(343, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: UNBEKANNT', 'UNBEKANNT, w.; Ethnie: Roma', 'Birthe Traerup', 33, NULL),
(344, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', 'Hb VZ: angeblich albanisches Lied', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: UNBEKANNT', 'UNBEKANNT, w.; Ethnie: Roma', 'Birthe Traerup', 33, NULL),
(345, '[Lied]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Ferida Zena und Dinore Avdulahi', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 33, NULL),
(346, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', 'Hb VZ: angeblich albanisches Lied', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Fati Sadiza ', 'Fati Sadiza, Ethnie: Roma.', 'Birthe Traerup', 33, NULL),
(347, '[Lied mit Begleitung]', 'Gllogovc/ Glogovac', '29.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen)', '', '', '', '', 'Ferida Zena und Dinore Avdulahi', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 33, NULL),
(348, '[Tanz]', 'Gllogovc/ Glogovac', '29.08.1959', 'Tanzmusik', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Fati Sadiza ', 'Fati Sadiza: w.; Ethnie: Roma', 'Birthe Traerup', 33, NULL),
(349, '[Tanz]', 'Gllogovc/ Glogovac', '29.08.1959', 'Tanzmusik', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Fati Sadiza ', 'Fati Sadiza: w.; Ethnie: Roma', 'Birthe Traerup', 33, NULL),
(350, '[Lied]', 'Gllogovc/ Glogovac', '30.08.1959', 'Lied', '', 'Gesang (Kind)', '', '', '', '', 'UNBEKANNT (kleines Mädchen)', '', 'Birthe Traerup', 34, NULL),
(351, 'Cuni i vogel', 'Gllogovc/ Glogovac', '30.08.1959', 'Lied mit Begleitung', '', 'Gesang (Junge), Sharki', 'Albanisch', '', '', '', 'Gesang und Sharki: Murat Alija', 'Murat Alija: m., 12 Jahre', 'Birthe Traerup', 34, NULL),
(352, 'Ne shtek te lames', 'Gllogovc/ Glogovac', '30.08.1959', 'Lied mit Begleitung', '', 'Gesang (Junge), Sharki', 'Albanisch', '', '', '', 'Gesang und Sharki: Murat Alija', 'Murat Alija: m., 12 Jahre', 'Birthe Traerup', 34, NULL),
(353, 'Lunet na kushrina dy', 'Gllogovc/ Glogovac', '30.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: Ferida Zena und Dinore Avdulahi; Def: UNBEKANNT', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 34, NULL),
(354, 'Odreni te ravsh e duz', 'Gllogovc/ Glogovac', '30.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: Ferida Zena und Dinore Avdulahi; Def: UNBEKANNT', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 34, NULL),
(355, 'Kush po djerke rrebtit drinit [oder: Kush pozdiret - vgl. ???]', 'Gllogovc/ Glogovac', '30.08.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: Ferida Zena und Dinore Avdulahi; Def: UNBEKANNT', 'Ferida Zena: w., 17 Jahre; sie singt auch in den Aufnahmen 180-182, aber unter anderem Namen (Cori Minush Zena)', 'Birthe Traerup', 34, NULL),
(356, 'Mjera un e mjera si ta shkojme ket jete [Vgl. 227, 263 und 279]', 'Nakolec', '05.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', 'Petchalbarenlied vom Abschied eines Arbeiters ', 'Xhevcet Shemshedini und Gani Mehmeti ', 'Xhevcet Shemshedini: m., 53 Jahre', 'Ernst Emsheimer', 14, NULL),
(357, '[Wiederholung von Muezzinruf von 236]', 'Nakolec', '06.09.1959', 'Muezzinruf', '', 'Gesang (Mann)', '', '', '', '', 'Beqir Oshlani', 'Beqir Oshlani: m.; Herkunft: Hoca', 'Birthe Traerup', 15, NULL),
(358, '[Gebetslied]', 'Nakolec', '06.09.1959', 'Gebetslied', '', 'Gesang (Mann)', '', '', '', '', 'Beqir Oshlani ', 'Beqir Oshlani: m.; Herkunft: Hoca', 'Birthe Traerup', 15, NULL),
(359, 'Jem i lottur i kapitur', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Ibraim Shebani [Shabani?] und Asllan Veliu mit Gruppe', 'Ibraim Shebani [Shabani?]: m.', 'Birthe Traerup', 16, NULL),
(360, 'Balen me se depe meser ma qen disur [vgl. 240]', 'Krani', '06.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Asllan Veliu und Fatmir Oxha mit Gruppe', 'Asllan Veliu: m.', 'Birthe Traerup', 16, NULL),
(361, '[Wiegenlied]', 'Arvati', '07.09.1959', 'Wiegenlied', '', 'Gesang (Frau)', '', '', '', '', 'Bule Shaqiri', 'Bule Shaqiri: w.', 'Birthe Traerup', 17, NULL),
(362, '[Wiegenlied]', 'Arvati', '07.09.1959', 'Wiegenlied', '', 'Gesang (Frau)', '', '', '', '', 'Bule Shaqiri', 'Bule Shaqiri: w.', 'Birthe Traerup', 17, NULL),
(363, '[Kinderlied]', 'Arvati', '07.09.1959', 'Kinderlied', '', 'Gesang (Frau)', '', '', '', '', 'Gesang: Yrka Serveti; Klatschen: UNBEKANNT (zwei Frauen)', 'Yrka Serveti: w., 45 Jahre', 'Birthe Traerup', 17, NULL),
(364, 'O bilbil bib ta bara meine', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'Yrka Serveti und Frauengruppe', 'Yrka Serveti: w., 45 Jahre', 'Birthe Traerup', 17, NULL),
(365, 'Ajde ti jetime dhe une jetime ', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'UNBEKANNT (wahrscheinlich Yrka Serveti mit Frauengruppe)', '[wahrscheinlich:] Yrka Serveti: w., 45 Jahre ', 'Birthe Traerup', 17, NULL),
(366, 'O bilbil bib ta bara bene o bilbil', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'UNBEKANNT (3 Frauen)', '', 'Birthe Traerup', 17, NULL),
(367, 'Kueke cobanbashne sonte tarnania', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'Yrka Serveti und 4 Frauen', 'Yrka Serveti: w., 45 Jahre', 'Birthe Traerup', 17, NULL),
(368, 'Atije bajo te lajme ne cezme bardhe', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'UNBEKANNT (4 Frauen)', '', 'Birthe Traerup', 17, NULL),
(369, 'Armet qe bon zotnote', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'UNBEKANNT (3 Frauen) und Avnije Izeti', 'Avnije Izeti: w.', 'Birthe Traerup', 17, NULL),
(370, 'Femijene qezon', 'Arvati', '07.09.1959', 'Lied ', '', 'Gesang (Frau)', '', '', '', '', 'Avnije Izeti', 'Avnije Izeti: w.', 'Birthe Traerup', 17, NULL),
(371, 'Dote vij nje nat tadi se dote vritem', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Amit Veliu und Alit Veliu', 'Amit Veliu: m., 47 Jahre', 'Birthe Traerup', 17, NULL),
(372, 'Dil se te keret bilbilo', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen und Männer)', '', '', '', '', 'Avnije Izeti und Yrka Serveti mit Gruppe', 'Avnije Izeti: w.', 'Birthe Traerup', 17, NULL),
(373, 'Udhë përmi udhë mi kishesarajet', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'Avnije Izeti und Yrka Serveti', 'Avnije Izeti: w.', 'Birthe Traerup', 17, NULL),
(374, 'O bilbil ta bera folene', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'Razije Mysimi und Yrka Serveti', 'Razije Mysimi: w.', 'Birthe Traerup', 17, NULL),
(375, 'Tundu shkundu moj humlub [vgl. 328]', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Frauen)', '', '', '', '', 'Yrka Serveti und Razije Mysimi', 'Yrka Serveti: w., 45 Jahre', 'Birthe Traerup', 17, NULL),
(376, 'Leskoviq benet pazar', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen und Frauen)', '', '', '', '', 'Enverije Aliti und Razije Mysimi', 'Enverije Aliti: w., 12 Jahre', 'Birthe Traerup', 17, NULL),
(377, 'Degjoni moj zoga', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Mädchen und Frauen)', '', '', '', '', 'Dilfo Mysimi und Enverije Aliti', 'Dilfo Mysimi: w., 11 Jahre', 'Birthe Traerup', 17, NULL),
(378, 'Cashte  Ali yt murgu Dimitrov', 'Arvati', '07.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Kaval, Tambura', '', '', '', '', 'Gesang: Alit Veliu; Kaval: Abedin Sulimani [Sulejmani?]; Tambura: Muharem Mamushlari', 'Alit Veliu: m.', 'Birthe Traerup', 17, NULL),
(379, '[Kaval, Trauermusik]', 'Arvati', '07.09.1959', 'Trauermusik', '', 'Kaval', '', '', '', '', 'Abedin Suliman [Sulejmani?]', 'Abedin Sulimani [Sulejmani?]: m.', 'Birthe Traerup', 17, NULL),
(380, '[Kaval, Trauermusik]', 'Arvati', '07.09.1959', 'Trauermusik', '', 'Kaval', '', '', '', '', 'Amit Veliu', 'Amit Veliu: m., 47 Jahre', 'Birthe Traerup', 17, NULL),
(381, 'Sidota shkojme ketejete nane', 'Arvati', '07.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', '', '', '', '', 'Gesang: Abedin Sulimani [Sulejmani?]; Tambura: UNBEKANNT', 'Abedin Sulimani [Sulejmani?(25 Jahre)]: m.', 'Birthe Traerup', 17, NULL),
(382, '[Tanz]', 'Arvati', '07.09.1959', 'Tanzmusik', '', '2 Kaval', '', '', '', '', 'Amit Veliu und Abedin Sulimani [Sulejmani?]', 'Amit Veliu: m., 47 Jahre', 'Birthe Traerup', 17, NULL),
(383, 'Munde ropi mashkulore', 'Arvati', '07.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Amit Veliu und Gruppe', 'Amit Veliu: m., 47 Jahre', 'Birthe Traerup', 17, NULL),
(384, 'Bir te lava, bir te ndrova [vgl. ???]', 'Arvati', '07.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', '', '', '', '', 'Gesang: Abedin Sulimani [Sulejmani?]; Tambura: UNBEKANNT', 'Abedin Sulimani [Sulejmani?(25 Jahre)]: m.', 'Birthe Traerup', 17, NULL),
(385, 'O bilbil e bilbil', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Asllan Veliu und Bari Memeti mit Gruppe', 'Asllan Veliu: m.', 'Birthe Traerup', 18, NULL),
(386, 'Dote mar ciften per qja', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Fadil Shefqeti und Asllan Veliu mit Gruppe', 'Fadil Shefqeti: m., 27 Jahre', 'Birthe Traerup', 18, NULL),
(387, 'Ajde mire bere dhender beobe', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Enves Serfeti [Serveti?] und Asllan Veliu mit Gruppe', 'Enves Serfeti [Serveti?]: m., 24 Jahre', 'Birthe Traerup', 18, NULL),
(388, 'Perpara obarit na mbika nje lule', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Bari Memeti und Asllan Veliu mit Gruppe', 'Bari Memeti: m., 27 Jahre', 'Birthe Traerup', 18, NULL),
(389, 'Te xhumanme soba nje dylek se di kirq', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Asllan Veliu und Bari Memeti mit Gruppe', 'Asllan Veliu: m.', 'Birthe Traerup', 18, NULL),
(390, 'Culeshova me nje urush', 'Krani', '08.09.1959', 'Lied mit Iso', '', 'Gesang (Männer)', '', '', '', '', 'Asllan Veliu und Bari Memeti mit Gruppe', 'Asllan Veliu: m.', 'Birthe Traerup', 18, NULL),
(391, 'Kuposkan moj nushju e dedos', 'Frangovo', '14.09.1959', 'Lied', '', 'Gesang (Männer)', '', '', '', '', 'Pasho Lezi [Lleshi?] mit Gruppe', 'Pasho Lezi [Lleshi?]  m., [31 Jahre?]', 'Birthe Traerup', 21, NULL),
(392, 'Kacatori', 'Radolishta', '15.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann), Tambura', '', '', '', '', 'Gesang und Tambura: Kaim Murtishi', 'Kaim Murtishi: m., 25 Jahre; Lehrer', 'Birthe Traerup', 22, NULL),
(393, 'Naten e me aneze', 'Radolishta', '15.09.1959', 'Lied ', '', 'Gesang (Frauen)', '', '', '', '', 'Xhevrije Murtishi, Nazmije Murtishi, Resmije Murtishi und Lalezar Murtishi', 'Xhevrije Murtishi: w., 58 Jahre', 'Birthe Traerup', 22, NULL),
(394, 'Shkova ne Diber kisha pune', 'Radolishta', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Resmije Murtishi und Gruppe', 'Resmije Murtishi: w., 16 Jahre', 'Birthe Traerup', 22, NULL),
(395, 'Nder kullat e nalta', 'Radolishta', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Nazmije Murtishi und Gruppe', 'Nazmije Murtishi: w., 30 Jahre', 'Birthe Traerup', 22, NULL),
(396, 'Luan nji vashe bel holle', 'Radolishta', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Xhevrije Murtishi und Gruppe [Nazmije Murtishi, Resmije Murtishi und Lalezar Murtishi]', 'Xhevrije Murtishi: w., 58 Jahre', 'Birthe Traerup', 22, NULL),
(397, 'Nani nani mori bije', 'Radolishta', '15.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Resmije Murtishi', 'Resmije Murtishi: w., 16 Jahre', 'Birthe Traerup', 22, NULL),
(398, 'Ububu nder ato male', 'Radolishta', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Xhevrije Murtishi und Gruppe [Nazmije Murtishi,  Resmije Murtishi und Lalezar Murtishi]', 'Xhevrije Murtishi: w., 58 Jahre', 'Birthe Traerup', 22, NULL),
(399, 'I rash malit qosh me qosh', 'Radolishta', '15.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def', '', '', '', '', 'Gesang und Def: Resmije Murtishi; Gesang: Gruppe UNBEKANNT', 'Resmije Murtishi: w., 16 Jahre', 'Birthe Traerup', 22, NULL),
(400, 'Shae mori shoqe', 'Radolishta', '15.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann und Frau), Tambura', '', '', '', '', 'Gesang und Tambura: Kaim Murtishi; Gesang: Resmije Murtishi ', 'Kaim Murtishi: m., 25 Jahre; Lehrer', 'Birthe Traerup', 22, NULL),
(401, 'Dardha dimerore', 'Radolishta', '15.09.1959', 'Lied mit Begleitung', 'Mokra, Albanien', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Xhevrije Murtishi', 'Xhevrije Murtishi: w., 58 Jahre', 'Birthe Traerup', 22, NULL),
(402, 'Ngreu moj shae na ver buke', 'Radolishta', '15.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mann und Frauen), Tambura, Def', '', '', '', '', 'Gesang und Tambura: Kaim Murtishi; Gesang und Def: Resmije Murtishi; Gesang: 3 Frauen UNBEKANNT', 'Kaim Murtishi: m., 25 Jahre; Lehrer', 'Birthe Traerup', 22, NULL),
(403, 'Lule bukur porsi djelli ', 'Radolishta', '15.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Resmije Murtishi', 'Resmije Murtishi: w., 16 Jahre', 'Birthe Traerup', 22, NULL),
(404, 'Gjili naze', 'Radolishta', '15.09.1959', 'Männertanz', '', 'Gesang (Mann), Tambura', '', '', '', '', 'Gesang und Tambura: Kaim Murtishi', 'Kaim Murtishi: m., 25 Jahre; Lehrer', 'Birthe Traerup', 22, NULL),
(405, '[Lied]', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Kind)', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 23, NULL),
(406, 'Ra bagona e titos', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Sevije und UNBEKANNT', 'Sevije ?: w., 18 Jahre', 'Birthe Traerup', 23, NULL),
(407, 'Me martoj nan ne vjor', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Sanis ?', 'Sanis ?: w.., 17 Jahre', 'Birthe Traerup', 23, NULL),
(408, 'Atje nalt per mi nalt', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Umain ?', 'Umain ?: w., 30 Jahre', 'Birthe Traerup', 23, NULL),
(409, 'O shtat bilbila [oder O shtat bilbilat ishin mbledhë - vgl. 403 und 333 und ???]', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Mädchen)', '', '', '', '', 'Biboret ? und UNBEKANNT', 'Biboret ?: w., 15 Jahre', 'Birthe Traerup', 23, NULL),
(410, 'Lulja re mer siten e gotueze', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Rokibe ? und UNBEKANNT', 'Rokibe ?: w., 90 Jahre', 'Birthe Traerup', 23, NULL),
(411, 'Cunie pampori prefunt oborite', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(412, 'Sipr e mejpr mum shesh t. luleve', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(413, 'Omda jov ramazan ajde…', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL);
INSERT INTO `songs` (`id`, `Titel/Textanfang`, `location`, `date`, `Genre`, `Herkunft`, `Besetzung`, `Sprache`, `Aufnahmesituation`, `Funktion`, `Inhalt`, `Interpreten`, `Interpret 1 - Name, Alter, Herkunft, Beruf, Ethnie`, `Aufgenommen durch`, `station_id`, `url`) VALUES
(414, 'Atje nalt e prmi nalt ke shtroen mindezan [Atje nalt per mi nalt - vgl. ???]', 'Frangovo', '15.09.1959', 'Lied ', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(415, '[Fyell]', 'Frangovo', '15.09.1959', 'Lied als Instrumentalstück', '', 'Fyell', '', '', '', 'Heldenlied', 'Isni Musovski', 'Isni Musovski: [m.?], 27 Jahre', 'Birthe Traerup', 23, NULL),
(416, 'Nani nani nina cunin', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Zumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(417, 'Oj suzesa suzeza shkon nir ograde', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(418, 'Cabrija cabrija berber seleniku (Bei sunet)', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(419, 'Kuposhkon a mor berber mekt savtaket (bei sunet)', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(420, '[Lied]', 'Frangovo', '15.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'Zumrisha Musovska und Kumrisha Musovska', 'Zumrisha Musovska: w., 32 Jahre ', 'Birthe Traerup', 23, NULL),
(421, '[Fyell]', 'Frangovo', '15.09.1959', 'Lied als Instrumentalstück', '', 'Fyell', '', '', '', '', 'Isni Musovski', 'Isni Musovski: [m.?], 27 Jahre', 'Birthe Traerup', 23, NULL),
(422, 'Nani nani luli luli', 'Frangovo', '15.09.1959', 'Wiegenlied', '', 'Gesang (Frau)', '', '', '', '', 'Shpresa Vinca', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 23, NULL),
(423, 'Oj, oj e tarnana', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Shpresa Vinca', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(424, 'Or zumbak, zumbak me lule', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def', '', '', '', '', 'Gesang: Shpresa Vinca, Zirafet Kira, Zinet Bekteshi; Def: Zinet Bekteshi', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(425, 'Xhit malin ma xhujte', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def', '', '', '', '', 'Gesang: Shpresa Vinca, Zirafet Kira, Zinet Bekteshi; Def: Zinet Bekteshi', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(426, 'Hajde, hajde moj top shecere', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def', '', '', '', '', 'Gesang: Shpresa Vinca, Zirafet Kira, Zinet Bekteshi; Def: Zinet Bekteshi', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(427, '1) Erdhe nuse, erdhe;  2) Lumja toj mo onko nona', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def, Händeklatschen', '', '', '', '', 'Gesang: Shpresa Vinca, Zirafet Kira, Zinet Bekteshi; Def: Zinet Bekteshi', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(428, 'Kuna komeno mun ne reze', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def', '', '', '', '', 'Gesang: Shpresa Vinca, Zirafet Kira, Zinet Bekteshi; Def: Zinet Bekteshi', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(429, 'Bojmu, bojmu moj zemero', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frauen), Def', '', '', '', '', 'Gesang: Shpresa Vinca, Zirafet Kira, Zinet Bekteshi; Def: Zinet Bekteshi', 'Shpresa Vinca: w., 18 Jahre', 'Birthe Traerup', 24, NULL),
(430, 'Pojken nja dy koka molla', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Frau)', '', '', '', '', 'Shemsije Koxhoxhu [Hb VZ: wahrscheinlich Koxhexhik]', 'Shemsije Koxhoxhu [Koxhexhik?]: w., 36 Jahre', 'Birthe Traerup', 24, NULL),
(431, 'Vlla e moter', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Mann)', '', '', '', '', 'Ali Dika', 'Ali Dika: m.', 'Birthe Traerup', 24, NULL),
(432, 'Azte vjen keq ikmete zonjo', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Muazeko Dervishi', 'Muazeko Dervishi: w.', 'Birthe Traerup', 24, NULL),
(433, 'Ci moj mangalla', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Adalijon Shera ', 'Adalijon Shera: w.', 'Birthe Traerup', 24, NULL),
(434, 'Kendojn njady zogza', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'Gesang und Def: Nekije Dika', 'Nekije Dika: w., 17 Jahre', 'Birthe Traerup', 24, NULL),
(435, 'Oj ikmete, ikmete', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang und Def: Izmije Dika', 'Izmije Dika: w., 15 Jahre', 'Birthe Traerup', 24, NULL),
(436, 'Ekomar po se kom mar moj kann', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Mädchen), Def', '', '', '', '', 'Gesang: Arnije Dika und Izmije Dika; Def: UNBEKANNT', 'Arnije Dika: w., 16 Jahre', 'Birthe Traerup', 24, NULL),
(437, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Lied mit Begleitung / Tanz', '', 'Gesang (Frauen), Def', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(438, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Lied mit Begleitung / Tanz', '', 'Gesang (Frauen), Def', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(439, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Lied mit Begleitung / Tanz', '', 'Gesang (Frauen), Def', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(440, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Lied mit Begleitung / Tanz', '', 'Gesang (Frauen), Def', '', '[kurze Fragmente von Liedern]', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(441, 'O krisi pushka', 'Veleshta', '17.09.1959', 'Lied mit Begleitung', '', 'Gesang (Frau), Def', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(442, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(443, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Lied', '', 'Gesang (Frauen)', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(444, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Tanz', '', 'Gesang (Frauen), Def', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(445, '(ohne Titel)', 'Veleshta', '17.09.1959', 'Tanz', '', 'Gesang (Frauen), Def', '', '', '', '', 'UNBEKANNT', '', 'Birthe Traerup', 24, NULL),
(446, '(ohne Titel)', 'Veleshta', '17.09.1959', '', '', '', '', '', '', '', '', '', 'Birthe Traerup', 24, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL,
  `location` varchar(21) DEFAULT NULL,
  `region` varchar(23) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `collection` varchar(16) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `travel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `stations`
--

INSERT INTO `stations` (`id`, `location`, `region`, `date`, `collection`, `location_id`, `travel_id`) VALUES
(1, 'Prishtinë/ Priština', 'Kosovo', '09.08.1959', 'Jugoslawien 1959', 12, 1),
(2, 'Gjonaj/ Đonaj', 'Kosovo', '12.08.1959', 'Jugoslawien 1959', 5, 1),
(3, 'Gjonaj/ Đonaj', 'Kosovo', '13.08.1959', 'Jugoslawien 1959', 5, 1),
(4, 'UNBEKANNT', 'Kosovo', 'UNBEKANNT', 'Jugoslawien 1959', NULL, 1),
(5, 'Gjonaj/ Đonaj', 'Kosovo', '14.08.1959', 'Jugoslawien 1959', 5, 1),
(6, 'Vranishtë/ Vranište', 'Kosovo/ Prizrenska Gora', '15.08.1959', 'Jugoslawien 1959', 17, 1),
(7, 'Vranishtë/ Vranište', 'Kosovo/ Prizrenska Gora', '16.08.1959', 'Jugoslawien 1959', 17, 1),
(8, 'Vranishtë/ Vranište', 'Kosovo/ Prizrenska Gora', '17.08.1959', 'Jugoslawien 1959', 17, 1),
(9, 'Bellobrad/ Belobrod', 'Kosovo', '17.08.1959', 'Jugoslawien 1959', 1, 1),
(10, 'Zym/ Zjum', 'Kosovo', '18.08.1959', 'Jugoslawien 1959', 18, 1),
(11, 'Rugovo', 'Kosovo', '23.08.1959', 'Jugoslawien 1959', 14, 1),
(12, 'Rugovo', 'Kosovo', '24.08.1959', 'Jugoslawien 1959', 14, 1),
(13, 'Rugovo', 'Kosovo', '26.08.1959', 'Jugoslawien 1959', 14, 1),
(14, 'Nakolec', 'Westmakedonien', '05.09.1959', 'Jugoslawien 1959', 9, 1),
(15, 'Nakolec', 'Westmakedonien', '06.09.1959', 'Jugoslawien 1959', 9, 1),
(16, 'Krani', 'Westmakedonien', '06.09.1959', 'Jugoslawien 1959', 8, 1),
(17, 'Arvati', 'Westmakedonien', '07.09.1959', 'Jugoslawien 1959', 19, 1),
(18, 'Krani', 'Westmakedonien', '08.09.1959', 'Jugoslawien 1959', 8, 1),
(19, 'Ohrid', 'Westmakedonien', '13.09.1959', 'Jugoslawien 1959', 10, 1),
(20, 'Radolishta', 'Westmakedonien', '14.09.1959', 'Jugoslawien 1959', 13, 1),
(21, 'Frangovo', 'Westmakedonien', '14.09.1959', 'Jugoslawien 1959', 4, 1),
(22, 'Radolishta', 'Westmakedonien', '15.09.1959', 'Jugoslawien 1959', 13, 1),
(23, 'Frangovo', 'Westmakedonien', '15.09.1959', 'Jugoslawien 1959', 4, 1),
(24, 'Veleshta', 'Westmakedonien', '17.09.1959', 'Jugoslawien 1959', 16, 1),
(25, 'Bidžovo ', 'Westmakedonien', '17.09.1959', 'Jugoslawien 1959', 2, 1),
(26, 'Skopje', 'Westmakedonien', '24.09.1959', 'Jugoslawien 1959', 15, 1),
(27, 'Glumovo', 'Westmakedonien', '27.09.1959', 'Jugoslawien 1959', 7, 1),
(28, 'Brodosavce/ Brodosanë', 'Kosovo', '17.08.1959', 'Jugoslawien 1959', 3, 1),
(29, 'Brodosavce/ Brodosanë', 'Kosovo', '18.08.1959', 'Jugoslawien 1959', 3, 1),
(30, 'Bellobrad/ Belobrod', 'Kosovo', '18.08.1959', 'Jugoslawien 1959', 1, 1),
(31, 'Peć', 'Kosovo', '25.08.1959', 'Jugoslawien 1959', 11, 1),
(32, 'Gllogovc/ Glogovac', 'Kosovo', '28.08.1959', 'Jugoslawien 1959', 6, 1),
(33, 'Gllogovc/ Glogovac', 'Kosovo', '29.08.1959', 'Jugoslawien 1959', 6, 1),
(34, 'Gllogovc/ Glogovac', 'Kosovo', '30.08.1959', 'Jugoslawien 1959', 6, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `travels`
--

CREATE TABLE `travels` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Daten für Tabelle `travels`
--

INSERT INTO `travels` (`id`, `name`, `date_begin`, `date_end`) VALUES
(1, 'Jugoslavien', '1959-08-09', '1959-08-30');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `url` text,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Daten für Tabelle `videos`
--

INSERT INTO `videos` (`id`, `url`, `location_id`) VALUES
(1, 'http://localhost/Praxisseminar/WebProject/content/videos/big_buck_bunny.mp4', 11);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id_idx` (`location_id`);

--
-- Indizes für die Tabelle `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_id_idx` (`station_id`);

--
-- Indizes für die Tabelle `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stations_location_idx` (`location_id`),
  ADD KEY `stations_travels_idx` (`travel_id`);

--
-- Indizes für die Tabelle `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_locations_idx` (`location_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT für Tabelle `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;
--
-- AUTO_INCREMENT für Tabelle `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT für Tabelle `travels`
--
ALTER TABLE `travels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_stations` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `stations`
--
ALTER TABLE `stations`
  ADD CONSTRAINT `stations_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `stations_travels` FOREIGN KEY (`travel_id`) REFERENCES `travels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_locations` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
