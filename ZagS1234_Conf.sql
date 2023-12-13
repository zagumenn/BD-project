-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 13 2023 г., 09:26
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
-- База данных: `ZagS1234_Conf`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Conf`
--

CREATE TABLE `Conf` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last name` varchar(255) NOT NULL,
  `patronymic` varchar(255) NOT NULL,
  `academic_degree` varchar(255) NOT NULL,
  `academic_title` varchar(255) NOT NULL,
  `scientific_direction` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal code` int(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `work phone` int(15) NOT NULL,
  `home phone` int(15) NOT NULL,
  `e-mail` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Confirention`
--

CREATE TABLE `Confirention` (
  `id` int(100) NOT NULL,
  `role_id` int(100) NOT NULL,
  `date_first _mailing` datetime(6) NOT NULL,
  `topic_report` varchar(255) NOT NULL,
  `note_receipt_abstracts` varchar(255) NOT NULL,
  `date_two _mailing` int(100) NOT NULL,
  `date_receipt _registration_fee` date NOT NULL,
  `size_thregistration_ fee` int(200) NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_date` date NOT NULL,
  `need_for_hotel` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'докладчик'),
(2, 'участник');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Conf`
--
ALTER TABLE `Conf`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Conf`
--
ALTER TABLE `Conf`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
