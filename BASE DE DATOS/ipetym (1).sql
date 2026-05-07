-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2026 a las 05:01:27
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
-- Base de datos: `ipetym`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_Alumnos` int(11) NOT NULL,
  `Apellido_Alumnos` varchar(30) NOT NULL,
  `Nombre_Alumnos` varchar(30) NOT NULL,
  `Documento_Alumnos` int(8) NOT NULL,
  `FecNac_Alumnos` date NOT NULL,
  `GENERO_ALUMNOS` int(11) NOT NULL,
  `Telefono_Alumnos` bigint(20) NOT NULL,
  `Email_Alumnos` varchar(30) NOT NULL,
  `Calle_Alumnos` varchar(30) NOT NULL,
  `Numero_Alumnos` int(11) NOT NULL,
  `Piso_Alumnos` varchar(2) NOT NULL,
  `Depto_Alumnos` varchar(3) NOT NULL,
  `Edificio_Alumnos` varchar(30) NOT NULL,
  `BARRIO_ALUMNOS` int(11) NOT NULL,
  `CIVIL_ALUMNOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Id_Alumnos`, `Apellido_Alumnos`, `Nombre_Alumnos`, `Documento_Alumnos`, `FecNac_Alumnos`, `GENERO_ALUMNOS`, `Telefono_Alumnos`, `Email_Alumnos`, `Calle_Alumnos`, `Numero_Alumnos`, `Piso_Alumnos`, `Depto_Alumnos`, `Edificio_Alumnos`, `BARRIO_ALUMNOS`, `CIVIL_ALUMNOS`) VALUES
(1, 'Luna Perez', 'Gonzalo Pablo', 67232321, '2008-07-06', 1, 351607520, 'gonzaloperez@gmail.com', 'San Martin', 6767, 'Pb', '', '', 1, 0),
(2, 'Cortez', 'Javier Jeremías', 44569341, '2002-03-23', 1, 351745662, 'javiercortez@hotmail', 'Rivadavia', 4563, 'pb', '', '', 2, 0),
(3, 'Paz', 'Nicolas', 47420710, '2006-07-19', 1, 351911086, 'nicolas.p@gmail.com', 'Los Robles', 1911, '', '', '', 3, 0),
(4, 'Robledo', 'Micaela Brisa', 48246702, '2008-06-10', 2, 351233564, 'micaela_robledo@gmail.com', 'Defensa', 4850, '', '', '', 4, 0),
(5, 'Ramos Lopez', 'Lucia', 48703456, '2009-10-05', 2, 351672318, 'ramos_l@outlook.com', 'Arroyo de la Reduccion', 128, '', '', '', 2, 0),
(6, 'Olariaga', 'Javier Nahuel', 49508520, '2009-05-04', 1, 351754460, 'javinahuolariaga@hotmail.com', 'San Juan', 1960, '2', 'B01', 'San Juan', 6, 0),
(7, 'Gonzalez', 'Micaela', 48654340, '2008-03-19', 2, 351640253, 'micagonzalez08@gmail.com', 'Belgrano', 1342, '', '', '', 7, 0),
(8, 'Aguirre', 'Ariadna', 48976387, '2008-01-28', 2, 351776590, 'ariadna11@gmail.com', 'Bogota', 1453, '', '', '', 5, 0),
(9, 'Gomez', 'Patricia Mariel', 45222333, '2009-03-24', 2, 351664421, 'gomez.pmegamail.com', 'Copina', 1530, '', '', '', 11, 0),
(10, 'Cufré', 'Nicol', 48342130, '2008-01-08', 2, 3518457349, 'laminifortaleza@gmail.com', 'Corro', 210, '', '', '', 12, 1),
(11, 'Farias', 'Valentina', 47890234, '2007-09-23', 2, 3516735623, 'valenF@gmail.com', 'Humberto 1°', 328, '', '', '', 6, 0),
(12, 'Gomez', 'Martina', 47673217, '2008-09-02', 1, 3512376893, 'martigomez09@gmail.com', 'Belgrano', 4567, '', '', '', 4, 0),
(13, 'Dicampi', 'Facundo Gonzalo', 47534008, '2008-11-12', 1, 3518995432, 'DicampiF@gmail.com', 'Avenida Colón', 5542, '', '', '', 3, 0),
(14, 'Martinez', 'Camila', 47368968, '2007-10-03', 2, 3513604979, 'camila03@gmail.com', 'Río del Cajón', 1250, '', '', '', 8, 1),
(15, 'Suárez', 'Julián Alfonso', 48321299, '2008-09-29', 1, 3513208553, 'julisuar@gmail.com', 'Mariano Moreno', 1003, '', '', '', 5, 1),
(16, 'Gatsoni', 'Joaquín', 49366724, '2009-01-15', 1, 3515674525, 'jejeholasoygatsoni@hotmail.com', 'FALTA', 1911, '', '', '', 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `Id_aulas` int(11) NOT NULL,
  `Numero_aulas` int(3) NOT NULL,
  `TIPO_AULAS` int(3) NOT NULL,
  `CAPACIDAD_AULAS` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`Id_aulas`, `Numero_aulas`, `TIPO_AULAS`, `CAPACIDAD_AULAS`) VALUES
(1, 101, 5, 0),
(2, 102, 1, 12),
(3, 103, 8, 30),
(4, 104, 7, 0),
(5, 105, 12, 0),
(6, 106, 4, 0),
(7, 107, 13, 0),
(8, 108, 14, 0),
(9, 109, 3, 25),
(10, 110, 3, 28),
(11, 111, 4, 0),
(12, 112, 3, 22),
(13, 113, 3, 20),
(14, 114, 1, 22),
(15, 115, 10, 24),
(16, 116, 9, 13),
(17, 117, 11, 13),
(18, 201, 3, 23),
(19, 202, 1, 37),
(20, 204, 4, 0),
(21, 205, 3, 28),
(22, 206, 3, 36),
(23, 207, 14, 22),
(24, 208, 14, 20),
(25, 209, 3, 20),
(26, 210, 1, 30),
(27, 211, 2, 18),
(28, 212, 2, 25),
(29, 213, 2, 32),
(30, 301, 3, 23),
(31, 302, 6, 25),
(32, 303, 4, 1),
(33, 304, 3, 20),
(34, 305, 3, 32),
(35, 306, 3, 34),
(36, 307, 3, 26),
(37, 308, 4, 1),
(38, 309, 3, 30),
(39, 310, 3, 30),
(40, 311, 3, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrios`
--

