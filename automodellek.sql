-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 23. 08:47
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `automodellek`
--
CREATE DATABASE IF NOT EXISTS `automodellek` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `automodellek`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `email`) VALUES
(2, 'teszt@gmail.com'),
(6, 'teszt@gmail.com'),
(7, 'teszt2@gmail.com'),
(8, 'teszt2@gmail.com'),
(9, 'teszt3@gmail.com'),
(10, 'teszt2@gmail.com'),
(11, 'vfsxvc');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `markak`
--

CREATE TABLE `markak` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szekhely` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `alapitasiev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `markak`
--

INSERT INTO `markak` (`id`, `nev`, `orszag`, `szekhely`, `alapitasiev`) VALUES
(2, 'Audi', 'Németország', 'Ingolstadt', 1932),
(3, 'BMW', 'Németország', 'München', 1916),
(4, 'Mercedes', 'Németország', 'Stuttgart', 1926),
(5, 'Opel', 'Németország', 'Rüsselsheim', 1862),
(6, 'Porsche', 'Németország', 'Stuttgart', 1931),
(7, 'Volkswagen', 'Németország', 'Wolfsburg', 1937),
(8, 'Honda', 'Japán', 'Tokió', 1948),
(10, 'Isuzu', 'Japán', 'Jokohama', 1934),
(11, 'Mazda', 'Japán', 'Hirosima', 1920),
(12, 'Mitsubishi', 'Japán', 'Tokió', 1870),
(13, 'Nissan', 'Japán', 'Jokohama', 1930),
(14, 'Subaru', 'Japán', 'Tokió', 1953),
(15, 'Suzuki', 'Japán', 'Sizuoka', 1909),
(16, 'Toyota', 'Japán', 'Tokió', 1936),
(19, 'Chevrolet', 'Egyesült államok', 'Detroit', 1911),
(23, 'Jeep', 'Egyesült államok', 'Toledo', 1941),
(25, 'Ford', 'Egyesült államok', 'Dearborn', 1903),
(28, 'Citroën', 'Franciaország', 'Saint-Ouen-sur-Seine', 1919),
(29, 'Peugeot', 'Franciaország', 'Sochaux', 1810),
(30, 'Renault', 'Franciaország', 'Boulogne-Billancourt', 1899),
(31, 'Alfa Romeo', 'Olaszország', 'Torino', 1910),
(33, 'Ferrari', 'Olaszország', 'Maranello', 1939),
(34, 'Fiat', 'Olaszország', 'Lingotto', 1899),
(41, 'Jaguar', 'Egyesült Királyság', 'Coventry', 1922),
(47, 'SEAT', 'Spanyolország', 'Martorell', 1950),
(48, 'Lada', 'Oroszország', 'Togliatti', 1966),
(57, 'Škoda', 'Cseh', 'Mladá Boleslav', 1925),
(58, 'Dacia', 'Románia', 'Mioveni', 1966),
(60, 'Volvo', 'Svédország', 'Göteborg', 1927),
(61, 'Hyundai', 'Dél-Korea', 'Szöul', 1967),
(62, 'Kia', 'Dél-Korea', 'Szöul', 1944),
(63, 'Tesla', 'Egyesült Államok', 'Austin', 2003),
(64, 'Daewoo', 'Dél-Korea', 'Bupjong', 1983);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modellek`
--

CREATE TABLE `modellek` (
  `id` int(11) NOT NULL,
  `marka` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `modellek`
--

INSERT INTO `modellek` (`id`, `marka`, `nev`, `kategoria`) VALUES
(1, 'Opel', 'Corsa', 'Alsó kategória'),
(2, 'Opel', 'Astra', 'Alsó középkategória'),
(3, 'Opel', 'Vectra', 'Középkategória'),
(4, 'Opel', 'Insignia', 'Felső középkategória'),
(5, 'Opel', 'Omega', 'Felső középkategória'),
(6, 'Opel', 'Agila', 'Microvan'),
(7, 'Opel', 'Meriva', 'Minivan'),
(8, 'Opel', 'Zafira', 'Kompaktvan');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modelltipusok`
--

CREATE TABLE `modelltipusok` (
  `id` int(5) NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `gyartaskezd` int(4) NOT NULL,
  `gyartasvege` int(4) NOT NULL,
  `kepurl` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `modellid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `modelltipusok`
--

INSERT INTO `modelltipusok` (`id`, `nev`, `gyartaskezd`, `gyartasvege`, `kepurl`, `modellid`) VALUES
(1, 'F', 1991, 1998, 'fastra.jpg', 2),
(2, 'G', 1998, 2004, 'gastra.jpg', 2),
(3, 'H', 2004, 2009, 'hastra.jpg', 2),
(4, 'J', 2009, 2015, 'jastra.jpg', 2),
(5, 'K', 2015, 2022, 'kastra.jpg', 2),
(6, 'L', 2022, 0, 'lastra.jpg', 2),
(7, 'A', 1982, 1993, 'acorsa.jpg', 1),
(8, 'B', 1993, 2000, 'bcorsa.jpg', 1),
(9, 'C', 2000, 2006, 'ccorsa.jpg', 1),
(10, 'D', 2006, 2015, 'dcorsa.jpg', 1),
(11, 'E', 2015, 2019, 'ecorsa.jpg', 1),
(12, 'F', 2019, 0, 'fcorsa.jpg', 1),
(13, 'A', 1988, 1995, 'avectra.jpg', 3),
(14, 'B', 1995, 2002, 'bvectra.jpg', 3),
(15, 'C', 2002, 2010, 'cvectra.jpg', 3),
(16, 'Insignia', 2008, 0, 'insignia.jpg', 4),
(17, 'A', 1986, 1994, 'aomega.jpg', 5),
(18, 'B', 1994, 2004, 'bomega.jpg', 5),
(19, 'A', 2000, 2007, 'aagila.jpg', 6),
(20, 'B', 2007, 2014, 'bagila.jpg', 6),
(21, 'A', 2003, 2010, 'ameriva.jpg', 7),
(22, 'B', 2010, 2017, 'bmeriva.jpg', 7),
(23, 'A', 1999, 2005, 'azafira.jpg', 8),
(24, 'B', 2005, 2014, 'bzafira.jpg', 8),
(25, 'C', 2011, 2019, 'czafira.jpg', 8),
(26, 'A', 1994, 2000, 'atigra.jpg', 9),
(27, 'b', 2004, 2009, 'btigra.jpg', 9);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `markak`
--
ALTER TABLE `markak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nev` (`nev`);

--
-- A tábla indexei `modellek`
--
ALTER TABLE `modellek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marka` (`marka`),
  ADD KEY `nev` (`nev`);

--
-- A tábla indexei `modelltipusok`
--
ALTER TABLE `modelltipusok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modellid` (`modellid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `markak`
--
ALTER TABLE `markak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT a táblához `modellek`
--
ALTER TABLE `modellek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT a táblához `modelltipusok`
--
ALTER TABLE `modelltipusok`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `modellek`
--
ALTER TABLE `modellek`
  ADD CONSTRAINT `modellek_ibfk_1` FOREIGN KEY (`marka`) REFERENCES `markak` (`nev`),
  ADD CONSTRAINT `modellek_ibfk_2` FOREIGN KEY (`id`) REFERENCES `modelltipusok` (`modellid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
