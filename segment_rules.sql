-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: database:3306
-- Время создания: Апр 25 2025 г., 13:28
-- Версия сервера: 8.3.0
-- Версия PHP: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tenantsandyq`
--

-- --------------------------------------------------------

--
-- Структура таблицы `segment_rules`
--

CREATE TABLE `segment_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `segment_id` bigint UNSIGNED NOT NULL,
  `metric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_frame` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logical_operator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analysis_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `segment_rules`
--

INSERT INTO `segment_rules` (`id`, `segment_id`, `metric`, `operator`, `value`, `time_frame`, `logical_operator`, `analysis_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(2, 1, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(3, 1, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(4, 2, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(5, 2, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(6, 2, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(7, 3, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(8, 3, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(9, 3, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(10, 4, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(11, 4, 'frequency_score', 'IN', '1,2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(12, 4, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(13, 5, 'recency_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(14, 5, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(15, 5, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(16, 6, 'recency_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(17, 6, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(18, 6, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(19, 7, 'recency_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(20, 7, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(21, 7, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(22, 8, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(23, 8, 'frequency_score', '=', '1', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(24, 8, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(25, 9, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(26, 9, 'frequency_score', '=', '1', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(27, 9, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(28, 10, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(29, 10, 'frequency_score', '=', '1', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(30, 10, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(31, 11, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(32, 11, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(33, 11, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(34, 12, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(35, 12, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(36, 12, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(37, 13, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(38, 13, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(39, 13, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(40, 14, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(41, 14, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(42, 14, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(43, 15, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(44, 15, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(45, 15, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(46, 16, 'recency_score', '=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(47, 16, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(48, 16, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(49, 17, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(50, 17, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(51, 17, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(52, 18, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(53, 18, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(54, 18, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(55, 19, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(56, 19, 'frequency_score', 'IN', '2,3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(57, 19, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(58, 20, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(59, 20, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(60, 20, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(61, 21, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(62, 21, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(63, 21, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(64, 22, 'recency_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(65, 22, 'frequency_score', 'IN', '4,5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(66, 22, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(67, 23, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(68, 23, 'frequency_score', '=', '1', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(69, 23, 'monetary_score', 'IN', '1,2', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(70, 24, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(71, 24, 'frequency_score', '=', '1', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(72, 24, 'monetary_score', 'IN', '3,4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(73, 25, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(74, 25, 'frequency_score', '=', '1', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(75, 25, 'monetary_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(76, 26, 'favorite_hour', 'IN', '18,19,20', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(77, 26, 'revenue', '=', 'A', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(78, 26, 'priority', '=', 'Vital', 'none', 'AND', 'VEN', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(79, 27, 'favorite_dish', 'LIKE', '%Pizza%', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(80, 27, 'order_count', '>=', '5', 'none', 'AND', 'Orders', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(81, 27, 'revenue', 'IN', 'A,B', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(82, 28, 'bonus_usage_ratio', '>=', '0.5', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(83, 28, 'bonus_balance', '>=', '500', 'none', 'AND', 'Users', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(84, 28, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(85, 29, 'frequency', '=', 'Fast', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(86, 29, 'revenue', '=', 'A', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(87, 29, 'recency_score', '=', '5', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(88, 29, 'priority', '=', 'Vital', 'none', 'AND', 'VEN', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(89, 30, 'favorite_dish', 'LIKE', '%Pizza%', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(90, 30, 'frequency', 'IN', 'Fast,Medium', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(91, 30, 'order_count', '>=', '5', 'none', 'AND', 'Orders', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(92, 30, 'revenue', 'IN', 'A,B', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(93, 31, 'frequency', '=', 'Fast', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-04-25 17:36:42'),
(94, 31, 'bonus_usage_ratio', '>=', '0.5', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(95, 31, 'bonus_balance', '>=', '500', 'none', 'AND', 'Users', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(96, 31, 'recency_score', '>=', '4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(97, 32, 'favorite_day', 'IN', 'Saturday,Sunday', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(98, 32, 'frequency', '=', 'Fast', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(99, 32, 'recency_score', '>=', '4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(100, 32, 'monetary_score', '>=', '3', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(101, 33, 'frequency', 'IN', 'Fast,Medium', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(102, 33, 'revenue', 'IN', 'A,B', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(103, 33, 'priority', '=', 'Vital', 'none', 'AND', 'VEN', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(104, 33, 'frequency_score', '>=', '4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(105, 34, 'frequency', 'IN', 'Fast,Medium', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(106, 34, 'total_sum / order_count', '<=', '5000', 'none', 'AND', 'Orders', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(107, 34, 'order_count', '>=', '5', 'none', 'AND', 'Orders', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(108, 34, 'revenue', '=', 'C', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(109, 35, 'unique_ip_count', '>=', '2', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(110, 35, 'frequency', '=', 'Rare', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-04-25 18:16:37'),
(111, 35, 'recency_score', '>=', '4', 'none', 'AND', 'RFM', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(112, 35, 'revenue', 'IN', 'A,B', 'none', 'AND', 'ABC', '2025-05-02 00:00:00', '2025-04-25 17:56:36'),
(113, 36, 'favorite_hour', 'IN', '18,19,20', 'none', 'AND', 'Behavior', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(114, 36, 'total_sum / order_count', '<=', '5000', 'none', 'AND', 'Orders', '2025-05-02 00:00:00', '2025-05-02 00:00:00'),
(115, 36, 'frequency', 'IN', 'Fast,Medium', 'none', 'AND', 'FMR', '2025-05-02 00:00:00', '2025-04-25 17:56:06'),
(116, 36, 'order_count', '>=', '3', 'none', 'AND', 'Orders', '2025-05-02 00:00:00', '2025-05-02 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `segment_rules`
--
ALTER TABLE `segment_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `segment_rules_segment_id_index` (`segment_id`),
  ADD KEY `segment_rules_analysis_type_index` (`analysis_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `segment_rules`
--
ALTER TABLE `segment_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `segment_rules`
--
ALTER TABLE `segment_rules`
  ADD CONSTRAINT `segment_rules_segment_id_foreign` FOREIGN KEY (`segment_id`) REFERENCES `segments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