CREATE TABLE `barrios` (
  `Id_barrios` int(11) NOT NULL,
  `Nombre_barrios` varchar(30) NOT NULL,
  `ZONA_BARRIOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `barrios`
--

INSERT INTO `barrios` (`Id_barrios`, `Nombre_barrios`, `ZONA_BARRIOS`) VALUES
(1, 'Villa el Libertador', 3),
(2, 'Comercial', 3),
(3, 'Guemes', 1),
(4, 'Alta Córdoba', 2),
(5, 'Nueva Italia', 5),
(6, 'San Roque', 4),
(7, 'Angelelli 1', 3),
(8, 'Los Olmos Sud', 3),
(9, 'Bella Vista', 4),
(10, 'Nuestro Hogar 3', 3),
(11, 'Jardin', 3),
(12, 'Los Naranjos', 4),
(13, 'Las Palmas', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curau`
--

CREATE TABLE `curau` (
  `Id_curau` int(11) NOT NULL,
  `CURSO_CURAU` int(11) NOT NULL,
  `AULA_CURAU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `curau`
--

INSERT INTO `curau` (`Id_curau`, `CURSO_CURAU`, `AULA_CURAU`) VALUES
(1, 1, 38),
(2, 2, 30),
(3, 3, 14),
(4, 4, 2),
(5, 5, 36),
(6, 6, 39),
(7, 7, 28),
(8, 8, 27),
(9, 12, 10),
(10, 13, 13),
(11, 14, 12),
(12, 15, 21),
(13, 16, 18),
(14, 17, 9),
(15, 18, 33),
(16, 19, 22),
(17, 20, 40),
(18, 21, 35),
(19, 22, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Id_cursos` int(11) NOT NULL,
  `Nombre_cursos` varchar(2) NOT NULL,
  `ESPECIALIDAD_CURSOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Id_cursos`, `Nombre_cursos`, `ESPECIALIDAD_CURSOS`) VALUES
(1, '4C', 1),
(2, '5C', 1),
(3, '6C', 1),
(4, '7C', 1),
(5, '4D', 2),
(6, '5D', 2),
(7, '6D', 2),
(8, '7E', 2),
(9, '4B', 3),
(10, '5B', 3),
(11, '6B', 3),
(12, '4A', 4),
(13, '5A', 4),
(14, '6A', 4),
(15, '1A', 5),
(16, '1B', 5),
(17, '1C', 5),
(18, '2A', 6),
(19, '2B', 6),
(20, '2C', 5),
(21, '3A', 5),
(22, '3B', 5),
(23, '3C', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `Id_especialidad` int(11) NOT NULL,
  `Nombre_especialidad` varchar(30) NOT NULL,
  `Cod_especialidad` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`Id_especialidad`, `Nombre_especialidad`, `Cod_especialidad`) VALUES
(1, 'Programación', 'C'),
(2, 'Óptica', 'D'),
(3, 'Economía y Gestión', 'B'),
(4, 'Artes', 'A'),
(5, 'Materias Básicas', 'G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Id_estados` int(11) NOT NULL,
  `Nombre_estados` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Id_estados`, `Nombre_estados`) VALUES
(1, 'Soltero/a'),
(2, 'Casado/a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `Id_generos` int(11) NOT NULL,
  `Nombre_generos` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`Id_generos`, `Nombre_generos`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `Id_materias` int(11) NOT NULL,
  `Nombre_materias` varchar(50) NOT NULL,
  `CURSO_MATERIAS` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`Id_materias`, `Nombre_materias`, `CURSO_MATERIAS`) VALUES
(1, 'Informática Aplicada I', '1'),
(2, 'Programación I', '1'),
(3, 'Lógica Matemática', '1'),
(4, 'Informática Aplicada II', '2'),
(5, 'Programación II', '2'),
(6, 'Sistemas de Información', '2'),
(7, 'Base de datos I', '3'),
(8, 'Programación III', '3'),
(9, 'Sistemas y Telecomunicaciones', '3'),
(10, 'Inglés Técnico ', '4'),
(11, 'Emprendimientos', '4'),
(12, 'Higiene y seguridad Laboral', '4'),
(13, 'Base de Datos II', '4'),
(14, 'Laboratorio de Informática', '4'),
(15, 'Aplicación de la Nuevas tecnologías', '4'),
(16, 'Marco Jurídico de las Actividades', '4'),
(17, 'Formación para la Vida y el Trabajo', '4'),
(18, 'Laboratorio de Óptica', '5'),
(19, 'Óptica geométrica', '5'),
(20, 'Dibujo Técnico Óptico', '5'),
(21, 'Anatomofisiología', '5'),
(22, 'Alteración de la Visión', '6'),
(23, 'Oftálmica I', '6'),
(24, 'Laboratorio de Óptica II', '6'),
(25, 'Óptica Física', '6'),
(26, 'Lentes de Contacto', '7'),
(27, 'Electrotenia', '7'),
(28, 'Oftálmica II', '7'),
(29, 'Laboratorio de Óptica III', '7'),
(30, 'Informática Aplicada a la Óptica', '7'),
(31, 'Oftálmica III', '8'),
(32, 'Óptica Instrumental y Mecánica de Prec', '8'),
(33, 'F.A.T', '8'),
(34, 'Laboratorio de Óptica IV', '8'),
(35, 'Fotografía y Diseño', '8'),
(36, 'Higiene y Seguridad Laboral', '8'),
(37, 'Inglés Técnico', '8'),
(38, 'Laboratorio y Mantenimiento de Instrumental Óptico', '8'),
(39, 'Marco Jurídico y Ética Óptica ', '8'),
(40, 'Emprendimientos', '8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pm_ca`
--

CREATE TABLE `pm_ca` (
  `Id_pm_ca` int(11) NOT NULL,
  `PROFMAT_PM_CA` int(11) NOT NULL,
  `CURAU_PM_CA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pm_ca`
--

INSERT INTO `pm_ca` (`Id_pm_ca`, `PROFMAT_PM_CA`, `CURAU_PM_CA`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `Id_profesores` int(11) NOT NULL,
  `Apellido_profesores` varchar(30) NOT NULL,
  `Nombre_profesores` varchar(30) NOT NULL,
  `Documento_profesores` int(8) NOT NULL,
  `FecNac_profesores` date NOT NULL,
  `GENERO_PROFESORES` int(11) NOT NULL,
  `Telefono_profesores` bigint(20) NOT NULL,
  `Email_profesores` varchar(30) NOT NULL,
  `Calle_profesores` varchar(30) NOT NULL,
  `Numero_profesores` int(11) NOT NULL,
  `Piso_profesores` varchar(2) NOT NULL,
  `Depto_profesores` varchar(3) NOT NULL,
  `Edificio_profesores` varchar(30) NOT NULL,
  `BARRIO_PROFESORES` int(11) NOT NULL,
  `CIVIL_PROFESORES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`Id_profesores`, `Apellido_profesores`, `Nombre_profesores`, `Documento_profesores`, `FecNac_profesores`, `GENERO_PROFESORES`, `Telefono_profesores`, `Email_profesores`, `Calle_profesores`, `Numero_profesores`, `Piso_profesores`, `Depto_profesores`, `Edificio_profesores`, `BARRIO_PROFESORES`, `CIVIL_PROFESORES`) VALUES
(1, 'Gimenez', 'Ricardo', 28390118, '1980-07-19', 3, 3517810297, 'ricardito.123@hotmail.com', 'Los Robles', 1913, '', '', '', 9, 2),
(2, 'Maldonado', 'Claudia', 29339604, '1981-08-13', 2, 3513604970, 'claudia_01@gmail.com', 'Rio del Cajón', 4950, '', '', '', 8, 2),
(3, 'Lofedu', 'Marcelo', 27250312, '1978-01-07', 3, 3519105800, 'soyymarcelomatero@hotmail.com', 'Avenida Perón', 1001, '', '', '', 11, 2),
(4, 'Osvaldo', 'Corvalán', 31890478, '1980-07-31', 3, 3514402801, 'Osvaldito.el.pro@gmail.com', 'Paso de los Andes', 103, '', '', '', 7, 1),
(5, 'Luna', 'Federico', 26325111, '1977-03-01', 1, 3516241820, 'Fede.pro.2006@hotmail.com', 'Avenida Mala Vida', 0, '', '', '', 3, 1),
(6, 'Quito', 'Esteban', 72481905, '1972-04-23', 1, 1159328841, 'esteban.quito72@gmail.com', 'Calle Advíncula', 742, '', '', '', 3, 2),
(7, 'Gimenez', 'Monada', 11230456, '1991-11-01', 1, 3514050225, 'La.monada@hotmail.com', 'Alta Córdoba', 203, '', '', '', 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profmat`
--

CREATE TABLE `profmat` (
  `Id_profmat` int(11) NOT NULL,
  `PROFESOR_PROFMAT` int(11) NOT NULL,
  `MATERIA_PROFMAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `profmat`
--

INSERT INTO `profmat` (`Id_profmat`, `PROFESOR_PROFMAT`, `MATERIA_PROFMAT`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `Id_tipos` int(11) NOT NULL,
  `Nombre_tipos` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`Id_tipos`, `Nombre_tipos`) VALUES
(1, 'Laboratorio de Programación'),
(2, 'Laboratorio de Óptica'),
(3, 'Aula'),
(4, 'Preceptoria'),
(5, 'Dirección'),
(6, 'Laboratorio de Ciencias Naturales'),
(7, 'Sala de profesores'),
(8, 'Laboratorio de Informática'),
(9, 'Taller de Carpintería'),
(10, 'Taller de Electricidad'),
(11, 'Taller de Transformación de Materiales'),
(12, 'Secretaría'),
(13, 'Depósito'),
(14, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `Id_zonas` int(11) NOT NULL,
  `Nombre_zona` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`Id_zonas`, `Nombre_zona`) VALUES
(1, 'Centro'),
(2, 'Norte'),
(3, 'Sur'),
(4, 'Oeste'),
(5, 'Este');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumnos`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`Id_aulas`);

--
-- Indices de la tabla `barrios`
--
ALTER TABLE `barrios`
  ADD PRIMARY KEY (`Id_barrios`);

--
-- Indices de la tabla `curau`
--
ALTER TABLE `curau`
  ADD PRIMARY KEY (`Id_curau`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Id_cursos`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`Id_especialidad`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`Id_estados`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`Id_generos`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Id_materias`);

--
-- Indices de la tabla `pm_ca`
--
ALTER TABLE `pm_ca`
  ADD PRIMARY KEY (`Id_pm_ca`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`Id_profesores`);

--
-- Indices de la tabla `profmat`
--
ALTER TABLE `profmat`
  ADD PRIMARY KEY (`Id_profmat`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`Id_tipos`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`Id_zonas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_Alumnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `Id_aulas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `barrios`
--
ALTER TABLE `barrios`
  MODIFY `Id_barrios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `curau`
--
ALTER TABLE `curau`
  MODIFY `Id_curau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `Id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `Id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `Id_estados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `Id_generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `Id_materias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `pm_ca`
--
ALTER TABLE `pm_ca`
  MODIFY `Id_pm_ca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `Id_profesores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `profmat`
--
ALTER TABLE `profmat`
  MODIFY `Id_profmat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `Id_tipos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `Id_zonas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
