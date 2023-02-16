-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 12. 16:40
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

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
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `id` int(5) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jelszo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `markak`
--

CREATE TABLE `markak` (
  `id` int(5) NOT NULL,
  `nev` varchar(20) NOT NULL,
  `orszag` varchar(30) NOT NULL,
  `szekhely` varchar(30) NOT NULL,
  `alapitasiev` int(4) NOT NULL
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
(22, 'Dodge', 'Egyesült államok', 'Auburn Hills', 1900),
(23, 'Jeep', 'Egyesült államok', 'Toledo', 1941),
(25, 'Ford', 'Egyesült államok', 'Dearborn', 1903),
(27, 'Bugatti ', 'Franciaország', 'Molsheim', 1998),
(28, 'Citroën', 'Franciaország', 'Saint-Ouen-sur-Seine', 1919),
(29, 'Peugeot', 'Franciaország', 'Sochaux', 1810),
(30, 'Renault', 'Franciaország', 'Boulogne-Billancourt', 1899),
(31, 'Alfa Romeo', 'Olaszország', 'Torino', 1910),
(33, 'Ferrari', 'Olaszország', 'Maranello', 1939),
(34, 'Fiat', 'Olaszország', 'Lingotto', 1899),
(35, 'Lamborghini', 'Olaszország', 'Sant\'Agata Bolognese', 1963),
(41, 'Jaguar', 'Egyesült Királyság', 'Coventry', 1922),
(44, 'Mini', 'Egyesült Királyság', 'Longbridge', 1969),
(45, 'Rolls-Royce', 'Egyesült Királyság', 'Goodwood', 1988),
(46, 'Vauxhall', 'Egyesült Királyság', 'Chalton', 1857),
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
  `id` int(5) NOT NULL,
  `marka` varchar(30) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `kategoria` varchar(30) NOT NULL
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
(8, 'Opel', 'Zafira', 'Kompaktvan'),
(9, 'Opel', 'Tigra', 'Alsó kategória'),
(10, 'Opel', 'Kadett', 'Alsó középkategória'),
(11, 'Opel', 'Ascona', 'Középkategória'),
(12, 'Opel', 'Manta', 'Középkategória'),
(13, 'Opel', 'Calibra', 'Középkategória'),
(14, 'Opel', 'Olympia', 'Felső középkategória'),
(15, 'Opel', 'Record', 'Felső középkategória'),
(16, 'Opel', 'Commodore', 'Felső középkategória'),
(17, 'Opel', 'Kapitän', 'Felső kategória'),
(18, 'Opel', 'Senator', 'Felsőkategória'),
(19, 'Opel', 'Monza', 'Felsőkategória'),
(20, 'Opel', 'GT', 'Sportautó'),
(21, 'Opel', 'Speedster', 'Sportautó'),
(22, 'Opel', 'Combo', 'Minivan'),
(23, 'Opel', 'Sintra', 'Van'),
(24, 'Opel', 'Monterey', 'Terepjáró'),
(25, 'Opel', 'Frontera', 'Terepjáró'),
(26, 'Opel', 'Antara', 'Terepjáró'),
(27, 'Opel', 'Blitz', 'Haszongépjármű'),
(28, 'Opel', 'Arena', 'Haszongépjármű'),
(29, 'Opel', 'Movano', 'Haszongépjármű'),
(30, 'Opel', 'Vivaro', 'Haszongépjármű'),
(31, 'Opel', '4/8PS(Doktorwagen)', 'Oldtimer'),
(32, 'Opel', 'Grand Prix Rennwagen', 'Oldtimer'),
(33, 'Opel', 'Laubfrosch', 'Oldtimer'),
(34, 'Opel', 'Doktorwagen', 'Oldtimer'),
(35, 'Opel', 'RAK', 'Oldtimer'),
(36, 'Opel', 'P4', 'Oldtimer'),
(37, 'Opel', 'Kadett I', 'Oldtimer'),
(38, 'Opel', 'Super 6', 'Oldtimer');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modelltipusok`
--

CREATE TABLE `modelltipusok` (
  `id` int(5) NOT NULL,
  `modell` varchar(30) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `gyartaskezd` int(4) NOT NULL,
  `gyartasvege` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `modelltipusok`
--

INSERT INTO `modelltipusok` (`id`, `modell`, `nev`, `gyartaskezd`, `gyartasvege`) VALUES
(1, 'Astra', 'F', 1991, 1998),
(2, 'Astra', 'G', 1998, 2004),
(3, 'Astra', 'H', 2004, 2009),
(4, 'Astra', 'J', 2009, 2015),
(5, 'Astra', 'K', 2015, 2022),
(6, 'Astra', 'L', 2022, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
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
  ADD KEY `modell` (`modell`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `markak`
--
ALTER TABLE `markak`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT a táblához `modellek`
--
ALTER TABLE `modellek`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT a táblához `modelltipusok`
--
ALTER TABLE `modelltipusok`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
