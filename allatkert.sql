-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 28. 11:18
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
-- Adatbázis: `allatkert`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allatkert`
--

CREATE TABLE `allatkert` (
  `id` int(11) NOT NULL,
  `Nev` text NOT NULL,
  `Eletkor` int(255) NOT NULL,
  `Fajta` text NOT NULL,
  `Leírás` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `allatkert`
--

INSERT INTO `allatkert` (`id`, `Nev`, `Eletkor`, `Fajta`, `Leírás`) VALUES
(1, 'Szimba', 10, 'oroszlán', 'Szimba egy kitalált karakter a Disney Oroszlánkirály című sorozatában. Először oroszlánkölyökként feltűnt karakter elmenekül hazájából, amikor apját, Mufasa királyt megöli áruló nagybátyja, Zordon. Néhány évvel később Szimba felnőttként tér haza, hogy megbékéljen gyermekkori traumájával , szembeszálljon Zordonnal, és visszaszerezze helyét a Büszkeség országainak királyaként.'),
(2, 'Sir Kán', 15, 'tigris', 'Sír Kán, egy alattomos bengáli tigris megszegi a „dzsungel törvényét”, és megöl egy embercsaládot, és megakarja ölni Mauglit mert ő egy ember gyerek. '),
(3, 'Tapsi Hapsi', 75, 'nyúl', 'Tapsi Hapsi egy nyúl, aki folyton idegesítő megjegyzéseket fűz mindenhez. A „Mi a hézag, hapsikám?”, megjegyzés a védjegyévé vált. Folyamatosan sárgarépát rágcsál. Ha néha tudatlannak is tűnik, nagyon agyafúrt, mindenkit legyőz, aki az útjába áll.'),
(4, 'Xerxész', 5, 'flamingó', 'A legkomolyabb perzsa király, egy igazi bokszoló. '),
(5, 'Csizmás, a kandúr', 9, 'macska', 'Egy bandita macska, aki a Shrek című animációs filmben jelent meg előszór majd később önálló karakter filmeket is kapott. Jelegezettsége a csizmája,a kalapja, és a spanyol tőrje. '),
(6, 'Abu', 8, 'majom', 'Aladdin majma aki vele van gyerekkorát óta és együtt vannak az utcán. Igazi lókötő majom lett (csibész).'),
(7, 'TESZT', 12, 'TESZT', 'TESZT');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allatkert`
--
ALTER TABLE `allatkert`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allatkert`
--
ALTER TABLE `allatkert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
