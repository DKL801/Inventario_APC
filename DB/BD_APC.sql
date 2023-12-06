-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_inventario
CREATE DATABASE IF NOT EXISTS `db_inventario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_inventario`;

-- Volcando estructura para tabla db_inventario.biye
CREATE TABLE IF NOT EXISTS `biye` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.biye: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_inventario.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.branches: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_inventario.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.categories: ~20 rows (aproximadamente)
REPLACE INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Teclados inalambrico', 1, '2023-11-19 13:09:01', '2023-11-19 13:16:54'),
	(2, 'Mouse', 1, '2023-11-19 13:09:21', '2023-11-19 13:14:05'),
	(3, 'Auriculares', 1, '2023-11-19 13:12:30', '2023-11-19 13:12:30'),
	(4, 'Cámaras', 1, '2023-11-19 13:12:58', '2023-11-19 13:12:58'),
	(5, 'Mouse Pad', 1, '2023-11-19 13:13:28', '2023-11-19 13:13:51'),
	(6, 'Case', 1, '2023-11-19 13:14:20', '2023-11-19 14:27:30'),
	(7, 'Fuentes de alimentación', 1, '2023-11-19 13:14:36', '2023-11-19 13:14:36'),
	(8, 'Refrigeración', 1, '2023-11-19 13:14:49', '2023-11-19 13:14:49'),
	(9, 'Monitores', 1, '2023-11-19 13:14:58', '2023-11-19 13:14:58'),
	(10, 'Combos', 1, '2023-11-19 13:15:15', '2023-11-19 13:15:15'),
	(11, 'Sillas', 1, '2023-11-19 13:15:21', '2023-11-19 13:15:21'),
	(12, 'Teclado Mecanico', 1, '2023-11-19 13:17:02', '2023-11-19 13:17:02'),
	(13, 'Teclado de membrana', 1, '2023-11-19 13:17:48', '2023-11-19 13:17:48'),
	(14, 'Disco duro (HDD)', 1, '2023-11-19 14:43:26', '2023-11-19 14:43:26'),
	(15, 'RAM', 1, '2023-11-19 14:50:59', '2023-11-19 14:50:59'),
	(16, 'Disco Solido (SSD)', 1, '2023-11-19 14:53:57', '2023-11-19 14:53:57'),
	(17, 'M.2 MVME', 1, '2023-11-19 14:54:15', '2023-11-19 14:54:15'),
	(18, 'Tarjeta madre', 1, '2023-11-19 15:07:20', '2023-11-19 15:07:20'),
	(19, 'Tarjeta de video', 1, '2023-11-19 15:09:08', '2023-11-19 15:09:08'),
	(20, 'Procesador', 1, '2023-11-19 15:26:07', '2023-11-19 15:26:07');

-- Volcando estructura para tabla db_inventario.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.companies: ~1 rows (aproximadamente)
REPLACE INTO `companies` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
	(1, 'Active Pro Computer S.A.C.', '951161986', 'Calle Paucarpata 128 Galería Compucentro oficina 109 cercado', NULL, '2023-11-23 13:28:24');

