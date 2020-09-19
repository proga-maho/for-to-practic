-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 19 2020 г., 23:06
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `appbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `company name`
--

CREATE TABLE `company name` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `company name`
--

INSERT INTO `company name` (`id`, `name`, `id_phone`) VALUES
(2, 'nicecolor', 1),
(3, 'axton', 2),
(4, 'colorbest', 3),
(5, 'bestcolor', 4),
(6, 'colobestr', 5),
(7, 'becolostr', 6),
(8, 'cobelostr', 7),
(9, 'becocolorest', 8),
(10, 'cocoschanell', 9),
(11, 'acroidaep', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `number phone of company`
--

CREATE TABLE `number phone of company` (
  `id_phone` int(11) NOT NULL,
  `number phone` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `number phone of company`
--

INSERT INTO `number phone of company` (`id_phone`, `number phone`) VALUES
(1, 928571),
(2, 574061),
(3, 129856),
(4, 942606),
(5, 102956),
(6, 432985),
(7, 123098),
(8, 238767),
(9, 878734),
(10, 129090);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `company name`
--
ALTER TABLE `company name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_phone` (`id_phone`);

--
-- Индексы таблицы `number phone of company`
--
ALTER TABLE `number phone of company`
  ADD PRIMARY KEY (`id_phone`),
  ADD KEY `id_phone` (`id_phone`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `company name`
--
ALTER TABLE `company name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `number phone of company`
--
ALTER TABLE `number phone of company`
  MODIFY `id_phone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `company name`
--
ALTER TABLE `company name`
  ADD CONSTRAINT `company name_ibfk_1` FOREIGN KEY (`id_phone`) REFERENCES `number phone of company` (`id_phone`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
