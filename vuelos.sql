-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2020 a las 04:31:34
-- Versión del servidor: 5.6.43-log
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `vuelos`
--
CREATE DATABASE IF NOT EXISTS `vuelos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vuelos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

DROP TABLE IF EXISTS `destino`;
CREATE TABLE IF NOT EXISTS `destino` (
  `cod_ciudad` int(10) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`cod_ciudad`, `ciudad`) VALUES
(1, 'Bogota'),
(2, 'Cali'),
(3, 'Pasto'),
(4, 'Medellin'),
(5, 'Barranquilla'),
(6, 'Manizales'),
(7, 'Bucaramanga'),
(8, 'San Andres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origen`
--

DROP TABLE IF EXISTS `origen`;
CREATE TABLE IF NOT EXISTS `origen` (
  `cod_ciudad` int(10) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  PRIMARY KEY (`cod_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `origen`
--

INSERT INTO `origen` (`cod_ciudad`, `ciudad`) VALUES
(1, 'Bogota'),
(2, 'Cali'),
(3, 'Pasto'),
(4, 'Medellin'),
(5, 'Barranquilla'),
(6, 'Manizales'),
(7, 'Bucaramanga'),
(8, 'San Andres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

DROP TABLE IF EXISTS `pasajero`;
CREATE TABLE IF NOT EXISTS `pasajero` (
  `idpasajero` int(11) NOT NULL AUTO_INCREMENT,
  `cc_pasajero` int(15) NOT NULL,
  `nom_pasajero` varchar(30) NOT NULL,
  `apellido_pasajero` varchar(30) NOT NULL,
  `idvuelo` int(10) NOT NULL,
  PRIMARY KEY (`idpasajero`),
  UNIQUE KEY `cc_pasajero` (`cc_pasajero`),
  KEY `fk_pasvue` (`idvuelo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`idpasajero`, `cc_pasajero`, `nom_pasajero`, `apellido_pasajero`, `idvuelo`) VALUES
(6, 11111111, 'FERNANDO', 'MARTINEZ', 4),
(7, 11111112, 'MAURICIO', 'ROJAS', 4),
(8, 11111113, 'JHON', 'ROMERO', 4),
(9, 11111114, 'JUAN', 'RODRÍGUEZ', 4),
(10, 11111115, 'ELIAS', 'BRICEÑO', 4),
(11, 11111116, 'FERNANDA', 'ESQUIVEL', 4),
(12, 11111117, 'JOSE', 'HERNANDEZ', 4),
(13, 11111118, 'RICARDO', 'FERNANDEZ', 4),
(14, 11111121, 'JAIME', 'RONDÓN', 5),
(15, 11111122, 'EDGAR', 'HERRERA', 5),
(16, 11111123, 'JULIAN', 'CARRILLO', 5),
(17, 11111124, 'CARLOS', 'CUERVO', 5),
(18, 11111125, 'JAIRO', 'CARDENAS', 5),
(19, 11111126, 'WILLMAR', 'MOSQUERA', 5),
(20, 11111127, 'ALIRIO', 'GAITAN', 5),
(21, 11111128, 'MIGUEL', 'RAMÍREZ', 5),
(22, 11111131, 'CESAR', 'AMORTEGUI', 6),
(23, 11111132, 'JOSÉ', 'RINCÓN', 6),
(24, 11111133, 'MARCOS', 'NIÑO', 6),
(25, 11111134, 'FABIAN', 'CUERVO', 6),
(26, 11111135, 'CARLOS', 'HERRERA', 6),
(27, 11111136, 'JOHN', 'CASTIBLANCO', 6),
(28, 11111137, 'JORGE', 'CAMARGO', 6),
(29, 11111138, 'JAVIER', 'DÍAZ', 6),
(30, 11111141, 'ARTURO', 'ORDUZ', 7),
(31, 11111142, 'RICARDO', 'SANCHEZ', 7),
(32, 11111143, 'SALVADOR', 'INFANTE', 7),
(33, 11111144, 'MISAEL', 'BERMEO', 7),
(34, 11111145, 'GEOVANNY', 'MARTÍNEZ', 7),
(35, 11111146, 'KILTON', 'VARGAS', 7),
(36, 11111147, 'NELSON', 'TAMAYO', 7),
(37, 11111148, 'JUAN', 'MORALES', 7),
(38, 11111151, 'FERNANDO', 'ZAMBRANO', 8),
(39, 11111152, 'WILLIAM', 'LOPEZ', 8),
(40, 11111153, 'GERMAN', 'DIAZ', 8),
(41, 11111154, 'WILLIAM', 'DIAZ', 8),
(42, 11111155, 'WILLIAM', 'REYES', 8),
(43, 11111156, 'FABIAN', 'CONTRERAS', 8),
(44, 11111157, 'WILSON', 'ALARCON', 8),
(45, 11111158, 'FRANDY', 'RINCÓN', 8),
(46, 11111161, 'YERMAN', 'PERALTA', 9),
(47, 11111162, 'HERMES', 'ESTACIO', 9),
(48, 11111163, 'PEDRO', 'NAVARRO', 9),
(49, 11111164, 'GEOVANNY', 'PINEDA', 9),
(50, 11111165, 'RAFAEL', 'GARCIA', 9),
(51, 11111166, 'NELSON', 'PEÑA', 9),
(52, 11111167, 'EDWIN', 'ROJAS', 9),
(53, 11111168, 'JUAN', 'AVENDAÑO', 9),
(54, 11111171, 'JHON', 'SANCHEZ', 10),
(55, 11111172, 'YERMARSSON', 'AGUILERA', 9),
(56, 11111173, 'ALEXANDER', 'JEREZ', 9),
(57, 11111174, 'JUAN', 'MANUEL', 9),
(58, 11111175, 'XOMARA', 'HURTADO', 9),
(59, 11111176, 'OSMAN', 'LOZADA', 9),
(60, 11111177, 'JACOBO', 'ROA', 9),
(61, 11111178, 'CESAR', 'MEDINA', 9),
(62, 11111181, 'PEDRO', 'ARIAS', 10),
(63, 11111182, 'NELSON', 'JAIMES', 10),
(64, 11111183, 'LORENZO', 'MENDOZA', 10),
(65, 11111184, 'CARLOS', 'GUTIERREZ', 10),
(66, 11111185, 'CRISTIAN', 'BUSTOS', 10),
(67, 11111186, 'RAUL', 'GARCIA', 10),
(68, 11111187, 'GILBERTO', 'ALFONSO', 10),
(69, 11111188, 'MAURICIO', 'MEDINA', 10),
(70, 11111191, 'SANDRA', 'ARIAS', 11),
(71, 11111192, 'MILENA', 'MAIMES', 11),
(72, 11111193, 'LORENA', 'MENDOZA', 11),
(73, 11111194, 'MARIA', 'GUTIERREZ', 11),
(74, 11111195, 'CRISTINA', 'BUSTOS', 11),
(75, 11111196, 'RIANA', 'GARCIA', 11),
(76, 11111197, 'GLORIA', 'ALFONSO', 11),
(77, 11111198, 'MARTHA', 'MEDINA', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
CREATE TABLE IF NOT EXISTS `vuelo` (
  `idvuelo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT '0000-00-00',
  `hora` time DEFAULT NULL,
  `idestino` int(10) NOT NULL,
  `idorigen` int(10) NOT NULL,
  PRIMARY KEY (`idvuelo`),
  KEY `fk_vuedes` (`idestino`),
  KEY `fk_vueorg` (`idorigen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`idvuelo`, `fecha`, `hora`, `idestino`, `idorigen`) VALUES
(4, '2020-11-05', '20:03:01', 1, 2),
(5, '2020-11-05', '20:03:01', 1, 4),
(6, '2020-11-05', '20:03:01', 4, 3),
(7, '2020-11-05', '20:03:01', 5, 8),
(8, '2020-11-05', '20:03:01', 2, 1),
(9, '2020-11-05', '20:03:01', 6, 4),
(10, '2020-11-05', '20:03:01', 3, 1),
(11, '2020-11-05', '20:03:01', 8, 5);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD CONSTRAINT `fk_pasvue` FOREIGN KEY (`idvuelo`) REFERENCES `vuelo` (`idvuelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD CONSTRAINT `fk_vuedes` FOREIGN KEY (`idestino`) REFERENCES `destino` (`cod_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_vueorg` FOREIGN KEY (`idorigen`) REFERENCES `origen` (`cod_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
