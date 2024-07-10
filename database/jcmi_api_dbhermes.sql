-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2024 a las 19:51:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jcmi_api_dbhermes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_activity_users`
--

CREATE TABLE `jcmi_activity_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_attachments_tasks`
--

CREATE TABLE `jcmi_attachments_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `url_attachment` varchar(300) NOT NULL,
  `addfrom` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_cache`
--

CREATE TABLE `jcmi_cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_cache_locks`
--

CREATE TABLE `jcmi_cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_failed_jobs`
--

CREATE TABLE `jcmi_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_jobs`
--

CREATE TABLE `jcmi_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_job_batches`
--

CREATE TABLE `jcmi_job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_parameters`
--

CREATE TABLE `jcmi_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL,
  `type` bigint(20) UNSIGNED NOT NULL,
  `data` longtext DEFAULT NULL,
  `addfrom` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_password_reset_tokens`
--

CREATE TABLE `jcmi_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_sessions`
--

CREATE TABLE `jcmi_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_tasks`
--

CREATE TABLE `jcmi_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `priority` bigint(20) UNSIGNED NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addfrom` bigint(20) UNSIGNED NOT NULL,
  `status` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_task_comments`
--

CREATE TABLE `jcmi_task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_task_users`
--

CREATE TABLE `jcmi_task_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `addfrom` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_timers_task`
--

CREATE TABLE `jcmi_timers_task` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_type_parameters`
--

CREATE TABLE `jcmi_type_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_users`
--

CREATE TABLE `jcmi_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` bigint(20) UNSIGNED NOT NULL,
  `profile_img` varchar(300) DEFAULT NULL,
  `job_position` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jcmi_users_permissions`
--

CREATE TABLE `jcmi_users_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_000002_create_jobs_table', 1),
(22, '2024_07_10_141310_create_jcmi_parameters_table', 2),
(23, '2024_07_10_141311_create_jcmi_timers_task_table', 2),
(24, '2024_07_10_141312_create_jcmi_task_users_table', 2),
(25, '2024_07_10_141313_create_jcmi_task_comments_table', 2),
(26, '2024_07_10_141314_create_jcmi_attachments_tasks_table', 2),
(27, '2024_07_10_141315_create_jcmi_type_parameters_table', 2),
(28, '2024_07_10_141316_create_jcmi_tasks_table', 2),
(29, '2024_07_10_141317_create_jcmi_users_table', 2),
(30, '2024_07_10_141318_create_jcmi_users_permissions_table', 2),
(31, '2024_07_10_141319_create_jcmi_activity_users_table', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jcmi_activity_users`
--
ALTER TABLE `jcmi_activity_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_activity_users_user_id_index` (`user_id`);

--
-- Indices de la tabla `jcmi_attachments_tasks`
--
ALTER TABLE `jcmi_attachments_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_attachments_tasks_task_id_index` (`task_id`),
  ADD KEY `jcmi_attachments_tasks_addfrom_index` (`addfrom`);

--
-- Indices de la tabla `jcmi_cache`
--
ALTER TABLE `jcmi_cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `jcmi_cache_locks`
--
ALTER TABLE `jcmi_cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `jcmi_failed_jobs`
--
ALTER TABLE `jcmi_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jcmi_failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jcmi_jobs`
--
ALTER TABLE `jcmi_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_jobs_queue_index` (`queue`);

--
-- Indices de la tabla `jcmi_job_batches`
--
ALTER TABLE `jcmi_job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jcmi_parameters`
--
ALTER TABLE `jcmi_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_parameters_type_index` (`type`),
  ADD KEY `jcmi_parameters_addfrom_index` (`addfrom`);

--
-- Indices de la tabla `jcmi_password_reset_tokens`
--
ALTER TABLE `jcmi_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `jcmi_sessions`
--
ALTER TABLE `jcmi_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_sessions_user_id_index` (`user_id`),
  ADD KEY `jcmi_sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `jcmi_tasks`
--
ALTER TABLE `jcmi_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_tasks_priority_index` (`priority`),
  ADD KEY `jcmi_tasks_addfrom_index` (`addfrom`),
  ADD KEY `jcmi_tasks_status_index` (`status`);

--
-- Indices de la tabla `jcmi_task_comments`
--
ALTER TABLE `jcmi_task_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_task_comments_task_id_index` (`task_id`),
  ADD KEY `jcmi_task_comments_user_id_index` (`user_id`);

--
-- Indices de la tabla `jcmi_task_users`
--
ALTER TABLE `jcmi_task_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_task_users_task_id_index` (`task_id`),
  ADD KEY `jcmi_task_users_user_id_index` (`user_id`),
  ADD KEY `jcmi_task_users_addfrom_index` (`addfrom`);

