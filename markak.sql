-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 26. 10:55
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
(9, 'Honda', 'Japán', 'Tokió', 1948),
(10, 'Isuzu', 'Japán', 'Yokohama', 1934),
(11, 'Mazda', 'Japán', 'Hirosima', 1920),
(12, 'Mitsubishi', 'Japán', 'Tokió', 1870),
(13, 'Nissan', 'Japán', 'Jokohama', 1930),
(14, 'Subaru', 'Japán', 'Tokió', 1953),
(15, 'Suzuki', 'Japán', 'Sizuoka', 1909),
(16, 'Toyota', 'Japán', 'Tokió', 1936),
(17, 'Buick', 'Egyesült államok', 'Detroit', 1899),
(18, 'Cadillac', 'Egyesült államok', 'Detroit', 1902),
(19, 'Chevrolet', 'Egyesült államok', 'Detroit', 1911),
(20, 'GMC', 'Egyesült államok', 'Detroit', 1911),
(21, 'Chrysler', 'Egyesült államok', 'Auburn Hills', 1925),
(22, 'Dodge', 'Egyesült államok', 'Auburn Hills', 1900),
(23, 'Jeep', 'Egyesült államok', 'Toledo', 1941),
(24, 'RAM', 'Egyesült államok', 'Auburn Hills', 2010),
(25, 'Ford', 'Egyesült államok', 'Dearborn', 1903),
(26, 'Lincoln', 'Egyesült államok', 'Dearborn', 1907),
(27, 'Bugatti ', 'Franciaország', 'Molsheim', 1998),
(28, 'Citroën', 'Franciaország', 'Saint-Ouen-sur-Seine', 1919),
(29, 'Peugeot', 'Franciaország', 'Sochaux', 1810),
(30, 'Renault', 'Franciaország', 'Boulogne-Billancourt', 1899),
(31, 'Alfa Romeo', 'Olaszország', 'Turin', 1910),
(32, 'Alfa Romeo', 'Olaszország', 'Turin', 1910),
(33, 'Ferrari', 'Olaszország', 'Maranello', 1939),
(34, 'Fiat', 'Olaszország', 'Lingotto', 1899),
(35, 'Lamborghini', 'Olaszország', 'Sant\'Agata Bolognese', 1963),
(36, 'Lancia', 'Olaszország', 'Turin', 1906),
(37, 'Maserati', 'Olaszország', 'Modena', 1914),
(38, 'Pagani', 'Olaszország', 'San Cesario sul Panaro', 1992),
(39, 'Aston Martin', 'Egyesült Királyság', 'Gaydon', 1913),
(40, 'Bentley', 'Egyesült Királyság', 'Crewe', 1919),
(41, 'Jaguar', 'Egyesült Királyság', 'Coventry', 1922),
(42, 'Lotus', 'Egyesült Királyság', 'Hethel', 1948),
(43, 'McLaren', 'Egyesült Királyság', 'Woking', 1985),
(44, 'Mini', 'Egyesült Királyság', 'Longbridge', 1969),
(45, 'Rolls-Royce', 'Egyesült Királyság', 'Goodwood', 1988),
(46, 'Vauxhall', 'Egyesült Királyság', 'Chalton', 1857),
(47, 'SEAT', 'Spanyolország', 'Martorell', 1950),
(48, 'Lada', 'Oroszország', 'Togliatti', 1966),
(49, 'GAZ', 'Oroszország', 'Nyizsnyij Novgorod', 1932),
(50, 'AZLK', 'Oroszország', 'Moszkva', 1930),
(51, 'Aurus', 'Oroszország', 'Moszkva', 2018),
(52, 'UAZ', 'Oroszország', 'Uljanovszk', 1941);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `markak`
--
ALTER TABLE `markak`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `markak`
--
ALTER TABLE `markak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
