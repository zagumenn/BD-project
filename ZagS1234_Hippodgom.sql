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
-- База данных: `ZagS1234_Hippodgom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Competitions`
--

CREATE TABLE `Competitions` (
  `id` int(11) NOT NULL,
  `data_time` datetime NOT NULL,
  `name_competition` varchar(255) NOT NULL,
  `hippodrome_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Competitions`
--

INSERT INTO `Competitions` (`id`, `data_time`, `name_competition`, `hippodrome_id`) VALUES
(1, '2023-10-06 23:22:40', 'Алтай-1', 3),
(2, '2023-10-11 09:22:40', 'Казань-1', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Genders`
--

CREATE TABLE `Genders` (
  `id` int(7) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Genders`
--

INSERT INTO `Genders` (`id`, `gender`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `Hippodroms`
--

CREATE TABLE `Hippodroms` (
  `id` int(11) NOT NULL,
  `name_gippodromme` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hippodroms`
--

INSERT INTO `Hippodroms` (`id`, `name_gippodromme`) VALUES
(1, '\r\nЦентральный Московский ипподром'),
(2, '\r\nПятигорский ипподром'),
(3, '\r\nАлтайский краевой ипподром\r\nКазанский ипподром\r\n'),
(4, 'Казанский ипподром'),
(5, 'Тверской ипподром'),
(6, 'Акбузат');

-- --------------------------------------------------------

--
-- Структура таблицы `Horses`
--

CREATE TABLE `Horses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Horses`
--

INSERT INTO `Horses` (`id`, `name`, `gender_id`, `age`, `owner_id`) VALUES
(1, 'Орлик', 1, 4, 1),
(3, 'Тучка', 2, 3, 3),
(2, 'Козлик', 1, 4, 2),
(4, 'Уголёк', 1, 3, 1),
(5, 'Белёк', 1, 3, 4),
(6, 'Шустрик', 1, 4, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `horse_competition`
--

CREATE TABLE `horse_competition` (
  `id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `jokey_id` int(11) NOT NULL,
  `horse_id` int(11) NOT NULL,
  `place_racing` int(11) NOT NULL,
  `finish_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `horse_competition`
--

INSERT INTO `horse_competition` (`id`, `competition_id`, `jokey_id`, `horse_id`, `place_racing`, `finish_time`) VALUES
(1, 1, 2, 1, 3, '00:39:17'),
(2, 2, 1, 1, 3, '00:43:17');

-- --------------------------------------------------------

--
-- Структура таблицы `Jockey`
--

CREATE TABLE `Jockey` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addres` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `rating` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Jockey`
--

INSERT INTO `Jockey` (`id`, `name`, `addres`, `age`, `rating`) VALUES
(1, 'Vladislav', 'Cremea', 20, 24),
(2, 'Oleg', 'Moscow', 19, 20),
(3, 'Vladimir', 'Moscow', 20, 30),
(4, 'Vlad', 'Kazan', 21, 35),
(5, 'Slava', 'Piter', 25, 0),
(6, 'Konstantin', 'Moscow', 30, 40);

-- --------------------------------------------------------

--
-- Структура таблицы `Owners`
--

CREATE TABLE `Owners` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `addres` varchar(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Owners`
--

INSERT INTO `Owners` (`id`, `name`, `addres`, `phone`) VALUES
(1, 'Maks', 'Moscow', 8902314),
(2, 'Ivan', 'Moscow', 890324432),
(3, 'Vlad', 'Moscow', 890275626),
(4, 'Maks', 'Piter', 8901215),
(5, 'Vasia', 'Voronesh', 8901234),
(6, 'Mihail', 'Moscow', 89064314);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Competitions`
--
ALTER TABLE `Competitions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Genders`
--
ALTER TABLE `Genders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Hippodroms`
--
ALTER TABLE `Hippodroms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Horses`
--
ALTER TABLE `Horses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `horse_competition`
--
ALTER TABLE `horse_competition`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Jockey`
--
ALTER TABLE `Jockey`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Owners`
--
ALTER TABLE `Owners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Genders`
--
ALTER TABLE `Genders`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Hippodroms`
--
ALTER TABLE `Hippodroms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Horses`
--
ALTER TABLE `Horses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Owners`
--
ALTER TABLE `Owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
