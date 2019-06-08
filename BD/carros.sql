-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2019 a las 00:28:32
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `orden`) VALUES
(23, 'FORD', 'El Ford Fiesta es un automÃ³vil de turismo del segmento d', 'ford.jpg', 1, 5),
(24, 'HYUNDAI', 'El Hyundai Accent, tambiÃ©n conocido como Hyundai Verna, Hyundai Solaris, Hyundai i25 y Hyundai Attitude en algunos mercados, es un automÃ³vil del segmento B', 'toyota.jpg', 1, 4),
(37, 'MAZDA', 'El Mazda CX-5 es un automÃ³vil todoterreno del segmento C que la marca japonesa Mazda lanzÃ³ al mercado a principios de 2012.', 'mazda.jpg', 1, 2),
(38, 'NISSAN', 'Se trata de una serie de camionetas pickup medianas', 'nissan.jpg', 1, 6),
(50, 'RENAULT LOGAN', 'El Dacia Logan es un automÃ³vil de turismo del segmento B, diseÃ±ado por la firma francesa de automÃ³viles ', 'renault.jpg', 1, 5),
(53, 'TOYOTA', 'Pickp', '20170926-VENTAS-DE-CARROS-EN-COLOMBIA-AGOSTO-2017-14.jpg', 1, 9),
(58, 'AUDI', 'El Audi Q7 es un vehÃ­culo deportivo utilitario del segmento F ', 'Audi-Q7.png', 1, 3),
(60, 'ZUSUKI SWIFT', 'El Suzuki Swift o Sprint en varios paÃ­ses de centro y sudamÃ©rica es un automÃ³vil del segmento B ', '20170926-VENTAS-DE-CARROS-EN-COLOMBIA-AGOSTO-2017-06.jpg', 1, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
