-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 04 2016 г., 20:37
-- Версия сервера: 5.5.48
-- Версия PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testIDLTD`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Ноутбуки'),
(2, 'Смартфоны'),
(3, 'Холодильники'),
(4, 'Планшеты'),
(5, 'Сайты'),
(6, 'Работа');

-- --------------------------------------------------------

--
-- Структура таблицы `tovars`
--

CREATE TABLE IF NOT EXISTS `tovars` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `text` text NOT NULL,
  `source` float(10,1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tovars`
--

INSERT INTO `tovars` (`id`, `category_id`, `name`, `text`, `source`) VALUES
(1, 1, 'Ltnovo NoteBook', 'текст какойто', 2.4),
(2, 1, 'Dell NoteBook', 'текст какойто', 2.6),
(3, 1, 'acer NoteBook', 'текст какойто', 1.1),
(4, 1, 'asus NoteBook', 'текст какойто', 6.0),
(5, 1, 'HP NoteBook', 'текст какойто', 2.0),
(6, 1, 'SONY NoteBook', 'текст какойто', 2.0),
(7, 2, 'Dell SmartPhone', 'текст какойто', 0.0),
(8, 2, 'acer SmartPhone', 'текст какойто', 0.5),
(9, 2, 'asus SmartPhone', 'текст какойто', 0.5),
(10, 2, 'HP SmartPhone', 'текст какойто', 0.5),
(11, 2, 'SONY SmartPhone', 'текст какойто', 0.5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovars`
--
ALTER TABLE `tovars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `tovars`
--
ALTER TABLE `tovars`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
