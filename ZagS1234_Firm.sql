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
-- База данных: `ZagS1234_Firm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Instruments`
--

CREATE TABLE `Instruments` (
  `id` int(100) NOT NULL,
  `instrument_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available_count` int(100) DEFAULT NULL,
  `total_count` int(100) DEFAULT NULL,
  `arrival_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Instruments`
--

INSERT INTO `Instruments` (`id`, `instrument_type`, `available_count`, `total_count`, `arrival_date`) VALUES
(1, 'InstrumentType1', 75, 125, '2023-10-09'),
(2, 'InstrumentType2', 50, 100, '2023-08-15'),
(3, 'InstrumentType3', 40, 50, '2024-02-08');

-- --------------------------------------------------------

--
-- Структура таблицы `InstrumentUsage`
--

CREATE TABLE `InstrumentUsage` (
  `operation_id` int(100) NOT NULL,
  `instrument_id` int(100) NOT NULL,
  `used_quantity` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `InstrumentUsage`
--

INSERT INTO `InstrumentUsage` (`operation_id`, `instrument_id`, `used_quantity`) VALUES
(1, 1, 5),
(2, 2, 10),
(3, 3, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialConsumption`
--

CREATE TABLE `MaterialConsumption` (
  `operation_id` int(100) NOT NULL,
  `material_id` int(100) NOT NULL,
  `used_quantity` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `MaterialConsumption`
--

INSERT INTO `MaterialConsumption` (`operation_id`, `material_id`, `used_quantity`) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `Materials`
--

CREATE TABLE `Materials` (
  `id` int(100) NOT NULL,
  `code_class` int(100) DEFAULT NULL,
  `code_group` int(100) DEFAULT NULL,
  `material_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Materials`
--

INSERT INTO `Materials` (`id`, `code_class`, `code_group`, `material_name`) VALUES
(1, 111, 1, 'Material1'),
(2, 222, 2, 'Material2'),
(3, 333, 1, 'Material3');

-- --------------------------------------------------------

--
-- Структура таблицы `Operations`
--

CREATE TABLE `Operations` (
  `id` int(100) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avg_duration` int(100) DEFAULT NULL,
  `drawing_number` int(100) DEFAULT NULL,
  `workshop_number` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Operations`
--

INSERT INTO `Operations` (`id`, `description`, `avg_duration`, `drawing_number`, `workshop_number`) VALUES
(1, 'Operation1', 60, 123, 1),
(2, 'Operation2', 45, 456, 2),
(3, 'Operation3', 30, 789, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Products`
--

CREATE TABLE `Products` (
  `id` int(100) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_batch_date` date DEFAULT NULL,
  `cost` int(100) DEFAULT NULL,
  `operations_count` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Products`
--

INSERT INTO `Products` (`id`, `title`, `last_batch_date`, `cost`, `operations_count`) VALUES
(1, 'Product1', '2024-04-12', 105, 5),
(2, 'Product2', '2023-05-09', 75, 8),
(3, 'Product3', '2024-02-15', 122, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `WorkOrders`
--

CREATE TABLE `WorkOrders` (
  `id` int(100) NOT NULL,
  `product_id` int(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `WorkOrders`
--

INSERT INTO `WorkOrders` (`id`, `product_id`, `date`, `deadline`, `quantity`) VALUES
(1, 1, '2023-10-25', '2023-11-05', 100),
(2, 2, '2023-10-26', '2023-11-08', 150),
(3, 3, '2023-10-27', '2023-11-10', 200);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Instruments`
--
ALTER TABLE `Instruments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `InstrumentUsage`
--
ALTER TABLE `InstrumentUsage`
  ADD PRIMARY KEY (`operation_id`,`instrument_id`),
  ADD KEY `InstrumentID` (`instrument_id`);

--
-- Индексы таблицы `MaterialConsumption`
--
ALTER TABLE `MaterialConsumption`
  ADD PRIMARY KEY (`operation_id`,`material_id`),
  ADD KEY `MaterialCode` (`material_id`);

--
-- Индексы таблицы `Materials`
--
ALTER TABLE `Materials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Operations`
--
ALTER TABLE `Operations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `WorkOrders`
--
ALTER TABLE `WorkOrders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductCode` (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
