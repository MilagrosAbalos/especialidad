-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 09:37:25
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
-- Base de datos: `academia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_alumnos` int(11) NOT NULL,
  `Nombre_alumnos` varchar(30) NOT NULL,
  `Apellido_alumnos` varchar(30) NOT NULL,
  `DNI_alumnos` int(8) NOT NULL,
  `FecNac_alumnos` date NOT NULL,
  `Tutor_alumnos` varchar(30) NOT NULL,
  `Calle_alumnos` varchar(30) NOT NULL,
  `Numero_alumnos` int(4) NOT NULL,
  `Telefono_alumnos` int(10) NOT NULL,
  `Email_alumnos` varchar(30) NOT NULL,
  `DISCIPLINA_ALUMNOS` int(11) NOT NULL,
  `PAGO_ALUMNOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Id_alumnos`, `Nombre_alumnos`, `Apellido_alumnos`, `DNI_alumnos`, `FecNac_alumnos`, `Tutor_alumnos`, `Calle_alumnos`, `Numero_alumnos`, `Telefono_alumnos`, `Email_alumnos`, `DISCIPLINA_ALUMNOS`, `PAGO_ALUMNOS`) VALUES
(1, 'Martina ', 'Alvarez', 48670584, '2008-12-11', 'María Cuello', 'Río del Cajón', 4852, 2147483647, 'martina08@gmail.com', 10, 1),
(2, 'Julieta', 'Martinez', 49236874, '2009-05-14', 'Silvia Martinez', 'Río Negro', 1049, 2147483647, 'silviamart@hotmail.com', 7, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disciplinas`
--

CREATE TABLE `disciplinas` (
  `Id_disciplinas` int(11) NOT NULL,
  `Nombre_disciplinas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `disciplinas`
--

INSERT INTO `disciplinas` (`Id_disciplinas`, `Nombre_disciplinas`) VALUES
(1, 'Árabe Juvenil'),
(2, 'Bachata Infantil'),
(3, 'Bachata Juvenil'),
(4, 'Clásico Infantil'),
(5, 'Clásico Juvenil'),
(6, 'Jazz Infantil '),
(7, 'Jazz Intermedio'),
(8, 'Jazz Avanzado'),
(9, 'Reggaetón Infantil'),
(10, 'Reggaetón Intermedio'),
(11, 'Reggaetón Avanzado'),
(12, 'Street Dance Infantil'),
(13, 'Street Dance Juvenil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `Id_pagos` int(11) NOT NULL,
  `Nombre_pagos` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`Id_pagos`, `Nombre_pagos`) VALUES
(1, 'Efectivo'),
(2, 'Transferencia'),
(3, 'Débito'),
(4, 'Crédito');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_alumnos`);

--
-- Indices de la tabla `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`Id_disciplinas`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Id_pagos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_alumnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `Id_disciplinas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `Id_pagos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
