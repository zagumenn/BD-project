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
-- База данных: `ZagS1234_Deputies`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Commission`
--

CREATE TABLE `Commission` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `deputy_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Commission`
--

INSERT INTO `Commission` (`id`, `title`, `deputy_id`, `status_id`) VALUES
(1, 'Комиссия по делам несовершеннолетних', 1, 1),
(2, 'Комиссия по коммунальным услугам', 2, 1),
(3, 'Комиссия по вопросам населения', 3, 3),
(4, 'Комиссия по правам граждан', 4, 4),
(5, 'Комиссия по налоговым вопросам', 5, 3),
(6, 'Комиссия по образованию', 6, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Deputy`
--

CREATE TABLE `Deputy` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addres` varchar(255) NOT NULL,
  `home_phone` int(12) NOT NULL,
  `work_phone` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Deputy`
--

INSERT INTO `Deputy` (`id`, `name`, `addres`, `home_phone`, `work_phone`) VALUES
(1, 'Алексей ', 'Невская 10', 89013443, 89013373),
(2, 'Иван', 'Пушкинская 99', 89013667, 89013487),
(3, 'Вячеслав', 'Владимирская 8', 890135474, 890859848),
(4, 'Владимир', 'Московская 2', 890754766, 890136743),
(5, 'Николай', 'Республики 78', 89013321, 89013352),
(6, 'Александр', 'Республики 46', 89013867, 89013543);

-- --------------------------------------------------------

--
-- Структура таблицы `Meeting`
--

CREATE TABLE `Meeting` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `commision_id` int(11) NOT NULL,
  `solution` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Meeting`
--

INSERT INTO `Meeting` (`id`, `subject`, `commision_id`, `solution`) VALUES
(1, 'Ремонт отопления', 3, 'ремонт проведён'),
(2, 'Зачисление в учебное заведение', 6, 'зачисление в учебное заведение'),
(3, 'Оплата коммунальных услуг', 2, 'услуга предоставлена'),
(4, 'Оплата налогов', 5, 'услуга предоставлена'),
(5, 'Оплата налогов', 5, 'услуга предоставлена'),
(6, 'Зачисление в учебное заведение', 6, 'зачисление в учебное заведение');

-- --------------------------------------------------------

--
-- Структура таблицы `Status`
--

CREATE TABLE `Status` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Status`
--

INSERT INTO `Status` (`id`, `title`) VALUES
(1, 'действующий председатель'),
(2, 'не действующий председатель'),
(3, 'действующий член комиссии'),
(4, 'не действующий член комиссии');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Commission`
--
ALTER TABLE `Commission`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Deputy`
--
ALTER TABLE `Deputy`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Meeting`
--
ALTER TABLE `Meeting`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Commission`
--
ALTER TABLE `Commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Deputy`
--
ALTER TABLE `Deputy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Meeting`
--
ALTER TABLE `Meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Status`
--
ALTER TABLE `Status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
