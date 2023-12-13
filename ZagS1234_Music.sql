-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 11 2023 г., 09:54
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
-- База данных: `ZagS1234_Music`
--

-- --------------------------------------------------------

--
-- Структура таблицы `executor`
--

CREATE TABLE `executor` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `executor`
--

INSERT INTO `executor` (`id`, `name`) VALUES
(1, 'группа Ленинград, Новый год'),
(2, 'группа Мираж, Эхо');

-- --------------------------------------------------------

--
-- Структура таблицы `group`
--

CREATE TABLE `group` (
  `id` int(100) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `member` int(255) NOT NULL,
  `type_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `group`
--

INSERT INTO `group` (`id`, `title`, `member`, `type_id`) VALUES
(1, 'Ленинград', 2, 1),
(2, 'Мираж', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `musician`
--

CREATE TABLE `musician` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `instrument` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `musician`
--

INSERT INTO `musician` (`id`, `name`, `instrument`, `role_id`) VALUES
(1, 'Иван', 'Гитара', 1),
(2, 'Александр', 'Барабаны', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `plate`
--

CREATE TABLE `plate` (
  `id` int(100) NOT NULL,
  `number` int(100) NOT NULL,
  `executor_id` int(100) NOT NULL,
  `campaign` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `wholesale_price` int(100) NOT NULL,
  `retail_price` int(100) NOT NULL,
  `date_issue` date NOT NULL,
  `number_copies` int(100) NOT NULL,
  `copies_last_year` int(100) NOT NULL,
  `copies_this_year` int(100) NOT NULL,
  `unsold plates` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `plate`
--

INSERT INTO `plate` (`id`, `number`, `executor_id`, `campaign`, `company_address`, `wholesale_price`, `retail_price`, `date_issue`, `number_copies`, `copies_last_year`, `copies_this_year`, `unsold plates`) VALUES
(1, 324234, 2, 'ITM', 'г. Москва ул. Садовая 15 д. 2', 3212, 2345, '2023-10-10', 5500, 1300, 1700, 2500),
(2, 321441, 1, 'Musical', 'г. Санкт-Петербург ул. Печёрская 43 д. 1', 3213, 2344, '2023-11-11', 4000, 1000, 1000, 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int(100) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Композитор'),
(2, 'Дирижёр'),
(3, 'Руководитель ансамбля');

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id` int(100) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'джазовая группа'),
(2, 'квартет'),
(3, ' квинтет'),
(4, 'классический оркестр');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `executor`
--
ALTER TABLE `executor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `member` (`member`);

--
-- Индексы таблицы `musician`
--
ALTER TABLE `musician`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Индексы таблицы `plate`
--
ALTER TABLE `plate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `executor_id` (`executor_id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `executor`
--
ALTER TABLE `executor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `group`
--
ALTER TABLE `group`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `musician`
--
ALTER TABLE `musician`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `plate`
--
ALTER TABLE `plate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `type`
--
ALTER TABLE `type`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `group_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `group_ibfk_2` FOREIGN KEY (`member`) REFERENCES `musician` (`id`);

--
-- Ограничения внешнего ключа таблицы `musician`
--
ALTER TABLE `musician`
  ADD CONSTRAINT `musician_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Ограничения внешнего ключа таблицы `plate`
--
ALTER TABLE `plate`
  ADD CONSTRAINT `plate_ibfk_1` FOREIGN KEY (`executor_id`) REFERENCES `executor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
