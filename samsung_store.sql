-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-12-2021 a las 20:11:34
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `samsung store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(20,2) NOT NULL,
  `cantidad` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `nombre`, `precio`, `cantidad`) VALUES
(1, 'VIRGIN SAMSUNG GALAXY A52 128G', '7599.00', 1),
(2, 'SAMSUNG GALAXY A21S', '6157.00', 1),
(3, 'SAMSUNG GALAXY A12', '3099.00', 1),
(4, 'SAMSUNG GALAXY S21 128G', '21439.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nproductos`
--

CREATE TABLE `nproductos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(20,2) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `disp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nproductos`
--

INSERT INTO `nproductos` (`id`, `nombre`, `precio`, `imagen`, `disp`) VALUES
(1, 'VIRGIN SAMSUNG GALAXY A52 128G', '7599.00', './img2/img1.webp', 200),
(2, 'SAMSUNG GALAXY A21S', '6157.00', './img2/img2.webp', 199),
(3, 'SAMSUNG GALAXY A12', '3099.00', './img2/img3.jpg', 199),
(4, 'SAMSUNG GALAXY S21 128G', '21439.00', './img2/img4.webp', 200),
(5, 'SAMSUNG GALAXY Z FLIP 3', '27900.00', './img2/img5.jpg', 200),
(6, 'SAMSUNG GALAXY S21 ULTRA 5G', '26499.00', './img2/img5.webp', 200),
(7, 'SAMSUNG A217M A21S', '6157.00', './img2/img7.webp', 200),
(8, 'SAMSUNG GALAXY A50S 128G', '6799.00', './img2/img8.jpg', 200),
(9, 'SAMSUNG GALAXY 20 ULTRA 5G', '18999.00', './img2/img9.jpg', 200),
(10, 'SAMSUNG GALAXY A20S', '3799.00', './img2/img10.webp', 200),
(11, 'SAMSUNG GALAXY S20+ EDICION BTS', '16097.00', './img2/img11.webp', 200),
(12, 'SAMSUNG A21S 64GB Azul', '6157.00', './img2/img12.jpg', 200),
(13, 'SAMSUNG GALAXY M22 128G', '4499.00', './img2/img13.webp', 200),
(14, 'SAMSUNG GALAXY S10+ 128GB', '9799.00', './img2/img14.jpg', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `ID` int(11) NOT NULL,
  `CORREO` varchar(60) NOT NULL,
  `CONTRA` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`ID`, `CORREO`, `CONTRA`) VALUES
(4, 'd@gmail.com', '$2y$10$3Nu3yrXxHYf3vp.A8tb9EOP.agg7RFkJMlURa2fehRD5Gl0oH7A7.'),
(5, 'e@gmail.com', '$2y$10$KBzekCjXtGtFaPpKdbHk0.MSJ.05bcJwLJX2iwnzxhP5L8tyuVq22'),
(6, 'f@gmail.com', '$2y$10$0StABk7PEw8FdbHiemHeWuIbajf9ioRpmUDyaYh.VkkKoGZyp2p1m'),
(7, 'x@gmail.com', '$2y$10$/Wy3GR2RPLIViZJUZJReYuCIvsSKhTDuWxiRFIksVRUs/aDVYHo82');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nproductos`
--
ALTER TABLE `nproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `nproductos`
--
ALTER TABLE `nproductos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