-- Volcando estructura para tabla db_inventario.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.customers: ~26 rows (aproximadamente)
REPLACE INTO `customers` (`id`, `customer_name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'juan perez', NULL, NULL, NULL, 1, '2023-10-23 14:22:40', '2023-10-30 14:14:20'),
	(2, 'María García', NULL, NULL, NULL, 1, '2023-11-22 12:02:31', '2023-11-22 12:02:31'),
	(3, 'Carlos Rodríguez', NULL, NULL, NULL, 1, '2023-11-22 12:02:40', '2023-11-22 12:02:40'),
	(4, 'Ana Martínez', NULL, NULL, NULL, 1, '2023-11-22 12:02:59', '2023-11-22 12:02:59'),
	(5, 'Luis González', NULL, NULL, NULL, 1, '2023-11-22 12:03:10', '2023-11-22 12:03:10'),
	(6, 'Laura López', NULL, NULL, NULL, 1, '2023-11-22 12:03:28', '2023-11-22 12:03:28'),
	(7, 'Sergio Sánchez', NULL, NULL, NULL, 1, '2023-11-22 12:03:37', '2023-11-22 12:03:37'),
	(8, 'Paula Ramírez', NULL, NULL, NULL, 1, '2023-11-22 12:03:46', '2023-11-22 12:03:46'),
	(9, 'Javier Díaz', NULL, NULL, NULL, 1, '2023-11-22 12:03:55', '2023-11-22 12:03:55'),
	(10, 'Carmen Fernández', NULL, NULL, NULL, 1, '2023-11-22 12:04:05', '2023-11-22 12:04:05'),
	(11, 'José Torres', NULL, NULL, NULL, 1, '2023-11-22 12:04:16', '2023-11-22 12:04:16'),
	(12, 'Patricia Ruiz', NULL, NULL, NULL, 1, '2023-11-22 12:04:24', '2023-11-22 12:04:24'),
	(13, 'Francisco Jiménez', NULL, NULL, NULL, 1, '2023-11-22 12:04:37', '2023-11-22 12:04:37'),
	(14, 'Isabel Medina', NULL, NULL, NULL, 1, '2023-11-22 12:04:53', '2023-11-22 12:04:53'),
	(15, 'Raúl Herrera', NULL, NULL, NULL, 1, '2023-11-22 12:05:01', '2023-11-22 12:05:01'),
	(16, 'Adriana Castro', NULL, NULL, NULL, 1, '2023-11-22 12:05:13', '2023-11-22 12:05:13'),
	(17, 'Alejandro Mendoza', NULL, NULL, NULL, 1, '2023-11-22 12:05:30', '2023-11-22 12:05:30'),
	(18, 'Natalia Vargas', NULL, NULL, NULL, 1, '2023-11-22 12:05:42', '2023-11-22 12:05:42'),
	(19, 'Martín Rojas', NULL, NULL, NULL, 1, '2023-11-22 12:05:53', '2023-11-22 12:05:53'),
	(20, 'Gabriela Silva', NULL, NULL, NULL, 1, '2023-11-22 12:06:08', '2023-11-22 12:06:08'),
	(21, 'Daniel Ortega', NULL, NULL, NULL, 1, '2023-11-22 12:06:17', '2023-11-22 12:06:17'),
	(22, 'Carolina Morales', NULL, NULL, NULL, 1, '2023-11-22 12:06:27', '2023-11-22 12:06:27'),
	(23, 'Eduardo Soto', NULL, NULL, NULL, 1, '2023-11-22 12:06:37', '2023-11-22 12:06:37'),
	(24, 'Silvia Paredes', NULL, NULL, NULL, 1, '2023-11-22 12:06:46', '2023-11-22 12:06:46'),
	(25, 'Mario Cordero', NULL, NULL, NULL, 1, '2023-11-22 12:06:55', '2023-11-22 12:06:55'),
	(26, 'Juan', NULL, NULL, NULL, 1, '2023-11-22 13:29:29', '2023-12-06 00:47:42');

-- Volcando estructura para tabla db_inventario.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.menus: ~15 rows (aproximadamente)
REPLACE INTO `menus` (`id`, `parent_id`, `name`, `icon`, `menu_url`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Clientes', 'contacts', 'customer.index', 0, '2020-07-29 18:17:51', '2020-07-29 18:17:56'),
	(2, 0, 'Gestión de Productos', 'category', NULL, 0, '2020-07-29 18:17:53', '2020-07-29 18:17:54'),
	(3, 0, 'Gestión de Existencias', 'assignment', NULL, 0, '2020-07-29 18:17:52', '2020-07-29 18:17:54'),
	(4, 0, 'Gestión de usuarios', 'supervised_user_circle', NULL, 0, '2020-07-29 18:17:51', '2020-07-29 18:17:56'),
	(5, 0, 'Reportes', 'receipt_long', 'report.index', 0, '2020-07-29 18:17:52', '2020-07-29 18:17:55'),
	(6, 0, 'Configuración', 'settings', NULL, 0, '2020-07-29 18:17:58', '2020-07-29 18:17:57'),
	(7, 2, 'Categorias', NULL, 'category.index', 0, '2020-07-29 18:17:50', '2020-07-29 18:17:57'),
	(8, 2, 'Productos', NULL, 'product.index', 0, '2020-07-29 18:17:49', '2020-07-29 18:17:59'),
	(9, 2, 'Proveedores', NULL, 'supplier.index', 0, '2020-07-29 18:17:49', '2020-07-29 18:18:00'),
	(10, 3, 'Entradas', NULL, 'stock.index', 0, '2020-07-29 18:17:48', '2020-07-29 18:18:00'),
	(11, 3, 'Salidas / Facturación', NULL, 'invoice.index', 0, '2020-07-29 18:17:47', '2020-07-29 18:18:01'),
	(12, 4, 'Gestión de roles', NULL, 'role.index', 0, '2020-07-29 18:17:46', '2020-07-29 18:17:46'),
	(13, 4, 'Usuarios', NULL, 'user.index', 0, '2020-07-29 18:17:44', '2020-07-29 18:17:44'),
	(14, 6, 'Información de la empresa', NULL, 'company.index', 0, '2020-07-29 18:17:43', '2020-07-29 18:17:45'),
	(15, 6, 'Cambiar la contraseña', NULL, 'password.index', 0, '2020-07-29 18:17:42', '2020-07-29 18:16:37');

-- Volcando estructura para tabla db_inventario.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.migrations: ~16 rows (aproximadamente)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_12_10_051212_create_products_table', 2),
	(4, '2018_12_10_052440_create_vendors_table', 2),
	(5, '2018_12_10_052501_create_customers_table', 2),
	(6, '2018_12_10_052521_create_stocks_table', 2),
	(7, '2018_12_10_052610_create_sells_table', 2),
	(8, '2018_12_10_052631_create_sell_details_table', 2),
	(9, '2018_12_10_075236_create_branches_table', 2),
	(10, '2018_12_31_160432_create_categories_table', 3),
	(11, '2019_01_12_163604_create_payments_table', 4),
	(12, '2019_01_19_152250_biye--tabl', 5),
	(13, '2019_02_10_113651_create_roles_table', 6),
	(14, '2019_02_10_114632_create_permissions_table', 6),
	(15, '2019_02_10_114735_create_menus_table', 6),
	(16, '2019_02_14_130126_create_companies_table', 7);

-- Volcando estructura para tabla db_inventario.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.password_resets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla db_inventario.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sell_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.payments: ~11 rows (aproximadamente)
REPLACE INTO `payments` (`id`, `sell_id`, `customer_id`, `user_id`, `date`, `paid_in`, `bank_information`, `amount`, `created_at`, `updated_at`) VALUES
	(97, 1, 16, 1, '2023-11-01', 'cash', NULL, 140, '2023-11-23 15:09:13', '2023-11-23 15:09:13'),
	(98, 2, 17, 1, '2023-11-01', 'cash', NULL, 150, '2023-11-23 15:10:15', '2023-11-23 15:10:15'),
	(99, 3, 4, 1, '2023-11-02', 'cash', NULL, 200, '2023-11-23 15:11:05', '2023-11-23 15:11:05'),
	(100, 4, 10, 1, '2023-11-02', 'cash', NULL, 80, '2023-11-23 15:11:30', '2023-11-23 15:11:30'),
	(101, 5, 21, 1, '2023-11-03', 'cash', NULL, 140, '2023-11-23 15:11:54', '2023-11-23 15:11:54'),
	(102, 6, 23, 1, '2023-11-06', 'cash', NULL, 80, '2023-11-23 15:12:15', '2023-11-23 15:12:15'),
	(103, 7, 13, 1, '2023-11-07', 'cash', NULL, 440, '2023-11-23 15:12:53', '2023-11-23 15:12:53'),
	(104, 8, 20, 1, '2023-11-08', 'cash', NULL, 140, '2023-11-23 15:13:21', '2023-11-23 15:13:21'),
	(105, 9, 13, 1, '2023-11-09', 'cash', NULL, 150, '2023-11-23 15:13:39', '2023-11-23 15:13:39'),
	(106, 10, 9, 1, '2023-11-10', 'cash', NULL, 150, '2023-11-23 15:14:07', '2023-11-23 15:14:07'),
	(107, 11, 17, 1, '2023-11-11', 'cash', NULL, 140, '2023-11-23 15:14:24', '2023-11-23 15:14:24');

-- Volcando estructura para tabla db_inventario.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=754 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.permissions: ~50 rows (aproximadamente)
REPLACE INTO `permissions` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
	(1, 5, 1, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(2, 5, 2, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(3, 5, 3, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(4, 5, 4, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(5, 5, 5, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(6, 5, 6, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(7, 5, 9, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(8, 5, 8, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(9, 5, 7, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(10, 5, 10, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(11, 5, 11, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(12, 5, 12, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(13, 5, 15, '2019-02-23 05:54:16', '2019-02-23 05:54:16'),
	(14, 6, 1, '2019-02-23 08:25:01', '2019-02-23 08:25:01'),
	(15, 6, 3, '2019-02-23 08:25:01', '2019-02-23 08:25:01'),
	(16, 6, 6, '2019-02-23 08:25:01', '2019-02-23 08:25:01'),
	(17, 6, 15, '2019-02-23 08:25:01', '2019-02-23 08:25:01'),
	(18, 3, 1, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(19, 3, 9, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(20, 3, 8, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(21, 3, 7, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(22, 3, 2, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(23, 3, 10, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(24, 3, 11, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(25, 3, 3, '2020-11-17 22:03:42', '2020-11-17 22:03:42'),
	(26, 2, 1, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(27, 2, 9, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(28, 2, 8, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(29, 2, 7, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(30, 2, 2, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(31, 2, 10, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(32, 2, 11, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(33, 2, 3, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(34, 2, 12, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(35, 2, 13, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(36, 2, 4, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(37, 2, 5, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(38, 2, 14, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(39, 2, 15, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(40, 2, 6, '2021-07-06 01:00:38', '2021-07-06 01:00:38'),
	(41, 4, 1, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(42, 4, 7, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(43, 4, 8, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(44, 4, 9, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(45, 4, 2, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(46, 4, 10, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(47, 4, 11, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(48, 4, 3, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(49, 4, 15, '2023-11-16 18:28:33', '2023-11-16 18:28:33'),
	(50, 4, 6, '2023-11-16 18:28:33', '2023-11-16 18:28:33');

-- Volcando estructura para tabla db_inventario.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.products: ~55 rows (aproximadamente)
REPLACE INTO `products` (`id`, `category_id`, `product_name`, `details`, `status`, `created_at`, `updated_at`) VALUES
	(1, 12, 'TECLADO REDRAGON MITRA K551 RGB MECANICO SWITCH RED BLACK ESPAÑOL', 'DIMENSIONES: 43.5x12.3x3.7 cm, DISTRIBUCIÓN: Español Latinoamerica, RETROILUMINADO: Si, RGB Chroma', 1, '2023-11-19 13:38:25', '2023-11-19 13:38:25'),
	(2, 12, 'TECLADO REDRAGON KUMARA K552B-RGB BLACK SWITCH RED ESPAÑOL', 'TIPO SWITCH:Outemu Red, táctil con click audible, TAMAÑO:Tenkeyless (sin pad númerico)', 1, '2023-11-19 13:54:47', '2023-11-19 13:54:47'),
	(3, 2, 'MOUSE GAMER REDRAGON GRIFFIN ( M607W ) LED RGB', 'Orientación: Derecho, Interfaz: Cableado USB 2.0, DPI: 7200', 1, '2023-11-19 14:02:57', '2023-11-19 14:02:57'),
	(4, 2, 'MOUSE GAMER REDRAGON IMPACT ( M908 ) LED RGB', 'Botones Programables: 18, Orientación: Derecho, DPI: 12400', 1, '2023-11-19 14:04:17', '2023-11-19 14:04:17'),
	(5, 2, 'MOUSE GAMER REDRAGON STORM ELITE ( M988-RGB ) LED RGB', 'Botones Programables: 8, Orientación: Derecho, Interfaz: Cableado USB 3.0, DPI: 32000', 1, '2023-11-19 14:05:58', '2023-11-19 14:05:58'),
	(6, 3, 'AUDIFONO GAMER REDRAGON HYLAS ( H260RGB ) RGB', 'Conexión : 3.5 mm + USB, Rango de Sensibilidad : 117 dB, Impedancia : 16 Ohmios', 1, '2023-11-19 14:09:11', '2023-11-19 14:09:11'),
	(7, 3, 'AUDIFONO GAMER REDRAGON PANDORA ( H350RGB ) 7.1 VIRTUAL', 'Conexión: 3.5 MM + USB, Tipo de Salida: 7.1, Stereo, Rango de Sensibilidad : 96 dB', 1, '2023-11-19 14:10:31', '2023-11-19 14:10:31'),
	(8, 3, 'AUDIFONO GAMER REDRAGON IRE PRO ( H848 ) WIRELESS', 'Conexión : Wireless + USB Type-C, Rango de Sensibilidad : 115 dB, Iluminación : Sin RGB', 1, '2023-11-19 14:11:40', '2023-11-19 14:11:40'),
	(9, 4, 'CAMARA WEB REDRAGON FOBOS GW600 HD 720P USB', 'Interfaz : USB 2.0, Resolución : 720P, Cuadros por segundo : 30fps, Dimensiones : 1296 x 732', 1, '2023-11-19 14:15:27', '2023-11-19 14:15:27'),
	(10, 5, 'PAD MOUSE GAMER REDRAGON PISCES ( P016 ) M', 'Material: Tela con Caucho, Tamaño de Pad: M (330 x 260 mm), Grosor: 3 mm', 1, '2023-11-19 14:17:34', '2023-11-19 14:17:34'),
	(11, 5, 'PAD MOUSE GAMER REDRAGON FLICK ( P032 ) XL', 'Material: Tela con Caucho, Tamaño de Pad: XL (900 x 400 mm), Grosor: 4 mm', 1, '2023-11-19 14:18:58', '2023-11-19 14:18:58'),
	(12, 10, 'KIT GAMER REDRAGON (K552RGB-BA-W) LED RGB', 'Producto : Kit 2 en 1, Interfaz : USB 2.0, Iluminación : RGB, Color : Blanco', 1, '2023-11-19 14:24:34', '2023-11-19 14:24:34'),
	(13, 6, 'CASE REDRAGON SIDESWIPE PRO 3 (GC-601A) S_FUENTE', 'Fuente : Sin fuente, Iluminación : LED RGB, Ranuras de expansión: 7', 1, '2023-11-19 14:27:10', '2023-11-19 14:27:10'),
	(14, 11, 'SILLA GAMER REDRAGON METIS NEGRO_ROJO C102', 'Material: Cuerina Sintetica, Angulo de Inclinacion: 120º', 1, '2023-11-19 14:29:53', '2023-11-19 14:29:53'),
	(15, 7, 'FUENTE REDRAGON RPGS GC-PS002 600W 80 PLUS BRONZE', 'FACTOR DE FORMA:ATX, COLOR:Black, DIMENSION :160 x 150 x 86 mm (L x W x H)', 1, '2023-11-19 14:31:24', '2023-11-19 14:31:24'),
	(16, 9, 'MONITOR 19 IPS LED TEROS TE-1910S FULL HD VGA HDMI 60HZ', 'RESOLUCION MAX:1680 x 1050, TAMAÑO:19 PULG', 1, '2023-11-19 14:36:04', '2023-11-19 14:36:04'),
	(17, 9, 'MONITOR GAMING TEROS TE-2470G, 23.8" CURVO IPS, FHD, 165Hz, 1ms.', 'Resolución : 1920 x 1080, Full HD : Sí, Tamaño (pulgadas) : 23.8" , Tiempo de respuesta : 1ms', 1, '2023-11-19 14:37:53', '2023-11-19 14:37:53'),
	(18, 6, 'Case Gamer Teros TE1163N, Negro, USB 3.0, USB 2.0, Audio fan ARGB', 'PESO:5.6 KG, INCLUYE FUENTE DE PODER:NO, COLOR:NEGRO', 1, '2023-11-19 14:39:55', '2023-11-19 14:39:55'),
	(19, 14, 'DISCO DURO EXTERNO 1TB TOSHIBA CANVIO BASICS HDTB410XK3AA', NULL, 1, '2023-11-19 14:45:21', '2023-11-19 14:45:21'),
	(20, 2, 'MOUSE LOGITECH G203 BLACK LIGHTSYNC ( 910-005790 ) GAMING', 'Interfaz : USB 3.0, DPI : 8000, Velocidad de respuesta : 1 ms', 1, '2023-11-19 14:48:33', '2023-11-19 14:48:33'),
	(21, 15, 'Memoria HP V8, 8GB, DDR4, 3200 MHz, PC4-25600, 1.35V.', 'VOLTAJE:1.35V, FRECUENCIA:3200 MHZ', 1, '2023-11-19 14:52:05', '2023-11-19 14:52:05'),
	(22, 17, 'DISCO SOLIDO HP 500GB M2 NVME PCI 2280 EX900', NULL, 1, '2023-11-19 14:55:35', '2023-11-19 14:55:35'),
	(23, 16, 'DISCO SOLIDO SSD KINGSTON 480GB (SA400S37 /480G) BLISTER', NULL, 1, '2023-11-19 15:00:11', '2023-11-19 15:00:11'),
	(24, 15, 'MEMORIA RAM KINGSTON 16GB/3200 DDR4 FURY BEAST ( KF432C16BBA/16 ) NEGRO', NULL, 1, '2023-11-19 15:01:19', '2023-11-19 15:01:19'),
	(25, 17, 'DISCO SOLIDO SSD KINGSTON NV2 1TB ( SNV2S/1000G ) PCIE | NVME | GEN4', 'Velocidad de Lectura: 3500 MB / s, Velocidad de Escritura: 2100 MB / s', 1, '2023-11-19 15:02:25', '2023-11-19 15:02:25'),
	(26, 10, 'KIT CORSAIR K55 RGB PRO - HARPOON RGB PRO ( CH-9226865-SP )', 'Producto : Kit Teclado & Mouse, Iluminación : RGB, Color : Black', 1, '2023-11-19 15:03:52', '2023-11-19 15:03:52'),
	(27, 15, 'MEMORIA RAM CORSAIR 16GB/4000MHZ (2X8) DDR4', 'Velocidad del Bus : 4000 MHZ, Iluminación: RGB, Modelo : VENGEANCE RGB', 1, '2023-11-19 15:05:38', '2023-11-19 15:05:38'),
	(28, 18, 'MAINBOARD MSI B560M PRO-E ( 911-7D22-074 ) LGA 1200', 'Chipset: Intel B560, Capacidad: 64GB, Tipo de Memoria: DDR4', 1, '2023-11-19 15:08:05', '2023-11-19 15:08:05'),
	(29, 19, 'TARJETA DE VIDEO MSI GTX 1650 4GB GDDR6 D6 VENTUS XS OCV1', 'Procesador Grafico: Nvidia Geforce GTX 1650, Arquitectura T. de Vídeo: Turing, Tipo de memoria: GDDR6', 1, '2023-11-19 15:10:00', '2023-11-19 15:10:00'),
	(30, 18, 'MAINBOARD MSI B550M PRO-VDH WIFI', 'Chipset : AMD B550, Capacidad : 128GB, Tipo de Memoria: DDR4', 1, '2023-11-19 15:11:07', '2023-11-19 15:11:07'),
	(31, 7, 'FUENTE DE PODER GIGABYTE P650B (GP-P650B) 650W | BRONZE', 'Certificación: 80 PLUS BRONZE, Dimensiones: 150 x 140 x 86 mm, Modelo: P650B', 1, '2023-11-19 15:12:54', '2023-11-19 15:12:54'),
	(32, 18, 'MAINBOARD ASUS A320M K PRIME 90MB0TV0 M0EAY0 AM4', 'Chipset: A320, Socket: AM4, Tipo de Memoria: DDR4', 1, '2023-11-19 15:14:17', '2023-11-19 15:14:17'),
	(33, 18, 'MAINBOARD ASUS PRIME B560M-A (90MB17A0-M0EAY0) LGA 1200', 'Socket: LGA 1200, Chipset: B560, Capacidad: 128GB', 1, '2023-11-19 15:15:33', '2023-11-19 15:15:33'),
	(34, 19, 'TARJETA DE VIDEO ASUS GTX 1050TI 4GB DDR5', 'Procesador Grafico: Nvidia Geforce GTX 1050, Arquitectura T. de Vídeo: Pascal, Tipo de memoria: GDDR5', 1, '2023-11-19 15:16:44', '2023-11-19 15:16:44'),
	(35, 14, 'DISCO DURO HDD SEAGATE 1TB SKYHAWK', 'Producto: Disco Duro Interno, Interfaz de disco: SATA 3', 1, '2023-11-19 15:18:30', '2023-11-19 15:18:30'),
	(36, 17, 'DISCO SOLIDO SSD WESTERN DIGITAL 240GB SN350', 'Capacidad: 240GB, Velocidad de Lectura: 2400 MB / s, Factor de forma: M.2', 1, '2023-11-19 15:20:24', '2023-11-19 15:20:24'),
	(37, 16, 'DISCO SOLIDO SSD WESTERN DIGITAL 240GB SATA', 'Capacidad: 240GB, Velocidad de Lectura: 540 MB / s, Velocidad de Escritura: 430 MB / s', 1, '2023-11-19 15:21:16', '2023-11-19 15:21:16'),
	(38, 14, 'DISCO DURO HDD WESTERN DIGITAL 1TB PURPURA', 'Producto: Disco Duro Interno, Capacidad: 1TB, Interfaz de disco: SATA 3', 1, '2023-11-19 15:23:33', '2023-11-19 15:23:33'),
	(39, 20, 'PROCESADOR AMD RYZEN 5 5600G 3.9GHZ', 'Núcleos : 6, Tipo de memoria : DDR4', 1, '2023-11-19 15:26:47', '2023-11-19 15:26:47'),
	(40, 20, 'PROCESADOR AMD RYZEN 7 5700G', 'Nucleos: 8, Tipo de memoria: DDR4', 1, '2023-11-19 15:27:35', '2023-11-19 15:27:35'),
	(41, 20, 'PROCESADOR AMD RYZEN 5 3600', 'Núcleos : 6, Tipo de memoria : DDR4', 1, '2023-11-19 15:29:14', '2023-11-19 15:29:14'),
	(42, 20, 'PROCESADOR AMD RYZEN 9 3950X', 'Núcleos : 16, Tipo de memoria : DDR4', 1, '2023-11-19 15:30:12', '2023-11-19 15:30:12'),
	(43, 20, 'PROCESADOR AMD RYZEN 5 7600', 'Núcleos : 6, Tipo de memoria : DDR5', 1, '2023-11-19 15:31:40', '2023-11-19 15:31:40'),
	(44, 20, 'PROCESADOR AMD RYZEN 7 3800XT', 'Núcleos : 8, Tipo de memoria : DDR4', 1, '2023-11-19 15:33:56', '2023-11-19 15:33:56'),
	(45, 20, 'PROCESADOR AMD RYZEN 9 7900X3D', 'Núcleos : 12, Tipo de memoria : DDR5', 1, '2023-11-19 15:35:05', '2023-11-19 15:35:05'),
	(46, 20, 'PROCESADOR INTEL CORE I3-10100F', 'Núcleos : 4, Tipo de memoria : DDR4, Tipo de Zócalo: LGA 1200', 1, '2023-11-19 15:46:21', '2023-11-19 15:46:21'),
	(47, 20, 'PROCESADOR INTEL CORE I3-12100F', 'Núcleos : 4, Tipo de memoria : DDR4', 1, '2023-11-19 15:48:30', '2023-11-19 15:48:30'),
	(48, 20, 'PROCESADOR INTEL CORE I3-13100', 'Núcleos : 4', 1, '2023-11-19 15:49:42', '2023-11-19 15:49:42'),
	(49, 20, 'PROCESADOR INTEL CORE I5 10400F', 'Núcleos : 6, Tipo de memoria : DDR4', 1, '2023-11-19 15:53:30', '2023-11-19 15:53:30'),
	(50, 20, 'PROCESADOR INTEL CORE I5-11400F', 'Núcleos : 6, Tipo de memoria : DDR4', 1, '2023-11-19 15:54:53', '2023-11-19 15:54:53'),
	(51, 20, 'PROCESADOR INTEL CORE I5-13400F', 'Núcleos : 10, Velocidad : 2.50 GHZ', 1, '2023-11-19 15:56:02', '2023-11-19 15:56:02'),
	(52, 20, 'PROCESADOR INTEL CORE I5 14600KF', 'Núcleos : 14, Tipo de memoria : DDR5', 1, '2023-11-19 15:57:43', '2023-11-19 15:57:43'),
	(53, 20, 'PROCESADOR INTEL CORE I7-10700F', 'Núcleos : 8, Tipo de memoria : DDR4', 1, '2023-11-19 15:58:48', '2023-11-19 15:58:48'),
	(54, 20, 'PROCESADOR INTEL CORE I7-11700F', 'Núcleos : 8, Tipo de memoria : DDR4', 1, '2023-11-19 15:59:54', '2023-11-19 15:59:54'),
	(55, 19, 'rtx 3060', NULL, 1, '2023-11-22 13:30:04', '2023-11-22 13:30:04');

-- Volcando estructura para tabla db_inventario.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.roles: ~4 rows (aproximadamente)
REPLACE INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
	(2, 'Superadministrador', '2019-02-12 08:59:54', '2023-04-17 09:53:28'),
	(3, 'Gerente', '2019-02-13 05:07:41', '2023-04-17 09:35:56'),
	(4, 'Vendedor', '2019-02-13 06:34:11', '2023-04-17 09:36:08'),
	(5, 'Controlador', '2019-02-13 10:53:15', '2023-04-17 09:41:36');

-- Volcando estructura para tabla db_inventario.sells
CREATE TABLE IF NOT EXISTS `sells` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `total_amount` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `sell_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT '0',
  `payment_method` tinyint NOT NULL DEFAULT '0',
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.sells: ~11 rows (aproximadamente)
REPLACE INTO `sells` (`id`, `user_id`, `customer_id`, `branch_id`, `total_amount`, `paid_amount`, `sell_date`, `discount_amount`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
	(1, 1, 16, 1, 140, 140, '2023-11-01', 0, 2, 1, '2023-11-23 15:09:13', '2023-11-23 15:09:13'),
	(2, 1, 17, 1, 150, 150, '2023-11-01', 0, 2, 1, '2023-11-23 15:10:15', '2023-11-23 15:10:15'),
	(3, 1, 4, 1, 200, 200, '2023-11-02', 0, 2, 1, '2023-11-23 15:11:05', '2023-11-23 15:11:05'),
	(4, 1, 10, 1, 80, 80, '2023-11-02', 0, 2, 1, '2023-11-23 15:11:30', '2023-11-23 15:11:30'),
	(5, 1, 21, 1, 140, 140, '2023-11-03', 0, 2, 1, '2023-11-23 15:11:54', '2023-11-23 15:11:54'),
	(6, 1, 23, 1, 80, 80, '2023-11-06', 0, 2, 1, '2023-11-23 15:12:15', '2023-11-23 15:12:15'),
	(7, 1, 13, 1, 440, 440, '2023-11-07', 0, 2, 1, '2023-11-23 15:12:53', '2023-11-23 15:12:53'),
	(8, 1, 20, 1, 140, 140, '2023-11-08', 0, 2, 1, '2023-11-23 15:13:21', '2023-11-23 15:13:21'),
	(9, 1, 13, 1, 150, 150, '2023-11-09', 0, 2, 1, '2023-11-23 15:13:39', '2023-11-23 15:13:39'),
	(10, 1, 9, 1, 150, 150, '2023-11-10', 0, 2, 1, '2023-11-23 15:14:07', '2023-11-23 15:14:07'),
	(11, 1, 17, 1, 140, 140, '2023-11-11', 0, 2, 1, '2023-11-23 15:14:24', '2023-11-23 15:14:24');

-- Volcando estructura para tabla db_inventario.sell_details
CREATE TABLE IF NOT EXISTS `sell_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `sell_id` int NOT NULL,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `chalan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_quantity` int NOT NULL,
  `buy_price` double NOT NULL,
  `sold_price` double NOT NULL,
  `total_buy_price` double NOT NULL,
  `total_sold_price` double NOT NULL,
  `discount` double NOT NULL,
  `discount_type` tinyint NOT NULL,
  `discount_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.sell_details: ~12 rows (aproximadamente)
REPLACE INTO `sell_details` (`id`, `stock_id`, `sell_id`, `product_id`, `category_id`, `vendor_id`, `user_id`, `chalan_no`, `selling_date`, `customer_id`, `sold_quantity`, `buy_price`, `sold_price`, `total_buy_price`, `total_sold_price`, `discount`, `discount_type`, `discount_amount`, `created_at`, `updated_at`) VALUES
	(1, 7, 1, 9, 4, 15, 1, '2023-11-23', '2023-11-01', '16', 1, 126, 140, 126, 140, 0, 1, 0, '2023-11-23 15:09:13', '2023-11-23 15:09:13'),
	(2, 1, 2, 6, 3, 15, 1, '2023-11-23', '2023-11-01', '17', 2, 72, 80, 144, 150, 10, 1, 10, '2023-11-23 15:10:15', '2023-11-23 15:10:15'),
	(3, 5, 3, 8, 3, 15, 1, '2023-11-23', '2023-11-02', '4', 1, 192, 200, 192, 200, 0, 1, 0, '2023-11-23 15:11:05', '2023-11-23 15:11:05'),
	(4, 1, 4, 6, 3, 15, 1, '2023-11-23', '2023-11-02', '10', 1, 72, 80, 72, 80, 0, 1, 0, '2023-11-23 15:11:30', '2023-11-23 15:11:30'),
	(5, 8, 5, 9, 4, 15, 1, '2023-11-23', '2023-11-03', '21', 1, 126, 140, 126, 140, 0, 1, 0, '2023-11-23 15:11:54', '2023-11-23 15:11:54'),
	(6, 1, 6, 6, 3, 15, 1, '2023-11-23', '2023-11-06', '23', 1, 72, 80, 72, 80, 0, 1, 0, '2023-11-23 15:12:15', '2023-11-23 15:12:15'),
	(7, 3, 7, 7, 3, 15, 1, '2023-11-23', '2023-11-07', '13', 2, 142, 150, 284, 300, 0, 1, 0, '2023-11-23 15:12:53', '2023-11-23 15:12:53'),
	(8, 8, 7, 9, 4, 15, 1, '2023-11-23', '2023-11-07', '13', 1, 126, 140, 126, 140, 0, 1, 0, '2023-11-23 15:12:53', '2023-11-23 15:12:53'),
	(9, 7, 8, 9, 4, 15, 1, '2023-11-23', '2023-11-08', '20', 1, 126, 140, 126, 140, 0, 1, 0, '2023-11-23 15:13:21', '2023-11-23 15:13:21'),
	(10, 3, 9, 7, 3, 15, 1, '2023-11-23', '2023-11-09', '13', 1, 142, 150, 142, 150, 0, 1, 0, '2023-11-23 15:13:39', '2023-11-23 15:13:39'),
	(11, 4, 10, 7, 3, 15, 1, '2023-11-23', '2023-11-10', '9', 1, 142, 150, 142, 150, 0, 1, 0, '2023-11-23 15:14:07', '2023-11-23 15:14:07'),
	(12, 8, 11, 9, 4, 15, 1, '2023-11-23', '2023-11-11', '17', 1, 126, 140, 126, 140, 0, 1, 0, '2023-11-23 15:14:24', '2023-11-23 15:14:24');

-- Volcando estructura para tabla db_inventario.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `user_id` int NOT NULL,
  `chalan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `stock_quantity` int NOT NULL,
  `current_quantity` int NOT NULL DEFAULT '0',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.stocks: ~107 rows (aproximadamente)
REPLACE INTO `stocks` (`id`, `product_code`, `product_id`, `category_id`, `vendor_id`, `user_id`, `chalan_no`, `buying_price`, `selling_price`, `discount`, `stock_quantity`, `current_quantity`, `note`, `status`, `created_at`, `updated_at`, `location`) VALUES
	(1, '1700750964', 6, 3, 15, 1, '2023-11-23', 72, 80, 0, 6, 2, NULL, 1, '2023-11-23 13:49:24', '2023-11-23 15:12:15', 'A-1-2'),
	(2, '1700751038', 6, 3, 15, 1, '2023-11-23', 72, 80, 0, 6, 6, NULL, 1, '2023-11-23 13:50:38', '2023-11-23 13:50:38', 'B-1-2'),
	(3, '1700751104', 7, 3, 15, 1, '2023-11-23', 142, 150, 0, 6, 3, NULL, 1, '2023-11-23 13:51:44', '2023-11-23 15:13:39', 'A-1-2'),
	(4, '1700751131', 7, 3, 15, 1, '2023-11-23', 142, 150, 0, 7, 6, NULL, 1, '2023-11-23 13:52:11', '2023-11-23 15:14:07', 'B-1-2'),
	(5, '1700751164', 8, 3, 15, 1, '2023-11-23', 192, 200, 0, 4, 3, NULL, 1, '2023-11-23 13:52:44', '2023-11-23 15:11:05', 'A-1-2'),
	(6, '1700751198', 8, 3, 15, 1, '2023-11-23', 192, 200, 0, 2, 2, NULL, 1, '2023-11-23 13:53:18', '2023-11-23 13:53:18', 'B-1-2'),
	(7, '1700751245', 9, 4, 15, 1, '2023-11-23', 126, 140, 0, 2, 0, NULL, 1, '2023-11-23 13:54:05', '2023-11-23 15:13:21', 'A-1-3'),
	(8, '1700751271', 9, 4, 15, 1, '2023-11-23', 126, 140, 0, 3, 0, NULL, 1, '2023-11-23 13:54:31', '2023-11-23 15:14:24', 'B-1-3'),
	(9, '1700751352', 1, 12, 15, 1, '2023-11-23', 200, 210, 0, 3, 3, NULL, 1, '2023-11-23 13:55:52', '2023-11-23 13:56:20', 'A-1-1'),
	(10, '1700751380', 1, 12, 15, 1, '2023-11-23', 200, 210, 0, 4, 4, NULL, 1, '2023-11-23 13:56:20', '2023-11-23 13:56:20', 'B-1-1'),
	(11, '1700751407', 2, 12, 15, 1, '2023-11-23', 180, 190, 0, 6, 6, NULL, 1, '2023-11-23 13:56:47', '2023-11-23 13:58:05', 'A-1-1'),
	(12, '1700751485', 2, 12, 15, 1, '2023-11-23', 180, 190, 0, 7, 7, NULL, 1, '2023-11-23 13:58:05', '2023-11-23 13:58:05', 'B-1-1'),
	(13, '1701822829', 13, 6, 15, 1, '2023-12-05', 159, 170, 0, 2, 2, NULL, 1, '2023-12-05 23:33:49', '2023-12-05 23:34:30', 'A-1-4'),
	(14, '1701822870', 13, 6, 15, 1, '2023-12-05', 159, 170, 0, 2, 2, NULL, 1, '2023-12-05 23:34:30', '2023-12-05 23:34:30', 'B-1-4'),
	(15, '1701822900', 18, 6, 14, 1, '2023-12-05', 254, 266, 0, 4, 4, NULL, 1, '2023-12-05 23:35:00', '2023-12-05 23:35:23', 'A-1-4'),
	(16, '1701822923', 18, 6, 14, 1, '2023-12-05', 254, 266, 0, 2, 2, NULL, 1, '2023-12-05 23:35:23', '2023-12-05 23:35:23', 'B-2-1'),
	(17, '1701822967', 12, 10, 15, 1, '2023-12-05', 199, 220, 0, 5, 5, NULL, 1, '2023-12-05 23:36:07', '2023-12-05 23:36:29', 'A-1-3'),
	(18, '1701822989', 12, 10, 15, 1, '2023-12-05', 199, 220, 0, 5, 5, NULL, 1, '2023-12-05 23:36:29', '2023-12-05 23:36:29', 'B-1-3'),
	(19, '1701823018', 26, 10, 8, 1, '2023-12-05', 257, 285, 0, 2, 2, NULL, 1, '2023-12-05 23:36:58', '2023-12-05 23:37:27', 'A-2-2'),
	(20, '1701823047', 26, 10, 8, 1, '2023-12-05', 257, 285, 0, 4, 4, NULL, 1, '2023-12-05 23:37:27', '2023-12-05 23:37:27', 'B-2-2'),
	(21, '1701823525', 19, 14, 4, 1, '2023-12-05', 204, 220, 0, 5, 5, NULL, 1, '2023-12-05 23:45:25', '2023-12-05 23:50:01', 'A-2-4'),
	(22, '1701823586', 35, 14, 4, 1, '2023-12-05', 204, 223, 0, 5, 5, NULL, 1, '2023-12-05 23:46:26', '2023-12-05 23:47:07', 'A-2-4'),
	(23, '1701823627', 35, 14, 4, 1, '2023-12-05', 204, 223, 0, 7, 7, NULL, 1, '2023-12-05 23:47:07', '2023-12-05 23:47:07', 'B-3-1'),
	(24, '1701823655', 38, 14, 3, 1, '2023-12-05', 194, 126, 0, 6, 6, NULL, 1, '2023-12-05 23:47:35', '2023-12-05 23:48:00', 'A-3-1'),
	(25, '1701823680', 38, 14, 3, 1, '2023-12-05', 194, 126, 0, 6, 6, NULL, 1, '2023-12-05 23:48:00', '2023-12-05 23:48:00', 'B-3-1'),
	(26, '1701823777', 19, 14, 13, 1, '2023-12-05', 194, 220, 0, 1, 1, NULL, 1, '2023-12-05 23:49:37', '2023-12-05 23:50:01', 'A-2-1'),
	(27, '1701823801', 19, 14, 13, 1, '2023-12-05', 194, 220, 0, 5, 5, NULL, 1, '2023-12-05 23:50:01', '2023-12-05 23:50:01', 'B-2-1'),
	(28, '1701823900', 23, 16, 9, 1, '2023-12-05', 122, 135, 0, 2, 2, NULL, 1, '2023-12-05 23:51:40', '2023-12-05 23:52:11', 'A-2-1'),
	(29, '1701823931', 23, 16, 9, 1, '2023-12-05', 122, 135, 0, 1, 1, NULL, 1, '2023-12-05 23:52:11', '2023-12-05 23:52:11', 'B-2-1'),
	(30, '1701823995', 37, 16, 3, 1, '2023-12-05', 74, 90, 0, 2, 2, NULL, 1, '2023-12-05 23:53:15', '2023-12-05 23:53:41', 'A-3-1'),
	(31, '1701824021', 37, 16, 3, 1, '2023-12-05', 74, 90, 0, 5, 5, NULL, 1, '2023-12-05 23:53:41', '2023-12-05 23:53:41', 'B-3-1'),
	(32, '1701824067', 15, 7, 15, 1, '2023-12-05', 238, 250, 0, 5, 5, NULL, 1, '2023-12-05 23:54:27', '2023-12-05 23:54:58', 'A-1-4'),
	(33, '1701824098', 15, 7, 15, 1, '2023-12-05', 238, 250, 0, 5, 5, NULL, 1, '2023-12-05 23:54:58', '2023-12-05 23:54:58', 'B-1-4'),
	(34, '1701824129', 31, 7, 6, 1, '2023-12-05', 247, 265, 0, 4, 4, NULL, 1, '2023-12-05 23:55:29', '2023-12-05 23:55:48', 'A-2-3'),
	(35, '1701824148', 31, 7, 6, 1, '2023-12-05', 247, 265, 0, 7, 7, NULL, 1, '2023-12-05 23:55:48', '2023-12-05 23:55:48', 'B-2-3'),
	(36, '1701824239', 22, 17, 11, 1, '2023-12-05', 127, 140, 0, 6, 6, NULL, 1, '2023-12-05 23:57:19', '2023-12-05 23:59:37', 'A-2-1'),
	(37, '1701824278', 25, 17, 9, 1, '2023-12-05', 204, 220, 0, 3, 3, NULL, 1, '2023-12-05 23:57:58', '2023-12-06 00:00:08', 'A-2-2'),
	(38, '1701824336', 36, 17, 3, 1, '2023-12-05', 90, 100, 0, 5, 5, NULL, 1, '2023-12-05 23:58:56', '2023-12-06 00:00:35', 'A-3-1'),
	(39, '1701824377', 22, 17, 11, 1, '2023-12-05', 127, 140, 0, 7, 7, NULL, 1, '2023-12-05 23:59:37', '2023-12-05 23:59:37', 'B-2-1'),
	(40, '1701824408', 25, 17, 9, 1, '2023-12-05', 204, 220, 0, 1, 1, NULL, 1, '2023-12-06 00:00:08', '2023-12-06 00:00:08', 'B-2-2'),
	(41, '1701824435', 36, 17, 3, 1, '2023-12-05', 90, 100, 0, 1, 1, NULL, 1, '2023-12-06 00:00:35', '2023-12-06 00:00:35', 'B-3-1'),
	(42, '1701824474', 16, 9, 14, 1, '2023-12-05', 188, 200, 0, 5, 5, NULL, 1, '2023-12-06 00:01:14', '2023-12-06 00:01:43', 'A-1-4'),
	(43, '1701824503', 16, 9, 14, 1, '2023-12-05', 188, 200, 0, 5, 5, NULL, 1, '2023-12-06 00:01:43', '2023-12-06 00:01:43', 'B-1-4'),
	(44, '1701824528', 17, 9, 14, 1, '2023-12-05', 410, 430, 0, 3, 3, NULL, 1, '2023-12-06 00:02:08', '2023-12-06 00:02:35', 'A-1-4'),
	(45, '1701824555', 17, 9, 14, 1, '2023-12-05', 410, 430, 0, 5, 5, NULL, 1, '2023-12-06 00:02:35', '2023-12-06 00:02:35', 'B-1-4'),
	(46, '1701824634', 3, 2, 15, 1, '2023-12-05', 53, 65, 0, 1, 1, NULL, 1, '2023-12-06 00:03:54', '2023-12-06 00:06:12', 'A-1-1'),
	(47, '1701824665', 4, 2, 15, 1, '2023-12-05', 116, 130, 0, 2, 2, NULL, 1, '2023-12-06 00:04:25', '2023-12-06 00:06:38', 'A-1-1'),
	(48, '1701824699', 5, 2, 15, 1, '2023-12-05', 124, 150, 0, 3, 3, NULL, 1, '2023-12-06 00:04:59', '2023-12-06 00:07:06', 'A-1-1'),
	(49, '1701824738', 20, 2, 12, 1, '2023-12-05', 110, 118, 0, 5, 5, NULL, 1, '2023-12-06 00:05:38', '2023-12-06 00:07:39', 'A-2-1'),
	(50, '1701824772', 3, 2, 15, 1, '2023-12-05', 53, 65, 0, 1, 1, NULL, 1, '2023-12-06 00:06:12', '2023-12-06 00:06:12', 'B-1-1'),
	(51, '1701824798', 4, 2, 15, 1, '2023-12-05', 116, 130, 0, 6, 6, NULL, 1, '2023-12-06 00:06:38', '2023-12-06 00:06:38', 'B-1-1'),
	(52, '1701824826', 5, 2, 15, 1, '2023-12-05', 124, 150, 0, 4, 4, NULL, 1, '2023-12-06 00:07:06', '2023-12-06 00:07:06', 'B-1-2'),
	(53, '1701824859', 20, 2, 12, 1, '2023-12-05', 110, 118, 0, 3, 3, NULL, 1, '2023-12-06 00:07:39', '2023-12-06 00:07:39', 'B-2-1'),
	(54, '1701824900', 10, 5, 15, 1, '2023-12-05', 13, 20, 0, 7, 7, NULL, 1, '2023-12-06 00:08:20', '2023-12-06 00:09:25', 'A-1-3'),
	(55, '1701824930', 11, 5, 15, 1, '2023-12-05', 64, 77, 0, 3, 3, NULL, 1, '2023-12-06 00:08:50', '2023-12-06 00:09:49', 'A-1-3'),
	(56, '1701824965', 10, 5, 15, 1, '2023-12-05', 13, 20, 0, 6, 6, NULL, 1, '2023-12-06 00:09:25', '2023-12-06 00:09:25', 'B-1-3'),
	(57, '1701824989', 11, 5, 15, 1, '2023-12-05', 64, 77, 0, 6, 6, NULL, 1, '2023-12-06 00:09:49', '2023-12-06 00:09:49', 'B-1-3'),
	(58, '1701825045', 39, 20, 2, 1, '2023-12-05', 586, 620, 0, 2, 2, NULL, 1, '2023-12-06 00:10:45', '2023-12-06 00:22:25', 'A-3-1'),
	(59, '1701825076', 40, 20, 2, 1, '2023-12-05', 816, 850, 0, 3, 3, NULL, 1, '2023-12-06 00:11:16', '2023-12-06 00:22:57', 'A-3-1'),
	(60, '1701825113', 41, 20, 2, 1, '2023-12-05', 631, 665, 0, 3, 3, NULL, 1, '2023-12-06 00:11:53', '2023-12-06 00:23:36', 'A-3-2'),
	(61, '1701825153', 42, 20, 2, 1, '2023-12-05', 1577, 1611, 0, 3, 3, NULL, 1, '2023-12-06 00:12:33', '2023-12-06 00:24:09', 'A-3-2'),
	(62, '1701825191', 43, 20, 2, 1, '2023-12-05', 943, 977, 0, 3, 3, NULL, 1, '2023-12-06 00:13:11', '2023-12-06 00:24:44', 'A-3-2'),
	(63, '1701825243', 44, 20, 2, 1, '2023-12-05', 1266, 1300, 0, 4, 4, NULL, 1, '2023-12-06 00:14:03', '2023-12-06 00:25:25', 'A-3-2'),
	(64, '1701825287', 45, 20, 2, 1, '2023-12-05', 2786, 2820, 0, 3, 3, NULL, 1, '2023-12-06 00:14:47', '2023-12-06 00:26:08', 'A-3-2'),
	(65, '1701825341', 46, 20, 1, 1, '2023-12-05', 247, 281, 0, 2, 2, NULL, 1, '2023-12-06 00:15:41', '2023-12-06 00:26:44', 'A-3-2'),
	(66, '1701825370', 47, 20, 1, 1, '2023-12-05', 355, 389, 0, 1, 1, NULL, 1, '2023-12-06 00:16:10', '2023-12-06 00:27:18', 'A-3-2'),
	(67, '1701825411', 48, 20, 1, 1, '2023-12-05', 600, 634, 0, 1, 1, NULL, 1, '2023-12-06 00:16:51', '2023-12-06 00:28:00', 'A-3-3'),
	(68, '1701825484', 49, 20, 1, 1, '2023-12-05', 435, 469, 0, 4, 4, NULL, 1, '2023-12-06 00:18:04', '2023-12-06 00:28:42', 'A-3-3'),
	(69, '1701825532', 50, 20, 1, 1, '2023-12-05', 536, 570, 0, 2, 2, NULL, 1, '2023-12-06 00:18:52', '2023-12-06 00:29:25', 'A-3-3'),
	(70, '1701825569', 51, 20, 1, 1, '2023-12-05', 945, 979, 0, 6, 6, NULL, 1, '2023-12-06 00:19:29', '2023-12-06 00:30:00', 'A-3-3'),
	(71, '1701825614', 52, 20, 1, 1, '2023-12-05', 1471, 1505, 0, 1, 1, NULL, 1, '2023-12-06 00:20:14', '2023-12-06 00:30:32', 'A-3-3'),
	(72, '1701825651', 53, 20, 1, 1, '2023-12-05', 875, 909, 0, 1, 1, NULL, 1, '2023-12-06 00:20:51', '2023-12-06 00:31:02', 'A-3-3'),
	(73, '1701825685', 54, 20, 1, 1, '2023-12-05', 902, 936, 0, 5, 5, NULL, 1, '2023-12-06 00:21:25', '2023-12-06 00:31:34', 'A-3-3'),
	(74, '1701825745', 39, 20, 2, 1, '2023-12-05', 586, 620, 0, 4, 4, NULL, 1, '2023-12-06 00:22:25', '2023-12-06 00:22:25', 'B-3-2'),
	(75, '1701825777', 40, 20, 2, 1, '2023-12-05', 816, 850, 0, 3, 3, NULL, 1, '2023-12-06 00:22:57', '2023-12-06 00:22:57', 'B-3-2'),
	(76, '1701825816', 41, 20, 2, 1, '2023-12-05', 631, 665, 0, 1, 1, NULL, 1, '2023-12-06 00:23:36', '2023-12-06 00:23:36', 'B-3-2'),
	(77, '1701825849', 42, 20, 2, 1, '2023-12-05', 1577, 1611, 0, 7, 7, NULL, 1, '2023-12-06 00:24:09', '2023-12-06 00:24:09', 'B-3-2'),
	(78, '1701825884', 43, 20, 2, 1, '2023-12-05', 943, 977, 0, 2, 2, NULL, 1, '2023-12-06 00:24:44', '2023-12-06 00:24:44', 'B-3-2'),
	(79, '1701825925', 44, 20, 2, 1, '2023-12-05', 1266, 1300, 0, 7, 7, NULL, 1, '2023-12-06 00:25:25', '2023-12-06 00:25:25', 'B-3-3'),
	(80, '1701825968', 45, 20, 2, 1, '2023-12-05', 2786, 2820, 0, 4, 4, NULL, 1, '2023-12-06 00:26:08', '2023-12-06 00:26:08', 'B-3-3'),
	(81, '1701826004', 46, 20, 1, 1, '2023-12-05', 247, 281, 0, -1, -1, NULL, 1, '2023-12-06 00:26:44', '2023-12-06 00:26:44', 'B-3-3'),
	(82, '1701826038', 47, 20, 1, 1, '2023-12-05', 355, 389, 0, 2, 2, NULL, 1, '2023-12-06 00:27:18', '2023-12-06 00:27:18', 'B-3-3'),
	(83, '1701826080', 48, 20, 1, 1, '2023-12-05', 600, 634, 0, 1, 1, NULL, 1, '2023-12-06 00:28:00', '2023-12-06 00:28:00', 'B-3-3'),
	(84, '1701826122', 49, 20, 1, 1, '2023-12-05', 435, 469, 0, 3, 3, NULL, 1, '2023-12-06 00:28:42', '2023-12-06 00:28:42', 'B-3-3'),
	(85, '1701826165', 50, 20, 1, 1, '2023-12-05', 536, 570, 0, 6, 6, NULL, 1, '2023-12-06 00:29:25', '2023-12-06 00:29:25', 'B-3-4'),
	(86, '1701826200', 51, 20, 1, 1, '2023-12-05', 945, 979, 0, 0, 0, NULL, 1, '2023-12-06 00:30:00', '2023-12-06 00:30:00', 'B-3-4'),
	(87, '1701826232', 52, 20, 1, 1, '2023-12-05', 1471, 1505, 0, 1, 1, NULL, 1, '2023-12-06 00:30:32', '2023-12-06 00:30:32', 'B-3-4'),
	(88, '1701826262', 53, 20, 1, 1, '2023-12-05', 875, 909, 0, 3, 3, NULL, 1, '2023-12-06 00:31:02', '2023-12-06 00:31:02', 'B-3-4'),
	(89, '1701826294', 54, 20, 1, 1, '2023-12-05', 902, 936, 0, 6, 6, NULL, 1, '2023-12-06 00:31:34', '2023-12-06 00:31:34', 'B-3-4'),
	(90, '1701826380', 21, 15, 11, 1, '2023-12-05', 91, 111, 0, 4, 4, NULL, 1, '2023-12-06 00:33:00', '2023-12-06 00:33:37', 'A-2-1'),
	(91, '1701826417', 21, 15, 11, 1, '2023-12-05', 91, 111, 0, 2, 2, NULL, 1, '2023-12-06 00:33:37', '2023-12-06 00:33:37', 'B-2-1'),
	(92, '1701826455', 24, 15, 9, 1, '2023-12-05', 187, 200, 0, 5, 5, NULL, 1, '2023-12-06 00:34:15', '2023-12-06 00:34:50', 'A-2-2'),
	(93, '1701826490', 24, 15, 9, 1, '2023-12-05', 187, 200, 0, 5, 5, NULL, 1, '2023-12-06 00:34:50', '2023-12-06 00:34:50', 'B-2-2'),
	(94, '1701826519', 27, 15, 8, 1, '2023-12-05', 425, 450, 0, 7, 7, NULL, 1, '2023-12-06 00:35:19', '2023-12-06 00:35:48', 'A-2-2'),
	(95, '1701826548', 27, 15, 8, 1, '2023-12-05', 425, 450, 0, 3, 3, NULL, 1, '2023-12-06 00:35:48', '2023-12-06 00:35:48', 'B-2-2'),
	(96, '1701826681', 29, 19, 7, 1, '2023-12-05', 796, 816, 0, 1, 1, NULL, 1, '2023-12-06 00:38:01', '2023-12-06 00:38:43', 'A-2-3'),
	(97, '1701826723', 29, 19, 7, 1, '2023-12-05', 796, 816, 0, 7, 7, NULL, 1, '2023-12-06 00:38:43', '2023-12-06 00:38:43', 'B-2-3'),
	(98, '1701826759', 34, 19, 5, 1, '2023-12-05', 812, 827, 0, 4, 4, NULL, 1, '2023-12-06 00:39:19', '2023-12-06 00:40:19', 'A-2-4'),
	(99, '1701826819', 34, 19, 5, 1, '2023-12-05', 812, 827, 0, 7, 7, NULL, 1, '2023-12-06 00:40:19', '2023-12-06 00:40:19', 'B-2-4'),
	(100, '1701826895', 28, 18, 7, 1, '2023-12-05', 272, 292, 0, 7, 7, NULL, 1, '2023-12-06 00:41:35', '2023-12-06 00:44:14', 'A-2-3'),
	(101, '1701826927', 30, 18, 7, 1, '2023-12-05', 380, 400, 0, 6, 6, NULL, 1, '2023-12-06 00:42:07', '2023-12-06 00:44:54', 'A-2-3'),
	(102, '1701826967', 32, 18, 5, 1, '2023-12-05', 240, 255, 0, 2, 2, NULL, 1, '2023-12-06 00:42:47', '2023-12-06 00:45:34', 'A-2-4'),
	(103, '1701827001', 33, 18, 5, 1, '2023-12-05', 393, 408, 0, 4, 4, NULL, 1, '2023-12-06 00:43:21', '2023-12-06 00:45:56', 'A-2-4'),
	(104, '1701827054', 28, 18, 7, 1, '2023-12-05', 272, 292, 0, 6, 6, NULL, 1, '2023-12-06 00:44:14', '2023-12-06 00:44:14', 'B-2-2'),
	(105, '1701827094', 30, 18, 7, 1, '2023-12-05', 380, 400, 0, 4, 4, NULL, 1, '2023-12-06 00:44:54', '2023-12-06 00:44:54', 'B-2-3'),
	(106, '1701827134', 32, 18, 5, 1, '2023-12-05', 240, 255, 0, 4, 4, NULL, 1, '2023-12-06 00:45:34', '2023-12-06 00:45:34', 'B-2-4'),
	(107, '1701827156', 33, 18, 5, 1, '2023-12-05', 393, 408, 0, 1, 1, NULL, 1, '2023-12-06 00:45:56', '2023-12-06 00:45:56', 'B-2-4');

-- Volcando estructura para tabla db_inventario.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int NOT NULL DEFAULT '1',
  `role_id` int NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.users: ~2 rows (aproximadamente)
REPLACE INTO `users` (`id`, `name`, `email`, `password`, `branch_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Alexandro Anco Díaz', 'ursa801@gmail.com', '$2y$10$W/nqTuN0X.JaGtGBkpw01OTSL0I3aShYL9QusP8Q5kIZ2AviqQHKC', 1, 2, 'ZUZO1jm88yJLwwulxaC3YKTGMNjPV6SjvVhTyPwBS4pOcoJbyzfdIjrQHDZ7', '2020-07-31 22:27:25', '2023-04-17 10:20:18'),
	(2, 'vendor1', 'vendedor@gmail.com', '$2y$10$W92UJga1qAhW7M/RAAYrB.RpS.NPKZn9zZuEpFByM6QT5fGRbOvH6', 1, 4, 'QF2KbSfenknBFKj0DhaN7XVb4zKFnc6pz1Cxgk0pgEMrT2qRaTTbdrsXf16j', '2023-11-16 18:27:22', '2023-11-16 18:27:22');

-- Volcando estructura para tabla db_inventario.vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_inventario.vendors: ~14 rows (aproximadamente)
REPLACE INTO `vendors` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
	(1, 'INTEL', '(800) 298-0146', NULL, NULL, '2023-11-18 16:51:47', '2023-11-18 16:51:47'),
	(2, 'AMD', '0800-54777', NULL, NULL, '2023-11-18 16:53:36', '2023-11-18 16:53:36'),
	(3, 'Western Digital', '0800-54003', NULL, NULL, '2023-11-18 16:54:11', '2023-11-18 16:54:11'),
	(4, 'Seagate', '987654321', NULL, NULL, '2023-11-18 16:55:54', '2023-11-19 15:17:04'),
	(5, 'ASUS', '0800-007-93', NULL, NULL, '2023-11-18 16:56:23', '2023-11-18 16:56:23'),
	(6, 'Gigabyte', '+1-626-854-9338', NULL, NULL, '2023-11-18 16:57:18', '2023-11-18 16:57:18'),
	(7, 'MSI', '55-3687-7246', NULL, NULL, '2023-11-18 16:58:10', '2023-11-18 16:58:10'),
	(8, 'Corsair', '00800-700-22700', NULL, NULL, '2023-11-18 17:00:40', '2023-11-18 17:00:40'),
	(9, 'Kingston', '+56800914881', NULL, NULL, '2023-11-18 17:02:00', '2023-11-19 14:58:47'),
	(11, 'HP', '7071481', 'servicio-online@hp.com', NULL, '2023-11-18 17:03:57', '2023-11-18 17:03:57'),
	(12, 'Logitech', '+1 510-795-8500', NULL, NULL, '2023-11-18 17:04:48', '2023-11-18 17:04:48'),
	(13, 'Toshiba', '912182300', NULL, NULL, '2023-11-18 17:06:23', '2023-11-18 17:06:23'),
	(14, 'Teros', '415-0128', NULL, NULL, '2023-11-18 17:06:55', '2023-11-18 17:06:55'),
	(15, 'Redragon', '986532741', NULL, NULL, '2023-11-18 17:11:29', '2023-11-18 17:11:29');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
