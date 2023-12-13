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
-- База данных: `ZagS1234_stock`
--

-- --------------------------------------------------------

--
-- Структура таблицы `group_imaterial`
--

CREATE TABLE `group_imaterial` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `group_imaterial`
--

INSERT INTO `group_imaterial` (`id`, `name`) VALUES
(1, 'Группа1'),
(3, 'Группа2');

-- --------------------------------------------------------

--
-- Структура таблицы `material`
--

CREATE TABLE `material` (
  `id` int(100) NOT NULL,
  `material_class_id` int(100) NOT NULL,
  `group_imaterial_id` int(100) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `material`
--

INSERT INTO `material` (`id`, `material_class_id`, `group_imaterial_id`, `title`) VALUES
(1, 2, 1, 'синтетическая ткань'),
(2, 1, 3, 'раствор для бетона');

-- --------------------------------------------------------

--
-- Структура таблицы `material_class`
--

CREATE TABLE `material_class` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `material_class`
--

INSERT INTO `material_class` (`id`, `name`) VALUES
(1, 'строительные растворы'),
(2, 'синтетические материалы');

-- --------------------------------------------------------

--
-- Структура таблицы `provider`
--

CREATE TABLE `provider` (
  `id` int(100) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `INN` int(15) NOT NULL,
  `legal_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address_bank` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `number_ bank_account` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `provider`
--

INSERT INTO `provider` (`id`, `name`, `INN`, `legal_address`, `address_bank`, `number_ bank_account`) VALUES
(3, 'ФЛЕКС', 0, '2683, г. Москва ул. Печорская.23 д. 3', '2004, г. Санкт-Петербург ул. Садовая.74 д. 2', 89769689),
(4, 'АЗИМУТ ГРУПП', 0, '1002, г. Воронеж ул. Тёмная.15 д. 2', '1252, г. Воронеж ул. Тёмная.22 д. 1', 7589467);

-- --------------------------------------------------------

--
-- Структура таблицы `storage_unit`
--

CREATE TABLE `storage_unit` (
  `id` int(100) NOT NULL,
  `data` date NOT NULL,
  `supplier_id` int(100) NOT NULL,
  `balance_account` int(100) NOT NULL,
  `accompanying_document_code` int(100) NOT NULL,
  `number_accompanying_document` int(100) NOT NULL,
  `material_id` int(100) NOT NULL,
  `material_account` int(100) NOT NULL,
  `dimension_id` int(100) NOT NULL,
  `amount_material_received` int(100) NOT NULL,
  `price_measurement` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `storage_unit`
--

INSERT INTO `storage_unit` (`id`, `data`, `supplier_id`, `balance_account`, `accompanying_document_code`, `number_accompanying_document`, `material_id`, `material_account`, `dimension_id`, `amount_material_received`, `price_measurement`) VALUES
(1, '2023-02-10', 3, 34566365, 56436345, 354636534, 2, 4356653, 1, 345654356, 543634),
(2, '2023-10-22', 4, 1323241, 1234516, 5437543, 2, 12412, 1, 2134, 243134);

-- --------------------------------------------------------

--
-- Структура таблицы `units`
--

CREATE TABLE `units` (
  `id` int(100) NOT NULL,
  `material_id` int(100) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `units`
--

INSERT INTO `units` (`id`, `material_id`, `unit`) VALUES
(1, 2, 'Литры'),
(2, 1, 'Штук');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `group_imaterial`
--
ALTER TABLE `group_imaterial`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_imaterial_id` (`group_imaterial_id`),
  ADD KEY `material_class_id` (`material_class_id`);

--
-- Индексы таблицы `material_class`
--
ALTER TABLE `material_class`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `storage_unit`
--
ALTER TABLE `storage_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `dimension_id` (`dimension_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Индексы таблицы `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `group_imaterial`
--
ALTER TABLE `group_imaterial`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `material`
--
ALTER TABLE `material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `material_class`
--
ALTER TABLE `material_class`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `storage_unit`
--
ALTER TABLE `storage_unit`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `units`
--
ALTER TABLE `units`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`group_imaterial_id`) REFERENCES `group_imaterial` (`id`),
  ADD CONSTRAINT `material_ibfk_2` FOREIGN KEY (`material_class_id`) REFERENCES `material_class` (`id`);

--
-- Ограничения внешнего ключа таблицы `storage_unit`
--
ALTER TABLE `storage_unit`
  ADD CONSTRAINT `storage_unit_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`),
  ADD CONSTRAINT `storage_unit_ibfk_2` FOREIGN KEY (`dimension_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `storage_unit_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `provider` (`id`);

--
-- Ограничения внешнего ключа таблицы `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
