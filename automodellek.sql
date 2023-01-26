-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 26. 07:56
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `jelszo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
(7, 'Volkswagen', 'Németország', 'Wolfsburg', 1937);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modellek`
--

CREATE TABLE `modellek` (
  `id` int(11) NOT NULL,
  `nev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modelltipusok`
--

CREATE TABLE `modelltipusok` (
  `id` int(11) NOT NULL,
  `nev` int(11) NOT NULL,
  `gyartaskezd` int(11) NOT NULL,
  `gyartasvege` int(11) NOT NULL,
  `kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `modellek`
--
ALTER TABLE `modellek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `modelltipusok`
--
ALTER TABLE `modelltipusok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `markak`
--
ALTER TABLE `markak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
