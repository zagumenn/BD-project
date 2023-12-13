-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 11 2023 г., 09:26
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
-- База данных: `ZagS1234_Climbers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Climber`
--

CREATE TABLE `Climber` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addres` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Climber`
--

INSERT INTO `Climber` (`id`, `name`, `addres`) VALUES
(1, 'Эмиль', 'Азербайджан'),
(2, 'Исмаил', 'Дагестан'),
(3, 'Сергей', 'Россия'),
(4, 'Никита', 'Россия'),
(5, 'Михаил', 'Россия'),
(6, 'Влад', 'Россия'),
(7, 'Серёга', 'Салехард'),
(8, 'Максим', ' Москва'),
(9, 'Макс', 'Салехард');

-- --------------------------------------------------------

--
-- Структура таблицы `Climbing`
--

CREATE TABLE `Climbing` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `climber_id` int(11) NOT NULL,
  `mountain_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Climbing`
--

INSERT INTO `Climbing` (`id`, `name`, `time_in`, `time_out`, `climber_id`, `mountain_id`) VALUES
(1, 'Алтай - Осень - 2023', '2023-11-28 12:38:32', '2023-11-30 12:38:32', 2, 1),
(4, 'Папай - осень - 2023', '2023-10-10 12:38:32', '2023-10-11 12:38:32', 3, 3),
(12, 'Эверест-Осень-2023', '2023-10-12 10:00:00', '2023-10-15 15:00:00', 1, 4),
(5, 'Абишира - Ахуба - зима - 2023', '2023-12-11 13:04:13', '2023-12-12 13:04:13', 2, 5),
(6, 'Алтай - зима - 2023', '2023-12-21 13:04:13', '2023-12-24 13:04:13', 1, 1),
(7, 'Алтай-Осень-2023', '2023-11-02 10:00:00', '2023-11-06 15:00:00', 6, 1),
(8, 'Алтай-зима-2023', '2023-12-14 10:00:00', '2023-11-16 15:00:00', 1, 1),
(9, 'Пик_Бзерли-Осень-2023', '2023-09-06 10:00:00', '2023-09-10 15:00:00', 5, 4),
(10, 'Папай-Лето-2023', '2023-08-15 10:00:00', '2023-08-18 15:00:00', 4, 3),
(11, 'Острая-Осень-2023', '2023-10-12 10:00:00', '2023-10-15 15:00:00', 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Climbing_Climbers`
--

CREATE TABLE `Climbing_Climbers` (
  `id` int(11) NOT NULL,
  `climbing_id` int(11) NOT NULL,
  `climber_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Climbing_Climbers`
--

INSERT INTO `Climbing_Climbers` (`id`, `climbing_id`, `climber_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 4),
(4, 4, 3),
(5, 5, 2),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Mountain`
--

CREATE TABLE `Mountain` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `height` int(100) NOT NULL,
  `region_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Mountain`
--

INSERT INTO `Mountain` (`id`, `title`, `height`, `region_id`) VALUES
(1, 'Алтай', 6506, '2'),
(2, 'Большой Тхач', 2368, '1'),
(3, 'Папай', 800, '8'),
(4, 'Пик Бзерпи', 2483, '9'),
(5, 'Абишира-Ахуба', 3000, '7');

-- --------------------------------------------------------

--
-- Структура таблицы `Region`
--

CREATE TABLE `Region` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Region`
--

INSERT INTO `Region` (`id`, `country`, `region`) VALUES
(1, 'Россия', 'Адыгея'),
(2, 'Россия', 'Алтай'),
(7, 'Россия', ' Карачаево-Черкессия'),
(8, 'Россия', 'Краснодарский край'),
(9, 'Россия', 'Сочи');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Climber`
--
ALTER TABLE `Climber`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Climbing`
--
ALTER TABLE `Climbing`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Climbing_Climbers`
--
ALTER TABLE `Climbing_Climbers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Mountain`
--
ALTER TABLE `Mountain`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Region`
--
ALTER TABLE `Region`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Climber`
--
ALTER TABLE `Climber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `Climbing`
--
ALTER TABLE `Climbing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `Climbing_Climbers`
--
ALTER TABLE `Climbing_Climbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Mountain`
--
ALTER TABLE `Mountain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Region`
--
ALTER TABLE `Region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
