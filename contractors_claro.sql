-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2021 a las 03:25:04
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contractors_claro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `allocation`
--

CREATE TABLE `allocation` (
  `id` int(11) NOT NULL,
  `id_Dealer` int(100) NOT NULL,
  `id_Coordinator` int(100) NOT NULL,
  `Estate` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `allocation`
--

INSERT INTO `allocation` (`id`, `id_Dealer`, `id_Coordinator`, `Estate`) VALUES
(1, 1, 1, 'ok'),
(2, 2, 3, 'ok'),
(3, 3, 4, 'ok'),
(4, 4, 5, 'ok'),
(5, 5, 6, 'ok');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissions`
--

CREATE TABLE `commissions` (
  `id` int(11) NOT NULL,
  `Model_pay` varchar(10) NOT NULL,
  `Periodicity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `commissions`
--

INSERT INTO `commissions` (`id`, `Model_pay`, `Periodicity`) VALUES
(1, 'Transfer', 'Weekly'),
(2, 'Efecty', 'Diary'),
(3, 'Check', 'Monthly'),
(4, 'Transfer', 'Diary'),
(5, 'Efecty', 'Monthly');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinator`
--

CREATE TABLE `coordinator` (
  `id` int(11) NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Identification` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coordinator`
--

INSERT INTO `coordinator` (`id`, `Name`, `Identification`) VALUES
(1, 'Alejandro Vega', 10100),
(2, 'Jimena Vilegas', 10101),
(3, 'sandra valencia', 10102),
(4, 'claudia alarcon', 10103),
(5, 'ricardo aguirre', 10104);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Nit` int(10) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dealers`
--

INSERT INTO `dealers` (`id`, `Name`, `Nit`, `City`, `Category`) VALUES
(1, 'Artecom', 900000001, 'Manizales', 'oro'),
(3, 'MundoMovil', 900000002, 'Manzanarez', 'oro'),
(4, 'Comnorte', 900000003, 'Aranzazu', 'platino'),
(5, 'Cellpeople', 900000004, 'Manizales', 'plata'),
(6, 'Galcom', 900000005, 'Pereira', 'Bronce');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regional`
--

CREATE TABLE `regional` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regional`
--

INSERT INTO `regional` (`id`, `Name`) VALUES
(1, 'eje_cafetero'),
(2, 'costa'),
(3, 'santanderes'),
(4, 'centro'),
(5, 'sur');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `allocation`
--
ALTER TABLE `allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regional`
--
ALTER TABLE `regional`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `allocation`
--
ALTER TABLE `allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `regional`
--
ALTER TABLE `regional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
