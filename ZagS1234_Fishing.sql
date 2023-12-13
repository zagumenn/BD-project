-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 13 2023 г., 09:27
-- Версия сервера: 8.0.13
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ZagS1234_Fishing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Boat`
--

CREATE TABLE `Boat` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `dewatering` int(255) NOT NULL,
  `date_of_construction` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Boat`
--

INSERT INTO `Boat` (`id`, `title`, `type`, `dewatering`, `date_of_construction`) VALUES
(1, 'Кировец-1', 'Катер с хардтопом', 10000, '2023-10-01'),
(2, 'Балтика-5', 'Катамаран', 15000, '2020-09-08'),
(3, 'Нижнегородский-2', 'Глиссер', 10000, '2018-10-02'),
(4, 'Варяг', 'Катер с хардтопом', 20000, '2022-09-05'),
(5, 'Муромец-5', 'Спортивный буксировщик', 10000, '2016-03-15');

-- --------------------------------------------------------

--
-- Структура таблицы `Jar`
--

CREATE TABLE `Jar` (
  `id` int(11) NOT NULL,
  `arrival_date` datetime NOT NULL,
  `date_of_departure` datetime NOT NULL,
  `catch_quality` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Outing`
--

CREATE TABLE `Outing` (
  `id` int(11) NOT NULL,
  `name_boat_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `addres_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `release_date` int(11) NOT NULL,
  `return_date` int(11) NOT NULL,
  `catch_weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Team_members`
--

CREATE TABLE `Team_members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addres` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `boat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Team_members`
--

INSERT INTO `Team_members` (`id`, `name`, `addres`, `position`, `boat`) VALUES
(1, 'Иван', 'Россия', 'Капитан', '2'),
(2, 'Вячеслав', 'Россия', 'Боцман', '2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Boat`
--
ALTER TABLE `Boat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Jar`
--
ALTER TABLE `Jar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Outing`
--
ALTER TABLE `Outing`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Team_members`
--
ALTER TABLE `Team_members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Boat`
--
ALTER TABLE `Boat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Jar`
--
ALTER TABLE `Jar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Outing`
--
ALTER TABLE `Outing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Team_members`
--
ALTER TABLE `Team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
