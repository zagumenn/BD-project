-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 06 2023 г., 08:14
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
-- База данных: `ZagS1234_Doctors`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Doctor`
--

CREATE TABLE `Doctor` (
  `id` int(11) NOT NULL,
  `name` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Genders`
--

CREATE TABLE `Genders` (
  `id` int(11) NOT NULL,
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
-- Структура таблицы `Medicine`
--

CREATE TABLE `Medicine` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `method of administration` varchar(255) NOT NULL,
  `description_of_the_action` varchar(255) NOT NULL,
  `side_effects` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Medicine`
--

INSERT INTO `Medicine` (`id`, `title`, `method of administration`, `description_of_the_action`, `side_effects`) VALUES
(1, 'Мукалтин', '2 раза в день после еды', 'при переваривании вырабатывает полезные тела ', 'сонливость'),
(2, 'Диазолин', '1 раз в день до еды', 'при переваривании начинают дейсвие вещества в таблетке', 'сонливость'),
(3, 'Боярышник форте эвалар', '2 раза в день после еды', '', 'сонливость'),
(4, 'Стрепсилс', '3 раза в день до еды', '', 'сонливость');

-- --------------------------------------------------------

--
-- Структура таблицы `Patient`
--

CREATE TABLE `Patient` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date of birth` date NOT NULL,
  `addres` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Patient`
--

INSERT INTO `Patient` (`id`, `name`, `gender`, `date of birth`, `addres`) VALUES
(1, 'Вася', '1', '2009-11-11', 'ул. Пушкина. 2'),
(2, 'Женя', '1', '2003-01-10', 'Ул. Московская 76'),
(3, 'Игорь', '1', '1999-02-25', 'ул. Пушкина. 23'),
(4, 'Алина', '2', '2000-05-26', 'ул. Вечерняя 13'),
(5, 'Настя', '2', '1999-07-23', 'ул. Печёрина 9'),
(6, 'Илья', '1', '2003-11-10', 'ул. Ночная 15');

-- --------------------------------------------------------

--
-- Структура таблицы `Reception`
--

CREATE TABLE `Reception` (
  `id` int(11) NOT NULL,
  `date_and_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inspection_place` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `patient_instructions` varchar(255) NOT NULL,
  `name_patient_id` int(11) NOT NULL,
  `name_doctor_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Reception`
--

INSERT INTO `Reception` (`id`, `date_and_place`, `inspection_place`, `symptoms`, `diagnosis`, `patient_instructions`, `name_patient_id`, `name_doctor_id`) VALUES
(1, '2023.11.20, Центральная городская поликлиника', 'Центральная городская поликлиника', 'слабость, рвота, тошнота', 'Отравление', 'принимать лекарства, пить много воды', 2, 1),
(2, '2024.02.05, Центральная городская поликлиника', 'Центральная городская поликлиника', 'слабость, рвота, тошнота', 'Отравление', 'принимать лекарства, пить много воды', 4, 2),
(3, '2023.02.15, Центральная поликлиника', ' Центральная поликлиника', '', 'Ветрянка', '', 3, 4),
(4, '2023.02.15, Центральная поликлиника', ' Центральная поликлиника', '', 'Простуда', '', 4, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Genders`
--
ALTER TABLE `Genders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Medicine`
--
ALTER TABLE `Medicine`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Reception`
--
ALTER TABLE `Reception`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Doctor`
--
ALTER TABLE `Doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Genders`
--
ALTER TABLE `Genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Medicine`
--
ALTER TABLE `Medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Patient`
--
ALTER TABLE `Patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Reception`
--
ALTER TABLE `Reception`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
