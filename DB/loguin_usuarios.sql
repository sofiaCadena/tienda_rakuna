-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2023 a las 01:48:50
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `loguin_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double(20,3) NOT NULL,
  `descuento` double(20,3) NOT NULL,
  `stock` int(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descuento`, `stock`, `imagen`, `categoria`) VALUES
(49, 'Cepillo flexible mini', 80000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/62044/44578_1000x1000.jpg?3795501', 'accesorios'),
(50, 'Encrespador ushas', 7000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/62607/46094_1000x1000.jpg?4824444', 'accesorios'),
(51, 'Aplicador pestañina', 20000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61714/43945_700x933.jpg?3025317', 'accesorios'),
(52, 'Papelitos de arroz', 16000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/62215/45121_700x933.jpg?4215450', 'accesorios'),
(53, 'Delineador 2 en 1', 15000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61015/42626_700x933.jpg?2613033', 'ojos'),
(54, 'Paleta de sombras', 23200.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61954/44542_700x933.jpg?3571872', 'ojos'),
(55, 'Pestañina Febble', 15000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/64920/50574_1000x1000.jpg?6923200', 'ojos'),
(56, 'Kit de cejas piel canela', 10000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61411/43576_1000x1000.jpg?2829835', 'ojos'),
(57, 'Mascarilla facial bunny', 3000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61066/42758_700x933.jpg?2652539', 'piel'),
(58, 'Base Feels RubyRose', 20000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/59872/40210_1000x1000.jpg?2430404', 'piel'),
(59, 'Polvo de hadas', 12000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/63360/47698_1000x1000.jpg?5224787', 'piel'),
(60, 'Set de iluminadores', 35000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61008/42616_700x933.jpg?2612499', 'piel'),
(61, 'Tapete lavabrochas', 11000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/59296/39044_1000x1000.jpg?2239704', 'brochas'),
(62, 'Set de brochas engol', 25000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61718/44614_1000x1000.jpg?3815163', 'brochas'),
(63, 'Set de brochas NAKED', 45000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61717/43948_1000x1000.jpg?3025396', 'brochas'),
(64, 'Set de Brochas Atenea', 45000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/61685/43880_700x933.jpg?2922480', 'brochas'),
(65, 'Brillo fresa mágico', 20000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/65021/50631_1000x1000.jpg?6936169', 'labios'),
(66, 'Brillo cactus', 5000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/65013/50621_700x933.jpg?6933191', 'labios'),
(67, 'hidratante durazno', 5000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/65023/50633_700x933.jpg?6936180', 'labios'),
(68, 'Exfoliante y mascarilla', 12000.000, 0.000, 100, 'https://s3.pagegear.co/442/articulos/62600/46087_700x933.jpg?4823673', 'labios'),
(69, 'Crema facial Green', 10000.000, 6000.000, 100, 'https://s3.pagegear.co/442/articulos/61069/42783_700x933.jpg?2658650', 'ofertas'),
(70, 'Beauty Blender', 5000.000, 3000.000, 100, 'https://s3.pagegear.co/442/articulos/62214/45154_700x933.jpg?4236056', 'ofertas'),
(71, 'Serum de aguacate', 6000.000, 15000.000, 100, 'https://s3.pagegear.co/442/articulos/61738/44017_1000x1000.jpg?3123007', 'ofertas'),
(72, 'Labial mágico sfr color', 15000.000, 10000.000, 100, 'https://s3.pagegear.co/442/articulos/64930/50591_1000x1000.jpg?6924311', 'ofertas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