--
-- Indices de la tabla `jcmi_timers_task`
--
ALTER TABLE `jcmi_timers_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_timers_task_task_id_index` (`task_id`),
  ADD KEY `jcmi_timers_task_user_id_index` (`user_id`);

--
-- Indices de la tabla `jcmi_type_parameters`
--
ALTER TABLE `jcmi_type_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jcmi_users`
--
ALTER TABLE `jcmi_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_users_role_index` (`role`);

--
-- Indices de la tabla `jcmi_users_permissions`
--
ALTER TABLE `jcmi_users_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jcmi_users_permissions_user_id_index` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jcmi_activity_users`
--
ALTER TABLE `jcmi_activity_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_attachments_tasks`
--
ALTER TABLE `jcmi_attachments_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_failed_jobs`
--
ALTER TABLE `jcmi_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_jobs`
--
ALTER TABLE `jcmi_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_parameters`
--
ALTER TABLE `jcmi_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_tasks`
--
ALTER TABLE `jcmi_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_task_comments`
--
ALTER TABLE `jcmi_task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_task_users`
--
ALTER TABLE `jcmi_task_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_timers_task`
--
ALTER TABLE `jcmi_timers_task`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_type_parameters`
--
ALTER TABLE `jcmi_type_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_users`
--
ALTER TABLE `jcmi_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jcmi_users_permissions`
--
ALTER TABLE `jcmi_users_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jcmi_activity_users`
--
ALTER TABLE `jcmi_activity_users`
  ADD CONSTRAINT `jcmi_activity_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jcmi_users` (`id`);

--
-- Filtros para la tabla `jcmi_attachments_tasks`
--
ALTER TABLE `jcmi_attachments_tasks`
  ADD CONSTRAINT `jcmi_attachments_tasks_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `jcmi_tasks` (`id`),
  ADD CONSTRAINT `jcmi_attachments_tasks_ibfk_2` FOREIGN KEY (`addfrom`) REFERENCES `jcmi_users` (`id`);

--
-- Filtros para la tabla `jcmi_parameters`
--
ALTER TABLE `jcmi_parameters`
  ADD CONSTRAINT `jcmi_parameters_ibfk_1` FOREIGN KEY (`type`) REFERENCES `jcmi_type_parameters` (`id`),
  ADD CONSTRAINT `jcmi_parameters_ibfk_2` FOREIGN KEY (`addfrom`) REFERENCES `jcmi_users` (`id`);

--
-- Filtros para la tabla `jcmi_sessions`
--
ALTER TABLE `jcmi_sessions`
  ADD CONSTRAINT `jcmi_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jcmi_users` (`id`);

--
-- Filtros para la tabla `jcmi_tasks`
--
ALTER TABLE `jcmi_tasks`
  ADD CONSTRAINT `jcmi_tasks_ibfk_1` FOREIGN KEY (`addfrom`) REFERENCES `jcmi_users` (`id`),
  ADD CONSTRAINT `jcmi_tasks_ibfk_2` FOREIGN KEY (`priority`) REFERENCES `jcmi_parameters` (`id`),
  ADD CONSTRAINT `jcmi_tasks_ibfk_3` FOREIGN KEY (`status`) REFERENCES `jcmi_parameters` (`id`);

--
-- Filtros para la tabla `jcmi_task_comments`
--
ALTER TABLE `jcmi_task_comments`
  ADD CONSTRAINT `jcmi_task_comments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `jcmi_tasks` (`id`),
  ADD CONSTRAINT `jcmi_task_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `jcmi_users` (`id`);

--
-- Filtros para la tabla `jcmi_task_users`
--
ALTER TABLE `jcmi_task_users`
  ADD CONSTRAINT `jcmi_task_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jcmi_users` (`id`),
  ADD CONSTRAINT `jcmi_task_users_ibfk_2` FOREIGN KEY (`addfrom`) REFERENCES `jcmi_users` (`id`),
  ADD CONSTRAINT `jcmi_task_users_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `jcmi_tasks` (`id`);

--
-- Filtros para la tabla `jcmi_timers_task`
--
ALTER TABLE `jcmi_timers_task`
  ADD CONSTRAINT `jcmi_timers_task_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `jcmi_tasks` (`id`),
  ADD CONSTRAINT `jcmi_timers_task_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `jcmi_users` (`id`);

--
-- Filtros para la tabla `jcmi_users`
--
ALTER TABLE `jcmi_users`
  ADD CONSTRAINT `jcmi_users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `jcmi_parameters` (`id`);

--
-- Filtros para la tabla `jcmi_users_permissions`
--
ALTER TABLE `jcmi_users_permissions`
  ADD CONSTRAINT `jcmi_users_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `jcmi_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
