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
-- База данных: `ZagS1234_Students`
--

-- --------------------------------------------------------

--
-- Структура таблицы `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int(100) NOT NULL,
  `name_specialty` varchar(255) NOT NULL,
  `discipline` varchar(255) NOT NULL,
  `term` int(100) NOT NULL,
  `number_hours` int(100) NOT NULL,
  `reporting_form` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `curriculum`
--

INSERT INTO `curriculum` (`id`, `name_specialty`, `discipline`, `term`, `number_hours`, `reporting_form`) VALUES
(1, 'Информационные системы и программирование', 'Математика', 1, 40, 'экзамен'),
(2, 'Ветеренары', 'Биология', 1, 50, 'Экзамен');

-- --------------------------------------------------------

--
-- Структура таблицы `journal`
--

CREATE TABLE `journal` (
  `id` int(100) NOT NULL,
  `term` int(100) NOT NULL,
  `studend_id` int(100) NOT NULL,
  `discipline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estimation` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `journal`
--

INSERT INTO `journal` (`id`, `term`, `studend_id`, `discipline`, `estimation`) VALUES
(1, 2, 2, 'Математика', 4),
(2, 1, 4, 'Биология', 4),
(3, 1, 3, 'Биология', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `patronymic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year_admission` int(100) NOT NULL,
  `form_education` varchar(255) NOT NULL,
  `name_group` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `patronymic`, `year_admission`, `form_education`, `name_group`) VALUES
(1, 'Иван', 'Иванов', 'Иванович', 2015, 'дневная', 'И-21'),
(2, 'Кравцев', 'Дмитрий', 'Александрович', 2014, 'заочная', 'И-31'),
(3, 'Зайцева', 'Светлана', 'Васильевна', 2014, 'вечерняя', 'В-21'),
(4, 'Воронин', 'Михаил', 'Сергеевич', 2015, 'дневная', 'В-31'),
(5, 'Сергей', 'Павлов', 'Сергеевич', 2014, 'заочная', 'И-21');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
