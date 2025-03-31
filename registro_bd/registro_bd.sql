-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-03-2025 a las 05:46:19
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_usuarios`
--

DROP TABLE IF EXISTS `registro_usuarios`;
CREATE TABLE IF NOT EXISTS `registro_usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(255) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo_electronico` varchar(255) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `contraseña` varchar(255) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `registro_usuarios`
--

INSERT INTO `registro_usuarios` (`id`, `nombre_completo`, `fecha_nacimiento`, `correo_electronico`, `contraseña`, `fecha_registro`) VALUES
(1, 'william', '2025-02-26', 'wc9293108@gmail.com', '1231', '2025-03-30 23:20:51'),
(2, 'jenny rivera', '1999-12-31', 'jenni@gmail.com', 'ajajay', '2025-03-30 23:24:51'),
(3, 'carlos chaves olvera', '2001-10-11', 'charls@gmail.com', 'dede', '2025-03-30 23:26:23'),
(4, 'saul barragan', '1990-01-01', 'barrragan@gmail.com', 'dwsax', '2025-03-30 23:27:49'),
(5, 'antonio alberto', '2025-02-28', 'toni@gmail.com', '490534', '2025-03-30 23:29:43'),
(6, 'manuel mendoza', '2003-05-04', 'manue@gmail.com', 'gjhtv', '2025-03-30 23:32:12'),
(7, 'jesus nava', '2005-03-21', 'nava@gmail.com', 'wedwef', '2025-03-30 23:32:55'),
(8, 'alan acosta', '2014-02-01', 'alan@gmail.com', 'lololo', '2025-03-30 23:33:28'),
(9, 'dandy hats', '2000-01-01', 'dandys@gmail.com', 'hAAAAAT', '2025-03-30 23:34:12'),
(10, 'jesus rocha', '2020-11-11', 'rocha@gmail.com', 'cochiii', '2025-03-30 23:35:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
