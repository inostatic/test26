-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2020 г., 17:47
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guestbook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `homepage` varchar(50) DEFAULT NULL,
  `text` text NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `username`, `email`, `date`, `homepage`, `text`, `ip`, `browser`) VALUES
(22, 'Станислав', 'stanislav@bk.ru', '2020-02-05 13:25:50', 'http://stanislav.ru', 'Первое сообщение в этой гостевой книге', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(23, 'Анастасия', 'nasty@bk.ru', '2020-02-05 15:04:40', 'NULL', 'Второе сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(24, 'Андрей', 'andrew@bk.ru', '2020-02-05 15:05:39', 'http://andrew.ru', 'Третье сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(25, 'Владислав', 'vladislav@bk.ru', '2020-02-05 15:08:06', 'NULL', 'Третье сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(26, 'Ксения', 'ksy@bk.ru', '2020-02-05 15:08:52', 'http://ksy.ru', 'Четвертое сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(27, 'Иван', 'ivan@bk.ru', '2020-02-05 15:09:46', 'NULL', 'Пятое сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(28, 'Елена', 'elena@bk.ru', '2020-02-05 15:10:45', 'http://elena.ru', 'Шестое сообщение гостевой кнги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(29, 'Александр', 'alex@bk.ru', '2020-02-05 15:11:19', 'NULL', 'Седьмое сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(30, 'Светлана', 'sveta@bk.ru', '2020-02-05 15:12:18', 'http://sveta.ru', 'Восьмое сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(31, 'Ян', 'jan@bk.ru', '2020-02-05 15:13:08', 'NULL', 'Девятое сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(32, 'Евгений', 'evgen@bk.ru', '2020-02-05 15:14:03', 'NULL', 'Десятое сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(33, 'Диана', 'di@bk.ru', '2020-02-05 15:15:42', 'http://di.ru', '11 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(34, 'Алсу', 'alsy@bk.ru', '2020-02-05 15:16:08', 'http://alsy.ru', '12 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(35, 'Аврора', 'av@bk.ru', '2020-02-05 15:16:25', 'NULL', '13 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(36, 'Вероника', 'vera@bk.ru', '2020-02-05 15:16:55', 'http://vera.ru', '14 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(37, 'Юлия', 'jyli@bk.ru', '2020-02-05 15:17:35', 'NULL', '15 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(38, 'Таисия', 'tay@bk.ru', '2020-02-05 15:18:05', 'http://ksy.ru', '16 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(39, 'Кира', 'kira@bk.ru', '2020-02-05 15:18:36', 'http://kira.ru', '17 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(40, 'Лия', 'lia@bk.ru', '2020-02-05 15:19:00', 'http://di.ru', '18 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(41, 'Andrei', 'and@bk.ru', '2020-02-05 15:19:51', 'http://andrew.ru', '19 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(42, 'Регина', 'reg@bk.ru', '2020-02-05 15:20:15', 'http://stanislav.ru', '20 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(43, 'Татьяна', 'tany@bk.ru', '2020-02-05 15:20:40', 'http://di.ru', '21 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(44, 'Ульяна', 'yk@bk.ru', '2020-02-05 15:21:19', 'NULL', '22 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(45, 'Тамара', 'toma@bk.ru', '2020-02-05 15:21:38', 'NULL', '23 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(46, 'Ольга', 'olya@bk.ru', '2020-02-05 15:21:55', 'NULL', '24 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(47, 'Анна', 'anny@bk.ru', '2020-02-05 15:22:17', 'NULL', '25 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(48, 'Мария', 'masha@bk.ru', '2020-02-05 15:22:43', 'http://ksy.ru', '26 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(49, 'Дмитрий', 'dima@bk.ru', '2020-02-05 15:23:06', 'http://di.ru', '27 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(50, 'Семен', 'sem@bk.ru', '2020-02-05 15:23:28', 'http://sveta.ru', '28 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(51, 'Павел', 'pasha@bk.ru', '2020-02-05 15:23:49', 'http://elena.ru', '29 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36'),
(52, 'Елизавета', 'liza@bk.ru', '2020-02-05 15:24:13', 'http://stanislav.ru', '30 сообщение гостевой книги', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 YaBrowser/20.2.1.248 Yowser/2.5 Safari/537.36');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
