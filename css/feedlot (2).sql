-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-03-2021 a las 15:33:20
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `feedlot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `causas`
--

CREATE TABLE `causas` (
  `id` int(11) NOT NULL,
  `causa` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `causas`
--

INSERT INTO `causas` (`id`, `causa`) VALUES
(1, 'NEUMO'),
(2, 'TERNERO'),
(3, 'OVERO'),
(4, 'VACA '),
(5, 'SIN DIAGN'),
(6, 'RECHAZO'),
(7, 'CAPADA'),
(8, '1Âº SEMANA'),
(9, 'ACIDOSIS'),
(10, 'SIN HALLAZGO'),
(11, 'ACCIDENTE'),
(12, 'ENFERMERIA'),
(13, 'INTOXICADO'),
(14, 'PERROS'),
(15, 'CALOR'),
(16, 'BOSA'),
(17, 'CAMPO'),
(18, 'DIGESTIVO'),
(19, 'MUERTE SUBITA'),
(20, 'TEMPORAL'),
(21, 'RAYO'),
(22, 'TIO'),
(23, 'INFECCION'),
(24, 'HEMORRAGIA'),
(25, 'INFARTO'),
(26, 'FLACO'),
(27, 'GOLPES'),
(28, 'PROLACSO'),
(29, 'INGRESO'),
(30, 'AHOGADO'),
(31, 'MANCHA'),
(32, 'RESPIRATORIO'),
(33, 'BARRO'),
(34, 'SACRIF/FASSANO'),
(35, 'SACRIFICADO'),
(36, ''),
(37, '1 SEMANA'),
(38, 'DETALLE PROX.PLANILLA'),
(39, 'PROLAPSO'),
(40, 'SOBRE CARGA'),
(41, 'MAL ESTADO'),
(42, 'SIST.NERVIOSO'),
(43, 'GANCRENA PATAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(100) NOT NULL,
  `tropa` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `IDE` varchar(150) DEFAULT NULL,
  `LID` varchar(150) DEFAULT NULL,
  `proveedor` varchar(150) DEFAULT NULL,
  `numeroDTE` int(10) DEFAULT NULL,
  `origen` varchar(150) DEFAULT NULL,
  `gdmTotal` varchar(10) DEFAULT NULL,
  `gpvTotal` varchar(10) DEFAULT NULL,
  `diasTotal` int(10) DEFAULT NULL,
  `estadoTropa` varchar(150) DEFAULT NULL,
  `estado` varchar(150) DEFAULT NULL,
  `statusDate` date DEFAULT NULL,
  `grupo` varchar(150) DEFAULT NULL,
  `raza` varchar(100) DEFAULT NULL,
  `sexo` varchar(150) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `notas` varchar(200) DEFAULT NULL,
  `caravanaValida` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulas`
--

CREATE TABLE `formulas` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `nombre` varchar(150) NOT NULL,
  `tipo` varchar(150) NOT NULL,
  `precio` float NOT NULL,
  `p1` varchar(150) DEFAULT NULL,
  `por1` float DEFAULT NULL,
  `p2` varchar(150) DEFAULT NULL,
  `por2` float DEFAULT NULL,
  `p3` varchar(150) DEFAULT NULL,
  `por3` float DEFAULT NULL,
  `p4` varchar(150) DEFAULT NULL,
  `por4` float DEFAULT NULL,
  `p5` varchar(150) DEFAULT NULL,
  `por5` float DEFAULT NULL,
  `p6` varchar(150) DEFAULT NULL,
  `por6` float DEFAULT NULL,
  `p7` varchar(150) DEFAULT NULL,
  `por7` float DEFAULT NULL,
  `p8` varchar(150) DEFAULT NULL,
  `por8` float DEFAULT NULL,
  `p9` varchar(150) DEFAULT NULL,
  `por9` float DEFAULT NULL,
  `p10` varchar(150) DEFAULT NULL,
  `por10` float DEFAULT NULL,
  `p11` varchar(150) DEFAULT NULL,
  `por11` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formulas`
--

INSERT INTO `formulas` (`id`, `fecha`, `nombre`, `tipo`, `precio`, `p1`, `por1`, `p2`, `por2`, `p3`, `por3`, `p4`, `por4`, `p5`, `por5`, `p6`, `por6`, `p7`, `por7`, `p8`, `por8`, `p9`, `por9`, `p10`, `por10`, `p11`, `por11`) VALUES
(16, '2021-02-23', 'Prueba 2', 'Prueba', 0.35, '1', 40, '1', 30, '64', 12, '70', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2021-02-23', 'Prueba', 'Prueba', 0.5, '1', 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(100) NOT NULL,
  `tropa` varchar(150) DEFAULT NULL,
  `adpv` float DEFAULT 0,
  `renspa` varchar(150) DEFAULT NULL,
  `LID` varchar(150) DEFAULT NULL,
  `IDE` varchar(100) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `raza` varchar(100) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `numDTE` varchar(100) DEFAULT NULL,
  `estadoTropa` varchar(100) DEFAULT NULL,
  `estadoAnimal` varchar(150) DEFAULT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `notas` varchar(500) DEFAULT NULL,
  `corral` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `destino` varchar(150) DEFAULT NULL,
  `estado` varchar(150) DEFAULT NULL,
  `statusDate` date DEFAULT NULL,
  `grupo` varchar(150) DEFAULT NULL,
  `caravanaValida` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `feedlot`, `tropa`, `adpv`, `renspa`, `LID`, `IDE`, `peso`, `raza`, `sexo`, `numDTE`, `estadoTropa`, `estadoAnimal`, `origen`, `proveedor`, `notas`, `corral`, `fecha`, `hora`, `destino`, `estado`, `statusDate`, `grupo`, `caravanaValida`) VALUES
(309, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225418', 367, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:54:14', NULL, NULL, NULL, NULL, 0),
(310, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225563', 336, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:54:28', NULL, NULL, NULL, NULL, 0),
(311, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225078', 320, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:54:53', NULL, NULL, NULL, NULL, 0),
(312, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058228853', 322, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:55:05', NULL, NULL, NULL, NULL, 0),
(313, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053808464', 370, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:55:24', NULL, NULL, NULL, NULL, 0),
(314, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053808447', 341, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:55:39', NULL, NULL, NULL, NULL, 0),
(315, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058229391', 370, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:55:53', NULL, NULL, NULL, NULL, 0),
(316, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225152', 324, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '08:56:07', NULL, NULL, NULL, NULL, 0),
(317, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053808739', 354, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:02:20', NULL, NULL, NULL, NULL, 0),
(318, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225554', 324, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:03:31', NULL, NULL, NULL, NULL, 0),
(319, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058229490', 362, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:03:51', NULL, NULL, NULL, NULL, 0),
(320, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053809619', 327, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:04:05', NULL, NULL, NULL, NULL, 0),
(321, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225038', 363, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:04:19', NULL, NULL, NULL, NULL, 0),
(322, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058229100', 292, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:04:47', NULL, NULL, NULL, NULL, 0),
(323, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225206', 245, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:05:21', NULL, NULL, NULL, NULL, 0),
(324, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053792661', 326, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:05:34', NULL, NULL, NULL, NULL, 0),
(325, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053792551', 343, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:05:52', NULL, NULL, NULL, NULL, 0),
(326, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058224941', 328, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:06:04', NULL, NULL, NULL, NULL, 0),
(327, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058229904', 336, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:10:27', NULL, NULL, NULL, NULL, 0),
(328, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126053809397', 370, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:10:41', NULL, NULL, NULL, NULL, 0),
(329, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225127', 331, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:10:55', NULL, NULL, NULL, NULL, 0),
(330, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058228376', 337, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:11:07', NULL, NULL, NULL, NULL, 0),
(331, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058228835', 317, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:11:27', NULL, NULL, NULL, NULL, 0),
(332, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058229461', 339, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:11:40', NULL, NULL, NULL, NULL, 0),
(333, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058229096', 355, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:11:59', NULL, NULL, NULL, NULL, 0),
(334, 'SuperRural', 'Ingreso fasano corral 3', 0, '', NULL, '982 126058225135', 284, 'Braford', 'Hembra', '9515', NULL, 'Regular', 'Vera santa fe', 'Fassano', '', '21', '2020-08-10', '09:12:16', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(130) NOT NULL,
  `insumo` varchar(150) NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `precio` float NOT NULL,
  `porceMS` int(11) NOT NULL,
  `DMS` int(10) DEFAULT NULL,
  `EE` int(10) DEFAULT NULL,
  `Pr` int(10) DEFAULT NULL,
  `PBa` int(10) DEFAULT NULL,
  `PBb` int(10) DEFAULT NULL,
  `H` int(10) DEFAULT NULL,
  `NIDA` int(10) DEFAULT NULL,
  `EM` int(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`id`, `feedlot`, `insumo`, `tipo`, `precio`, `porceMS`, `DMS`, `EE`, `Pr`, `PBa`, `PBb`, `H`, `NIDA`, `EM`, `fecha`) VALUES
(1, 'Acopiadora Pampeana', 'Alfalfa prefloración', 'FORRAJES FRESCOS', 2.5, 20, 67, 2, 24, 39, 44, 15, 0, 2, '2021-02-12'),
(2, 'Acopiadora Pampeana', 'Alfalfa pura, 10% de floración', 'FORRAJES FRESCOS', 0, 22, 64, 2, 22, 25, 55, 15, 0, 2, '2021-02-12'),
(3, 'Acopiadora Pampeana', 'Alfalfa pura, 50% de floración', 'FORRAJES FRESCOS', 0, 24, 62, 2, 19, 18, 61, 10, 0, 2, '2021-02-12'),
(4, 'Acopiadora Pampeana', 'Alfalfa pura, 100% de floración', 'FORRAJES FRESCOS', 0, 26, 59, 2, 16, 14, 60, 10, 0, 2, '2021-02-12'),
(5, 'Acopiadora Pampeana', 'Gramíneas templadas (65-70 DMS)', 'FORRAJES FRESCOS', 0, 20, 67, 2, 17, 34, 56, 10, 0, 2, '2021-02-12'),
(6, 'Acopiadora Pampeana', 'Gramíneas templadas (60-65 DMS)', 'FORRAJES FRESCOS', 0, 22, 63, 2, 15, 28, 57, 9, 0, 2, '2021-02-12'),
(7, 'Acopiadora Pampeana', 'Gramíneas templadas (57-60 DMS)', 'FORRAJES FRESCOS', 0, 25, 59, 2, 12, 16, 57, 8, 0, 2, '2021-02-12'),
(8, 'Acopiadora Pampeana', 'Gramíneas megatérmicas (63-66DMS)', 'FORRAJES FRESCOS', 0, 22, 65, 2, 12, 28, 59, 9, 0, 2, '2021-02-12'),
(9, 'Acopiadora Pampeana', 'Gramíneas megatérmicas (58-63DMS)', 'FORRAJES FRESCOS', 0, 24, 61, 2, 10, 22, 58, 8, 0, 2, '2021-02-12'),
(10, 'Acopiadora Pampeana', 'Gramíneas megatérmicas (55-58 DMS)', 'FORRAJES FRESCOS', 0, 26, 57, 2, 7, 16, 57, 8, 0, 2, '2021-02-12'),
(11, 'Acopiadora Pampeana', 'Verdeos invernales primer corte', 'FORRAJES FRESCOS', 0, 20, 66, 2, 20, 34, 57, 10, 0, 2, '2021-02-12'),
(12, 'Acopiadora Pampeana', 'Verdeos invernales último corte', 'FORRAJES FRESCOS', 0, 24, 60, 2, 16, 38, 57, 9, 0, 2, '2021-02-12'),
(19, 'Acopiadora Pampeana', 'Heno Alfalfa prefloración', 'HENOS', 0, 85, 63, 2, 20, 25, 65, 9, 0, 2, '2021-02-12'),
(20, 'Acopiadora Pampeana', 'Heno Alfalfa pura, 10% floración', 'HENOS', 0, 85, 60, 2, 18, 20, 69, 9, 0, 2, '2021-02-12'),
(21, 'Acopiadora Pampeana', 'Heno Alfalfa pura, 50% de floración', 'HENOS', 0, 85, 58, 2, 15, 16, 71, 9, 0, 2, '2021-02-12'),
(22, 'Acopiadora Pampeana', 'Heno Alfalfa pura, 100% de floración', 'HENOS', 0, 85, 55, 2, 12, 12, 74, 9, 0, 2, '2021-02-12'),
(23, 'Acopiadora Pampeana', 'Heno Moha vegetativo', 'HENOS', 0, 85, 60, 2, 10, 5, 70, 9, 0, 2, '2021-02-12'),
(24, 'Acopiadora Pampeana', 'Heno Moha grano pastoso', 'HENOS', 0, 85, 56, 1, 7, 4, 68, 7, 0, 2, '2021-02-12'),
(25, 'Acopiadora Pampeana', 'Cascara de Girasol', 'HENOS', 0, 90, 0, 2, 4, 0, 0, 0, 0, 0, '2021-02-12'),
(26, 'Acopiadora Pampeana', 'Silaje Alfalfa, 10% floración', 'SILAJES', 0, 34, 62, 3, 20, 66, 25, 17, 0, 2, '2021-02-12'),
(27, 'Acopiadora Pampeana', 'Silaje Alfalfa, 50% floración ', 'SILAJES', 0, 34, 60, 3, 17, 60, 32, 17, 0, 2, '2021-02-12'),
(28, 'Acopiadora Pampeana', 'Silaje Maíz Bajo Grano', 'SILAJES', 0, 35, 60, 3, 8, 66, 19, 10, 0, 2, '2021-02-12'),
(29, 'Acopiadora Pampeana', 'Silaje Maíz Medio Grano', 'SILAJES', 0, 35, 63, 3, 8, 66, 19, 10, 0, 2, '2021-02-12'),
(30, 'Acopiadora Pampeana', 'Silaje Maíz Alto Grano', 'SILAJES', 0, 35, 66, 3, 8, 66, 19, 10, 0, 2, '2021-02-12'),
(31, 'Acopiadora Pampeana', 'Silaje Maíz Muy Alto Grano', 'SILAJES', 0, 35, 70, 3, 8, 66, 19, 10, 0, 3, '2021-02-12'),
(32, 'Acopiadora Pampeana', 'Silaje Sorgo Granífero Bajo Grano', 'SILAJES', 0, 32, 55, 2, 8, 55, 28, 10, 0, 2, '2021-02-12'),
(33, 'Acopiadora Pampeana', 'Silaje Sorgo Granífero Medio Grano', 'SILAJES', 0, 32, 58, 2, 8, 55, 28, 10, 0, 2, '2021-02-12'),
(34, 'Acopiadora Pampeana', 'Silaje Sorgo Granífero Alto Grano', 'SILAJES', 0, 32, 61, 3, 8, 55, 28, 10, 0, 2, '2021-02-12'),
(35, 'Acopiadora Pampeana', 'Silaje Sorgo Granífero Muy Alto Grano', 'SILAJES', 0, 32, 64, 3, 8, 55, 28, 10, 0, 2, '2021-02-12'),
(36, 'Acopiadora Pampeana', 'Silaje Sorgo forrajero tierno', 'SILAJES', 0, 28, 60, 2, 8, 60, 26, 14, 0, 2, '2021-02-12'),
(37, 'Acopiadora Pampeana', 'Silaje sorgo forrajero maduro ', 'SILAJES', 0, 28, 57, 2, 7, 55, 28, 10, 0, 2, '2021-02-12'),
(38, 'Acopiadora Pampeana', 'Silaje de cebada', 'SILAJES', 0, 39, 60, 2, 12, 60, 24, 10, 0, 2, '2021-02-12'),
(74, 'Acopiadora Pampeana', 'Gluten feed pellet', 'CONCENTRADOS (C)', 0, 89, 78, 2, 23, 25, 65, 4, 0, 3, '2021-02-12'),
(73, 'Acopiadora Pampeana', 'Gluten feed húmedo', 'CONCENTRADOS (C)', 0, 45, 78, 2, 23, 49, 26, 12, 0, 3, '2021-02-12'),
(72, 'Acopiadora Pampeana', 'Permeado de suero ', 'CONCENTRADOS (C)', 0, 18, 100, 0, 3, 100, 0, 0, 0, 4, '2021-02-12'),
(71, 'Acopiadora Pampeana', 'Urea', 'CONCENTRADOS (C)', 0, 98, 0, 0, 287, 100, 0, 0, 0, 0, '2021-02-12'),
(70, 'Acopiadora Pampeana', 'Algodón expeller', 'CONCENTRADOS (C)', 0, 89, 74, 2, 37, 24, 76, 5, 0, 3, '2021-02-12'),
(69, 'Acopiadora Pampeana', 'Girasol expeller', 'CONCENTRADOS (C)', 0, 89, 64, 3, 38, 30, 50, 12, 0, 2, '2021-02-12'),
(68, 'Acopiadora Pampeana', 'Soja expeller', 'CONCENTRADOS (C)', 0, 89, 88, 2, 47, 20, 45, 11, 0, 3, '2021-02-12'),
(67, 'Acopiadora Pampeana', 'Soja grano ', 'CONCENTRADOS (C)', 0, 87, 88, 18, 36, 44, 31, 12, 0, 3, '2021-02-12'),
(66, 'Acopiadora Pampeana', 'Pulpa de cítricos', 'CONCENTRADOS (C)', 0, 92, 84, 4, 7, 41, 56, 6, 0, 3, '2021-02-12'),
(65, 'Acopiadora Pampeana', 'Afrechillo de trigo', 'CONCENTRADOS (C)', 0, 88, 70, 4, 17, 30, 47, 12, 0, 3, '2021-02-12'),
(64, 'Acopiadora Pampeana', 'Algodón semilla', 'CONCENTRADOS (C)', 0, 88, 88, 21, 21, 40, 30, 8, 0, 3, '2021-02-12'),
(63, 'Acopiadora Pampeana', 'Trigo grano', 'CONCENTRADOS (C)', 0, 86, 90, 2, 13, 42, 54, 38, 0, 3, '2021-02-12'),
(62, 'Acopiadora Pampeana', 'Cebada grano', 'CONCENTRADOS (C)', 0, 86, 84, 2, 13, 25, 70, 35, 0, 3, '2021-02-12'),
(61, 'Acopiadora Pampeana', 'Avena grano', 'CONCENTRADOS (C)', 0, 86, 77, 5, 13, 39, 56, 33, 0, 3, '2021-02-12'),
(60, 'Acopiadora Pampeana', 'Sorgo grano', 'CONCENTRADOS (C)', 0, 87, 80, 3, 11, 12, 39, 6, 0, 3, '2021-02-12'),
(59, 'Acopiadora Pampeana', 'Maíz grano', 'CONCENTRADOS (C)', 0, 87, 88, 4, 10, 16, 35, 7, 0, 3, '2021-02-12'),
(75, 'Acopiadora Pampeana', 'Silaje Maíz grano húmedo', 'CONCENTRADOS (C)', 0, 75, 89, 4, 10, 50, 31, 10, 0, 3, '2021-02-12'),
(76, 'Acopiadora Pampeana', 'Silaje Sorgo grano húmedo', 'CONCENTRADOS (C)', 0, 72, 83, 3, 11, 57, 27, 8, 0, 3, '2021-02-12'),
(77, 'Acopiadora Pampeana', 'Girasol expeller baja proteina', 'CONCENTRADOS (C)', 0, 89, 64, 3, 25, 30, 50, 12, 0, 2, '2021-02-12'),
(78, 'Acopiadora Pampeana', 'Orujo de  Uva', 'CONCENTRADOS (C)', 0, 90, 28, 7, 11, 0, 0, 0, 0, 1, '2021-02-12'),
(79, 'Acopiadora Pampeana', 'Premezcla Vit. Min. Con Monensina', 'CONCENTRADOS (C)', 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-12'),
(80, 'Acopiadora Hoteleria', 'Agua', 'AGUA', 0.01, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2021-02-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumosPremix`
--

CREATE TABLE `insumosPremix` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(120) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `feedlot`, `tipo`) VALUES
(11, 'SuperRural', 'balanza'),
(12, 'Acopiadora Pampeana', 'balanza'),
(13, 'Acopiadora Hoteleria', 'balanza\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mixer`
--

CREATE TABLE `mixer` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `turno` varchar(100) NOT NULL,
  `operario` varchar(150) NOT NULL,
  `formula` varchar(150) NOT NULL,
  `corral` int(20) NOT NULL,
  `kilos` float DEFAULT NULL,
  `redondeo` varchar(150) DEFAULT NULL,
  `margen` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mixer`
--

INSERT INTO `mixer` (`id`, `feedlot`, `fecha`, `turno`, `operario`, `formula`, `corral`, `kilos`, `redondeo`, `margen`) VALUES
(1, 'Acopiadora Hoteleria', '2021-03-01', 'Tarde', 'Luis', '16', 2, 4750, '1900,1400,600,300', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mixer_cargas`
--

CREATE TABLE `mixer_cargas` (
  `id` int(11) NOT NULL,
  `archivo` varchar(100) DEFAULT NULL,
  `mixer` varchar(150) DEFAULT NULL,
  `id_carga` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ingrediente` varchar(150) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `ideal` int(10) DEFAULT NULL,
  `id_receta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mixer_cargas`
--

INSERT INTO `mixer_cargas` (`id`, `archivo`, `mixer`, `id_carga`, `fecha`, `hora`, `ingrediente`, `cantidad`, `ideal`, `id_receta`) VALUES
(1, 'mixer2.xlsx', 'mixer2', '0', '2020-06-15', '09:46:00', 'CascaraMani     ', 600, NULL, NULL),
(2, 'mixer2.xlsx', 'mixer2', '0', '2020-06-15', '09:46:00', 'Maiz            ', 4560, NULL, NULL),
(3, 'mixer2.xlsx', 'mixer2', '0', '2020-06-15', '09:46:00', 'Concentrado     ', 590, NULL, NULL),
(4, 'mixer2.xlsx', 'mixer2', '1', '2020-06-15', '10:52:00', 'CascaraMani     ', 610, NULL, NULL),
(5, 'mixer2.xlsx', 'mixer2', '1', '2020-06-15', '10:52:00', 'Maiz            ', 4700, NULL, NULL),
(6, 'mixer2.xlsx', 'mixer2', '1', '2020-06-15', '10:52:00', 'Concentrado     ', 640, NULL, NULL),
(7, 'mixer2.xlsx', 'mixer2', '1', '2020-06-15', '11:27:00', 'CascaraMani     ', 0, NULL, NULL),
(8, 'mixer2.xlsx', 'mixer2', '1', '2020-06-15', '11:27:00', 'Maiz            ', 0, NULL, NULL),
(9, 'mixer2.xlsx', 'mixer2', '1', '2020-06-15', '11:27:00', 'Concentrado     ', 0, NULL, NULL),
(10, 'mixer2.xlsx', 'mixer2', '2', '2020-06-15', '11:54:00', 'CascaraMani     ', 600, NULL, NULL),
(11, 'mixer2.xlsx', 'mixer2', '2', '2020-06-15', '11:54:00', 'Maiz            ', 4510, NULL, NULL),
(12, 'mixer2.xlsx', 'mixer2', '2', '2020-06-15', '11:54:00', 'Concentrado     ', 630, NULL, NULL),
(13, 'mixer2.xlsx', 'mixer2', '3', '2020-06-25', '10:58:00', 'CascaraMani     ', 590, NULL, NULL),
(14, 'mixer2.xlsx', 'mixer2', '3', '2020-06-25', '10:58:00', 'Maiz            ', 4510, NULL, NULL),
(15, 'mixer2.xlsx', 'mixer2', '3', '2020-06-25', '10:58:00', 'Concentrado     ', 610, NULL, NULL),
(16, 'mixer2.xlsx', 'mixer2', '3', '2020-06-25', '11:28:00', 'CascaraMani     ', 10, NULL, NULL),
(17, 'mixer2.xlsx', 'mixer2', '3', '2020-06-25', '11:28:00', 'Maiz            ', 0, NULL, NULL),
(18, 'mixer2.xlsx', 'mixer2', '3', '2020-06-25', '11:28:00', 'Concentrado     ', 0, NULL, NULL),
(19, 'mixer2.xlsx', 'mixer2', '4', '2020-06-25', '12:00:00', 'CascaraMani     ', 590, NULL, NULL),
(20, 'mixer2.xlsx', 'mixer2', '4', '2020-06-25', '12:00:00', 'Maiz            ', 4520, NULL, NULL),
(21, 'mixer2.xlsx', 'mixer2', '4', '2020-06-25', '12:00:00', 'Concentrado     ', 620, NULL, NULL),
(22, 'mixer2.xlsx', 'mixer2', '4', '2020-06-25', '13:45:00', 'CascaraMani     ', 10, NULL, NULL),
(23, 'mixer2.xlsx', 'mixer2', '4', '2020-06-25', '13:45:00', 'Maiz            ', 0, NULL, NULL),
(24, 'mixer2.xlsx', 'mixer2', '4', '2020-06-25', '13:45:00', 'Concentrado     ', 0, NULL, NULL),
(25, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:17:00', 'CascaraMani     ', 0, NULL, NULL),
(26, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:17:00', 'Maiz            ', 0, NULL, NULL),
(27, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:17:00', 'Concentrado     ', 0, NULL, NULL),
(28, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:17:00', 'CascaraMani     ', 0, NULL, NULL),
(29, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:17:00', 'Maiz            ', 0, NULL, NULL),
(30, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:17:00', 'Concentrado     ', 0, NULL, NULL),
(31, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:18:00', 'CascaraMani     ', 600, NULL, NULL),
(32, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:18:00', 'Maiz            ', 4560, NULL, NULL),
(33, 'mixer2.xlsx', 'mixer2', '5', '2020-06-25', '14:18:00', 'Concentrado     ', 630, NULL, NULL),
(34, 'mixer2.xlsx', 'mixer2', '6', '2020-07-02', '15:15:00', 'CascaraMani     ', 600, NULL, NULL),
(35, 'mixer2.xlsx', 'mixer2', '6', '2020-07-02', '15:15:00', 'Maiz            ', 4500, NULL, NULL),
(36, 'mixer2.xlsx', 'mixer2', '6', '2020-07-02', '15:15:00', 'Concentrado     ', 610, NULL, NULL),
(37, 'mixer2.xlsx', 'mixer2', '7', '2020-07-02', '16:29:00', 'CascaraMani     ', 600, NULL, NULL),
(38, 'mixer2.xlsx', 'mixer2', '7', '2020-07-02', '16:29:00', 'Maiz            ', 4540, NULL, NULL),
(39, 'mixer2.xlsx', 'mixer2', '7', '2020-07-02', '16:29:00', 'Concentrado     ', 610, NULL, NULL),
(40, 'mixer2.xlsx', 'mixer2', '8', '2020-07-08', '11:05:00', 'CascaraMani     ', 600, NULL, NULL),
(41, 'mixer2.xlsx', 'mixer2', '8', '2020-07-08', '11:05:00', 'Maiz            ', 4530, NULL, NULL),
(42, 'mixer2.xlsx', 'mixer2', '8', '2020-07-08', '11:05:00', 'Concentrado     ', 620, NULL, NULL),
(43, 'mixer2.xlsx', 'mixer2', '9', '2020-07-08', '12:05:00', 'CascaraMani     ', 580, NULL, NULL),
(44, 'mixer2.xlsx', 'mixer2', '9', '2020-07-08', '12:05:00', 'Maiz            ', 4530, NULL, NULL),
(45, 'mixer2.xlsx', 'mixer2', '9', '2020-07-08', '12:05:00', 'Concentrado     ', 620, NULL, NULL),
(46, 'mixer2.xlsx', 'mixer2', '10', '2020-07-08', '12:58:00', 'CascaraMani     ', 590, NULL, NULL),
(47, 'mixer2.xlsx', 'mixer2', '10', '2020-07-08', '12:58:00', 'Maiz            ', 4540, NULL, NULL),
(48, 'mixer2.xlsx', 'mixer2', '10', '2020-07-08', '12:58:00', 'Concentrado     ', 610, NULL, NULL),
(49, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '10:26:00', 'CascaraMani     ', 610, NULL, NULL),
(50, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '10:26:00', 'Maiz            ', 4530, NULL, NULL),
(51, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '10:26:00', 'Concentrado     ', 600, NULL, NULL),
(52, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '12:01:00', 'CascaraMani     ', 610, NULL, NULL),
(53, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '12:01:00', 'Maiz            ', 4520, NULL, NULL),
(54, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '12:01:00', 'Concentrado     ', 610, NULL, NULL),
(55, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '16:13:00', 'CascaraMani     ', 630, NULL, NULL),
(56, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '16:13:00', 'Maiz            ', 4510, NULL, NULL),
(57, 'mixer2.xlsx', 'mixer2', '10', '2020-07-15', '16:13:00', 'Concentrado     ', 620, NULL, NULL),
(58, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '11:45:00', 'CascaraMani     ', 90, NULL, NULL),
(59, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '11:45:00', 'Maiz            ', 0, NULL, NULL),
(60, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '11:45:00', 'Concentrado     ', 0, NULL, NULL),
(61, 'mixer2.xlsx', 'mixer2', '9', '2020-07-22', '11:47:00', 'CascaraMani     ', 600, NULL, NULL),
(62, 'mixer2.xlsx', 'mixer2', '9', '2020-07-22', '11:47:00', 'Maiz            ', 4580, NULL, NULL),
(63, 'mixer2.xlsx', 'mixer2', '9', '2020-07-22', '11:47:00', 'Concentrado     ', 660, NULL, NULL),
(64, 'mixer2.xlsx', 'mixer2', '9', '2020-07-22', '14:44:00', 'CascaraMani     ', 0, NULL, NULL),
(65, 'mixer2.xlsx', 'mixer2', '9', '2020-07-22', '14:44:00', 'Maiz            ', 0, NULL, NULL),
(66, 'mixer2.xlsx', 'mixer2', '9', '2020-07-22', '14:44:00', 'Concentrado     ', 0, NULL, NULL),
(67, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '15:43:00', 'CascaraMani     ', 620, NULL, NULL),
(68, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '15:43:00', 'Maiz            ', 4520, NULL, NULL),
(69, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '15:43:00', 'Concentrado     ', 610, NULL, NULL),
(70, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '16:51:59', 'CascaraMani     ', 620, NULL, NULL),
(71, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '16:51:59', 'Maiz            ', 4520, NULL, NULL),
(72, 'mixer2.xlsx', 'mixer2', '10', '2020-07-22', '16:51:59', 'Concentrado     ', 600, NULL, NULL),
(73, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '11:41:00', 'CascaraMani     ', 620, NULL, NULL),
(74, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '11:41:00', 'Maiz            ', 4500, NULL, NULL),
(75, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '11:41:00', 'Concentrado     ', 610, NULL, NULL),
(76, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '15:27:00', 'CascaraMani     ', 640, NULL, NULL),
(77, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '15:27:00', 'Maiz            ', 4510, NULL, NULL),
(78, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '15:27:00', 'Concentrado     ', 600, NULL, NULL),
(79, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '16:47:59', 'CascaraMani     ', 600, NULL, NULL),
(80, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '16:47:59', 'Maiz            ', 4520, NULL, NULL),
(81, 'mixer2.xlsx', 'mixer2', '10', '2020-07-29', '16:47:59', 'Concentrado     ', 600, NULL, NULL),
(82, 'mixer2.xlsx', 'mixer2', '10', '2020-09-29', '17:32:59', 'CascaraMani     ', 610, NULL, NULL),
(83, 'mixer2.xlsx', 'mixer2', '10', '2020-09-29', '17:32:59', 'Agua            ', 250, NULL, NULL),
(84, 'mixer2.xlsx', 'mixer2', '10', '2020-09-29', '17:32:59', 'Maiz            ', 4630, NULL, NULL),
(85, 'mixer2.xlsx', 'mixer2', '10', '2020-09-29', '17:32:59', 'Concentrado     ', 610, NULL, NULL),
(86, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2020-06-04', '12:33:00', 'CascaraMani', 600, 600, '1'),
(87, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2020-06-04', '12:33:00', 'Agua', 250, 250, '1'),
(88, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2020-06-04', '12:33:00', 'Maiz', 4550, 4550, '1'),
(89, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2020-06-04', '12:33:00', 'Concentrado', 600, 600, '1'),
(90, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2020-06-05', '08:27:00', 'CascaraMani', 620, 600, '1'),
(91, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2020-06-05', '08:27:00', 'Agua', 250, 250, '1'),
(92, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2020-06-05', '08:27:00', 'Maiz', 4590, 4550, '1'),
(93, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2020-06-05', '08:27:00', 'Concentrado', 600, 600, '1'),
(94, '2021AAAmixer 456ST.xls', 'mixer1', '3', '2020-06-05', '16:15:00', 'CascaraMani', 610, 600, '1'),
(95, '2021AAAmixer 456ST.xls', 'mixer1', '3', '2020-06-05', '16:15:00', 'Agua', 250, 250, '1'),
(96, '2021AAAmixer 456ST.xls', 'mixer1', '3', '2020-06-05', '16:15:00', 'Maiz', 4570, 4550, '1'),
(97, '2021AAAmixer 456ST.xls', 'mixer1', '3', '2020-06-05', '16:15:00', 'Concentrado', 600, 600, '1'),
(98, '2021AAAmixer 456ST.xls', 'mixer1', '4', '2020-06-06', '08:36:00', 'CascaraMani', 600, 600, '1'),
(99, '2021AAAmixer 456ST.xls', 'mixer1', '4', '2020-06-06', '08:36:00', 'Agua', 250, 250, '1'),
(100, '2021AAAmixer 456ST.xls', 'mixer1', '4', '2020-06-06', '08:36:00', 'Maiz', 4560, 4550, '1'),
(101, '2021AAAmixer 456ST.xls', 'mixer1', '4', '2020-06-06', '08:36:00', 'Concentrado', 600, 600, '1'),
(102, '2021AAAmixer 456ST.xls', 'mixer1', '5', '2020-06-06', '10:15:00', 'CascaraMani', 600, 600, '1'),
(103, '2021AAAmixer 456ST.xls', 'mixer1', '5', '2020-06-06', '10:15:00', 'Agua', 250, 250, '1'),
(104, '2021AAAmixer 456ST.xls', 'mixer1', '5', '2020-06-06', '10:15:00', 'Maiz', 4560, 4550, '1'),
(105, '2021AAAmixer 456ST.xls', 'mixer1', '5', '2020-06-06', '10:15:00', 'Concentrado', 600, 600, '1'),
(106, '2021AAAmixer 456ST.xls', 'mixer1', '6', '2020-06-06', '16:03:00', 'CascaraMani', 600, 600, '1'),
(107, '2021AAAmixer 456ST.xls', 'mixer1', '6', '2020-06-06', '16:03:00', 'Agua', 250, 250, '1'),
(108, '2021AAAmixer 456ST.xls', 'mixer1', '6', '2020-06-06', '16:03:00', 'Maiz', 4550, 4550, '1'),
(109, '2021AAAmixer 456ST.xls', 'mixer1', '6', '2020-06-06', '16:03:00', 'Concentrado', 600, 600, '1'),
(110, '2021AAAmixer 456ST.xls', 'mixer1', '7', '2020-06-07', '10:00:00', 'CascaraMani', 600, 600, '1'),
(111, '2021AAAmixer 456ST.xls', 'mixer1', '7', '2020-06-07', '10:00:00', 'Agua', 250, 250, '1'),
(112, '2021AAAmixer 456ST.xls', 'mixer1', '7', '2020-06-07', '10:00:00', 'Maiz', 4550, 4550, '1'),
(113, '2021AAAmixer 456ST.xls', 'mixer1', '7', '2020-06-07', '10:00:00', 'Concentrado', 600, 600, '1'),
(114, '2021AAAmixer 456ST.xls', 'mixer1', '8', '2020-06-07', '16:22:00', 'CascaraMani', 600, 600, '1'),
(115, '2021AAAmixer 456ST.xls', 'mixer1', '8', '2020-06-07', '16:22:00', 'Agua', 250, 250, '1'),
(116, '2021AAAmixer 456ST.xls', 'mixer1', '8', '2020-06-07', '16:22:00', 'Maiz', 4550, 4550, '1'),
(117, '2021AAAmixer 456ST.xls', 'mixer1', '8', '2020-06-07', '16:22:00', 'Concentrado', 600, 600, '1'),
(118, '2021AAAmixer 456ST.xls', 'mixer1', '9', '2020-06-08', '09:26:00', 'CascaraMani', 600, 600, '1'),
(119, '2021AAAmixer 456ST.xls', 'mixer1', '9', '2020-06-08', '09:26:00', 'Agua', 250, 250, '1'),
(120, '2021AAAmixer 456ST.xls', 'mixer1', '9', '2020-06-08', '09:26:00', 'Maiz', 4570, 4550, '1'),
(121, '2021AAAmixer 456ST.xls', 'mixer1', '9', '2020-06-08', '09:26:00', 'Concentrado', 640, 600, '1'),
(122, '2021AAAmixer 456ST.xls', 'mixer1', '10', '2020-06-08', '16:39:00', 'CascaraMani', 610, 600, '1'),
(123, '2021AAAmixer 456ST.xls', 'mixer1', '10', '2020-06-08', '16:39:00', 'Agua', 250, 250, '1'),
(124, '2021AAAmixer 456ST.xls', 'mixer1', '10', '2020-06-08', '16:39:00', 'Maiz', 4590, 4550, '1'),
(125, '2021AAAmixer 456ST.xls', 'mixer1', '10', '2020-06-08', '16:39:00', 'Concentrado', 620, 600, '1'),
(126, '2021AAAmixer 456ST.xls', 'mixer1', '11', '2020-06-09', '15:27:00', 'CascaraMani', 630, 600, '1'),
(127, '2021AAAmixer 456ST.xls', 'mixer1', '11', '2020-06-09', '15:27:00', 'Agua', 250, 250, '1'),
(128, '2021AAAmixer 456ST.xls', 'mixer1', '11', '2020-06-09', '15:27:00', 'Maiz', 4560, 4550, '1'),
(129, '2021AAAmixer 456ST.xls', 'mixer1', '11', '2020-06-09', '15:27:00', 'Concentrado', 670, 600, '1'),
(130, '2021AAAmixer 456ST.xls', 'mixer1', '12', '2020-06-10', '08:47:00', 'CascaraMani', 600, 600, '1'),
(131, '2021AAAmixer 456ST.xls', 'mixer1', '12', '2020-06-10', '08:47:00', 'Agua', 250, 250, '1'),
(132, '2021AAAmixer 456ST.xls', 'mixer1', '12', '2020-06-10', '08:47:00', 'Maiz', 4550, 4550, '1'),
(133, '2021AAAmixer 456ST.xls', 'mixer1', '12', '2020-06-10', '08:47:00', 'Concentrado', 700, 600, '1'),
(134, '2021AAAmixer 456ST.xls', 'mixer1', '13', '2020-06-10', '15:40:00', 'CascaraMani', 400, 400, '1'),
(135, '2021AAAmixer 456ST.xls', 'mixer1', '13', '2020-06-10', '15:40:00', 'Agua', 170, 166, '1'),
(136, '2021AAAmixer 456ST.xls', 'mixer1', '13', '2020-06-10', '15:40:00', 'Maiz', 3050, 3033, '1'),
(137, '2021AAAmixer 456ST.xls', 'mixer1', '13', '2020-06-10', '15:40:00', 'Concentrado', 410, 400, '1'),
(138, '2021AAAmixer 456ST.xls', 'mixer1', '14', '2020-06-10', '16:53:00', 'CascaraMani', 610, 600, '1'),
(139, '2021AAAmixer 456ST.xls', 'mixer1', '14', '2020-06-10', '16:53:00', 'Agua', 250, 250, '1'),
(140, '2021AAAmixer 456ST.xls', 'mixer1', '14', '2020-06-10', '16:53:00', 'Maiz', 4600, 4550, '1'),
(141, '2021AAAmixer 456ST.xls', 'mixer1', '14', '2020-06-10', '16:53:00', 'Concentrado', 610, 600, '1'),
(142, '2021AAAmixer 456ST.xls', 'mixer1', '15', '2020-06-11', '09:08:00', 'Silo', 480, 480, '2'),
(143, '2021AAAmixer 456ST.xls', 'mixer1', '15', '2020-06-11', '09:08:00', 'Maiz', 420, 400, '2'),
(144, '2021AAAmixer 456ST.xls', 'mixer1', '15', '2020-06-11', '09:08:00', 'Concentrado', 120, 120, '2'),
(145, '2021AAAmixer 456ST.xls', 'mixer1', '16', '2020-06-11', '09:48:00', 'CascaraMani', 600, 600, '1'),
(146, '2021AAAmixer 456ST.xls', 'mixer1', '16', '2020-06-11', '09:48:00', 'Agua', 250, 250, '1'),
(147, '2021AAAmixer 456ST.xls', 'mixer1', '16', '2020-06-11', '09:48:00', 'Maiz', 4550, 4550, '1'),
(148, '2021AAAmixer 456ST.xls', 'mixer1', '16', '2020-06-11', '09:48:00', 'Concentrado', 620, 600, '1'),
(149, '2021AAAmixer 456ST.xls', 'mixer1', '17', '2020-06-12', '08:59:00', 'CascaraMani', 600, 600, '1'),
(150, '2021AAAmixer 456ST.xls', 'mixer1', '17', '2020-06-12', '08:59:00', 'Agua', 250, 250, '1'),
(151, '2021AAAmixer 456ST.xls', 'mixer1', '17', '2020-06-12', '08:59:00', 'Maiz', 4550, 4550, '1'),
(152, '2021AAAmixer 456ST.xls', 'mixer1', '17', '2020-06-12', '08:59:00', 'Concentrado', 610, 600, '1'),
(153, '2021AAAmixer 456ST.xls', 'mixer1', '18', '2020-06-12', '10:58:00', 'CascaraMani', 600, 600, '1'),
(154, '2021AAAmixer 456ST.xls', 'mixer1', '18', '2020-06-12', '10:58:00', 'Agua', 250, 250, '1'),
(155, '2021AAAmixer 456ST.xls', 'mixer1', '18', '2020-06-12', '10:58:00', 'Maiz', 4550, 4550, '1'),
(156, '2021AAAmixer 456ST.xls', 'mixer1', '18', '2020-06-12', '10:58:00', 'Concentrado', 600, 600, '1'),
(157, '2021AAAmixer 456ST.xls', 'mixer1', '19', '2020-06-13', '08:33:00', 'CascaraMani', 600, 600, '1'),
(158, '2021AAAmixer 456ST.xls', 'mixer1', '19', '2020-06-13', '08:33:00', 'Agua', 250, 250, '1'),
(159, '2021AAAmixer 456ST.xls', 'mixer1', '19', '2020-06-13', '08:33:00', 'Maiz', 4620, 4550, '1'),
(160, '2021AAAmixer 456ST.xls', 'mixer1', '19', '2020-06-13', '08:33:00', 'Concentrado', 610, 600, '1'),
(161, '2021AAAmixer 456ST.xls', 'mixer1', '20', '2020-06-13', '09:57:00', 'Silo', 960, 960, '2 INGRESO'),
(162, '2021AAAmixer 456ST.xls', 'mixer1', '20', '2020-06-13', '09:57:00', 'Maiz', 890, 800, '2 INGRESO'),
(163, '2021AAAmixer 456ST.xls', 'mixer1', '20', '2020-06-13', '09:57:00', 'Concentrado', 240, 240, '2 INGRESO'),
(164, '2021AAAmixer 456ST.xls', 'mixer1', '21', '2020-06-13', '10:37:00', 'CascaraMani', 610, 600, '1 GORDO'),
(165, '2021AAAmixer 456ST.xls', 'mixer1', '21', '2020-06-13', '10:37:00', 'Agua', 250, 250, '1 GORDO'),
(166, '2021AAAmixer 456ST.xls', 'mixer1', '21', '2020-06-13', '10:37:00', 'Maiz', 4590, 4550, '1 GORDO'),
(167, '2021AAAmixer 456ST.xls', 'mixer1', '21', '2020-06-13', '10:37:00', 'Concentrado', 630, 600, '1 GORDO'),
(168, '2021AAAmixer 456ST.xls', 'mixer1', '22', '2020-06-13', '16:00:00', 'CascaraMani', 600, 600, '1'),
(169, '2021AAAmixer 456ST.xls', 'mixer1', '22', '2020-06-13', '16:00:00', 'Agua', 250, 250, '1'),
(170, '2021AAAmixer 456ST.xls', 'mixer1', '22', '2020-06-13', '16:00:00', 'Maiz', 4560, 4550, '1'),
(171, '2021AAAmixer 456ST.xls', 'mixer1', '22', '2020-06-13', '16:00:00', 'Concentrado', 640, 600, '1'),
(172, '2021AAAmixer 456ST.xls', 'mixer1', '23', '2020-06-14', '09:23:00', 'CascaraMani', 600, 600, '1'),
(173, '2021AAAmixer 456ST.xls', 'mixer1', '23', '2020-06-14', '09:23:00', 'Agua', 250, 250, '1'),
(174, '2021AAAmixer 456ST.xls', 'mixer1', '23', '2020-06-14', '09:23:00', 'Maiz', 4560, 4550, '1'),
(175, '2021AAAmixer 456ST.xls', 'mixer1', '23', '2020-06-14', '09:23:00', 'Concentrado', 620, 600, '1'),
(176, '2021AAAmixer 456ST.xls', 'mixer1', '24', '2020-06-14', '16:44:00', 'CascaraMani', 610, 600, '1'),
(177, '2021AAAmixer 456ST.xls', 'mixer1', '24', '2020-06-14', '16:44:00', 'Agua', 250, 250, '1'),
(178, '2021AAAmixer 456ST.xls', 'mixer1', '24', '2020-06-14', '16:44:00', 'Maiz', 4560, 4550, '1'),
(179, '2021AAAmixer 456ST.xls', 'mixer1', '24', '2020-06-14', '16:44:00', 'Concentrado', 610, 600, '1'),
(180, '2021AAAmixer 456ST.xls', 'mixer1', '25', '2020-06-15', '14:54:00', 'CascaraMani', 600, 600, '1'),
(181, '2021AAAmixer 456ST.xls', 'mixer1', '25', '2020-06-15', '14:54:00', 'Agua', 250, 250, '1'),
(182, '2021AAAmixer 456ST.xls', 'mixer1', '25', '2020-06-15', '14:54:00', 'Maiz', 4550, 4550, '1'),
(183, '2021AAAmixer 456ST.xls', 'mixer1', '25', '2020-06-15', '14:54:00', 'Concentrado', 610, 600, '1'),
(184, '2021AAAmixer 456ST.xls', 'mixer1', '26', '2020-06-16', '09:00:00', 'CascaraMani', 620, 600, '1'),
(185, '2021AAAmixer 456ST.xls', 'mixer1', '26', '2020-06-16', '09:00:00', 'Agua', 250, 250, '1'),
(186, '2021AAAmixer 456ST.xls', 'mixer1', '26', '2020-06-16', '09:00:00', 'Maiz', 4560, 4550, '1'),
(187, '2021AAAmixer 456ST.xls', 'mixer1', '26', '2020-06-16', '09:00:00', 'Concentrado', 630, 600, '1'),
(188, '2021AAAmixer 456ST.xls', 'mixer1', '27', '2020-06-16', '16:18:00', 'CascaraMani', 600, 600, '1'),
(189, '2021AAAmixer 456ST.xls', 'mixer1', '27', '2020-06-16', '16:18:00', 'Agua', 250, 250, '1'),
(190, '2021AAAmixer 456ST.xls', 'mixer1', '27', '2020-06-16', '16:18:00', 'Maiz', 4560, 4550, '1'),
(191, '2021AAAmixer 456ST.xls', 'mixer1', '27', '2020-06-16', '16:18:00', 'Concentrado', 620, 600, '1'),
(192, '2021AAAmixer 456ST.xls', 'mixer1', '28', '2020-06-17', '09:00:00', 'CascaraMani', 610, 600, '1'),
(193, '2021AAAmixer 456ST.xls', 'mixer1', '28', '2020-06-17', '09:00:00', 'Agua', 250, 250, '1'),
(194, '2021AAAmixer 456ST.xls', 'mixer1', '28', '2020-06-17', '09:00:00', 'Maiz', 10, 4550, '1'),
(195, '2021AAAmixer 456ST.xls', 'mixer1', '29', '2020-06-17', '09:18:00', 'Maiz', 4580, 4550, '1'),
(196, '2021AAAmixer 456ST.xls', 'mixer1', '29', '2020-06-17', '09:18:00', 'Concentrado', 630, 600, '1'),
(197, '2021AAAmixer 456ST.xls', 'mixer1', '30', '2020-06-17', '15:31:00', 'CascaraMani', 600, 600, '1'),
(198, '2021AAAmixer 456ST.xls', 'mixer1', '30', '2020-06-17', '15:31:00', 'Agua', 250, 250, '1'),
(199, '2021AAAmixer 456ST.xls', 'mixer1', '30', '2020-06-17', '15:31:00', 'Maiz', 4560, 4550, '1'),
(200, '2021AAAmixer 456ST.xls', 'mixer1', '30', '2020-06-17', '15:31:00', 'Concentrado', 600, 600, '1'),
(201, '2021AAAmixer 456ST.xls', 'mixer1', '31', '2020-06-18', '08:39:00', 'CascaraMani', 600, 600, '1'),
(202, '2021AAAmixer 456ST.xls', 'mixer1', '31', '2020-06-18', '08:39:00', 'Agua', 250, 250, '1'),
(203, '2021AAAmixer 456ST.xls', 'mixer1', '31', '2020-06-18', '08:39:00', 'Maiz', 4580, 4550, '1'),
(204, '2021AAAmixer 456ST.xls', 'mixer1', '31', '2020-06-18', '08:39:00', 'Concentrado', 600, 600, '1'),
(205, '2021AAAmixer 456ST.xls', 'mixer1', '32', '2020-06-18', '09:57:00', 'CascaraMani', 600, 600, '1'),
(206, '2021AAAmixer 456ST.xls', 'mixer1', '32', '2020-06-18', '09:57:00', 'Agua', 250, 250, '1'),
(207, '2021AAAmixer 456ST.xls', 'mixer1', '32', '2020-06-18', '09:57:00', 'Maiz', 4600, 4550, '1'),
(208, '2021AAAmixer 456ST.xls', 'mixer1', '32', '2020-06-18', '09:57:00', 'Concentrado', 600, 600, '1'),
(209, '2021AAAmixer 456ST.xls', 'mixer1', '33', '2020-06-19', '08:51:00', 'Silo', 240, 240, '2'),
(210, '2021AAAmixer 456ST.xls', 'mixer1', '33', '2020-06-19', '08:51:00', 'Maiz', 200, 200, '2'),
(211, '2021AAAmixer 456ST.xls', 'mixer1', '33', '2020-06-19', '08:51:00', 'Concentrado', 70, 60, '2'),
(212, '2021AAAmixer 456ST.xls', 'mixer1', '34', '2020-06-19', '09:30:00', 'CascaraMani', 610, 600, '1'),
(213, '2021AAAmixer 456ST.xls', 'mixer1', '34', '2020-06-19', '09:30:00', 'Agua', 250, 250, '1'),
(214, '2021AAAmixer 456ST.xls', 'mixer1', '34', '2020-06-19', '09:30:00', 'Maiz', 4590, 4550, '1'),
(215, '2021AAAmixer 456ST.xls', 'mixer1', '34', '2020-06-19', '09:30:00', 'Concentrado', 630, 600, '1'),
(216, '2021AAAmixer 456ST.xls', 'mixer1', '35', '2020-06-19', '14:51:00', 'CascaraMani', 610, 600, '1'),
(217, '2021AAAmixer 456ST.xls', 'mixer1', '35', '2020-06-19', '14:51:00', 'Agua', 250, 250, '1'),
(218, '2021AAAmixer 456ST.xls', 'mixer1', '35', '2020-06-19', '14:51:00', 'Maiz', 4550, 4550, '1'),
(219, '2021AAAmixer 456ST.xls', 'mixer1', '35', '2020-06-19', '14:51:00', 'Concentrado', 620, 600, '1'),
(220, '2021AAAmixer 456ST.xls', 'mixer1', '36', '2020-06-20', '08:45:00', 'CascaraMani', 600, 600, '1'),
(221, '2021AAAmixer 456ST.xls', 'mixer1', '36', '2020-06-20', '08:45:00', 'Agua', 250, 250, '1'),
(222, '2021AAAmixer 456ST.xls', 'mixer1', '36', '2020-06-20', '08:45:00', 'Maiz', 4560, 4550, '1'),
(223, '2021AAAmixer 456ST.xls', 'mixer1', '36', '2020-06-20', '08:45:00', 'Concentrado', 600, 600, '1'),
(224, '2021AAAmixer 456ST.xls', 'mixer1', '37', '2020-06-20', '10:29:00', 'CascaraMani', 610, 600, '1'),
(225, '2021AAAmixer 456ST.xls', 'mixer1', '37', '2020-06-20', '10:29:00', 'Agua', 250, 250, '1'),
(226, '2021AAAmixer 456ST.xls', 'mixer1', '37', '2020-06-20', '10:29:00', 'Maiz', 4550, 4550, '1'),
(227, '2021AAAmixer 456ST.xls', 'mixer1', '37', '2020-06-20', '10:29:00', 'Concentrado', 610, 600, '1'),
(228, '2021AAAmixer 456ST.xls', 'mixer1', '38', '2020-06-20', '16:09:00', 'CascaraMani', 600, 600, '1'),
(229, '2021AAAmixer 456ST.xls', 'mixer1', '38', '2020-06-20', '16:09:00', 'Agua', 250, 250, '1'),
(230, '2021AAAmixer 456ST.xls', 'mixer1', '38', '2020-06-20', '16:09:00', 'Maiz', 4560, 4550, '1'),
(231, '2021AAAmixer 456ST.xls', 'mixer1', '38', '2020-06-20', '16:09:00', 'Concentrado', 610, 600, '1'),
(232, '2021AAAmixer 456ST.xls', 'mixer1', '39', '2020-06-21', '10:01:00', 'CascaraMani', 620, 600, '1'),
(233, '2021AAAmixer 456ST.xls', 'mixer1', '39', '2020-06-21', '10:01:00', 'Agua', 250, 250, '1'),
(234, '2021AAAmixer 456ST.xls', 'mixer1', '39', '2020-06-21', '10:01:00', 'Maiz', 4580, 4550, '1'),
(235, '2021AAAmixer 456ST.xls', 'mixer1', '39', '2020-06-21', '10:01:00', 'Concentrado', 600, 600, '1'),
(236, '2021AAAmixer 456ST.xls', 'mixer1', '40', '2020-06-22', '08:56:00', 'CascaraMani', 610, 600, '1'),
(237, '2021AAAmixer 456ST.xls', 'mixer1', '40', '2020-06-22', '08:56:00', 'Agua', 250, 250, '1'),
(238, '2021AAAmixer 456ST.xls', 'mixer1', '40', '2020-06-22', '08:56:00', 'Maiz', 4560, 4550, '1'),
(239, '2021AAAmixer 456ST.xls', 'mixer1', '40', '2020-06-22', '08:56:00', 'Concentrado', 610, 600, '1'),
(240, '2021AAAmixer 456ST.xls', 'mixer1', '41', '2020-06-22', '10:37:00', 'CascaraMani', 630, 600, '1'),
(241, '2021AAAmixer 456ST.xls', 'mixer1', '41', '2020-06-22', '10:37:00', 'Agua', 250, 250, '1'),
(242, '2021AAAmixer 456ST.xls', 'mixer1', '41', '2020-06-22', '10:37:00', 'Maiz', 4560, 4550, '1'),
(243, '2021AAAmixer 456ST.xls', 'mixer1', '41', '2020-06-22', '10:37:00', 'Concentrado', 600, 600, '1'),
(244, '2021AAAmixer 456ST.xls', 'mixer1', '42', '2020-06-22', '15:46:00', 'CascaraMani', 620, 600, '1'),
(245, '2021AAAmixer 456ST.xls', 'mixer1', '42', '2020-06-22', '15:46:00', 'Agua', 250, 250, '1'),
(246, '2021AAAmixer 456ST.xls', 'mixer1', '42', '2020-06-22', '15:46:00', 'Maiz', 4560, 4550, '1'),
(247, '2021AAAmixer 456ST.xls', 'mixer1', '42', '2020-06-22', '15:46:00', 'Concentrado', 600, 600, '1'),
(248, '2021AAAmixer 456ST.xls', 'mixer1', '43', '2020-06-23', '09:30:00', 'CascaraMani', 610, 600, '1'),
(249, '2021AAAmixer 456ST.xls', 'mixer1', '43', '2020-06-23', '09:30:00', 'Agua', 250, 250, '1'),
(250, '2021AAAmixer 456ST.xls', 'mixer1', '43', '2020-06-23', '09:30:00', 'Maiz', 4600, 4550, '1'),
(251, '2021AAAmixer 456ST.xls', 'mixer1', '43', '2020-06-23', '09:30:00', 'Concentrado', 600, 600, '1'),
(252, '2021AAAmixer 456ST.xls', 'mixer1', '44', '2020-06-23', '17:32:00', 'CascaraMani', 600, 600, '1'),
(253, '2021AAAmixer 456ST.xls', 'mixer1', '44', '2020-06-23', '17:32:00', 'Agua', 250, 250, '1'),
(254, '2021AAAmixer 456ST.xls', 'mixer1', '44', '2020-06-23', '17:32:00', 'Maiz', 4560, 4550, '1'),
(255, '2021AAAmixer 456ST.xls', 'mixer1', '44', '2020-06-23', '17:32:00', 'Concentrado', 600, 600, '1'),
(256, '2021AAAmixer 456ST.xls', 'mixer1', '45', '2020-06-24', '09:30:00', 'CascaraMani', 620, 600, '1'),
(257, '2021AAAmixer 456ST.xls', 'mixer1', '45', '2020-06-24', '09:30:00', 'Agua', 250, 250, '1'),
(258, '2021AAAmixer 456ST.xls', 'mixer1', '45', '2020-06-24', '09:30:00', 'Maiz', 4550, 4550, '1'),
(259, '2021AAAmixer 456ST.xls', 'mixer1', '45', '2020-06-24', '09:30:00', 'Concentrado', 600, 600, '1'),
(260, '2021AAAmixer 456ST.xls', 'mixer1', '46', '2020-06-24', '15:43:00', 'CascaraMani', 510, 500, '1'),
(261, '2021AAAmixer 456ST.xls', 'mixer1', '46', '2020-06-24', '15:43:00', 'Agua', 210, 208, '1'),
(262, '2021AAAmixer 456ST.xls', 'mixer1', '46', '2020-06-24', '15:43:00', 'Maiz', 3800, 3791, '1'),
(263, '2021AAAmixer 456ST.xls', 'mixer1', '46', '2020-06-24', '15:43:00', 'Concentrado', 500, 500, '1'),
(264, '2021AAAmixer 456ST.xls', 'mixer1', '47', '2020-06-24', '16:13:00', 'CascaraMani', 10, 500, '1'),
(265, '2021AAAmixer 456ST.xls', 'mixer1', '48', '2020-06-25', '15:34:00', 'CascaraMani', 600, 600, '1'),
(266, '2021AAAmixer 456ST.xls', 'mixer1', '48', '2020-06-25', '15:34:00', 'Agua', 250, 250, '1'),
(267, '2021AAAmixer 456ST.xls', 'mixer1', '48', '2020-06-25', '15:34:00', 'Maiz', 4550, 4550, '1'),
(268, '2021AAAmixer 456ST.xls', 'mixer1', '48', '2020-06-25', '15:34:00', 'Concentrado', 600, 600, '1'),
(269, '2021AAAmixer 456ST.xls', 'mixer1', '49', '2020-06-25', '17:08:00', 'CascaraMani', 620, 600, '1'),
(270, '2021AAAmixer 456ST.xls', 'mixer1', '49', '2020-06-25', '17:08:00', 'Agua', 250, 250, '1'),
(271, '2021AAAmixer 456ST.xls', 'mixer1', '49', '2020-06-25', '17:08:00', 'Maiz', 4550, 4550, '1'),
(272, '2021AAAmixer 456ST.xls', 'mixer1', '49', '2020-06-25', '17:08:00', 'Concentrado', 600, 600, '1'),
(273, '2021AAAmixer 456ST.xls', 'mixer1', '50', '2020-06-26', '10:16:00', 'CascaraMani', 600, 600, '1'),
(274, '2021AAAmixer 456ST.xls', 'mixer1', '50', '2020-06-26', '10:16:00', 'Agua', 260, 250, '1'),
(275, '2021AAAmixer 456ST.xls', 'mixer1', '50', '2020-06-26', '10:16:00', 'Maiz', 4550, 4550, '1'),
(276, '2021AAAmixer 456ST.xls', 'mixer1', '50', '2020-06-26', '10:16:00', 'Concentrado', 610, 600, '1'),
(277, '2021AAAmixer 456ST.xls', 'mixer1', '51', '2020-06-26', '17:20:00', 'CascaraMani', 600, 600, '1'),
(278, '2021AAAmixer 456ST.xls', 'mixer1', '51', '2020-06-26', '17:20:00', 'Agua', 250, 250, '1'),
(279, '2021AAAmixer 456ST.xls', 'mixer1', '51', '2020-06-26', '17:20:00', 'Maiz', 4560, 4550, '1'),
(280, '2021AAAmixer 456ST.xls', 'mixer1', '51', '2020-06-26', '17:20:00', 'Concentrado', 620, 600, '1'),
(281, '2021AAAmixer 456ST.xls', 'mixer1', '52', '2020-06-27', '09:09:00', 'CascaraMani', 620, 600, '1'),
(282, '2021AAAmixer 456ST.xls', 'mixer1', '52', '2020-06-27', '09:09:00', 'Agua', 250, 250, '1'),
(283, '2021AAAmixer 456ST.xls', 'mixer1', '52', '2020-06-27', '09:09:00', 'Maiz', 4570, 4550, '1'),
(284, '2021AAAmixer 456ST.xls', 'mixer1', '52', '2020-06-27', '09:09:00', 'Concentrado', 610, 600, '1'),
(285, '2021AAAmixer 456ST.xls', 'mixer1', '53', '2020-06-27', '15:37:00', 'CascaraMani', 600, 600, '1'),
(286, '2021AAAmixer 456ST.xls', 'mixer1', '53', '2020-06-27', '15:37:00', 'Agua', 250, 250, '1'),
(287, '2021AAAmixer 456ST.xls', 'mixer1', '53', '2020-06-27', '15:37:00', 'Maiz', 4560, 4550, '1'),
(288, '2021AAAmixer 456ST.xls', 'mixer1', '53', '2020-06-27', '15:37:00', 'Concentrado', 610, 600, '1'),
(289, '2021AAAmixer 456ST.xls', 'mixer1', '54', '2020-06-28', '09:01:00', 'CascaraMani', 600, 600, '1'),
(290, '2021AAAmixer 456ST.xls', 'mixer1', '54', '2020-06-28', '09:01:00', 'Agua', 250, 250, '1'),
(291, '2021AAAmixer 456ST.xls', 'mixer1', '54', '2020-06-28', '09:01:00', 'Maiz', 4560, 4550, '1'),
(292, '2021AAAmixer 456ST.xls', 'mixer1', '54', '2020-06-28', '09:01:00', 'Concentrado', 600, 600, '1'),
(293, '2021AAAmixer 456ST.xls', 'mixer1', '55', '2020-06-28', '15:59:00', 'CascaraMani', 600, 600, '1'),
(294, '2021AAAmixer 456ST.xls', 'mixer1', '55', '2020-06-28', '15:59:00', 'Agua', 250, 250, '1'),
(295, '2021AAAmixer 456ST.xls', 'mixer1', '55', '2020-06-28', '15:59:00', 'Maiz', 4570, 4550, '1'),
(296, '2021AAAmixer 456ST.xls', 'mixer1', '55', '2020-06-28', '15:59:00', 'Concentrado', 610, 600, '1'),
(297, '2021AAAmixer 456ST.xls', 'mixer1', '56', '2020-06-29', '09:22:00', 'CascaraMani', 600, 600, '1'),
(298, '2021AAAmixer 456ST.xls', 'mixer1', '56', '2020-06-29', '09:22:00', 'Agua', 250, 250, '1'),
(299, '2021AAAmixer 456ST.xls', 'mixer1', '56', '2020-06-29', '09:22:00', 'Maiz', 4590, 4550, '1'),
(300, '2021AAAmixer 456ST.xls', 'mixer1', '56', '2020-06-29', '09:22:00', 'Concentrado', 600, 600, '1'),
(301, '2021AAAmixer 456ST.xls', 'mixer1', '57', '2020-06-29', '16:03:00', 'CascaraMani', 600, 600, '1'),
(302, '2021AAAmixer 456ST.xls', 'mixer1', '57', '2020-06-29', '16:03:00', 'Agua', 250, 250, '1'),
(303, '2021AAAmixer 456ST.xls', 'mixer1', '57', '2020-06-29', '16:03:00', 'Maiz', 4600, 4550, '1'),
(304, '2021AAAmixer 456ST.xls', 'mixer1', '57', '2020-06-29', '16:03:00', 'Concentrado', 600, 600, '1'),
(305, '2021AAAmixer 456ST.xls', 'mixer1', '58', '2020-06-30', '15:42:00', 'CascaraMani', 620, 600, '1'),
(306, '2021AAAmixer 456ST.xls', 'mixer1', '58', '2020-06-30', '15:42:00', 'Agua', 250, 250, '1'),
(307, '2021AAAmixer 456ST.xls', 'mixer1', '58', '2020-06-30', '15:42:00', 'Maiz', 4590, 4550, '1'),
(308, '2021AAAmixer 456ST.xls', 'mixer1', '58', '2020-06-30', '15:42:00', 'Concentrado', 620, 600, '1'),
(309, '2021AAAmixer 456ST.xls', 'mixer1', '59', '2020-07-01', '09:16:00', 'CascaraMani', 600, 600, '1'),
(310, '2021AAAmixer 456ST.xls', 'mixer1', '59', '2020-07-01', '09:16:00', 'Agua', 250, 250, '1'),
(311, '2021AAAmixer 456ST.xls', 'mixer1', '59', '2020-07-01', '09:16:00', 'Maiz', 4620, 4550, '1'),
(312, '2021AAAmixer 456ST.xls', 'mixer1', '59', '2020-07-01', '09:16:00', 'Concentrado', 600, 600, '1'),
(313, '2021AAAmixer 456ST.xls', 'mixer1', '60', '2020-07-01', '15:43:00', 'CascaraMani', 600, 600, '1'),
(314, '2021AAAmixer 456ST.xls', 'mixer1', '60', '2020-07-01', '15:43:00', 'Agua', 250, 250, '1'),
(315, '2021AAAmixer 456ST.xls', 'mixer1', '60', '2020-07-01', '15:43:00', 'Maiz', 4590, 4550, '1'),
(316, '2021AAAmixer 456ST.xls', 'mixer1', '60', '2020-07-01', '15:43:00', 'Concentrado', 600, 600, '1'),
(317, '2021AAAmixer 456ST.xls', 'mixer1', '61', '2020-07-02', '09:31:00', 'CascaraMani', 610, 600, '1'),
(318, '2021AAAmixer 456ST.xls', 'mixer1', '61', '2020-07-02', '09:31:00', 'Agua', 250, 250, '1'),
(319, '2021AAAmixer 456ST.xls', 'mixer1', '61', '2020-07-02', '09:31:00', 'Maiz', 4550, 4550, '1'),
(320, '2021AAAmixer 456ST.xls', 'mixer1', '61', '2020-07-02', '09:31:00', 'Concentrado', 600, 600, '1'),
(321, '2021AAAmixer 456ST.xls', 'mixer1', '62', '2020-07-02', '16:06:00', 'CascaraMani', 510, 500, '1'),
(322, '2021AAAmixer 456ST.xls', 'mixer1', '62', '2020-07-02', '16:06:00', 'Agua', 210, 208, '1'),
(323, '2021AAAmixer 456ST.xls', 'mixer1', '62', '2020-07-02', '16:06:00', 'Maiz', 3810, 3791, '1'),
(324, '2021AAAmixer 456ST.xls', 'mixer1', '62', '2020-07-02', '16:06:00', 'Concentrado', 500, 500, '1'),
(325, '2021AAAmixer 456ST.xls', 'mixer1', '63', '2020-07-03', '15:25:00', 'CascaraMani', 610, 600, '1'),
(326, '2021AAAmixer 456ST.xls', 'mixer1', '63', '2020-07-03', '15:25:00', 'Agua', 250, 250, '1'),
(327, '2021AAAmixer 456ST.xls', 'mixer1', '63', '2020-07-03', '15:25:00', 'Maiz', 4570, 4550, '1'),
(328, '2021AAAmixer 456ST.xls', 'mixer1', '63', '2020-07-03', '15:25:00', 'Concentrado', 830, 600, '1'),
(329, '2021AAAmixer 456ST.xls', 'mixer1', '64', '2020-07-04', '08:48:00', 'CascaraMani', 600, 600, '1'),
(330, '2021AAAmixer 456ST.xls', 'mixer1', '64', '2020-07-04', '08:48:00', 'Agua', 250, 250, '1'),
(331, '2021AAAmixer 456ST.xls', 'mixer1', '64', '2020-07-04', '08:48:00', 'Maiz', 4560, 4550, '1'),
(332, '2021AAAmixer 456ST.xls', 'mixer1', '64', '2020-07-04', '08:48:00', 'Concentrado', 600, 600, '1'),
(333, '2021AAAmixer 456ST.xls', 'mixer1', '65', '2020-07-04', '15:51:00', 'CascaraMani', 610, 600, '1'),
(334, '2021AAAmixer 456ST.xls', 'mixer1', '65', '2020-07-04', '15:51:00', 'Agua', 250, 250, '1'),
(335, '2021AAAmixer 456ST.xls', 'mixer1', '65', '2020-07-04', '15:51:00', 'Maiz', 4550, 4550, '1'),
(336, '2021AAAmixer 456ST.xls', 'mixer1', '65', '2020-07-04', '15:51:00', 'Concentrado', 600, 600, '1'),
(337, '2021AAAmixer 456ST.xls', 'mixer1', '66', '2020-07-05', '09:40:00', 'CascaraMani', 610, 600, '1'),
(338, '2021AAAmixer 456ST.xls', 'mixer1', '66', '2020-07-05', '09:40:00', 'Agua', 250, 250, '1'),
(339, '2021AAAmixer 456ST.xls', 'mixer1', '66', '2020-07-05', '09:40:00', 'Maiz', 4550, 4550, '1'),
(340, '2021AAAmixer 456ST.xls', 'mixer1', '66', '2020-07-05', '09:40:00', 'Concentrado', 600, 600, '1'),
(341, '2021AAAmixer 456ST.xls', 'mixer1', '67', '2020-07-05', '15:52:00', 'CascaraMani', 610, 600, '1'),
(342, '2021AAAmixer 456ST.xls', 'mixer1', '67', '2020-07-05', '15:52:00', 'Agua', 250, 250, '1'),
(343, '2021AAAmixer 456ST.xls', 'mixer1', '67', '2020-07-05', '15:52:00', 'Maiz', 4550, 4550, '1'),
(344, '2021AAAmixer 456ST.xls', 'mixer1', '67', '2020-07-05', '15:52:00', 'Concentrado', 600, 600, '1'),
(345, '2021AAAmixer 456ST.xls', 'mixer1', '68', '2020-06-07', '15:06:00', 'CascaraMani', 600, 600, '1'),
(346, '2021AAAmixer 456ST.xls', 'mixer1', '68', '2020-07-06', '15:06:00', 'Agua', 250, 250, '1'),
(347, '2021AAAmixer 456ST.xls', 'mixer1', '68', '2020-07-06', '15:06:00', 'Maiz', 4600, 4550, '1'),
(348, '2021AAAmixer 456ST.xls', 'mixer1', '68', '2020-07-06', '15:06:00', 'Concentrado', 600, 600, '1'),
(349, '2021AAAmixer 456ST.xls', 'mixer1', '69', '2020-07-07', '09:07:00', 'CascaraMani', 600, 600, '1'),
(350, '2021AAAmixer 456ST.xls', 'mixer1', '69', '2020-07-07', '09:07:00', 'Agua', 250, 250, '1'),
(351, '2021AAAmixer 456ST.xls', 'mixer1', '69', '2020-07-07', '09:07:00', 'Maiz', 4570, 4550, '1'),
(352, '2021AAAmixer 456ST.xls', 'mixer1', '69', '2020-07-07', '09:07:00', 'Concentrado', 620, 600, '1'),
(353, '2021AAAmixer 456ST.xls', 'mixer1', '70', '2020-07-07', '14:49:00', 'CascaraMani', 500, 500, '1'),
(354, '2021AAAmixer 456ST.xls', 'mixer1', '70', '2020-07-07', '14:49:00', 'Agua', 210, 208, '1'),
(355, '2021AAAmixer 456ST.xls', 'mixer1', '70', '2020-07-07', '14:49:00', 'Maiz', 3800, 3791, '1'),
(356, '2021AAAmixer 456ST.xls', 'mixer1', '70', '2020-07-07', '14:49:00', 'Concentrado', 510, 500, '1'),
(357, '2021AAAmixer 456ST.xls', 'mixer1', '71', '2020-07-08', '09:38:00', 'CascaraMani', 610, 600, '1'),
(358, '2021AAAmixer 456ST.xls', 'mixer1', '71', '2020-07-08', '09:38:00', 'Agua', 250, 250, '1'),
(359, '2021AAAmixer 456ST.xls', 'mixer1', '71', '2020-07-08', '09:38:00', 'Maiz', 4590, 4550, '1'),
(360, '2021AAAmixer 456ST.xls', 'mixer1', '71', '2020-07-08', '09:38:00', 'Concentrado', 610, 600, '1'),
(361, '2021AAAmixer 456ST.xls', 'mixer1', '72', '2020-07-08', '14:54:00', 'CascaraMani', 600, 600, '1'),
(362, '2021AAAmixer 456ST.xls', 'mixer1', '72', '2020-07-08', '14:54:00', 'Agua', 250, 250, '1'),
(363, '2021AAAmixer 456ST.xls', 'mixer1', '72', '2020-07-08', '14:54:00', 'Maiz', 4600, 4550, '1'),
(364, '2021AAAmixer 456ST.xls', 'mixer1', '72', '2020-07-08', '14:54:00', 'Concentrado', 600, 600, '1'),
(365, '2021AAAmixer 456ST.xls', 'mixer1', '73', '2020-07-09', '16:10:00', 'CascaraMani', 610, 600, '1'),
(366, '2021AAAmixer 456ST.xls', 'mixer1', '73', '2020-07-09', '16:10:00', 'Agua', 250, 250, '1'),
(367, '2021AAAmixer 456ST.xls', 'mixer1', '73', '2020-07-09', '16:10:00', 'Maiz', 4550, 4550, '1'),
(368, '2021AAAmixer 456ST.xls', 'mixer1', '73', '2020-07-09', '16:10:00', 'Concentrado', 600, 600, '1'),
(369, '2021AAAmixer 456ST.xls', 'mixer1', '74', '2020-07-10', '15:15:00', 'CascaraMani', 600, 600, '1'),
(370, '2021AAAmixer 456ST.xls', 'mixer1', '74', '2020-07-10', '15:15:00', 'Agua', 250, 250, '1'),
(371, '2021AAAmixer 456ST.xls', 'mixer1', '74', '2020-07-10', '15:15:00', 'Maiz', 4560, 4550, '1'),
(372, '2021AAAmixer 456ST.xls', 'mixer1', '74', '2020-07-10', '15:15:00', 'Concentrado', 600, 600, '1'),
(373, '2021AAAmixer 456ST.xls', 'mixer1', '75', '2020-07-11', '08:26:00', 'CascaraMani', 610, 600, '1'),
(374, '2021AAAmixer 456ST.xls', 'mixer1', '75', '2020-07-11', '08:26:00', 'Agua', 250, 250, '1'),
(375, '2021AAAmixer 456ST.xls', 'mixer1', '75', '2020-07-11', '08:26:00', 'Maiz', 4580, 4550, '1'),
(376, '2021AAAmixer 456ST.xls', 'mixer1', '75', '2020-07-11', '08:26:00', 'Concentrado', 600, 600, '1'),
(377, '2021AAAmixer 456ST.xls', 'mixer1', '76', '2020-07-11', '15:56:00', 'CascaraMani', 600, 600, '1'),
(378, '2021AAAmixer 456ST.xls', 'mixer1', '76', '2020-07-11', '15:56:00', 'Agua', 250, 250, '1'),
(379, '2021AAAmixer 456ST.xls', 'mixer1', '76', '2020-07-11', '15:56:00', 'Maiz', 4580, 4550, '1'),
(380, '2021AAAmixer 456ST.xls', 'mixer1', '76', '2020-07-11', '15:56:00', 'Concentrado', 600, 600, '1'),
(381, '2021AAAmixer 456ST.xls', 'mixer1', '77', '2020-07-12', '08:56:00', 'CascaraMani', 650, 600, '1'),
(382, '2021AAAmixer 456ST.xls', 'mixer1', '77', '2020-07-12', '08:56:00', 'Agua', 250, 250, '1'),
(383, '2021AAAmixer 456ST.xls', 'mixer1', '77', '2020-07-12', '08:56:00', 'Maiz', 4570, 4550, '1'),
(384, '2021AAAmixer 456ST.xls', 'mixer1', '77', '2020-07-12', '08:56:00', 'Concentrado', 600, 600, '1'),
(385, '2021AAAmixer 456ST.xls', 'mixer1', '78', '2020-07-12', '15:54:00', 'CascaraMani', 610, 600, '1'),
(386, '2021AAAmixer 456ST.xls', 'mixer1', '78', '2020-07-12', '15:54:00', 'Agua', 250, 250, '1'),
(387, '2021AAAmixer 456ST.xls', 'mixer1', '78', '2020-07-12', '15:54:00', 'Maiz', 4560, 4550, '1'),
(388, '2021AAAmixer 456ST.xls', 'mixer1', '78', '2020-07-12', '15:54:00', 'Concentrado', 600, 600, '1'),
(389, '2021AAAmixer 456ST.xls', 'mixer1', '79', '2020-07-13', '09:51:00', 'CascaraMani', 610, 600, '1'),
(390, '2021AAAmixer 456ST.xls', 'mixer1', '79', '2020-07-13', '09:51:00', 'Agua', 250, 250, '1'),
(391, '2021AAAmixer 456ST.xls', 'mixer1', '79', '2020-07-13', '09:51:00', 'Maiz', 4550, 4550, '1'),
(392, '2021AAAmixer 456ST.xls', 'mixer1', '79', '2020-07-13', '09:51:00', 'Concentrado', 600, 600, '1'),
(393, '2021AAAmixer 456ST.xls', 'mixer1', '80', '2020-07-13', '16:53:00', 'CascaraMani', 600, 600, '1'),
(394, '2021AAAmixer 456ST.xls', 'mixer1', '80', '2020-07-13', '16:53:00', 'Agua', 250, 250, '1'),
(395, '2021AAAmixer 456ST.xls', 'mixer1', '80', '2020-07-13', '16:53:00', 'Maiz', 4550, 4550, '1'),
(396, '2021AAAmixer 456ST.xls', 'mixer1', '80', '2020-07-13', '16:53:00', 'Concentrado', 600, 600, '1'),
(397, '2021AAAmixer 456ST.xls', 'mixer1', '81', '2020-07-14', '15:42:00', 'CascaraMani', 600, 600, '1'),
(398, '2021AAAmixer 456ST.xls', 'mixer1', '81', '2020-07-14', '15:42:00', 'Agua', 250, 250, '1'),
(399, '2021AAAmixer 456ST.xls', 'mixer1', '81', '2020-07-14', '15:42:00', 'Maiz', 4880, 4550, '1'),
(400, '2021AAAmixer 456ST.xls', 'mixer1', '81', '2020-07-14', '15:42:00', 'Concentrado', 600, 600, '1'),
(401, '2021AAAmixer 456ST.xls', 'mixer1', '82', '2020-07-15', '09:03:00', 'CascaraMani', 600, 600, '1'),
(402, '2021AAAmixer 456ST.xls', 'mixer1', '82', '2020-07-15', '09:03:00', 'Agua', 250, 250, '1'),
(403, '2021AAAmixer 456ST.xls', 'mixer1', '82', '2020-07-15', '09:03:00', 'Maiz', 4580, 4550, '1'),
(404, '2021AAAmixer 456ST.xls', 'mixer1', '82', '2020-07-15', '09:03:00', 'Concentrado', 600, 600, '1'),
(405, '2021AAAmixer 456ST.xls', 'mixer1', '83', '2020-07-15', '15:59:00', 'CascaraMani', 600, 600, '1'),
(406, '2021AAAmixer 456ST.xls', 'mixer1', '83', '2020-07-15', '15:59:00', 'Agua', 250, 250, '1'),
(407, '2021AAAmixer 456ST.xls', 'mixer1', '83', '2020-07-15', '15:59:00', 'Maiz', 4560, 4550, '1'),
(408, '2021AAAmixer 456ST.xls', 'mixer1', '83', '2020-07-15', '15:59:00', 'Concentrado', 610, 600, '1'),
(409, '2021AAAmixer 456ST.xls', 'mixer1', '84', '2020-07-16', '16:10:00', 'CascaraMani', 610, 600, '1'),
(410, '2021AAAmixer 456ST.xls', 'mixer1', '84', '2020-07-16', '16:10:00', 'Agua', 250, 250, '1'),
(411, '2021AAAmixer 456ST.xls', 'mixer1', '84', '2020-07-16', '16:10:00', 'Maiz', 4590, 4550, '1'),
(412, '2021AAAmixer 456ST.xls', 'mixer1', '84', '2020-07-16', '16:10:00', 'Concentrado', 600, 600, '1'),
(413, '2021AAAmixer 456ST.xls', 'mixer1', '85', '2020-07-17', '09:19:00', 'CascaraMani', 600, 600, '1'),
(414, '2021AAAmixer 456ST.xls', 'mixer1', '85', '2020-07-17', '09:19:00', 'Agua', 250, 250, '1'),
(415, '2021AAAmixer 456ST.xls', 'mixer1', '85', '2020-07-17', '09:19:00', 'Maiz', 4580, 4550, '1'),
(416, '2021AAAmixer 456ST.xls', 'mixer1', '85', '2020-07-17', '09:19:00', 'Concentrado', 610, 600, '1'),
(417, '2021AAAmixer 456ST.xls', 'mixer1', '86', '2020-07-17', '16:17:00', 'CascaraMani', 600, 600, '1'),
(418, '2021AAAmixer 456ST.xls', 'mixer1', '86', '2020-07-17', '16:17:00', 'Agua', 250, 250, '1'),
(419, '2021AAAmixer 456ST.xls', 'mixer1', '86', '2020-07-17', '16:17:00', 'Maiz', 4650, 4550, '1'),
(420, '2021AAAmixer 456ST.xls', 'mixer1', '86', '2020-07-17', '16:17:00', 'Concentrado', 620, 600, '1'),
(421, '2021AAAmixer 456ST.xls', 'mixer1', '87', '2020-07-18', '09:27:00', 'CascaraMani', 600, 600, '1'),
(422, '2021AAAmixer 456ST.xls', 'mixer1', '87', '2020-07-18', '09:27:00', 'Agua', 250, 250, '1'),
(423, '2021AAAmixer 456ST.xls', 'mixer1', '87', '2020-07-18', '09:27:00', 'Maiz', 4560, 4550, '1'),
(424, '2021AAAmixer 456ST.xls', 'mixer1', '87', '2020-07-18', '09:27:00', 'Concentrado', 610, 600, '1'),
(425, '2021AAAmixer 456ST.xls', 'mixer1', '88', '2020-07-19', '09:00:00', 'Silo', 160, 120, '2'),
(426, '2021AAAmixer 456ST.xls', 'mixer1', '88', '2020-07-19', '09:00:00', 'Maiz', 130, 100, '2'),
(427, '2021AAAmixer 456ST.xls', 'mixer1', '88', '2020-07-19', '09:00:00', 'Concentrado', 40, 30, '2'),
(428, '2021AAAmixer 456ST.xls', 'mixer1', '89', '2020-07-19', '09:29:00', 'CascaraMani', 620, 600, '1'),
(429, '2021AAAmixer 456ST.xls', 'mixer1', '89', '2020-07-19', '09:29:00', 'Agua', 250, 250, '1'),
(430, '2021AAAmixer 456ST.xls', 'mixer1', '89', '2020-07-19', '09:29:00', 'Maiz', 4610, 4550, '1'),
(431, '2021AAAmixer 456ST.xls', 'mixer1', '89', '2020-07-19', '09:29:00', 'Concentrado', 600, 600, '1'),
(432, '2021AAAmixer 456ST.xls', 'mixer1', '90', '2020-07-19', '15:39:00', 'CascaraMani', 630, 600, '1'),
(433, '2021AAAmixer 456ST.xls', 'mixer1', '90', '2020-07-19', '15:39:00', 'Agua', 250, 250, '1'),
(434, '2021AAAmixer 456ST.xls', 'mixer1', '90', '2020-07-19', '15:39:00', 'Maiz', 4550, 4550, '1'),
(435, '2021AAAmixer 456ST.xls', 'mixer1', '90', '2020-07-19', '15:39:00', 'Concentrado', 600, 600, '1'),
(436, '2021AAAmixer 456ST.xls', 'mixer1', '91', '2020-07-20', '09:54:00', 'Silo', 100, 96, '2'),
(437, '2021AAAmixer 456ST.xls', 'mixer1', '91', '2020-07-20', '09:54:00', 'Maiz', 80, 80, '2'),
(438, '2021AAAmixer 456ST.xls', 'mixer1', '91', '2020-07-20', '09:54:00', 'Concentrado', 30, 24, '2'),
(439, '2021AAAmixer 456ST.xls', 'mixer1', '92', '2020-07-20', '10:17:00', 'CascaraMani', 600, 600, '1'),
(440, '2021AAAmixer 456ST.xls', 'mixer1', '92', '2020-07-20', '10:17:00', 'Agua', 250, 250, '1'),
(441, '2021AAAmixer 456ST.xls', 'mixer1', '92', '2020-07-20', '10:17:00', 'Maiz', 4560, 4550, '1'),
(442, '2021AAAmixer 456ST.xls', 'mixer1', '92', '2020-07-20', '10:17:00', 'Concentrado', 600, 600, '1'),
(443, '2021AAAmixer 456ST.xls', 'mixer1', '93', '2020-07-21', '08:38:00', 'CascaraMani', 610, 600, '1'),
(444, '2021AAAmixer 456ST.xls', 'mixer1', '93', '2020-07-21', '08:38:00', 'Agua', 250, 250, '1'),
(445, '2021AAAmixer 456ST.xls', 'mixer1', '93', '2020-07-21', '08:38:00', 'Maiz', 4550, 4550, '1'),
(446, '2021AAAmixer 456ST.xls', 'mixer1', '93', '2020-07-21', '08:38:00', 'Concentrado', 600, 600, '1'),
(447, '2021AAAmixer 456ST.xls', 'mixer1', '94', '2020-07-21', '16:24:00', 'CascaraMani', 600, 600, '1'),
(448, '2021AAAmixer 456ST.xls', 'mixer1', '94', '2020-07-21', '16:24:00', 'Agua', 250, 250, '1'),
(449, '2021AAAmixer 456ST.xls', 'mixer1', '94', '2020-07-21', '16:24:00', 'Maiz', 4550, 4550, '1'),
(450, '2021AAAmixer 456ST.xls', 'mixer1', '94', '2020-07-21', '16:24:00', 'Concentrado', 610, 600, '1'),
(451, '2021AAAmixer 456ST.xls', 'mixer1', '95', '2020-07-22', '09:01:00', 'CascaraMani', 620, 600, '1'),
(452, '2021AAAmixer 456ST.xls', 'mixer1', '95', '2020-07-22', '09:01:00', 'Agua', 250, 250, '1'),
(453, '2021AAAmixer 456ST.xls', 'mixer1', '95', '2020-07-22', '09:01:00', 'Maiz', 4560, 4550, '1'),
(454, '2021AAAmixer 456ST.xls', 'mixer1', '95', '2020-07-22', '09:01:00', 'Concentrado', 610, 600, '1'),
(455, '2021AAAmixer 456ST.xls', 'mixer1', '96', '2020-07-22', '16:01:00', 'CascaraMani', 600, 600, '1'),
(456, '2021AAAmixer 456ST.xls', 'mixer1', '96', '2020-07-22', '16:01:00', 'Agua', 250, 250, '1'),
(457, '2021AAAmixer 456ST.xls', 'mixer1', '96', '2020-07-22', '16:01:00', 'Maiz', 4550, 4550, '1'),
(458, '2021AAAmixer 456ST.xls', 'mixer1', '96', '2020-07-22', '16:01:00', 'Concentrado', 600, 600, '1'),
(459, '2021AAAmixer 456ST.xls', 'mixer1', '97', '2020-07-23', '15:41:00', 'CascaraMani', 630, 600, '1'),
(460, '2021AAAmixer 456ST.xls', 'mixer1', '97', '2020-07-23', '15:41:00', 'Agua', 250, 250, '1'),
(461, '2021AAAmixer 456ST.xls', 'mixer1', '97', '2020-07-23', '15:41:00', 'Maiz', 4560, 4550, '1'),
(462, '2021AAAmixer 456ST.xls', 'mixer1', '97', '2020-07-23', '15:41:00', 'Concentrado', 640, 600, '1'),
(463, '2021AAAmixer 456ST.xls', 'mixer1', '98', '2020-07-24', '08:55:00', 'CascaraMani', 600, 600, '1'),
(464, '2021AAAmixer 456ST.xls', 'mixer1', '98', '2020-07-24', '08:55:00', 'Agua', 250, 250, '1'),
(465, '2021AAAmixer 456ST.xls', 'mixer1', '98', '2020-07-24', '08:55:00', 'Maiz', 4560, 4550, '1'),
(466, '2021AAAmixer 456ST.xls', 'mixer1', '98', '2020-07-24', '08:55:00', 'Concentrado', 620, 600, '1'),
(467, '2021AAAmixer 456ST.xls', 'mixer1', '99', '2020-07-24', '15:41:00', 'CascaraMani', 600, 600, '1'),
(468, '2021AAAmixer 456ST.xls', 'mixer1', '99', '2020-07-24', '15:41:00', 'Agua', 250, 250, '1'),
(469, '2021AAAmixer 456ST.xls', 'mixer1', '99', '2020-07-24', '15:41:00', 'Maiz', 4560, 4550, '1'),
(470, '2021AAAmixer 456ST.xls', 'mixer1', '99', '2020-07-24', '15:41:00', 'Concentrado', 630, 600, '1'),
(471, '2021AAAmixer 456ST.xls', 'mixer1', '100', '2020-07-25', '15:17:00', 'CascaraMani', 620, 600, '1'),
(472, '2021AAAmixer 456ST.xls', 'mixer1', '100', '2020-07-25', '15:17:00', 'Agua', 250, 250, '1'),
(473, '2021AAAmixer 456ST.xls', 'mixer1', '100', '2020-07-25', '15:17:00', 'Maiz', 4550, 4550, '1'),
(474, '2021AAAmixer 456ST.xls', 'mixer1', '100', '2020-07-25', '15:17:00', 'Concentrado', 650, 600, '1'),
(475, '2021AAAmixer 456ST.xls', 'mixer1', '101', '2020-07-26', '09:13:00', 'CascaraMani', 600, 600, '1'),
(476, '2021AAAmixer 456ST.xls', 'mixer1', '101', '2020-07-26', '09:13:00', 'Agua', 250, 250, '1'),
(477, '2021AAAmixer 456ST.xls', 'mixer1', '101', '2020-07-26', '09:13:00', 'Maiz', 4550, 4550, '1'),
(478, '2021AAAmixer 456ST.xls', 'mixer1', '101', '2020-07-26', '09:13:00', 'Concentrado', 610, 600, '1'),
(479, '2021AAAmixer 456ST.xls', 'mixer1', '102', '2020-07-26', '15:49:00', 'CascaraMani', 600, 600, '1'),
(480, '2021AAAmixer 456ST.xls', 'mixer1', '102', '2020-07-26', '15:49:00', 'Agua', 250, 250, '1'),
(481, '2021AAAmixer 456ST.xls', 'mixer1', '102', '2020-07-26', '15:49:00', 'Maiz', 4570, 4550, '1'),
(482, '2021AAAmixer 456ST.xls', 'mixer1', '102', '2020-07-26', '15:49:00', 'Concentrado', 600, 600, '1'),
(483, '2021AAAmixer 456ST.xls', 'mixer1', '103', '2020-07-27', '15:41:00', 'CascaraMani', 600, 600, '1'),
(484, '2021AAAmixer 456ST.xls', 'mixer1', '103', '2020-07-27', '15:41:00', 'Agua', 250, 250, '1'),
(485, '2021AAAmixer 456ST.xls', 'mixer1', '103', '2020-07-27', '15:41:00', 'Maiz', 4550, 4550, '1'),
(486, '2021AAAmixer 456ST.xls', 'mixer1', '103', '2020-07-27', '15:41:00', 'Concentrado', 610, 600, '1'),
(487, '2021AAAmixer 456ST.xls', 'mixer1', '104', '2020-07-28', '08:50:00', 'CascaraMani', 600, 600, '1'),
(488, '2021AAAmixer 456ST.xls', 'mixer1', '104', '2020-07-28', '08:50:00', 'Agua', 250, 250, '1'),
(489, '2021AAAmixer 456ST.xls', 'mixer1', '104', '2020-07-28', '08:50:00', 'Maiz', 4550, 4550, '1'),
(490, '2021AAAmixer 456ST.xls', 'mixer1', '104', '2020-07-28', '08:50:00', 'Concentrado', 600, 600, '1'),
(491, '2021AAAmixer 456ST.xls', 'mixer1', '105', '2020-07-28', '17:50:00', 'CascaraMani', 600, 600, '1'),
(492, '2021AAAmixer 456ST.xls', 'mixer1', '105', '2020-07-28', '17:50:00', 'Agua', 250, 250, '1'),
(493, '2021AAAmixer 456ST.xls', 'mixer1', '105', '2020-07-28', '17:50:00', 'Maiz', 4550, 4550, '1'),
(494, '2021AAAmixer 456ST.xls', 'mixer1', '105', '2020-07-28', '17:50:00', 'Concentrado', 610, 600, '1'),
(495, '2021AAAmixer 456ST.xls', 'mixer1', '106', '2020-07-29', '16:16:00', 'CascaraMani', 600, 600, '1'),
(496, '2021AAAmixer 456ST.xls', 'mixer1', '106', '2020-07-29', '16:16:00', 'Agua', 250, 250, '1'),
(497, '2021AAAmixer 456ST.xls', 'mixer1', '106', '2020-07-29', '16:16:00', 'Maiz', 4570, 4550, '1'),
(498, '2021AAAmixer 456ST.xls', 'mixer1', '106', '2020-07-29', '16:16:00', 'Concentrado', 610, 600, '1'),
(499, '2021AAAmixer 456ST.xls', 'mixer1', '107', '2020-07-30', '08:31:00', 'CascaraMani', 600, 600, '1'),
(500, '2021AAAmixer 456ST.xls', 'mixer1', '107', '2020-07-30', '08:31:00', 'Agua', 250, 250, '1'),
(501, '2021AAAmixer 456ST.xls', 'mixer1', '107', '2020-07-30', '08:31:00', 'Maiz', 4550, 4550, '1');
INSERT INTO `mixer_cargas` (`id`, `archivo`, `mixer`, `id_carga`, `fecha`, `hora`, `ingrediente`, `cantidad`, `ideal`, `id_receta`) VALUES
(502, '2021AAAmixer 456ST.xls', 'mixer1', '107', '2020-07-30', '08:31:00', 'Concentrado', 610, 600, '1'),
(503, '2021AAAmixer 456ST.xls', 'mixer1', '108', '2020-07-30', '15:52:00', 'CascaraMani', 600, 600, '1'),
(504, '2021AAAmixer 456ST.xls', 'mixer1', '108', '2020-07-30', '15:52:00', 'Agua', 250, 250, '1'),
(505, '2021AAAmixer 456ST.xls', 'mixer1', '108', '2020-07-30', '15:52:00', 'Maiz', 4570, 4550, '1'),
(506, '2021AAAmixer 456ST.xls', 'mixer1', '108', '2020-07-30', '15:52:00', 'Concentrado', 620, 600, '1'),
(507, '2021AAAmixer 456ST.xls', 'mixer1', '109', '2020-07-31', '14:26:00', 'CascaraMani', 600, 600, '1'),
(508, '2021AAAmixer 456ST.xls', 'mixer1', '109', '2020-07-31', '14:26:00', 'Agua', 250, 250, '1'),
(509, '2021AAAmixer 456ST.xls', 'mixer1', '109', '2020-07-31', '14:26:00', 'Maiz', 4550, 4550, '1'),
(510, '2021AAAmixer 456ST.xls', 'mixer1', '109', '2020-07-31', '14:26:00', 'Concentrado', 600, 600, '1'),
(511, '2021AAAmixer 456ST.xls', 'mixer1', '110', '2020-08-01', '08:31:00', 'CascaraMani', 610, 600, '1'),
(512, '2021AAAmixer 456ST.xls', 'mixer1', '110', '2020-08-01', '08:31:00', 'Agua', 250, 250, '1'),
(513, '2021AAAmixer 456ST.xls', 'mixer1', '110', '2020-08-01', '08:31:00', 'Maiz', 4600, 4550, '1'),
(514, '2021AAAmixer 456ST.xls', 'mixer1', '110', '2020-08-01', '08:31:00', 'Concentrado', 610, 600, '1'),
(515, '2021AAAmixer 456ST.xls', 'mixer1', '111', '2020-08-01', '15:41:00', 'CascaraMani', 600, 600, '1'),
(516, '2021AAAmixer 456ST.xls', 'mixer1', '111', '2020-08-01', '15:41:00', 'Agua', 260, 250, '1'),
(517, '2021AAAmixer 456ST.xls', 'mixer1', '111', '2020-08-01', '15:41:00', 'Maiz', 4610, 4550, '1'),
(518, '2021AAAmixer 456ST.xls', 'mixer1', '111', '2020-08-01', '15:41:00', 'Concentrado', 620, 600, '1'),
(519, '2021AAAmixer 456ST.xls', 'mixer1', '112', '2020-08-02', '08:45:00', 'CascaraMani', 600, 600, '1'),
(520, '2021AAAmixer 456ST.xls', 'mixer1', '112', '2020-08-02', '08:45:00', 'Agua', 250, 250, '1'),
(521, '2021AAAmixer 456ST.xls', 'mixer1', '112', '2020-08-02', '08:45:00', 'Maiz', 4570, 4550, '1'),
(522, '2021AAAmixer 456ST.xls', 'mixer1', '112', '2020-08-02', '08:45:00', 'Concentrado', 600, 600, '1'),
(523, '2021AAAmixer 456ST.xls', 'mixer1', '113', '2020-08-02', '16:40:00', 'CascaraMani', 610, 600, '1'),
(524, '2021AAAmixer 456ST.xls', 'mixer1', '113', '2020-08-02', '16:40:00', 'Agua', 250, 250, '1'),
(525, '2021AAAmixer 456ST.xls', 'mixer1', '113', '2020-08-02', '16:40:00', 'Maiz', 4630, 4550, '1'),
(526, '2021AAAmixer 456ST.xls', 'mixer1', '113', '2020-08-02', '16:40:00', 'Concentrado', 600, 600, '1'),
(527, '2021AAAmixer 456ST.xls', 'mixer1', '114', '2020-08-03', '10:06:00', 'CascaraMani', 600, 600, '1'),
(528, '2021AAAmixer 456ST.xls', 'mixer1', '114', '2020-08-03', '10:06:00', 'Agua', 250, 250, '1'),
(529, '2021AAAmixer 456ST.xls', 'mixer1', '114', '2020-08-03', '10:06:00', 'Maiz', 4600, 4550, '1'),
(530, '2021AAAmixer 456ST.xls', 'mixer1', '114', '2020-08-03', '10:06:00', 'Concentrado', 600, 600, '1'),
(531, '2021AAAmixer 456ST.xls', 'mixer1', '115', '2020-08-04', '09:00:00', 'CascaraMani', 610, 600, '1'),
(532, '2021AAAmixer 456ST.xls', 'mixer1', '115', '2020-08-04', '09:00:00', 'Agua', 250, 250, '1'),
(533, '2021AAAmixer 456ST.xls', 'mixer1', '115', '2020-08-04', '09:00:00', 'Maiz', 4590, 4550, '1'),
(534, '2021AAAmixer 456ST.xls', 'mixer1', '115', '2020-08-04', '09:00:00', 'Concentrado', 600, 600, '1'),
(535, '2021AAAmixer 456ST.xls', 'mixer1', '116', '2020-08-04', '16:10:00', 'CascaraMani', 600, 600, '1'),
(536, '2021AAAmixer 456ST.xls', 'mixer1', '116', '2020-08-04', '16:10:00', 'Agua', 250, 250, '1'),
(537, '2021AAAmixer 456ST.xls', 'mixer1', '117', '2020-08-04', '16:39:00', 'CascaraMani', 10, 600, '1'),
(538, '2021AAAmixer 456ST.xls', 'mixer1', '117', '2020-08-04', '16:39:00', 'Maiz', 4590, 4550, '1'),
(539, '2021AAAmixer 456ST.xls', 'mixer1', '117', '2020-08-04', '16:39:00', 'Concentrado', 590, 600, '1'),
(540, '2021AAAmixer 456ST.xls', 'mixer1', '118', '2020-08-05', '09:20:00', 'CascaraMani', 500, 500, '1'),
(541, '2021AAAmixer 456ST.xls', 'mixer1', '118', '2020-08-05', '09:20:00', 'Agua', 210, 208, '1'),
(542, '2021AAAmixer 456ST.xls', 'mixer1', '118', '2020-08-05', '09:20:00', 'Maiz', 3850, 3791, '1'),
(543, '2021AAAmixer 456ST.xls', 'mixer1', '118', '2020-08-05', '09:20:00', 'Concentrado', 510, 500, '1'),
(544, '2021AAAmixer 456ST.xls', 'mixer1', '119', '2020-08-06', '08:34:00', 'CascaraMani', 600, 600, '1'),
(545, '2021AAAmixer 456ST.xls', 'mixer1', '119', '2020-08-06', '08:34:00', 'Agua', 250, 250, '1'),
(546, '2021AAAmixer 456ST.xls', 'mixer1', '119', '2020-08-06', '08:34:00', 'Maiz', 4610, 4550, '1'),
(547, '2021AAAmixer 456ST.xls', 'mixer1', '119', '2020-08-06', '08:34:00', 'Concentrado', 610, 600, '1'),
(548, '2021AAAmixer 456ST.xls', 'mixer1', '120', '2020-08-06', '16:25:00', 'CascaraMani', 600, 600, '1'),
(549, '2021AAAmixer 456ST.xls', 'mixer1', '120', '2020-08-06', '16:25:00', 'Agua', 250, 250, '1'),
(550, '2021AAAmixer 456ST.xls', 'mixer1', '120', '2020-08-06', '16:25:00', 'Maiz', 4590, 4550, '1'),
(551, '2021AAAmixer 456ST.xls', 'mixer1', '120', '2020-08-06', '16:25:00', 'Concentrado', 600, 600, '1'),
(552, '2021AAAmixer 456ST.xls', 'mixer1', '121', '2020-08-07', '15:55:00', 'CascaraMani', 600, 600, '1'),
(553, '2021AAAmixer 456ST.xls', 'mixer1', '121', '2020-08-07', '15:55:00', 'Agua', 250, 250, '1'),
(554, '2021AAAmixer 456ST.xls', 'mixer1', '121', '2020-08-07', '15:55:00', 'Maiz', 4640, 4550, '1'),
(555, '2021AAAmixer 456ST.xls', 'mixer1', '121', '2020-08-07', '15:55:00', 'Concentrado', 600, 600, '1'),
(556, '2021AAAmixer 456ST.xls', 'mixer1', '122', '2020-08-08', '08:47:00', 'CascaraMani', 600, 600, '1'),
(557, '2021AAAmixer 456ST.xls', 'mixer1', '122', '2020-08-08', '08:47:00', 'Agua', 250, 250, '1'),
(558, '2021AAAmixer 456ST.xls', 'mixer1', '122', '2020-08-08', '08:47:00', 'Maiz', 4610, 4550, '1'),
(559, '2021AAAmixer 456ST.xls', 'mixer1', '122', '2020-08-08', '08:47:00', 'Concentrado', 600, 600, '1'),
(560, '2021AAAmixer 456ST.xls', 'mixer1', '123', '2020-08-08', '15:36:00', 'CascaraMani', 620, 600, '1'),
(561, '2021AAAmixer 456ST.xls', 'mixer1', '123', '2020-08-08', '15:36:00', 'Agua', 250, 250, '1'),
(562, '2021AAAmixer 456ST.xls', 'mixer1', '123', '2020-08-08', '15:36:00', 'Maiz', 4550, 4550, '1'),
(563, '2021AAAmixer 456ST.xls', 'mixer1', '123', '2020-08-08', '15:36:00', 'Concentrado', 600, 600, '1'),
(564, '2021AAAmixer 456ST.xls', 'mixer1', '124', '2020-08-09', '09:40:00', 'CascaraMani', 600, 600, '1'),
(565, '2021AAAmixer 456ST.xls', 'mixer1', '124', '2020-08-09', '09:40:00', 'Agua', 250, 250, '1'),
(566, '2021AAAmixer 456ST.xls', 'mixer1', '124', '2020-08-09', '09:40:00', 'Maiz', 4550, 4550, '1'),
(567, '2021AAAmixer 456ST.xls', 'mixer1', '124', '2020-08-09', '09:40:00', 'Concentrado', 600, 600, '1'),
(568, '2021AAAmixer 456ST.xls', 'mixer1', '125', '2020-08-10', '08:59:00', 'CascaraMani', 600, 600, '1'),
(569, '2021AAAmixer 456ST.xls', 'mixer1', '125', '2020-08-10', '08:59:00', 'Agua', 250, 250, '1'),
(570, '2021AAAmixer 456ST.xls', 'mixer1', '125', '2020-08-10', '08:59:00', 'Maiz', 4550, 4550, '1'),
(571, '2021AAAmixer 456ST.xls', 'mixer1', '125', '2020-08-10', '08:59:00', 'Concentrado', 600, 600, '1'),
(572, '2021AAAmixer 456ST.xls', 'mixer1', '126', '2020-08-10', '15:45:00', 'CascaraMani', 500, 500, '1'),
(573, '2021AAAmixer 456ST.xls', 'mixer1', '126', '2020-08-10', '15:45:00', 'Agua', 210, 208, '1'),
(574, '2021AAAmixer 456ST.xls', 'mixer1', '126', '2020-08-10', '15:45:00', 'Maiz', 3800, 3791, '1'),
(575, '2021AAAmixer 456ST.xls', 'mixer1', '126', '2020-08-10', '15:45:00', 'Concentrado', 500, 500, '1'),
(576, '2021AAAmixer 456ST.xls', 'mixer1', '127', '2020-08-11', '16:33:00', 'CascaraMani', 420, 400, '1'),
(577, '2021AAAmixer 456ST.xls', 'mixer1', '127', '2020-08-11', '16:33:00', 'Agua', 170, 166, '1'),
(578, '2021AAAmixer 456ST.xls', 'mixer1', '127', '2020-08-11', '16:33:00', 'Maiz', 3090, 3033, '1'),
(579, '2021AAAmixer 456ST.xls', 'mixer1', '127', '2020-08-11', '16:33:00', 'Concentrado', 400, 400, '1'),
(580, '2021AAAmixer 456ST.xls', 'mixer1', '128', '2020-08-12', '08:29:00', 'CascaraMani', 600, 600, '1'),
(581, '2021AAAmixer 456ST.xls', 'mixer1', '128', '2020-08-12', '08:29:00', 'Agua', 250, 250, '1'),
(582, '2021AAAmixer 456ST.xls', 'mixer1', '128', '2020-08-12', '08:29:00', 'Maiz', 4570, 4550, '1'),
(583, '2021AAAmixer 456ST.xls', 'mixer1', '128', '2020-08-12', '08:29:00', 'Concentrado', 600, 600, '1'),
(584, '2021AAAmixer 456ST.xls', 'mixer1', '129', '2020-08-12', '16:04:00', 'CascaraMani', 400, 400, '1'),
(585, '2021AAAmixer 456ST.xls', 'mixer1', '129', '2020-08-12', '16:04:00', 'Agua', 170, 166, '1'),
(586, '2021AAAmixer 456ST.xls', 'mixer1', '129', '2020-08-12', '16:04:00', 'Maiz', 3050, 3033, '1'),
(587, '2021AAAmixer 456ST.xls', 'mixer1', '129', '2020-08-12', '16:04:00', 'Concentrado', 400, 400, '1'),
(588, '2021AAAmixer 456ST.xls', 'mixer1', '130', '2020-08-13', '09:12:00', 'CascaraMani', 400, 400, '1'),
(589, '2021AAAmixer 456ST.xls', 'mixer1', '130', '2020-08-13', '09:12:00', 'Agua', 170, 166, '1'),
(590, '2021AAAmixer 456ST.xls', 'mixer1', '130', '2020-08-13', '09:12:00', 'Maiz', 3040, 3033, '1'),
(591, '2021AAAmixer 456ST.xls', 'mixer1', '130', '2020-08-13', '09:12:00', 'Concentrado', 410, 400, '1'),
(592, '2021AAAmixer 456ST.xls', 'mixer1', '131', '2020-08-13', '16:52:00', 'CascaraMani', 400, 400, '1'),
(593, '2021AAAmixer 456ST.xls', 'mixer1', '131', '2020-08-13', '16:52:00', 'Agua', 170, 166, '1'),
(594, '2021AAAmixer 456ST.xls', 'mixer1', '131', '2020-08-13', '16:52:00', 'Maiz', 3040, 3033, '1'),
(595, '2021AAAmixer 456ST.xls', 'mixer1', '131', '2020-08-13', '16:52:00', 'Concentrado', 400, 400, '1'),
(596, '2021AAAmixer 456ST.xls', 'mixer1', '132', '2020-08-14', '16:06:00', 'CascaraMani', 600, 600, '1'),
(597, '2021AAAmixer 456ST.xls', 'mixer1', '132', '2020-08-14', '16:06:00', 'Agua', 250, 250, '1'),
(598, '2021AAAmixer 456ST.xls', 'mixer1', '132', '2020-08-14', '16:06:00', 'Maiz', 4550, 4550, '1'),
(599, '2021AAAmixer 456ST.xls', 'mixer1', '132', '2020-08-14', '16:06:00', 'Concentrado', 610, 600, '1'),
(600, '2021AAAmixer 456ST.xls', 'mixer1', '133', '2020-08-15', '08:55:00', 'CascaraMani', 600, 600, '1'),
(601, '2021AAAmixer 456ST.xls', 'mixer1', '133', '2020-08-15', '08:55:00', 'Agua', 250, 250, '1'),
(602, '2021AAAmixer 456ST.xls', 'mixer1', '133', '2020-08-15', '08:55:00', 'Maiz', 4560, 4550, '1'),
(603, '2021AAAmixer 456ST.xls', 'mixer1', '133', '2020-08-15', '08:55:00', 'Concentrado', 620, 600, '1'),
(604, '2021AAAmixer 456ST.xls', 'mixer1', '134', '2020-08-16', '08:37:00', 'CascaraMani', 610, 600, '1'),
(605, '2021AAAmixer 456ST.xls', 'mixer1', '134', '2020-08-16', '08:37:00', 'Agua', 250, 250, '1'),
(606, '2021AAAmixer 456ST.xls', 'mixer1', '134', '2020-08-16', '08:37:00', 'Maiz', 4580, 4550, '1'),
(607, '2021AAAmixer 456ST.xls', 'mixer1', '134', '2020-08-16', '08:37:00', 'Concentrado', 620, 600, '1'),
(608, '2021AAAmixer 456ST.xls', 'mixer1', '135', '2020-08-17', '08:28:00', 'CascaraMani', 600, 600, '1'),
(609, '2021AAAmixer 456ST.xls', 'mixer1', '135', '2020-08-17', '08:28:00', 'Agua', 250, 250, '1'),
(610, '2021AAAmixer 456ST.xls', 'mixer1', '135', '2020-08-17', '08:28:00', 'Maiz', 4590, 4550, '1'),
(611, '2021AAAmixer 456ST.xls', 'mixer1', '135', '2020-08-17', '08:28:00', 'Concentrado', 610, 600, '1'),
(612, '2021AAAmixer 456ST.xls', 'mixer1', '136', '2020-08-17', '16:19:00', 'CascaraMani', 610, 600, '1'),
(613, '2021AAAmixer 456ST.xls', 'mixer1', '136', '2020-08-17', '16:19:00', 'Agua', 250, 250, '1'),
(614, '2021AAAmixer 456ST.xls', 'mixer1', '136', '2020-08-17', '16:19:00', 'Maiz', 4580, 4550, '1'),
(615, '2021AAAmixer 456ST.xls', 'mixer1', '136', '2020-08-17', '16:19:00', 'Concentrado', 620, 600, '1'),
(616, '2021AAAmixer 456ST.xls', 'mixer1', '137', '2020-08-18', '15:52:00', 'CascaraMani', 610, 600, '1'),
(617, '2021AAAmixer 456ST.xls', 'mixer1', '137', '2020-08-18', '15:52:00', 'Agua', 250, 250, '1'),
(618, '2021AAAmixer 456ST.xls', 'mixer1', '137', '2020-08-18', '15:52:00', 'Maiz', 4560, 4550, '1'),
(619, '2021AAAmixer 456ST.xls', 'mixer1', '137', '2020-08-18', '15:52:00', 'Concentrado', 610, 600, '1'),
(620, '2021AAAmixer 456ST.xls', 'mixer1', '138', '2020-08-19', '15:35:00', 'CascaraMani', 600, 600, '1'),
(621, '2021AAAmixer 456ST.xls', 'mixer1', '138', '2020-08-19', '15:35:00', 'Agua', 250, 250, '1'),
(622, '2021AAAmixer 456ST.xls', 'mixer1', '138', '2020-08-19', '15:35:00', 'Maiz', 4550, 4550, '1'),
(623, '2021AAAmixer 456ST.xls', 'mixer1', '138', '2020-08-19', '15:35:00', 'Concentrado', 610, 600, '1'),
(624, '2021AAAmixer 456ST.xls', 'mixer1', '139', '2020-08-20', '16:46:00', 'CascaraMani', 600, 600, '1'),
(625, '2021AAAmixer 456ST.xls', 'mixer1', '139', '2020-08-20', '16:46:00', 'Agua', 250, 250, '1'),
(626, '2021AAAmixer 456ST.xls', 'mixer1', '139', '2020-08-20', '16:46:00', 'Maiz', 4550, 4550, '1'),
(627, '2021AAAmixer 456ST.xls', 'mixer1', '139', '2020-08-20', '16:46:00', 'Concentrado', 610, 600, '1'),
(628, '2021AAAmixer 456ST.xls', 'mixer1', '140', '2020-08-21', '16:09:00', 'CascaraMani', 620, 600, '1'),
(629, '2021AAAmixer 456ST.xls', 'mixer1', '140', '2020-08-21', '16:09:00', 'Agua', 250, 250, '1'),
(630, '2021AAAmixer 456ST.xls', 'mixer1', '140', '2020-08-21', '16:09:00', 'Maiz', 4570, 4550, '1'),
(631, '2021AAAmixer 456ST.xls', 'mixer1', '140', '2020-08-21', '16:09:00', 'Concentrado', 610, 600, '1'),
(632, '2021AAAmixer 456ST.xls', 'mixer1', '141', '2020-08-22', '15:14:00', 'CascaraMani', 600, 600, '1'),
(633, '2021AAAmixer 456ST.xls', 'mixer1', '141', '2020-08-22', '15:14:00', 'Agua', 250, 250, '1'),
(634, '2021AAAmixer 456ST.xls', 'mixer1', '141', '2020-08-22', '15:14:00', 'Maiz', 4550, 4550, '1'),
(635, '2021AAAmixer 456ST.xls', 'mixer1', '141', '2020-08-22', '15:14:00', 'Concentrado', 610, 600, '1'),
(636, '2021AAAmixer 456ST.xls', 'mixer1', '142', '2020-08-23', '15:01:00', 'CascaraMani', 600, 600, '1'),
(637, '2021AAAmixer 456ST.xls', 'mixer1', '142', '2020-08-23', '15:01:00', 'Agua', 250, 250, '1'),
(638, '2021AAAmixer 456ST.xls', 'mixer1', '142', '2020-08-23', '15:01:00', 'Maiz', 4550, 4550, '1'),
(639, '2021AAAmixer 456ST.xls', 'mixer1', '142', '2020-08-23', '15:01:00', 'Concentrado', 600, 600, '1'),
(640, '2021AAAmixer 456ST.xls', 'mixer1', '143', '2020-08-24', '16:54:00', 'CascaraMani', 600, 600, '1'),
(641, '2021AAAmixer 456ST.xls', 'mixer1', '143', '2020-08-24', '16:54:00', 'Agua', 250, 250, '1'),
(642, '2021AAAmixer 456ST.xls', 'mixer1', '143', '2020-08-24', '16:54:00', 'Maiz', 4560, 4550, '1'),
(643, '2021AAAmixer 456ST.xls', 'mixer1', '143', '2020-08-24', '16:54:00', 'Concentrado', 610, 600, '1'),
(644, '2021AAAmixer 456ST.xls', 'mixer1', '144', '2020-08-25', '17:38:00', 'CascaraMani', 600, 600, '1'),
(645, '2021AAAmixer 456ST.xls', 'mixer1', '144', '2020-08-25', '17:38:00', 'Agua', 250, 250, '1'),
(646, '2021AAAmixer 456ST.xls', 'mixer1', '144', '2020-08-25', '17:38:00', 'Maiz', 4590, 4550, '1'),
(647, '2021AAAmixer 456ST.xls', 'mixer1', '144', '2020-08-25', '17:38:00', 'Concentrado', 620, 600, '1'),
(648, '2021AAAmixer 456ST.xls', 'mixer1', '145', '2020-08-27', '08:33:00', 'CascaraMani', 600, 600, '1'),
(649, '2021AAAmixer 456ST.xls', 'mixer1', '145', '2020-08-27', '08:33:00', 'Agua', 250, 250, '1'),
(650, '2021AAAmixer 456ST.xls', 'mixer1', '145', '2020-08-27', '08:33:00', 'Maiz', 4560, 4550, '1'),
(651, '2021AAAmixer 456ST.xls', 'mixer1', '145', '2020-08-27', '08:33:00', 'Concentrado', 600, 600, '1'),
(652, '2021AAAmixer 456ST.xls', 'mixer1', '146', '2020-08-28', '08:05:00', 'CascaraMani', 400, 400, '1'),
(653, '2021AAAmixer 456ST.xls', 'mixer1', '146', '2020-08-28', '08:05:00', 'Agua', 170, 166, '1'),
(654, '2021AAAmixer 456ST.xls', 'mixer1', '146', '2020-08-28', '08:05:00', 'Maiz', 3040, 3033, '1'),
(655, '2021AAAmixer 456ST.xls', 'mixer1', '146', '2020-08-28', '08:05:00', 'Concentrado', 410, 400, '1'),
(656, '2021AAAmixer 456ST.xls', 'mixer1', '147', '2020-08-28', '17:01:00', 'CascaraMani', 600, 600, '1'),
(657, '2021AAAmixer 456ST.xls', 'mixer1', '147', '2020-08-28', '17:01:00', 'Agua', 250, 250, '1'),
(658, '2021AAAmixer 456ST.xls', 'mixer1', '147', '2020-08-28', '17:01:00', 'Maiz', 4550, 4550, '1'),
(659, '2021AAAmixer 456ST.xls', 'mixer1', '147', '2020-08-28', '17:01:00', 'Concentrado', 600, 600, '1'),
(660, '2021AAAmixer 456ST.xls', 'mixer1', '148', '2020-08-29', '16:46:00', 'CascaraMani', 500, 500, '1'),
(661, '2021AAAmixer 456ST.xls', 'mixer1', '148', '2020-08-29', '16:46:00', 'Agua', 210, 208, '1'),
(662, '2021AAAmixer 456ST.xls', 'mixer1', '148', '2020-08-29', '16:46:00', 'Maiz', 3800, 3791, '1'),
(663, '2021AAAmixer 456ST.xls', 'mixer1', '148', '2020-08-29', '16:46:00', 'Concentrado', 500, 500, '1'),
(664, '2021AAAmixer 456ST.xls', 'mixer1', '149', '2020-08-31', '08:19:00', 'CascaraMani', 600, 600, '1'),
(665, '2021AAAmixer 456ST.xls', 'mixer1', '149', '2020-08-31', '08:19:00', 'Agua', 250, 250, '1'),
(666, '2021AAAmixer 456ST.xls', 'mixer1', '149', '2020-08-31', '08:19:00', 'Maiz', 4550, 4550, '1'),
(667, '2021AAAmixer 456ST.xls', 'mixer1', '149', '2020-08-31', '08:19:00', 'Concentrado', 610, 600, '1'),
(668, '2021AAAmixer 456ST.xls', 'mixer1', '150', '2020-08-31', '15:47:00', 'CascaraMani', 600, 600, '1'),
(669, '2021AAAmixer 456ST.xls', 'mixer1', '150', '2020-08-31', '15:47:00', 'Agua', 250, 250, '1'),
(670, '2021AAAmixer 456ST.xls', 'mixer1', '150', '2020-08-31', '15:47:00', 'Maiz', 4550, 4550, '1'),
(671, '2021AAAmixer 456ST.xls', 'mixer1', '150', '2020-08-31', '15:47:00', 'Concentrado', 600, 600, '1'),
(672, '2021AAAmixer 456ST.xls', 'mixer1', '151', '2020-09-02', '09:27:00', 'CascaraMani', 610, 600, '1'),
(673, '2021AAAmixer 456ST.xls', 'mixer1', '151', '2020-09-02', '09:27:00', 'Agua', 250, 250, '1'),
(674, '2021AAAmixer 456ST.xls', 'mixer1', '151', '2020-09-02', '09:27:00', 'Maiz', 4620, 4550, '1'),
(675, '2021AAAmixer 456ST.xls', 'mixer1', '151', '2020-09-02', '09:27:00', 'Concentrado', 610, 600, '1'),
(676, '2021AAAmixer 456ST.xls', 'mixer1', '152', '2020-09-03', '09:02:00', 'CascaraMani', 600, 600, '1'),
(677, '2021AAAmixer 456ST.xls', 'mixer1', '152', '2020-09-03', '09:02:00', 'Agua', 250, 250, '1'),
(678, '2021AAAmixer 456ST.xls', 'mixer1', '152', '2020-09-03', '09:02:00', 'Maiz', 4610, 4550, '1'),
(679, '2021AAAmixer 456ST.xls', 'mixer1', '152', '2020-09-03', '09:02:00', 'Concentrado', 600, 600, '1'),
(680, '2021AAAmixer 456ST.xls', 'mixer1', '153', '2020-09-04', '09:16:00', 'CascaraMani', 610, 600, '1'),
(681, '2021AAAmixer 456ST.xls', 'mixer1', '153', '2020-09-04', '09:16:00', 'Agua', 250, 250, '1'),
(682, '2021AAAmixer 456ST.xls', 'mixer1', '153', '2020-09-04', '09:16:00', 'Maiz', 4580, 4550, '1'),
(683, '2021AAAmixer 456ST.xls', 'mixer1', '153', '2020-09-04', '09:16:00', 'Concentrado', 600, 600, '1'),
(684, '2021AAAmixer 456ST.xls', 'mixer1', '154', '2020-09-05', '09:31:00', 'CascaraMani', 500, 500, '1'),
(685, '2021AAAmixer 456ST.xls', 'mixer1', '154', '2020-09-05', '09:31:00', 'Agua', 210, 208, '1'),
(686, '2021AAAmixer 456ST.xls', 'mixer1', '154', '2020-09-05', '09:31:00', 'Maiz', 3800, 3791, '1'),
(687, '2021AAAmixer 456ST.xls', 'mixer1', '154', '2020-09-05', '09:31:00', 'Concentrado', 510, 500, '1'),
(688, '2021AAAmixer 456ST.xls', 'mixer1', '155', '2020-09-06', '15:07:00', 'CascaraMani', 600, 600, '1'),
(689, '2021AAAmixer 456ST.xls', 'mixer1', '155', '2020-09-06', '15:07:00', 'Agua', 250, 250, '1'),
(690, '2021AAAmixer 456ST.xls', 'mixer1', '155', '2020-09-06', '15:07:00', 'Maiz', 4560, 4550, '1'),
(691, '2021AAAmixer 456ST.xls', 'mixer1', '155', '2020-09-06', '15:07:00', 'Concentrado', 630, 600, '1'),
(692, '2021AAAmixer 456ST.xls', 'mixer1', '156', '2020-09-08', '08:35:00', 'CascaraMani', 610, 600, '1'),
(693, '2021AAAmixer 456ST.xls', 'mixer1', '156', '2020-09-08', '08:35:00', 'Agua', 250, 250, '1'),
(694, '2021AAAmixer 456ST.xls', 'mixer1', '156', '2020-09-08', '08:35:00', 'Maiz', 4570, 4550, '1'),
(695, '2021AAAmixer 456ST.xls', 'mixer1', '156', '2020-09-08', '08:35:00', 'Concentrado', 620, 600, '1'),
(696, '2021AAAmixer 456ST.xls', 'mixer1', '157', '2020-09-09', '16:33:00', 'CascaraMani', 610, 600, '1'),
(697, '2021AAAmixer 456ST.xls', 'mixer1', '157', '2020-09-09', '16:33:00', 'Agua', 250, 250, '1'),
(698, '2021AAAmixer 456ST.xls', 'mixer1', '157', '2020-09-09', '16:33:00', 'Maiz', 4550, 4550, '1'),
(699, '2021AAAmixer 456ST.xls', 'mixer1', '157', '2020-09-09', '16:33:00', 'Concentrado', 610, 600, '1'),
(700, '2021AAAmixer 456ST.xls', 'mixer1', '158', '2020-09-11', '08:49:00', 'CascaraMani', 400, 400, '1'),
(701, '2021AAAmixer 456ST.xls', 'mixer1', '158', '2020-09-11', '08:49:00', 'Agua', 170, 166, '1'),
(702, '2021AAAmixer 456ST.xls', 'mixer1', '158', '2020-09-11', '08:49:00', 'Maiz', 3050, 3033, '1'),
(703, '2021AAAmixer 456ST.xls', 'mixer1', '158', '2020-09-11', '08:49:00', 'Concentrado', 410, 400, '1'),
(704, '2021AAAmixer 456ST.xls', 'mixer1', '159', '2020-09-12', '08:51:00', 'CascaraMani', 600, 600, '1'),
(705, '2021AAAmixer 456ST.xls', 'mixer1', '159', '2020-09-12', '08:51:00', 'Agua', 250, 250, '1'),
(706, '2021AAAmixer 456ST.xls', 'mixer1', '159', '2020-09-12', '08:51:00', 'Maiz', 4570, 4550, '1'),
(707, '2021AAAmixer 456ST.xls', 'mixer1', '159', '2020-09-12', '08:51:00', 'Concentrado', 600, 600, '1'),
(708, '2021AAAmixer 456ST.xls', 'mixer1', '160', '2020-09-14', '08:19:00', 'CascaraMani', 600, 600, '1'),
(709, '2021AAAmixer 456ST.xls', 'mixer1', '160', '2020-09-14', '08:19:00', 'Agua', 250, 250, '1'),
(710, '2021AAAmixer 456ST.xls', 'mixer1', '160', '2020-09-14', '08:19:00', 'Maiz', 4550, 4550, '1'),
(711, '2021AAAmixer 456ST.xls', 'mixer1', '160', '2020-09-14', '08:19:00', 'Concentrado', 600, 600, '1'),
(712, '2021AAAmixer 456ST.xls', 'mixer1', '161', '2020-09-16', '08:09:00', 'CascaraMani', 300, 300, '1'),
(713, '2021AAAmixer 456ST.xls', 'mixer1', '161', '2020-09-16', '08:09:00', 'Agua', 130, 125, '1'),
(714, '2021AAAmixer 456ST.xls', 'mixer1', '161', '2020-09-16', '08:09:00', 'Maiz', 2290, 2275, '1'),
(715, '2021AAAmixer 456ST.xls', 'mixer1', '161', '2020-09-16', '08:09:00', 'Concentrado', 320, 300, '1'),
(716, '2021AAAmixer 456ST.xls', 'mixer1', '162', '2020-09-16', '16:38:00', 'CascaraMani', 400, 400, '1'),
(717, '2021AAAmixer 456ST.xls', 'mixer1', '162', '2020-09-16', '16:38:00', 'Agua', 170, 166, '1'),
(718, '2021AAAmixer 456ST.xls', 'mixer1', '162', '2020-09-16', '16:38:00', 'Maiz', 3040, 3033, '1'),
(719, '2021AAAmixer 456ST.xls', 'mixer1', '162', '2020-09-16', '16:38:00', 'Concentrado', 400, 400, '1'),
(720, '2021AAAmixer 456ST.xls', 'mixer1', '163', '2020-09-17', '15:45:00', 'CascaraMani', 420, 400, '1'),
(721, '2021AAAmixer 456ST.xls', 'mixer1', '163', '2020-09-17', '15:45:00', 'Agua', 170, 166, '1'),
(722, '2021AAAmixer 456ST.xls', 'mixer1', '163', '2020-09-17', '15:45:00', 'Maiz', 3040, 3033, '1'),
(723, '2021AAAmixer 456ST.xls', 'mixer1', '163', '2020-09-17', '15:45:00', 'Concentrado', 400, 400, '1'),
(724, '2021AAAmixer 456ST.xls', 'mixer1', '164', '2020-09-19', '08:33:00', 'CascaraMani', 600, 600, '1'),
(725, '2021AAAmixer 456ST.xls', 'mixer1', '164', '2020-09-19', '08:33:00', 'Agua', 250, 250, '1'),
(726, '2021AAAmixer 456ST.xls', 'mixer1', '164', '2020-09-19', '08:33:00', 'Maiz', 4570, 4550, '1'),
(727, '2021AAAmixer 456ST.xls', 'mixer1', '164', '2020-09-19', '08:33:00', 'Concentrado', 600, 600, '1'),
(728, '2021AAAmixer 456ST.xls', 'mixer1', '165', '2020-09-21', '08:23:00', 'CascaraMani', 430, 400, '1'),
(729, '2021AAAmixer 456ST.xls', 'mixer1', '165', '2020-09-21', '08:23:00', 'Agua', 170, 166, '1'),
(730, '2021AAAmixer 456ST.xls', 'mixer1', '165', '2020-09-21', '08:23:00', 'Maiz', 3040, 3033, '1'),
(731, '2021AAAmixer 456ST.xls', 'mixer1', '165', '2020-09-21', '08:23:00', 'Concentrado', 420, 400, '1'),
(732, '2021AAAmixer 456ST.xls', 'mixer1', '166', '2020-09-22', '08:35:00', 'CascaraMani', 500, 500, '1'),
(733, '2021AAAmixer 456ST.xls', 'mixer1', '166', '2020-09-22', '08:35:00', 'Agua', 210, 208, '1'),
(734, '2021AAAmixer 456ST.xls', 'mixer1', '166', '2020-09-22', '08:35:00', 'Maiz', 3800, 3791, '1'),
(735, '2021AAAmixer 456ST.xls', 'mixer1', '166', '2020-09-22', '08:35:00', 'Concentrado', 520, 500, '1'),
(736, '2021AAAmixer 456ST.xls', 'mixer1', '167', '2020-09-24', '08:10:00', 'CascaraMani', 500, 500, '1'),
(737, '2021AAAmixer 456ST.xls', 'mixer1', '167', '2020-09-24', '08:10:00', 'Agua', 210, 208, '1'),
(738, '2021AAAmixer 456ST.xls', 'mixer1', '167', '2020-09-24', '08:10:00', 'Maiz', 3930, 3791, '1'),
(739, '2021AAAmixer 456ST.xls', 'mixer1', '167', '2020-09-24', '08:10:00', 'Concentrado', 510, 500, '1'),
(740, '2021AAAmixer 456ST.xls', 'mixer1', '168', '2020-09-25', '08:44:00', 'CascaraMani', 400, 400, '1'),
(741, '2021AAAmixer 456ST.xls', 'mixer1', '168', '2020-09-25', '08:44:00', 'Agua', 170, 166, '1'),
(742, '2021AAAmixer 456ST.xls', 'mixer1', '168', '2020-09-25', '08:44:00', 'Maiz', 20, 3033, '1'),
(743, '2021AAAmixer 456ST.xls', 'mixer1', '169', '2020-09-25', '09:03:00', 'Maiz', 3040, 3033, '1'),
(744, '2021AAAmixer 456ST.xls', 'mixer1', '169', '2020-09-25', '09:03:00', 'Concentrado', 500, 400, '1'),
(745, '2021AAAmixer 456ST.xls', 'mixer1', '170', '2020-09-27', '08:36:00', 'CascaraMani', 350, 300, '1'),
(746, '2021AAAmixer 456ST.xls', 'mixer1', '170', '2020-09-27', '08:36:00', 'Agua', 130, 125, '1'),
(747, '2021AAAmixer 456ST.xls', 'mixer1', '170', '2020-09-27', '08:36:00', 'Maiz', 2360, 2275, '1'),
(748, '2021AAAmixer 456ST.xls', 'mixer1', '170', '2020-09-27', '08:36:00', 'Concentrado', 320, 300, '1'),
(749, '2021AAAmixer 456ST.xls', 'mixer1', '171', '2020-09-28', '08:23:00', 'CascaraMani', 600, 600, '1'),
(750, '2021AAAmixer 456ST.xls', 'mixer1', '171', '2020-09-28', '08:23:00', 'Agua', 250, 250, '1'),
(751, '2021AAAmixer 456ST.xls', 'mixer1', '171', '2020-09-28', '08:23:00', 'Maiz', 4550, 4550, '1'),
(752, '2021AAAmixer 456ST.xls', 'mixer1', '171', '2020-09-28', '08:23:00', 'Concentrado', 610, 600, '1'),
(753, '2021AAAmixer 456ST.xls', 'mixer1', '172', '2020-10-02', '08:48:00', 'CascaraMani', 600, 600, '1'),
(754, '2021AAAmixer 456ST.xls', 'mixer1', '172', '2020-10-02', '08:48:00', 'Agua', 250, 250, '1'),
(755, '2021AAAmixer 456ST.xls', 'mixer1', '172', '2020-10-02', '08:48:00', 'Maiz', 4640, 4550, '1'),
(756, '2021AAAmixer 456ST.xls', 'mixer1', '172', '2020-10-02', '08:48:00', 'Concentrado', 600, 600, '1'),
(757, '2021AAAmixer 456ST.xls', 'mixer1', '173', '2020-10-04', '15:13:00', 'CascaraMani', 610, 600, '1'),
(758, '2021AAAmixer 456ST.xls', 'mixer1', '173', '2020-10-04', '15:13:00', 'Agua', 250, 250, '1'),
(759, '2021AAAmixer 456ST.xls', 'mixer1', '173', '2020-10-04', '15:13:00', 'Maiz', 4550, 4550, '1'),
(760, '2021AAAmixer 456ST.xls', 'mixer1', '173', '2020-10-04', '15:13:00', 'Concentrado', 610, 600, '1'),
(761, '2021AAAmixer 456ST.xls', 'mixer1', '174', '2020-10-06', '16:35:00', 'CascaraMani', 600, 600, '1'),
(762, '2021AAAmixer 456ST.xls', 'mixer1', '174', '2020-10-06', '16:35:00', 'Agua', 250, 250, '1'),
(763, '2021AAAmixer 456ST.xls', 'mixer1', '174', '2020-10-06', '16:35:00', 'Maiz', 4620, 4550, '1'),
(764, '2021AAAmixer 456ST.xls', 'mixer1', '174', '2020-10-06', '16:35:00', 'Concentrado', 670, 600, '1'),
(765, '2021AAAmixer 456ST.xls', 'mixer1', '175', '2020-10-09', '16:05:00', 'CascaraMani', 500, 500, '1'),
(766, '2021AAAmixer 456ST.xls', 'mixer1', '175', '2020-10-09', '16:05:00', 'Agua', 210, 208, '1'),
(767, '2021AAAmixer 456ST.xls', 'mixer1', '175', '2020-10-09', '16:05:00', 'Maiz', 3890, 3791, '1'),
(768, '2021AAAmixer 456ST.xls', 'mixer1', '175', '2020-10-09', '16:05:00', 'Concentrado', 510, 500, '1'),
(769, '2021AAAmixer 456ST.xls', 'mixer1', '176', '2020-10-11', '08:41:00', 'CascaraMani', 510, 500, '1'),
(770, '2021AAAmixer 456ST.xls', 'mixer1', '176', '2020-10-11', '08:41:00', 'Agua', 220, 208, '1'),
(771, '2021AAAmixer 456ST.xls', 'mixer1', '176', '2020-10-11', '08:41:00', 'Maiz', 3800, 3791, '1'),
(772, '2021AAAmixer 456ST.xls', 'mixer1', '176', '2020-10-11', '08:41:00', 'Concentrado', 500, 500, '1'),
(773, '2021AAAmixer 456ST.xls', 'mixer1', '177', '2020-10-13', '16:19:00', 'CascaraMani', 400, 400, '1'),
(774, '2021AAAmixer 456ST.xls', 'mixer1', '177', '2020-10-13', '16:19:00', 'Agua', 170, 166, '1'),
(775, '2021AAAmixer 456ST.xls', 'mixer1', '177', '2020-10-13', '16:19:00', 'Maiz', 3120, 3033, '1'),
(776, '2021AAAmixer 456ST.xls', 'mixer1', '177', '2020-10-13', '16:19:00', 'Concentrado', 400, 400, '1'),
(777, '2021AAAmixer 456ST.xls', 'mixer1', '178', '2020-10-14', '17:01:00', 'CascaraMani', 400, 400, '1'),
(778, '2021AAAmixer 456ST.xls', 'mixer1', '178', '2020-10-14', '17:01:00', 'Agua', 170, 166, '1'),
(779, '2021AAAmixer 456ST.xls', 'mixer1', '178', '2020-10-14', '17:01:00', 'Maiz', 3130, 3033, '1'),
(780, '2021AAAmixer 456ST.xls', 'mixer1', '178', '2020-10-14', '17:01:00', 'Concentrado', 440, 400, '1'),
(781, '2021AAAmixer 456ST.xls', 'mixer1', '179', '2020-10-16', '08:10:00', 'CascaraMani', 400, 400, '1'),
(782, '2021AAAmixer 456ST.xls', 'mixer1', '179', '2020-10-16', '08:10:00', 'Agua', 170, 166, '1'),
(783, '2021AAAmixer 456ST.xls', 'mixer1', '179', '2020-10-16', '08:10:00', 'Maiz', 3130, 3033, '1'),
(784, '2021AAAmixer 456ST.xls', 'mixer1', '179', '2020-10-16', '08:10:00', 'Concentrado', 410, 400, '1'),
(785, '2021AAAmixer 456ST.xls', 'mixer1', '180', '2020-10-17', '10:34:00', 'CascaraMani', 410, 400, '1'),
(786, '2021AAAmixer 456ST.xls', 'mixer1', '180', '2020-10-17', '10:34:00', 'Agua', 170, 166, '1'),
(787, '2021AAAmixer 456ST.xls', 'mixer1', '180', '2020-10-17', '10:34:00', 'Maiz', 3050, 3033, '1'),
(788, '2021AAAmixer 456ST.xls', 'mixer1', '180', '2020-10-17', '10:34:00', 'Concentrado', 400, 400, '1'),
(789, '2021AAAmixer 456ST.xls', 'mixer1', '181', '2020-10-19', '08:16:00', 'CascaraMani', 400, 400, '1'),
(790, '2021AAAmixer 456ST.xls', 'mixer1', '181', '2020-10-19', '08:16:00', 'Agua', 170, 166, '1'),
(791, '2021AAAmixer 456ST.xls', 'mixer1', '181', '2020-10-19', '08:16:00', 'Maiz', 3090, 3033, '1'),
(792, '2021AAAmixer 456ST.xls', 'mixer1', '181', '2020-10-19', '08:16:00', 'Concentrado', 440, 400, '1'),
(793, '2021AAAmixer 456ST.xls', 'mixer1', '182', '2020-10-19', '17:30:00', 'CascaraMani', 400, 400, '1'),
(794, '2021AAAmixer 456ST.xls', 'mixer1', '182', '2020-10-19', '17:30:00', 'Agua', 170, 166, '1'),
(795, '2021AAAmixer 456ST.xls', 'mixer1', '182', '2020-10-19', '17:30:00', 'Maiz', 3140, 3033, '1'),
(796, '2021AAAmixer 456ST.xls', 'mixer1', '182', '2020-10-19', '17:30:00', 'Concentrado', 420, 400, '1'),
(797, '2021AAAmixer 456ST.xls', 'mixer1', '183', '2020-10-22', '08:21:00', 'CascaraMani', 400, 400, '1'),
(798, '2021AAAmixer 456ST.xls', 'mixer1', '183', '2020-10-22', '08:21:00', 'Agua', 170, 166, '1'),
(799, '2021AAAmixer 456ST.xls', 'mixer1', '183', '2020-10-22', '08:21:00', 'Maiz', 3060, 3033, '1'),
(800, '2021AAAmixer 456ST.xls', 'mixer1', '183', '2020-10-22', '08:21:00', 'Concentrado', 400, 400, '1'),
(801, '2021AAAmixer 456ST.xls', 'mixer1', '184', '2020-10-23', '09:01:00', 'CascaraMani', 510, 500, '1'),
(802, '2021AAAmixer 456ST.xls', 'mixer1', '184', '2020-10-23', '09:01:00', 'Agua', 210, 208, '1'),
(803, '2021AAAmixer 456ST.xls', 'mixer1', '184', '2020-10-23', '09:01:00', 'Maiz', 3800, 3791, '1'),
(804, '2021AAAmixer 456ST.xls', 'mixer1', '184', '2020-10-23', '09:01:00', 'Concentrado', 520, 500, '1'),
(805, '2021AAAmixer 456ST.xls', 'mixer1', '185', '2020-10-24', '15:16:00', 'CascaraMani', 500, 500, '1'),
(806, '2021AAAmixer 456ST.xls', 'mixer1', '185', '2020-10-24', '15:16:00', 'Agua', 210, 208, '1'),
(807, '2021AAAmixer 456ST.xls', 'mixer1', '185', '2020-10-24', '15:16:00', 'Maiz', 3800, 3791, '1'),
(808, '2021AAAmixer 456ST.xls', 'mixer1', '185', '2020-10-24', '15:16:00', 'Concentrado', 500, 500, '1'),
(809, '2021AAAmixer 456ST.xls', 'mixer1', '186', '2020-10-26', '08:32:00', 'CascaraMani', 520, 500, '1'),
(810, '2021AAAmixer 456ST.xls', 'mixer1', '186', '2020-10-26', '08:32:00', 'Agua', 210, 208, '1'),
(811, '2021AAAmixer 456ST.xls', 'mixer1', '186', '2020-10-26', '08:32:00', 'Maiz', 3970, 3791, '1'),
(812, '2021AAAmixer 456ST.xls', 'mixer1', '186', '2020-10-26', '08:32:00', 'Concentrado', 520, 500, '1'),
(813, '2021AAAmixer 456ST.xls', 'mixer1', '187', '2020-10-27', '16:28:00', 'CascaraMani', 630, 500, '1'),
(814, '2021AAAmixer 456ST.xls', 'mixer1', '187', '2020-10-27', '16:28:00', 'Agua', 210, 208, '1'),
(815, '2021AAAmixer 456ST.xls', 'mixer1', '187', '2020-10-27', '16:28:00', 'Maiz', 3800, 3791, '1'),
(816, '2021AAAmixer 456ST.xls', 'mixer1', '187', '2020-10-27', '16:28:00', 'Concentrado', 600, 500, '1'),
(817, '2021AAAmixer 456ST.xls', 'mixer1', '188', '2020-10-29', '08:34:00', 'CascaraMani', 400, 400, '1'),
(818, '2021AAAmixer 456ST.xls', 'mixer1', '188', '2020-10-29', '08:34:00', 'Agua', 170, 166, '1'),
(819, '2021AAAmixer 456ST.xls', 'mixer1', '188', '2020-10-29', '08:34:00', 'Maiz', 3100, 3033, '1'),
(820, '2021AAAmixer 456ST.xls', 'mixer1', '188', '2020-10-29', '08:34:00', 'Concentrado', 420, 400, '1'),
(821, '2021AAAmixer 456ST.xls', 'mixer1', '189', '2020-10-30', '17:17:00', 'CascaraMani', 410, 400, '1'),
(822, '2021AAAmixer 456ST.xls', 'mixer1', '189', '2020-10-30', '17:17:00', 'Agua', 170, 166, '1'),
(823, '2021AAAmixer 456ST.xls', 'mixer1', '189', '2020-10-30', '17:17:00', 'Maiz', 3090, 3033, '1'),
(824, '2021AAAmixer 456ST.xls', 'mixer1', '189', '2020-10-30', '17:17:00', 'Concentrado', 410, 400, '1'),
(825, '2021AAAmixer 456ST.xls', 'mixer1', '190', '2020-10-31', '16:11:00', 'CascaraMani', 410, 400, '1'),
(826, '2021AAAmixer 456ST.xls', 'mixer1', '190', '2020-10-31', '16:11:00', 'Agua', 170, 166, '1'),
(827, '2021AAAmixer 456ST.xls', 'mixer1', '190', '2020-10-31', '16:11:00', 'Maiz', 3130, 3033, '1'),
(828, '2021AAAmixer 456ST.xls', 'mixer1', '190', '2020-10-31', '16:11:00', 'Concentrado', 410, 400, '1'),
(829, '2021AAAmixer 456ST.xls', 'mixer1', '191', '2020-11-02', '08:17:00', 'CascaraMani', 410, 400, '1'),
(830, '2021AAAmixer 456ST.xls', 'mixer1', '191', '2020-11-02', '08:17:00', 'Agua', 170, 166, '1'),
(831, '2021AAAmixer 456ST.xls', 'mixer1', '191', '2020-11-02', '08:17:00', 'Maiz', 3090, 3033, '1'),
(832, '2021AAAmixer 456ST.xls', 'mixer1', '191', '2020-11-02', '08:17:00', 'Concentrado', 420, 400, '1'),
(833, '2021AAAmixer 456ST.xls', 'mixer1', '192', '2020-11-03', '08:30:00', 'CascaraMani', 400, 400, '1'),
(834, '2021AAAmixer 456ST.xls', 'mixer1', '192', '2020-11-03', '08:30:00', 'Agua', 170, 166, '1'),
(835, '2021AAAmixer 456ST.xls', 'mixer1', '192', '2020-11-03', '08:30:00', 'Maiz', 3040, 3033, '1'),
(836, '2021AAAmixer 456ST.xls', 'mixer1', '192', '2020-11-03', '08:30:00', 'Concentrado', 400, 400, '1'),
(837, '2021AAAmixer 456ST.xls', 'mixer1', '193', '2020-11-04', '08:14:00', 'CascaraMani', 400, 400, '1'),
(838, '2021AAAmixer 456ST.xls', 'mixer1', '193', '2020-11-04', '08:14:00', 'Agua', 170, 166, '1'),
(839, '2021AAAmixer 456ST.xls', 'mixer1', '193', '2020-11-04', '08:14:00', 'Maiz', 3050, 3033, '1'),
(840, '2021AAAmixer 456ST.xls', 'mixer1', '193', '2020-11-04', '08:14:00', 'Concentrado', 470, 400, '1'),
(841, '2021AAAmixer 456ST.xls', 'mixer1', '194', '2020-11-05', '09:04:00', 'CascaraMani', 420, 400, '1'),
(842, '2021AAAmixer 456ST.xls', 'mixer1', '194', '2020-11-05', '09:04:00', 'Agua', 170, 166, '1'),
(843, '2021AAAmixer 456ST.xls', 'mixer1', '194', '2020-11-05', '09:04:00', 'Maiz', 3090, 3033, '1'),
(844, '2021AAAmixer 456ST.xls', 'mixer1', '194', '2020-11-05', '09:04:00', 'Concentrado', 470, 400, '1'),
(845, '2021AAAmixer 456ST.xls', 'mixer1', '195', '2020-11-06', '14:43:00', 'CascaraMani', 400, 400, '1'),
(846, '2021AAAmixer 456ST.xls', 'mixer1', '195', '2020-11-06', '14:43:00', 'Agua', 170, 166, '1'),
(847, '2021AAAmixer 456ST.xls', 'mixer1', '195', '2020-11-06', '14:43:00', 'Maiz', 3080, 3033, '1'),
(848, '2021AAAmixer 456ST.xls', 'mixer1', '195', '2020-11-06', '14:43:00', 'Concentrado', 420, 400, '1'),
(849, '2021AAAmixer 456ST.xls', 'mixer1', '196', '2020-11-07', '16:10:00', 'CascaraMani', 510, 500, '1'),
(850, '2021AAAmixer 456ST.xls', 'mixer1', '196', '2020-11-07', '16:10:00', 'Agua', 210, 208, '1'),
(851, '2021AAAmixer 456ST.xls', 'mixer1', '196', '2020-11-07', '16:10:00', 'Maiz', 3810, 3791, '1'),
(852, '2021AAAmixer 456ST.xls', 'mixer1', '196', '2020-11-07', '16:10:00', 'Concentrado', 500, 500, '1'),
(853, '2021AAAmixer 456ST.xls', 'mixer1', '197', '2020-11-09', '08:30:00', 'CascaraMani', 400, 400, '1'),
(854, '2021AAAmixer 456ST.xls', 'mixer1', '197', '2020-11-09', '08:30:00', 'Agua', 170, 166, '1'),
(855, '2021AAAmixer 456ST.xls', 'mixer1', '197', '2020-11-09', '08:30:00', 'Maiz', 3100, 3033, '1'),
(856, '2021AAAmixer 456ST.xls', 'mixer1', '197', '2020-11-09', '08:30:00', 'Concentrado', 400, 400, '1'),
(857, '2021AAAmixer 456ST.xls', 'mixer1', '198', '2020-11-10', '16:20:00', 'CascaraMani', 400, 400, '1'),
(858, '2021AAAmixer 456ST.xls', 'mixer1', '198', '2020-11-10', '16:20:00', 'Agua', 170, 166, '1'),
(859, '2021AAAmixer 456ST.xls', 'mixer1', '198', '2020-11-10', '16:20:00', 'Maiz', 3090, 3033, '1'),
(860, '2021AAAmixer 456ST.xls', 'mixer1', '198', '2020-11-10', '16:20:00', 'Concentrado', 400, 400, '1'),
(861, '2021AAAmixer 456ST.xls', 'mixer1', '199', '2020-11-11', '17:25:00', 'CascaraMani', 400, 400, '1'),
(862, '2021AAAmixer 456ST.xls', 'mixer1', '199', '2020-11-11', '17:25:00', 'Agua', 170, 166, '1'),
(863, '2021AAAmixer 456ST.xls', 'mixer1', '199', '2020-11-11', '17:25:00', 'Maiz', 3080, 3033, '1'),
(864, '2021AAAmixer 456ST.xls', 'mixer1', '199', '2020-11-11', '17:25:00', 'Concentrado', 410, 400, '1'),
(865, '2021AAAmixer 456ST.xls', 'mixer1', '200', '2020-11-12', '17:05:00', 'CascaraMani', 400, 400, '1'),
(866, '2021AAAmixer 456ST.xls', 'mixer1', '200', '2020-11-12', '17:05:00', 'Agua', 170, 166, '1'),
(867, '2021AAAmixer 456ST.xls', 'mixer1', '200', '2020-11-12', '17:05:00', 'Maiz', 3080, 3033, '1'),
(868, '2021AAAmixer 456ST.xls', 'mixer1', '200', '2020-11-12', '17:05:00', 'Concentrado', 410, 400, '1'),
(869, '2021AAAmixer 456ST.xls', 'mixer1', '201', '2020-11-14', '09:16:00', 'CascaraMani', 400, 400, '1'),
(870, '2021AAAmixer 456ST.xls', 'mixer1', '201', '2020-11-14', '09:16:00', 'Agua', 170, 166, '1'),
(871, '2021AAAmixer 456ST.xls', 'mixer1', '201', '2020-11-14', '09:16:00', 'Maiz', 3070, 3033, '1'),
(872, '2021AAAmixer 456ST.xls', 'mixer1', '201', '2020-11-14', '09:16:00', 'Concentrado', 410, 400, '1'),
(873, '2021AAAmixer 456ST.xls', 'mixer1', '202', '2020-11-16', '17:53:00', 'CascaraMani', 400, 400, '1'),
(874, '2021AAAmixer 456ST.xls', 'mixer1', '202', '2020-11-16', '17:53:00', 'Agua', 170, 166, '1'),
(875, '2021AAAmixer 456ST.xls', 'mixer1', '202', '2020-11-16', '17:53:00', 'Maiz', 3100, 3033, '1'),
(876, '2021AAAmixer 456ST.xls', 'mixer1', '202', '2020-11-16', '17:53:00', 'Concentrado', 400, 400, '1'),
(877, '2021AAAmixer 456ST.xls', 'mixer1', '203', '2020-11-17', '17:06:00', 'CascaraMani', 500, 500, '1'),
(878, '2021AAAmixer 456ST.xls', 'mixer1', '203', '2020-11-17', '17:06:00', 'Agua', 210, 208, '1'),
(879, '2021AAAmixer 456ST.xls', 'mixer1', '203', '2020-11-17', '17:06:00', 'Maiz', 3810, 3791, '1'),
(880, '2021AAAmixer 456ST.xls', 'mixer1', '203', '2020-11-17', '17:06:00', 'Concentrado', 500, 500, '1'),
(881, '2021AAAmixer 456ST.xls', 'mixer1', '204', '2020-11-19', '07:55:00', 'CascaraMani', 500, 500, '1'),
(882, '2021AAAmixer 456ST.xls', 'mixer1', '204', '2020-11-19', '07:55:00', 'Agua', 210, 208, '1'),
(883, '2021AAAmixer 456ST.xls', 'mixer1', '204', '2020-11-19', '07:55:00', 'Maiz', 3870, 3791, '1'),
(884, '2021AAAmixer 456ST.xls', 'mixer1', '204', '2020-11-19', '07:55:00', 'Concentrado', 500, 500, '1'),
(885, '2021AAAmixer 456ST.xls', 'mixer1', '205', '2020-11-20', '16:25:00', 'CascaraMani', 520, 500, '1'),
(886, '2021AAAmixer 456ST.xls', 'mixer1', '205', '2020-11-20', '16:25:00', 'Agua', 210, 208, '1'),
(887, '2021AAAmixer 456ST.xls', 'mixer1', '205', '2020-11-20', '16:25:00', 'Maiz', 3840, 3791, '1'),
(888, '2021AAAmixer 456ST.xls', 'mixer1', '205', '2020-11-20', '16:25:00', 'Concentrado', 500, 500, '1'),
(889, '2021AAAmixer 456ST.xls', 'mixer1', '206', '2020-11-22', '08:08:00', 'CascaraMani', 400, 400, '1'),
(890, '2021AAAmixer 456ST.xls', 'mixer1', '206', '2020-11-22', '08:08:00', 'Agua', 170, 166, '1'),
(891, '2021AAAmixer 456ST.xls', 'mixer1', '206', '2020-11-22', '08:08:00', 'Maiz', 3040, 3033, '1'),
(892, '2021AAAmixer 456ST.xls', 'mixer1', '206', '2020-11-22', '08:08:00', 'Concentrado', 400, 400, '1'),
(893, '2021AAAmixer 456ST.xls', 'mixer1', '207', '2020-11-23', '16:28:00', 'CascaraMani', 640, 600, '1'),
(894, '2021AAAmixer 456ST.xls', 'mixer1', '207', '2020-11-23', '16:28:00', 'Agua', 250, 250, '1'),
(895, '2021AAAmixer 456ST.xls', 'mixer1', '207', '2020-11-23', '16:28:00', 'Maiz', 4590, 4550, '1'),
(896, '2021AAAmixer 456ST.xls', 'mixer1', '207', '2020-11-23', '16:28:00', 'Concentrado', 600, 600, '1'),
(897, '2021AAAmixer 456ST.xls', 'mixer1', '208', '2020-11-24', '17:22:00', 'CascaraMani', 410, 400, '1'),
(898, '2021AAAmixer 456ST.xls', 'mixer1', '208', '2020-11-24', '17:22:00', 'Agua', 180, 166, '1'),
(899, '2021AAAmixer 456ST.xls', 'mixer1', '208', '2020-11-24', '17:22:00', 'Maiz', 3050, 3033, '1'),
(900, '2021AAAmixer 456ST.xls', 'mixer1', '208', '2020-11-24', '17:22:00', 'Concentrado', 440, 400, '1'),
(901, '2021AAAmixer 456ST.xls', 'mixer1', '209', '2020-11-26', '08:36:00', 'CascaraMani', 600, 600, '1'),
(902, '2021AAAmixer 456ST.xls', 'mixer1', '209', '2020-11-26', '08:36:00', 'Agua', 250, 250, '1'),
(903, '2021AAAmixer 456ST.xls', 'mixer1', '209', '2020-11-26', '08:36:00', 'Maiz', 4590, 4550, '1'),
(904, '2021AAAmixer 456ST.xls', 'mixer1', '209', '2020-11-26', '08:36:00', 'Concentrado', 600, 600, '1'),
(905, '2021AAAmixer 456ST.xls', 'mixer1', '210', '2020-11-28', '08:44:00', 'CascaraMani', 600, 600, '1'),
(906, '2021AAAmixer 456ST.xls', 'mixer1', '210', '2020-11-28', '08:44:00', 'Agua', 250, 250, '1'),
(907, '2021AAAmixer 456ST.xls', 'mixer1', '210', '2020-11-28', '08:44:00', 'Maiz', 4670, 4550, '1'),
(908, '2021AAAmixer 456ST.xls', 'mixer1', '210', '2020-11-28', '08:44:00', 'Concentrado', 600, 600, '1'),
(909, '2021AAAmixer 456ST.xls', 'mixer1', '211', '2020-11-30', '08:24:00', 'CascaraMani', 600, 600, '1'),
(910, '2021AAAmixer 456ST.xls', 'mixer1', '211', '2020-11-30', '08:24:00', 'Agua', 250, 250, '1'),
(911, '2021AAAmixer 456ST.xls', 'mixer1', '211', '2020-11-30', '08:24:00', 'Maiz', 4580, 4550, '1'),
(912, '2021AAAmixer 456ST.xls', 'mixer1', '211', '2020-11-30', '08:24:00', 'Concentrado', 600, 600, '1'),
(913, '2021AAAmixer 456ST.xls', 'mixer1', '212', '2020-12-02', '07:55:00', 'CascaraMani', 600, 600, '1'),
(914, '2021AAAmixer 456ST.xls', 'mixer1', '212', '2020-12-02', '07:55:00', 'Agua', 250, 250, '1'),
(915, '2021AAAmixer 456ST.xls', 'mixer1', '212', '2020-12-02', '07:55:00', 'Maiz', 3650, 4550, '1'),
(916, '2021AAAmixer 456ST.xls', 'mixer1', '212', '2020-12-02', '07:55:00', 'Concentrado', 610, 600, '1'),
(917, '2021AAAmixer 456ST.xls', 'mixer1', '213', '2020-12-03', '16:46:00', 'CascaraMani', 610, 600, '1'),
(918, '2021AAAmixer 456ST.xls', 'mixer1', '213', '2020-12-03', '16:46:00', 'Agua', 250, 250, '1'),
(919, '2021AAAmixer 456ST.xls', 'mixer1', '213', '2020-12-03', '16:46:00', 'Maiz', 4560, 4550, '1'),
(920, '2021AAAmixer 456ST.xls', 'mixer1', '213', '2020-12-03', '16:46:00', 'Concentrado', 620, 600, '1'),
(921, '2021AAAmixer 456ST.xls', 'mixer1', '214', '2020-12-05', '08:11:00', 'CascaraMani', 600, 600, '1'),
(922, '2021AAAmixer 456ST.xls', 'mixer1', '214', '2020-12-05', '08:11:00', 'Agua', 250, 250, '1'),
(923, '2021AAAmixer 456ST.xls', 'mixer1', '214', '2020-12-05', '08:11:00', 'Maiz', 4550, 4550, '1'),
(924, '2021AAAmixer 456ST.xls', 'mixer1', '214', '2020-12-05', '08:11:00', 'Concentrado', 610, 600, '1'),
(925, '2021AAAmixer 456ST.xls', 'mixer1', '215', '2020-12-07', '08:04:00', 'CascaraMani', 600, 600, '1'),
(926, '2021AAAmixer 456ST.xls', 'mixer1', '215', '2020-12-07', '08:04:00', 'Agua', 250, 250, '1'),
(927, '2021AAAmixer 456ST.xls', 'mixer1', '215', '2020-12-07', '08:04:00', 'Maiz', 4550, 4550, '1'),
(928, '2021AAAmixer 456ST.xls', 'mixer1', '215', '2020-12-07', '08:04:00', 'Concentrado', 620, 600, '1'),
(929, '2021AAAmixer 456ST.xls', 'mixer1', '216', '2020-12-08', '08:23:00', 'CascaraMani', 400, 400, '1'),
(930, '2021AAAmixer 456ST.xls', 'mixer1', '216', '2020-12-08', '08:23:00', 'Agua', 170, 166, '1'),
(931, '2021AAAmixer 456ST.xls', 'mixer1', '216', '2020-12-08', '08:23:00', 'Maiz', 3040, 3033, '1'),
(932, '2021AAAmixer 456ST.xls', 'mixer1', '216', '2020-12-08', '08:23:00', 'Concentrado', 400, 400, '1'),
(933, '2021AAAmixer 456ST.xls', 'mixer1', '217', '2020-12-09', '16:15:00', 'CascaraMani', 600, 600, '1'),
(934, '2021AAAmixer 456ST.xls', 'mixer1', '217', '2020-12-09', '16:15:00', 'Agua', 250, 250, '1'),
(935, '2021AAAmixer 456ST.xls', 'mixer1', '217', '2020-12-09', '16:15:00', 'Maiz', 4550, 4550, '1'),
(936, '2021AAAmixer 456ST.xls', 'mixer1', '217', '2020-12-09', '16:15:00', 'Concentrado', 610, 600, '1'),
(937, '2021AAAmixer 456ST.xls', 'mixer1', '218', '2020-12-11', '15:55:00', 'CascaraMani', 610, 600, '1'),
(938, '2021AAAmixer 456ST.xls', 'mixer1', '218', '2020-12-11', '15:55:00', 'Agua', 250, 250, '1'),
(939, '2021AAAmixer 456ST.xls', 'mixer1', '218', '2020-12-11', '15:55:00', 'Maiz', 4550, 4550, '1'),
(940, '2021AAAmixer 456ST.xls', 'mixer1', '218', '2020-12-11', '15:55:00', 'Concentrado', 600, 600, '1'),
(941, '2021AAAmixer 456ST.xls', 'mixer1', '219', '2020-12-13', '15:54:00', 'CascaraMani', 580, 600, '1'),
(942, '2021AAAmixer 456ST.xls', 'mixer1', '219', '2020-12-13', '15:54:00', 'Agua', 250, 250, '1'),
(943, '2021AAAmixer 456ST.xls', 'mixer1', '219', '2020-12-13', '15:54:00', 'Maiz', 4560, 4550, '1'),
(944, '2021AAAmixer 456ST.xls', 'mixer1', '219', '2020-12-13', '15:54:00', 'Concentrado', 600, 600, '1'),
(945, '2021AAAmixer 456ST.xls', 'mixer1', '220', '2020-12-14', '17:00:00', 'PremixTermina', 10, 500, '7'),
(946, '2021AAAmixer 456ST.xls', 'mixer1', '221', '2020-12-15', '08:59:00', 'CascaraMani', 620, 600, '1'),
(947, '2021AAAmixer 456ST.xls', 'mixer1', '221', '2020-12-15', '08:59:00', 'Agua', 250, 250, '1'),
(948, '2021AAAmixer 456ST.xls', 'mixer1', '221', '2020-12-15', '08:59:00', 'Maiz', 4550, 4550, '1'),
(949, '2021AAAmixer 456ST.xls', 'mixer1', '221', '2020-12-15', '08:59:00', 'Concentrado', 600, 600, '1'),
(950, '2021AAAmixer 456ST.xls', 'mixer1', '222', '2020-12-16', '16:50:00', 'CascaraMani', 300, 300, '1'),
(951, '2021AAAmixer 456ST.xls', 'mixer1', '222', '2020-12-16', '16:50:00', 'Agua', 130, 125, '1'),
(952, '2021AAAmixer 456ST.xls', 'mixer1', '222', '2020-12-16', '16:50:00', 'Maiz', 2280, 2275, '1'),
(953, '2021AAAmixer 456ST.xls', 'mixer1', '222', '2020-12-16', '16:50:00', 'Concentrado', 330, 300, '1'),
(954, '2021AAAmixer 456ST.xls', 'mixer1', '223', '2020-12-17', '15:15:00', 'PremixTermina', 10, 5, '8'),
(955, '2021AAAmixer 456ST.xls', 'mixer1', '224', '2020-12-17', '15:28:00', 'PremixTermina', 10, 5, '8'),
(956, '2021AAAmixer 456ST.xls', 'mixer1', '225', '2020-12-17', '15:29:00', 'Maiz', 90, 3500, '8'),
(957, '2021AAAmixer 456ST.xls', 'mixer1', '226', '2020-12-17', '16:11:00', 'CascaraMani', 630, 650, '8'),
(958, '2021AAAmixer 456ST.xls', 'mixer1', '226', '2020-12-17', '16:11:00', 'Agua', 810, 500, '8'),
(959, '2021AAAmixer 456ST.xls', 'mixer1', '226', '2020-12-17', '16:11:00', 'PremixTermina', 30, 25, '8'),
(960, '2021AAAmixer 456ST.xls', 'mixer1', '226', '2020-12-17', '16:11:00', 'Maiz', 3080, 3500, '8'),
(961, '2021AAAmixer 456ST.xls', 'mixer1', '226', '2020-12-17', '16:11:00', 'HenoSoja', 80, 75, '8'),
(962, '2021AAAmixer 456ST.xls', 'mixer1', '226', '2020-12-17', '16:11:00', 'Concentrado', 270, 250, '8'),
(963, '2021AAAmixer 456ST.xls', 'mixer1', '227', '2020-12-18', '16:41:00', 'CascaraMani', 650, 650, '8'),
(964, '2021AAAmixer 456ST.xls', 'mixer1', '227', '2020-12-18', '16:41:00', 'Agua', 500, 500, '8'),
(965, '2021AAAmixer 456ST.xls', 'mixer1', '227', '2020-12-18', '16:41:00', 'Maiz', 3530, 3500, '8'),
(966, '2021AAAmixer 456ST.xls', 'mixer1', '227', '2020-12-18', '16:41:00', 'HenoSoja', 70, 75, '8'),
(967, '2021AAAmixer 456ST.xls', 'mixer1', '227', '2020-12-18', '16:41:00', 'Concentrado', 340, 250, '8'),
(968, '2021AAAmixer 456ST.xls', 'mixer1', '228', '2020-12-20', '15:41:00', 'CascaraMani', 650, 650, '8'),
(969, '2021AAAmixer 456ST.xls', 'mixer1', '228', '2020-12-20', '15:41:00', 'Agua', 500, 500, '8'),
(970, '2021AAAmixer 456ST.xls', 'mixer1', '228', '2020-12-20', '15:41:00', 'PremixTermina', 30, 25, '8'),
(971, '2021AAAmixer 456ST.xls', 'mixer1', '228', '2020-12-20', '15:41:00', 'Maiz', 3500, 3500, '8'),
(972, '2021AAAmixer 456ST.xls', 'mixer1', '228', '2020-12-20', '15:41:00', 'HenoSoja', 60, 75, '8'),
(973, '2021AAAmixer 456ST.xls', 'mixer1', '228', '2020-12-20', '15:41:00', 'Concentrado', 320, 250, '8'),
(974, '2021AAAmixer 456ST.xls', 'mixer1', '229', '2020-12-21', '17:22:00', 'CascaraMani', 660, 650, '8'),
(975, '2021AAAmixer 456ST.xls', 'mixer1', '229', '2020-12-21', '17:22:00', 'Agua', 500, 500, '8'),
(976, '2021AAAmixer 456ST.xls', 'mixer1', '229', '2020-12-21', '17:22:00', 'PremixTermina', 30, 25, '8'),
(977, '2021AAAmixer 456ST.xls', 'mixer1', '229', '2020-12-21', '17:22:00', 'Maiz', 3500, 3500, '8'),
(978, '2021AAAmixer 456ST.xls', 'mixer1', '229', '2020-12-21', '17:22:00', 'HenoSoja', 80, 75, '8'),
(979, '2021AAAmixer 456ST.xls', 'mixer1', '229', '2020-12-21', '17:22:00', 'Concentrado', 280, 250, '8'),
(980, '2021AAAmixer 456ST.xls', 'mixer1', '230', '2020-12-23', '15:10:00', 'CascaraMani', 650, 650, '8'),
(981, '2021AAAmixer 456ST.xls', 'mixer1', '230', '2020-12-23', '15:10:00', 'Agua', 510, 500, '8'),
(982, '2021AAAmixer 456ST.xls', 'mixer1', '230', '2020-12-23', '15:10:00', 'PremixTermina', 40, 25, '8'),
(983, '2021AAAmixer 456ST.xls', 'mixer1', '230', '2020-12-23', '15:10:00', 'Maiz', 3510, 3500, '8'),
(984, '2021AAAmixer 456ST.xls', 'mixer1', '230', '2020-12-23', '15:10:00', 'HenoSoja', 70, 75, '8'),
(985, '2021AAAmixer 456ST.xls', 'mixer1', '230', '2020-12-23', '15:10:00', 'Concentrado', 260, 250, '8'),
(986, '2021AAAmixer 456ST.xls', 'mixer1', '231', '2020-12-25', '07:43:00', 'CascaraMani', 670, 650, '8'),
(987, '2021AAAmixer 456ST.xls', 'mixer1', '231', '2020-12-25', '07:43:00', 'Agua', 500, 500, '8'),
(988, '2021AAAmixer 456ST.xls', 'mixer1', '231', '2020-12-25', '07:43:00', 'PremixTermina', 30, 25, '8'),
(989, '2021AAAmixer 456ST.xls', 'mixer1', '231', '2020-12-25', '07:43:00', 'Maiz', 3500, 3500, '8'),
(990, '2021AAAmixer 456ST.xls', 'mixer1', '231', '2020-12-25', '07:43:00', 'HenoSoja', 260, 75, '8'),
(991, '2021AAAmixer 456ST.xls', 'mixer1', '231', '2020-12-25', '07:43:00', 'Concentrado', 250, 250, '8'),
(992, '2021AAAmixer 456ST.xls', 'mixer1', '232', '2020-12-26', '17:00:00', 'CascaraMani', 650, 650, '8'),
(993, '2021AAAmixer 456ST.xls', 'mixer1', '232', '2020-12-26', '17:00:00', 'Agua', 500, 500, '8'),
(994, '2021AAAmixer 456ST.xls', 'mixer1', '232', '2020-12-26', '17:00:00', 'PremixTermina', 30, 25, '8');
INSERT INTO `mixer_cargas` (`id`, `archivo`, `mixer`, `id_carga`, `fecha`, `hora`, `ingrediente`, `cantidad`, `ideal`, `id_receta`) VALUES
(995, '2021AAAmixer 456ST.xls', 'mixer1', '232', '2020-12-26', '17:00:00', 'Maiz', 3500, 3500, '8'),
(996, '2021AAAmixer 456ST.xls', 'mixer1', '232', '2020-12-26', '17:00:00', 'HenoSoja', 90, 75, '8'),
(997, '2021AAAmixer 456ST.xls', 'mixer1', '232', '2020-12-26', '17:00:00', 'Concentrado', 300, 250, '8'),
(998, '2021AAAmixer 456ST.xls', 'mixer1', '233', '2020-12-28', '08:51:00', 'CascaraMani', 650, 650, '8'),
(999, '2021AAAmixer 456ST.xls', 'mixer1', '233', '2020-12-28', '08:51:00', 'Agua', 500, 500, '8'),
(1000, '2021AAAmixer 456ST.xls', 'mixer1', '233', '2020-12-28', '08:51:00', 'PremixTermina', 30, 25, '8'),
(1001, '2021AAAmixer 456ST.xls', 'mixer1', '233', '2020-12-28', '08:51:00', 'Maiz', 3500, 3500, '8'),
(1002, '2021AAAmixer 456ST.xls', 'mixer1', '233', '2020-12-28', '08:51:00', 'HenoSoja', 60, 75, '8'),
(1003, '2021AAAmixer 456ST.xls', 'mixer1', '233', '2020-12-28', '08:51:00', 'Concentrado', 250, 250, '8'),
(1004, '2021AAAmixer 456ST.xls', 'mixer1', '234', '2020-12-29', '17:03:00', 'CascaraMani', 650, 650, '8'),
(1005, '2021AAAmixer 456ST.xls', 'mixer1', '234', '2020-12-29', '17:03:00', 'Agua', 500, 500, '8'),
(1006, '2021AAAmixer 456ST.xls', 'mixer1', '234', '2020-12-29', '17:03:00', 'PremixTermina', 30, 25, '8'),
(1007, '2021AAAmixer 456ST.xls', 'mixer1', '234', '2020-12-29', '17:03:00', 'Maiz', 3510, 3500, '8'),
(1008, '2021AAAmixer 456ST.xls', 'mixer1', '234', '2020-12-29', '17:03:00', 'HenoSoja', 80, 75, '8'),
(1009, '2021AAAmixer 456ST.xls', 'mixer1', '234', '2020-12-29', '17:03:00', 'Concentrado', 250, 250, '8'),
(1010, '2021AAAmixer 456ST.xls', 'mixer1', '235', '2020-12-31', '08:26:00', 'CascaraMani', 650, 650, '8'),
(1011, '2021AAAmixer 456ST.xls', 'mixer1', '235', '2020-12-31', '08:26:00', 'Agua', 500, 500, '8'),
(1012, '2021AAAmixer 456ST.xls', 'mixer1', '235', '2020-12-31', '08:26:00', 'PremixTermina', 20, 25, '8'),
(1013, '2021AAAmixer 456ST.xls', 'mixer1', '235', '2020-12-31', '08:26:00', 'Maiz', 3520, 3500, '8'),
(1014, '2021AAAmixer 456ST.xls', 'mixer1', '235', '2020-12-31', '08:26:00', 'HenoSoja', 80, 75, '8'),
(1015, '2021AAAmixer 456ST.xls', 'mixer1', '235', '2020-12-31', '08:26:00', 'Concentrado', 250, 250, '8'),
(1016, '2021AAAmixer 456ST.xls', 'mixer1', '236', '2021-01-02', '08:27:00', 'CascaraMani', 750, 750, '29'),
(1017, '2021AAAmixer 456ST.xls', 'mixer1', '236', '2021-01-02', '08:27:00', 'Agua', 750, 750, '29'),
(1018, '2021AAAmixer 456ST.xls', 'mixer1', '236', '2021-01-02', '08:27:00', 'PremixTermina', 60, 60, '29'),
(1019, '2021AAAmixer 456ST.xls', 'mixer1', '236', '2021-01-02', '08:27:00', 'MAIZ', 3280, 3275, '29'),
(1020, '2021AAAmixer 456ST.xls', 'mixer1', '236', '2021-01-02', '08:27:00', 'HenoSoja', 240, 165, '29'),
(1021, '2021AAAmixer 456ST.xls', 'mixer1', '237', '2021-01-03', '15:54:00', 'CascaraMani', 750, 750, '29'),
(1022, '2021AAAmixer 456ST.xls', 'mixer1', '237', '2021-01-03', '15:54:00', 'Agua', 750, 750, '29'),
(1023, '2021AAAmixer 456ST.xls', 'mixer1', '237', '2021-01-03', '15:54:00', 'PremixTermina', 60, 60, '29'),
(1024, '2021AAAmixer 456ST.xls', 'mixer1', '237', '2021-01-03', '15:54:00', 'MAIZ', 3280, 3275, '29'),
(1025, '2021AAAmixer 456ST.xls', 'mixer1', '237', '2021-01-03', '15:54:00', 'HenoSoja', 170, 165, '29'),
(1026, '2021AAAmixer 456ST.xls', 'mixer1', '238', '2021-01-05', '08:17:00', 'CascaraMani', 750, 750, '29'),
(1027, '2021AAAmixer 456ST.xls', 'mixer1', '238', '2021-01-05', '08:17:00', 'Agua', 750, 750, '29'),
(1028, '2021AAAmixer 456ST.xls', 'mixer1', '238', '2021-01-05', '08:17:00', 'PremixTermina', 60, 60, '29'),
(1029, '2021AAAmixer 456ST.xls', 'mixer1', '238', '2021-01-05', '08:17:00', 'MAIZ', 3290, 3275, '29'),
(1030, '2021AAAmixer 456ST.xls', 'mixer1', '239', '2021-01-07', '08:15:00', 'Agua', 770, 750, '29'),
(1031, '2021AAAmixer 456ST.xls', 'mixer1', '240', '2021-01-07', '08:23:00', 'Agua', 750, 750, '29'),
(1032, '2021AAAmixer 456ST.xls', 'mixer1', '240', '2021-01-07', '08:23:00', 'PremixTermina', 80, 60, '29'),
(1033, '2021AAAmixer 456ST.xls', 'mixer1', '240', '2021-01-07', '08:23:00', 'MAIZ', 3280, 3275, '29'),
(1034, '2021AAAmixer 456ST.xls', 'mixer1', '240', '2021-01-07', '08:23:00', 'HenoSoja', 170, 165, '29'),
(1035, '2021AAAmixer 456ST.xls', 'mixer1', '241', '2021-01-09', '07:08:00', 'CascaraMani', 750, 750, '29'),
(1036, '2021AAAmixer 456ST.xls', 'mixer1', '241', '2021-01-09', '07:08:00', 'Agua', 750, 750, '29'),
(1037, '2021AAAmixer 456ST.xls', 'mixer1', '241', '2021-01-09', '07:08:00', 'PremixTermina', 70, 60, '29'),
(1038, '2021AAAmixer 456ST.xls', 'mixer1', '241', '2021-01-09', '07:08:00', 'MAIZ', 3320, 3275, '29'),
(1039, '2021AAAmixer 456ST.xls', 'mixer1', '241', '2021-01-09', '07:08:00', 'HenoSoja', 270, 165, '29'),
(1040, '2021AAAmixer 456ST.xls', 'mixer1', '242', '2021-01-11', '09:15:00', 'CascaraMani', 800, 750, '29'),
(1041, '2021AAAmixer 456ST.xls', 'mixer1', '242', '2021-01-11', '09:15:00', 'Agua', 750, 750, '29'),
(1042, '2021AAAmixer 456ST.xls', 'mixer1', '242', '2021-01-11', '09:15:00', 'PremixTermina', 80, 60, '29'),
(1043, '2021AAAmixer 456ST.xls', 'mixer1', '242', '2021-01-11', '09:15:00', 'MAIZ', 3370, 3275, '29'),
(1044, '2021AAAmixer 456ST.xls', 'mixer1', '242', '2021-01-11', '09:15:00', 'HenoSoja', 170, 165, '29'),
(1045, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-13', '07:08:00', 'CascaraMani', 750, 750, '29'),
(1046, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-13', '07:08:00', 'Agua', 750, 750, '29'),
(1047, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-13', '07:08:00', 'PremixTermina', 70, 60, '29'),
(1048, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-13', '07:08:00', 'MAIZ', 3320, 3275, '29'),
(1049, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-13', '07:08:00', 'HenoSoja', 270, 165, '29'),
(1050, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'CascaraMani', 800, 750, '29'),
(1051, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'Agua', 750, 750, '29'),
(1052, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'PremixTermina', 80, 60, '29'),
(1053, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'MAIZ', 3370, 3275, '29'),
(1054, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'HenoSoja', 170, 165, '29'),
(1055, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-16', '09:15:00', 'CascaraMani', 900, 750, '29'),
(1056, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'Agua', 750, 750, '29'),
(1057, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'PremixTermina', 80, 60, '29'),
(1058, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'MAIZ', 3370, 3275, '29'),
(1059, '2021AAAmixer 456ST.xls', 'mixer1', '', '2021-01-15', '09:15:00', 'HenoSoja', 170, 165, '29'),
(1060, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2021-01-18', '08:17:00', 'CascaraMani', 750, 750, '29'),
(1061, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2021-01-18', '08:17:00', 'Agua', 750, 750, '29'),
(1062, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2021-01-18', '08:17:00', 'PremixTermina', 90, 60, '29'),
(1063, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2021-01-18', '08:17:00', 'MAIZ', 3280, 3275, '29'),
(1064, '2021AAAmixer 456ST.xls', 'mixer1', '1', '2021-01-18', '08:17:00', 'HenoSoja', 230, 165, '29'),
(1065, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2021-01-19', '18:02:00', 'CascaraMani', 750, 750, '29'),
(1066, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2021-01-19', '18:02:00', 'Agua', 750, 750, '29'),
(1067, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2021-01-19', '18:02:00', 'PremixTermina', 60, 60, '29'),
(1068, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2021-01-19', '18:02:00', 'MAIZ', 3290, 3275, '29'),
(1069, '2021AAAmixer 456ST.xls', 'mixer1', '2', '2021-01-19', '18:02:00', 'HenoSoja', 210, 165, '29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mixer_descargas`
--

CREATE TABLE `mixer_descargas` (
  `id` int(11) NOT NULL,
  `archivo` varchar(100) DEFAULT NULL,
  `mixer` varchar(150) DEFAULT NULL,
  `id_descarga` varchar(10) DEFAULT NULL,
  `id_carga` int(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `lote` int(10) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `animales` int(10) DEFAULT NULL,
  `operario` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mixer_descargas`
--

INSERT INTO `mixer_descargas` (`id`, `archivo`, `mixer`, `id_descarga`, `id_carga`, `fecha`, `hora`, `lote`, `cantidad`, `animales`, `operario`) VALUES
(1, 'mixer2.xlsx', 'mixer2', NULL, 0, '2020-06-15', '10:26:00', 2, 5890, NULL, NULL),
(2, 'mixer2.xlsx', 'mixer2', NULL, 1, '2020-06-15', '11:29:00', 2, 6030, NULL, NULL),
(3, 'mixer2.xlsx', 'mixer2', NULL, 2, '2020-06-15', '12:31:00', 2, 5840, NULL, NULL),
(4, 'mixer2.xlsx', 'mixer2', NULL, 3, '2020-06-25', '11:30:00', 2, 5730, NULL, NULL),
(5, 'mixer2.xlsx', 'mixer2', NULL, 4, '2020-06-25', '13:45:00', 2, 5760, NULL, NULL),
(6, 'mixer2.xlsx', 'mixer2', NULL, 5, '2020-06-25', '14:49:00', 2, 5670, NULL, NULL),
(7, 'mixer2.xlsx', 'mixer2', NULL, 6, '2020-07-02', '15:59:00', 2, 5740, NULL, NULL),
(8, 'mixer2.xlsx', 'mixer2', NULL, 7, '2020-07-02', '16:59:00', 2, 5740, NULL, NULL),
(9, 'mixer2.xlsx', 'mixer2', NULL, 8, '2020-07-08', '11:37:00', 2, 5730, NULL, NULL),
(10, 'mixer2.xlsx', 'mixer2', NULL, 9, '2020-07-08', '12:33:00', 2, 5770, NULL, NULL),
(11, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 2, 0, NULL, NULL),
(12, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 2, 0, NULL, NULL),
(13, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 3, 0, NULL, NULL),
(14, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 4, 0, NULL, NULL),
(15, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 5, 0, NULL, NULL),
(16, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 6, 0, NULL, NULL),
(17, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 7, 0, NULL, NULL),
(18, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 8, 0, NULL, NULL),
(19, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 9, 0, NULL, NULL),
(20, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-08', '13:25:00', 2, 5730, NULL, NULL),
(21, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-15', '11:02:00', 2, 5750, NULL, NULL),
(22, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-15', '14:35:59', 2, 5670, NULL, NULL),
(23, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-15', '17:06:00', 2, 5750, NULL, NULL),
(24, 'mixer2.xlsx', 'mixer2', NULL, 9, '2020-07-22', '14:46:00', 2, 5820, NULL, NULL),
(25, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-22', '16:15:00', 2, 5750, NULL, NULL),
(26, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-22', '17:19:00', 2, 5590, NULL, NULL),
(27, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-29', '14:47:00', 2, 5680, NULL, NULL),
(28, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-29', '16:01:00', 2, 5690, NULL, NULL),
(29, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-07-29', '17:15:00', 2, 5690, NULL, NULL),
(30, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-09-29', '18:23:00', 150, 50, NULL, NULL),
(31, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-09-29', '18:23:00', 150, 5890, NULL, NULL),
(32, 'mixer2.xlsx', 'mixer2', NULL, 10, '2020-09-29', '18:23:00', 151, 5870, NULL, NULL),
(33, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 1, 300, 84, 'Luis'),
(34, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 2, 140, 0, 'Luis'),
(35, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 3, 220, 38, 'Luis'),
(36, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 4, 340, 77, 'Luis'),
(37, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 5, 310, 99, 'Luis'),
(38, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 6, 370, 100, 'Luis'),
(39, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 8, 130, 25, 'Luis'),
(40, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 9, 110, 36, 'Luis'),
(41, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 11, 140, 38, 'Luis'),
(42, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 12, 350, 0, 'Luis'),
(43, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 13, 230, 33, 'Luis'),
(44, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 18, 320, 80, 'Luis'),
(45, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 19, 140, 68, 'Luis'),
(46, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 20, 70, 69, 'Luis'),
(47, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 21, 200, 43, 'Luis'),
(48, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 22, 260, 59, 'Luis'),
(49, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 23, 610, 71, 'Luis'),
(50, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 24, 400, 49, 'Luis'),
(51, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-04', '16:32:00', 25, 0, 50, 'Luis'),
(52, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-05', '16:32:00', 1, 470, 0, 'Luis'),
(53, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-05', '16:32:00', 3, 360, 38, 'Luis'),
(54, '2021AAAmixer 456ST.xls', 'mixer1', '1', 2, '2020-06-05', '16:32:00', 4, 410, 77, 'Luis'),
(55, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 5, 660, 99, 'Luis'),
(56, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 6, 440, 0, 'Luis'),
(57, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 7, 140, 0, 'Luis'),
(58, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 8, 210, 0, 'Luis'),
(59, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 9, 360, 0, 'Luis'),
(60, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 10, 250, 0, 'Luis'),
(61, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 11, 500, 0, 'Luis'),
(62, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 12, 440, 0, 'Luis'),
(63, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 13, 310, 33, 'Luis'),
(64, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 15, 220, 0, 'Luis'),
(65, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 18, 410, 80, 'Luis'),
(66, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 19, 370, 69, 'Luis'),
(67, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 20, 310, 0, 'Luis'),
(68, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 21, 400, 0, 'Luis'),
(69, '2021AAAmixer 456ST.xls', 'mixer1', '2', 2, '2020-06-05', '09:15:00', 22, 390, 59, 'Luis'),
(70, '2021AAAmixer 456ST.xls', 'mixer1', '3', 2, '2020-06-05', '09:52:00', 23, 610, 0, 'Luis'),
(71, '2021AAAmixer 456ST.xls', 'mixer1', '3', 2, '2020-06-05', '09:52:00', 24, 230, 0, 'Luis'),
(72, '2021AAAmixer 456ST.xls', 'mixer1', '3', 2, '2020-06-05', '09:52:00', 25, 250, 50, 'Luis'),
(73, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 18, 440, 80, 'Luis'),
(74, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 19, 280, 69, 'Luis'),
(75, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 20, 330, 0, 'Luis'),
(76, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 21, 270, 0, 'Luis'),
(77, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 22, 280, 59, 'Luis'),
(78, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 23, 430, 0, 'Luis'),
(79, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 24, 320, 0, 'Luis'),
(80, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 25, 170, 50, 'Luis'),
(81, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 8, 290, 0, 'Luis'),
(82, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 9, 240, 0, 'Luis'),
(83, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 10, 120, 0, 'Luis'),
(84, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 11, 210, 0, 'Luis'),
(85, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 12, 120, 0, 'Luis'),
(86, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 13, 230, 33, 'Luis'),
(87, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 15, 230, 0, 'Luis'),
(88, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 1, 270, 0, 'Luis'),
(89, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 3, 210, 38, 'Luis'),
(90, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 4, 440, 77, 'Luis'),
(91, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 5, 490, 99, 'Luis'),
(92, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 6, 320, 0, 'Luis'),
(93, '2021AAAmixer 456ST.xls', 'mixer1', '4', 2, '2020-06-05', '16:57:00', 7, 0, 0, 'Luis'),
(94, '2021AAAmixer 456ST.xls', 'mixer1', '5', 2, '2020-06-06', '08:24:00', 1, 580, 69, 'Luis'),
(95, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 3, 270, 38, '0'),
(96, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 4, 600, 77, '0'),
(97, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 5, 680, 99, '0'),
(98, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 6, 450, 80, '0'),
(99, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 7, 130, 55, '0'),
(100, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 8, 330, 28, '0'),
(101, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 9, 200, 29, '0'),
(102, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 10, 290, 26, '0'),
(103, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 11, 300, 38, '0'),
(104, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 12, 220, 45, '0'),
(105, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 13, 160, 33, '0'),
(106, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 15, 290, 29, '0'),
(107, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 18, 540, 80, '0'),
(108, '2021AAAmixer 456ST.xls', 'mixer1', '6', 2, '2020-06-06', '09:28:00', 19, 480, 69, '0'),
(109, '2021AAAmixer 456ST.xls', 'mixer1', '7', 2, '2020-06-06', '10:02:00', 20, 290, 68, '0'),
(110, '2021AAAmixer 456ST.xls', 'mixer1', '7', 2, '2020-06-06', '10:02:00', 22, 480, 59, '0'),
(111, '2021AAAmixer 456ST.xls', 'mixer1', '7', 2, '2020-06-06', '10:02:00', 23, 540, 71, 'Luis'),
(112, '2021AAAmixer 456ST.xls', 'mixer1', '7', 2, '2020-06-06', '10:02:00', 24, 380, 49, 'Luis'),
(113, '2021AAAmixer 456ST.xls', 'mixer1', '7', 2, '2020-06-06', '10:02:00', 25, 120, 50, 'Luis'),
(114, '2021AAAmixer 456ST.xls', 'mixer1', '8', 2, '2020-06-06', '14:59:00', 1, 290, 69, '0'),
(115, '2021AAAmixer 456ST.xls', 'mixer1', '8', 2, '2020-06-06', '14:59:00', 3, 120, 38, '0'),
(116, '2021AAAmixer 456ST.xls', 'mixer1', '8', 2, '2020-06-06', '14:59:00', 4, 180, 77, '0'),
(117, '2021AAAmixer 456ST.xls', 'mixer1', '8', 2, '2020-06-06', '14:59:00', 5, 340, 99, '0'),
(118, '2021AAAmixer 456ST.xls', 'mixer1', '8', 2, '2020-06-06', '14:59:00', 6, 270, 80, '0'),
(119, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 8, 110, 28, '0'),
(120, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 9, 110, 29, '0'),
(121, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 10, 110, 26, '0'),
(122, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 11, 220, 38, '0'),
(123, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 12, 220, 45, '0'),
(124, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 13, 90, 33, '0'),
(125, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 15, 200, 29, '0'),
(126, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 18, 410, 80, '0'),
(127, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 19, 290, 69, '0'),
(128, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 20, 210, 68, '0'),
(129, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 21, 280, 43, '0'),
(130, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 22, 210, 59, '0'),
(131, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 23, 480, 71, '0'),
(132, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 24, 420, 49, '0'),
(133, '2021AAAmixer 456ST.xls', 'mixer1', '9', 2, '2020-06-06', '15:20:00', 25, 80, 50, '0'),
(134, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 1, 400, 69, '0'),
(135, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 3, 100, 38, '0'),
(136, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 4, 570, 77, '0'),
(137, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 5, 550, 99, '0'),
(138, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 6, 440, 80, '0'),
(139, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 7, 170, 55, '0'),
(140, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 8, 100, 28, '0'),
(141, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 9, 260, 29, '0'),
(142, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 10, 260, 44, '0'),
(143, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 11, 300, 38, '0'),
(144, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 12, 270, 45, '0'),
(145, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 13, 220, 33, '0'),
(146, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 15, 240, 29, '0'),
(147, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 18, 550, 80, '0'),
(148, '2021AAAmixer 456ST.xls', 'mixer1', '10', 2, '2020-06-07', '09:02:00', 19, 450, 69, '0'),
(149, '2021AAAmixer 456ST.xls', 'mixer1', '11', 2, '2020-06-07', '09:46:00', 20, 330, 68, '0'),
(150, '2021AAAmixer 456ST.xls', 'mixer1', '11', 2, '2020-06-07', '09:46:00', 21, 300, 43, '0'),
(151, '2021AAAmixer 456ST.xls', 'mixer1', '11', 2, '2020-06-07', '09:46:00', 22, 450, 59, '0'),
(152, '2021AAAmixer 456ST.xls', 'mixer1', '11', 2, '2020-06-07', '09:46:00', 23, 520, 71, '0'),
(153, '2021AAAmixer 456ST.xls', 'mixer1', '11', 2, '2020-06-07', '09:46:00', 24, 410, 49, '0'),
(154, '2021AAAmixer 456ST.xls', 'mixer1', '11', 2, '2020-06-07', '09:46:00', 25, 260, 50, '0'),
(155, '2021AAAmixer 456ST.xls', 'mixer1', '12', 2, '2020-06-07', '15:14:00', 1, 200, 69, '0'),
(156, '2021AAAmixer 456ST.xls', 'mixer1', '12', 2, '2020-06-07', '15:14:00', 3, 140, 38, '0'),
(157, '2021AAAmixer 456ST.xls', 'mixer1', '12', 2, '2020-06-07', '15:14:00', 4, 250, 77, '0'),
(158, '2021AAAmixer 456ST.xls', 'mixer1', '12', 2, '2020-06-07', '15:14:00', 5, 510, 99, '0'),
(159, '2021AAAmixer 456ST.xls', 'mixer1', '12', 2, '2020-06-07', '15:14:00', 6, 230, 80, '0'),
(160, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 8, 150, 28, '0'),
(161, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 10, 190, 44, '0'),
(162, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 11, 230, 38, '0'),
(163, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 12, 220, 45, '0'),
(164, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 13, 190, 33, '0'),
(165, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 15, 110, 29, '0'),
(166, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 18, 420, 80, '0'),
(167, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 19, 300, 69, '0'),
(168, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 20, 260, 68, '0'),
(169, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 21, 210, 43, '0'),
(170, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 22, 280, 59, '0'),
(171, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 23, 460, 71, '0'),
(172, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 24, 230, 49, '0'),
(173, '2021AAAmixer 456ST.xls', 'mixer1', '13', 2, '2020-06-07', '15:40:00', 25, 130, 50, '0'),
(174, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 1, 350, 69, '0'),
(175, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 3, 230, 38, '0'),
(176, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 4, 530, 77, '0'),
(177, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 5, 700, 99, '0'),
(178, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 6, 370, 80, '0'),
(179, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 7, 200, 55, '0'),
(180, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 8, 320, 28, '0'),
(181, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 9, 170, 29, '0'),
(182, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 10, 240, 44, '0'),
(183, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 11, 340, 38, '0'),
(184, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 12, 210, 45, '0'),
(185, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 13, 220, 33, '0'),
(186, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 18, 530, 80, '0'),
(187, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 19, 490, 69, '0'),
(188, '2021AAAmixer 456ST.xls', 'mixer1', '14', 2, '2020-06-08', '08:28:00', 20, 0, 68, '0'),
(189, '2021AAAmixer 456ST.xls', 'mixer1', '15', 2, '2020-06-08', '09:16:00', 21, 280, 43, '0'),
(190, '2021AAAmixer 456ST.xls', 'mixer1', '15', 2, '2020-06-08', '09:16:00', 22, 200, 59, '0'),
(191, '2021AAAmixer 456ST.xls', 'mixer1', '15', 2, '2020-06-08', '09:16:00', 23, 420, 71, '0'),
(192, '2021AAAmixer 456ST.xls', 'mixer1', '15', 2, '2020-06-08', '09:16:00', 24, 380, 49, '0'),
(193, '2021AAAmixer 456ST.xls', 'mixer1', '15', 2, '2020-06-08', '09:16:00', 25, 350, 50, '0'),
(194, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 1, 320, 69, '0'),
(195, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 3, 80, 38, '0'),
(196, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 4, 100, 77, '0'),
(197, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 5, 420, 99, '0'),
(198, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 6, 340, 80, '0'),
(199, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 7, 130, 55, '0'),
(200, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 10, 130, 44, '0'),
(201, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 11, 130, 38, '0'),
(202, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 12, 160, 45, '0'),
(203, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 13, 160, 33, '0'),
(204, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 18, 280, 80, '0'),
(205, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 20, 180, 69, '0'),
(206, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 21, 210, 43, '0'),
(207, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 22, 400, 59, '0'),
(208, '2021AAAmixer 456ST.xls', 'mixer1', '16', 2, '2020-06-08', '14:50:00', 23, 540, 71, '0'),
(209, '2021AAAmixer 456ST.xls', 'mixer1', '17', 2, '2020-06-08', '15:35:00', 24, 190, 49, '0'),
(210, '2021AAAmixer 456ST.xls', 'mixer1', '17', 2, '2020-06-08', '15:35:00', 25, 230, 50, '0'),
(211, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 1, 240, 53, 'Hector'),
(212, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 3, 200, 38, 'Hector'),
(213, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 4, 280, 52, 'Hector'),
(214, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 5, 420, 78, 'Hector'),
(215, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 6, 410, 80, 'Hector'),
(216, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 7, 200, 54, 'Hector'),
(217, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 8, 280, 47, 'Hector'),
(218, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 10, 240, 31, 'Hector'),
(219, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 11, 270, 38, 'Hector'),
(220, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 12, 310, 45, 'Hector'),
(221, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 13, 240, 33, 'Hector'),
(222, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 18, 480, 80, 'Hector'),
(223, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 19, 450, 69, 'Hector'),
(224, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2020-06-09', '08:29:00', 20, 350, 68, 'Hector'),
(225, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2021-06-09', '08:30:00', 21, 240, 43, 'Hector'),
(226, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2022-06-09', '08:31:00', 22, 200, 59, 'Hector'),
(227, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2023-06-09', '08:32:00', 23, 540, 71, 'Hector'),
(228, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2024-06-09', '08:33:00', 24, 380, 49, 'Hector'),
(229, '2021AAAmixer 456ST.xls', 'mixer1', '18', 2, '2025-06-09', '08:34:00', 25, 180, 50, 'Hector'),
(230, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 1, 370, 53, 'Hector'),
(231, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 3, 230, 38, 'Hector'),
(232, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 4, 200, 52, 'Hector'),
(233, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 5, 380, 390, 'Hector'),
(234, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 6, 250, 80, 'Hector'),
(235, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 8, 29, 47, 'Hector'),
(236, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 9, 330, 50, 'Hector'),
(237, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 10, 200, 31, 'Hector'),
(238, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 11, 250, 38, 'Hector'),
(239, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 12, 230, 45, 'Hector'),
(240, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 13, 170, 33, 'Hector'),
(241, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 18, 280, 80, 'Hector'),
(242, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 19, 260, 69, 'Hector'),
(243, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 20, 220, 68, 'Hector'),
(244, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 21, 200, 43, 'Hector'),
(245, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 22, 310, 59, 'Hector'),
(246, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 23, 460, 71, 'Hector'),
(247, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 24, 200, 49, 'Hector'),
(248, '2021AAAmixer 456ST.xls', 'mixer1', '19', 2, '2020-06-09', '15:11:00', 25, 0, 50, 'Hector'),
(249, '2021AAAmixer 456ST.xls', 'mixer1', '20', 2, '2020-06-10', '08:19:00', 1, 830, 90, 'Luis'),
(250, '2021AAAmixer 456ST.xls', 'mixer1', '20', 2, '2020-06-10', '08:19:00', 3, 160, 38, 'Luis'),
(251, '2021AAAmixer 456ST.xls', 'mixer1', '20', 2, '2020-06-10', '08:19:00', 4, 330, 52, 'Luis'),
(252, '2021AAAmixer 456ST.xls', 'mixer1', '20', 2, '2020-06-10', '08:19:00', 5, 450, 78, 'Luis'),
(253, '2021AAAmixer 456ST.xls', 'mixer1', '20', 2, '2020-06-10', '08:19:00', 6, 420, 80, 'Luis'),
(254, '2021AAAmixer 456ST.xls', 'mixer1', '20', 2, '2020-06-10', '08:19:00', 7, 240, 54, 'Luis'),
(255, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 8, 380, 47, 'Luis'),
(256, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 9, 500, 50, 'Luis'),
(257, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 10, 220, 44, 'Luis'),
(258, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 11, 200, 51, 'Luis'),
(259, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 12, 340, 45, 'Luis'),
(260, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 13, 220, 33, 'Luis'),
(261, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 18, 450, 80, 'Luis'),
(262, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 19, 380, 69, 'Luis'),
(263, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 20, 410, 68, 'Luis'),
(264, '2021AAAmixer 456ST.xls', 'mixer1', '21', 2, '2020-06-10', '09:33:00', 21, 460, 43, 'Luis'),
(265, '2021AAAmixer 456ST.xls', 'mixer1', '22', 2, '2020-06-10', '10:12:00', 22, 450, 59, 'Luis'),
(266, '2021AAAmixer 456ST.xls', 'mixer1', '22', 2, '2020-06-10', '10:12:00', 23, 470, 55, 'Luis'),
(267, '2021AAAmixer 456ST.xls', 'mixer1', '22', 2, '2020-06-10', '10:12:00', 24, 530, 49, 'Luis'),
(268, '2021AAAmixer 456ST.xls', 'mixer1', '22', 2, '2020-06-10', '10:12:00', 25, 540, 50, 'Luis'),
(269, '2021AAAmixer 456ST.xls', 'mixer1', '23', 2, '2020-06-10', '15:28:00', 1, 320, 90, 'Luis'),
(270, '2021AAAmixer 456ST.xls', 'mixer1', '23', 2, '2020-06-10', '15:28:00', 3, 190, 38, 'Luis'),
(271, '2021AAAmixer 456ST.xls', 'mixer1', '23', 2, '2020-06-10', '15:28:00', 4, 140, 52, 'Luis'),
(272, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 5, 540, 78, 'Luis'),
(273, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 6, 370, 80, 'Luis'),
(274, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 7, 80, 54, 'Luis'),
(275, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 8, 300, 47, 'Luis'),
(276, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 9, 170, 50, 'Luis'),
(277, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 10, 120, 44, 'Luis'),
(278, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 11, 520, 51, 'Luis'),
(279, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 12, 270, 45, 'Luis'),
(280, '2021AAAmixer 456ST.xls', 'mixer1', '24', 2, '2020-06-10', '16:12:00', 14, 250, 33, 'Luis'),
(281, '2021AAAmixer 456ST.xls', 'mixer1', '25', 2, '2020-06-10', '16:39:00', 18, 520, 80, 'Luis'),
(282, '2021AAAmixer 456ST.xls', 'mixer1', '25', 2, '2020-06-10', '16:39:00', 19, 320, 69, 'Luis'),
(283, '2021AAAmixer 456ST.xls', 'mixer1', '25', 2, '2020-06-10', '16:39:00', 20, 110, 68, 'Luis'),
(284, '2021AAAmixer 456ST.xls', 'mixer1', '25', 2, '2020-06-10', '16:39:00', 21, 270, 43, 'Luis'),
(285, '2021AAAmixer 456ST.xls', 'mixer1', '25', 2, '2020-06-10', '16:39:00', 22, 140, 59, 'Luis'),
(286, '2021AAAmixer 456ST.xls', 'mixer1', '26', 2, '2020-06-10', '17:34:00', 23, 560, 55, 'Luis'),
(287, '2021AAAmixer 456ST.xls', 'mixer1', '26', 2, '2020-06-10', '17:34:00', 24, 330, 49, 'Luis'),
(288, '2021AAAmixer 456ST.xls', 'mixer1', '26', 2, '2020-06-10', '17:34:00', 25, 140, 50, 'Luis'),
(289, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 1, 500, 90, '0'),
(290, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 2, 220, 0, '0'),
(291, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 3, 190, 38, '0'),
(292, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 4, 410, 52, '0'),
(293, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 5, 660, 78, '0'),
(294, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 6, 540, 80, '0'),
(295, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 7, 170, 54, '0'),
(296, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 8, 180, 0, '0'),
(297, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 9, 100, 50, '0'),
(298, '2021AAAmixer 456ST.xls', 'mixer1', '27', 2, '2020-06-11', '08:15:00', 11, 500, 0, '0'),
(299, '2021AAAmixer 456ST.xls', 'mixer1', '28', 2, '2020-06-11', '08:39:00', 12, 410, 45, '0'),
(300, '2021AAAmixer 456ST.xls', 'mixer1', '28', 2, '2020-06-11', '08:39:00', 13, 330, 33, '0'),
(301, '2021AAAmixer 456ST.xls', 'mixer1', '28', 2, '2020-06-11', '08:39:00', 14, 220, 0, '0'),
(302, '2021AAAmixer 456ST.xls', 'mixer1', '28', 2, '2020-06-11', '08:39:00', 18, 430, 80, '0'),
(303, '2021AAAmixer 456ST.xls', 'mixer1', '28', 2, '2020-06-11', '08:39:00', 21, 100, 43, '0'),
(304, '2021AAAmixer 456ST.xls', 'mixer1', '29', 2, '2020-06-11', '09:37:00', 19, 510, 85, '0'),
(305, '2021AAAmixer 456ST.xls', 'mixer1', '29', 2, '2020-06-11', '09:37:00', 20, 430, 86, '0'),
(306, '2021AAAmixer 456ST.xls', 'mixer1', '30', 2, '2020-06-11', '10:33:00', 22, 450, 59, '0'),
(307, '2021AAAmixer 456ST.xls', 'mixer1', '30', 2, '2020-06-11', '10:33:00', 23, 590, 0, '0'),
(308, '2021AAAmixer 456ST.xls', 'mixer1', '30', 2, '2020-06-11', '10:33:00', 24, 420, 49, '0'),
(309, '2021AAAmixer 456ST.xls', 'mixer1', '30', 2, '2020-06-11', '10:33:00', 25, 170, 50, '0'),
(310, '2021AAAmixer 456ST.xls', 'mixer1', '31', 2, '2020-06-11', '15:05:00', 1, 460, 90, '0'),
(311, '2021AAAmixer 456ST.xls', 'mixer1', '31', 2, '2020-06-11', '15:05:00', 3, 170, 38, '0'),
(312, '2021AAAmixer 456ST.xls', 'mixer1', '31', 2, '2020-06-11', '15:05:00', 4, 180, 52, '0'),
(313, '2021AAAmixer 456ST.xls', 'mixer1', '31', 2, '2020-06-11', '15:05:00', 5, 230, 78, '0'),
(314, '2021AAAmixer 456ST.xls', 'mixer1', '31', 2, '2020-06-11', '15:05:00', 6, 170, 80, '0'),
(315, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 7, 100, 54, '0'),
(316, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 8, 360, 0, '0'),
(317, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 11, 200, 0, '0'),
(318, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 13, 90, 33, '0'),
(319, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 18, 330, 80, '0'),
(320, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 21, 320, 43, '0'),
(321, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 22, 410, 59, '0'),
(322, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 24, 300, 49, '0'),
(323, '2021AAAmixer 456ST.xls', 'mixer1', '32', 2, '2020-06-11', '15:19:00', 25, 90, 50, '0'),
(324, '2021AAAmixer 456ST.xls', 'mixer1', '33', 2, '2020-06-12', '08:44:00', 1, 680, 90, 'Hector'),
(325, '2021AAAmixer 456ST.xls', 'mixer1', '33', 2, '2020-06-12', '08:44:00', 3, 170, 38, 'Hector'),
(326, '2021AAAmixer 456ST.xls', 'mixer1', '34', 2, '2020-06-12', '10:12:00', 4, 410, 52, 'Hector'),
(327, '2021AAAmixer 456ST.xls', 'mixer1', '34', 2, '2020-06-12', '10:12:00', 5, 630, 78, 'Hector'),
(328, '2021AAAmixer 456ST.xls', 'mixer1', '34', 2, '2020-06-12', '10:12:00', 6, 500, 80, 'Hector'),
(329, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 7, 180, 54, 'Hector'),
(330, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 8, 280, 0, 'Hector'),
(331, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 9, 350, 50, 'Hector'),
(332, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 10, 200, 0, 'Hector'),
(333, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 11, 170, 0, 'Hector'),
(334, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 12, 290, 45, 'Hector'),
(335, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 13, 290, 33, 'Hector'),
(336, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 14, 250, 0, 'Hector'),
(337, '2021AAAmixer 456ST.xls', 'mixer1', '35', 2, '2020-06-12', '10:23:00', 15, 210, 42, 'Hector'),
(338, '2021AAAmixer 456ST.xls', 'mixer1', '36', 2, '2020-06-12', '10:41:00', 18, 470, 80, 'Hector'),
(339, '2021AAAmixer 456ST.xls', 'mixer1', '36', 2, '2020-06-12', '10:41:00', 21, 250, 43, 'Hector'),
(340, '2021AAAmixer 456ST.xls', 'mixer1', '36', 2, '2020-06-12', '10:41:00', 22, 440, 59, 'Hector'),
(341, '2021AAAmixer 456ST.xls', 'mixer1', '36', 2, '2020-06-12', '10:41:00', 24, 430, 49, 'Hector'),
(342, '2021AAAmixer 456ST.xls', 'mixer1', '36', 2, '2020-06-12', '10:41:00', 25, 230, 50, 'Hector'),
(343, '2021AAAmixer 456ST.xls', 'mixer1', '37', 2, '2020-06-12', '15:43:00', 1, 270, 90, 'Hector'),
(344, '2021AAAmixer 456ST.xls', 'mixer1', '37', 2, '2020-06-12', '15:43:00', 3, 240, 38, 'Hector'),
(345, '2021AAAmixer 456ST.xls', 'mixer1', '37', 2, '2020-06-12', '15:43:00', 4, 290, 52, 'Hector'),
(346, '2021AAAmixer 456ST.xls', 'mixer1', '37', 2, '2020-06-12', '15:43:00', 5, 300, 78, 'Hector'),
(347, '2021AAAmixer 456ST.xls', 'mixer1', '37', 2, '2020-06-12', '15:43:00', 6, 300, 80, 'Hector'),
(348, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 7, 240, 54, 'Hector'),
(349, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 8, 280, 0, 'Hector'),
(350, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 9, 230, 50, 'Hector'),
(351, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 10, 220, 0, 'Hector'),
(352, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 11, 210, 0, 'Hector'),
(353, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 12, 210, 45, 'Hector'),
(354, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 13, 160, 33, 'Hector'),
(355, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 14, 240, 0, 'Hector'),
(356, '2021AAAmixer 456ST.xls', 'mixer1', '38', 2, '2020-06-12', '15:59:00', 15, 170, 42, 'Hector'),
(357, '2021AAAmixer 456ST.xls', 'mixer1', '39', 2, '2020-06-12', '16:20:00', 18, 410, 80, 'Hector'),
(358, '2021AAAmixer 456ST.xls', 'mixer1', '39', 2, '2020-06-12', '16:20:00', 21, 180, 43, 'Hector'),
(359, '2021AAAmixer 456ST.xls', 'mixer1', '39', 2, '2020-06-12', '16:20:00', 22, 260, 59, 'Hector'),
(360, '2021AAAmixer 456ST.xls', 'mixer1', '39', 2, '2020-06-12', '16:20:00', 24, 280, 49, 'Hector'),
(361, '2021AAAmixer 456ST.xls', 'mixer1', '39', 2, '2020-06-12', '16:20:00', 25, 160, 50, 'Hector'),
(362, '2021AAAmixer 456ST.xls', 'mixer1', '40', 2, '2020-06-13', '08:18:00', 1, 800, 90, 'luis'),
(363, '2021AAAmixer 456ST.xls', 'mixer1', '40', 2, '2020-06-13', '08:18:00', 3, 340, 38, 'luis'),
(364, '2021AAAmixer 456ST.xls', 'mixer1', '40', 2, '2020-06-13', '08:18:00', 4, 280, 52, 'luis'),
(365, '2021AAAmixer 456ST.xls', 'mixer1', '41', 2, '2020-06-13', '09:19:00', 5, 580, 78, 'luis'),
(366, '2021AAAmixer 456ST.xls', 'mixer1', '41', 2, '2020-06-13', '09:19:00', 6, 390, 80, 'luis'),
(367, '2021AAAmixer 456ST.xls', 'mixer1', '41', 2, '2020-06-13', '09:19:00', 7, 280, 54, 'luis'),
(368, '2021AAAmixer 456ST.xls', 'mixer1', '41', 2, '2020-06-13', '09:19:00', 8, 400, 0, 'luis'),
(369, '2021AAAmixer 456ST.xls', 'mixer1', '41', 2, '2020-06-13', '09:19:00', 9, 660, 50, 'luis'),
(370, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 10, 330, 0, 'luis'),
(371, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 11, 330, 0, 'luis'),
(372, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 12, 530, 45, 'luis'),
(373, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 13, 430, 33, 'luis'),
(374, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 14, 420, 45, 'luis'),
(375, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 15, 250, 42, 'luis'),
(376, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 18, 560, 80, 'luis'),
(377, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 21, 540, 43, 'luis'),
(378, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 22, 670, 59, 'luis'),
(379, '2021AAAmixer 456ST.xls', 'mixer1', '42', 2, '2020-06-13', '09:30:00', 24, 290, 49, 'luis'),
(380, '2021AAAmixer 456ST.xls', 'mixer1', '43', 2, '2020-06-13', '10:26:00', 19, 690, 85, 'luis'),
(381, '2021AAAmixer 456ST.xls', 'mixer1', '43', 2, '2020-06-13', '10:26:00', 20, 610, 86, 'luis'),
(382, '2021AAAmixer 456ST.xls', 'mixer1', '43', 2, '2020-06-13', '10:26:00', 23, 610, 0, 'luis'),
(383, '2021AAAmixer 456ST.xls', 'mixer1', '44', 2, '2020-06-13', '11:19:00', 25, 390, 50, 'luis'),
(384, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 1, 260, 90, 'luis'),
(385, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 3, 150, 38, 'luis'),
(386, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 4, 180, 52, 'luis'),
(387, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 5, 390, 78, 'luis'),
(388, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 6, 320, 80, 'luis'),
(389, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 7, 130, 54, 'luis'),
(390, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 8, 440, 0, 'luis'),
(391, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 9, 160, 50, 'luis'),
(392, '2021AAAmixer 456ST.xls', 'mixer1', '45', 2, '2020-06-13', '15:07:00', 10, 260, 0, 'luis'),
(393, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 11, 260, 0, 'luis'),
(394, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 12, 220, 45, 'luis'),
(395, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 13, 160, 33, 'luis'),
(396, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 14, 210, 45, 'luis'),
(397, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 15, 310, 42, 'luis'),
(398, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 18, 610, 80, 'luis'),
(399, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 21, 360, 43, 'luis'),
(400, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 22, 350, 59, 'luis'),
(401, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 24, 690, 49, 'luis'),
(402, '2021AAAmixer 456ST.xls', 'mixer1', '46', 2, '2020-06-13', '15:28:00', 25, 250, 50, 'luis'),
(403, '2021AAAmixer 456ST.xls', 'mixer1', '47', 2, '2020-06-14', '08:34:00', 1, 470, 90, 'LUIS'),
(404, '2021AAAmixer 456ST.xls', 'mixer1', '47', 2, '2020-06-14', '08:34:00', 3, 170, 38, 'LUIS'),
(405, '2021AAAmixer 456ST.xls', 'mixer1', '47', 2, '2020-06-14', '08:34:00', 4, 360, 52, 'LUIS'),
(406, '2021AAAmixer 456ST.xls', 'mixer1', '47', 2, '2020-06-14', '08:34:00', 5, 670, 78, 'LUIS'),
(407, '2021AAAmixer 456ST.xls', 'mixer1', '47', 2, '2020-06-14', '08:34:00', 6, 350, 80, 'LUIS'),
(408, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 7, 250, 54, 'LUIS'),
(409, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 8, 470, 60, 'LUIS'),
(410, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 9, 550, 49, 'LUIS'),
(411, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 10, 260, 28, 'LUIS'),
(412, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 11, 310, 30, 'LUIS'),
(413, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 12, 250, 45, 'LUIS'),
(414, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 13, 0, 33, 'LUIS'),
(415, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 14, 390, 45, 'LUIS'),
(416, '2021AAAmixer 456ST.xls', 'mixer1', '48', 2, '2020-06-14', '08:50:00', 15, 250, 42, 'LUIS'),
(417, '2021AAAmixer 456ST.xls', 'mixer1', '49', 2, '2020-06-14', '09:07:00', 18, 650, 80, 'LUIS'),
(418, '2021AAAmixer 456ST.xls', 'mixer1', '49', 2, '2020-06-14', '09:07:00', 21, 210, 43, 'LUIS'),
(419, '2021AAAmixer 456ST.xls', 'mixer1', '49', 2, '2020-06-14', '09:07:00', 22, 340, 59, 'LUIS'),
(420, '2021AAAmixer 456ST.xls', 'mixer1', '50', 2, '2020-06-14', '10:19:00', 19, 320, 85, 'LUIS'),
(421, '2021AAAmixer 456ST.xls', 'mixer1', '50', 2, '2020-06-14', '10:19:00', 20, 250, 86, 'LUIS'),
(422, '2021AAAmixer 456ST.xls', 'mixer1', '50', 2, '2020-06-14', '10:19:00', 23, 0, 34, 'LUIS'),
(423, '2021AAAmixer 456ST.xls', 'mixer1', '50', 2, '2020-06-14', '10:19:00', 24, 300, 49, 'LUIS'),
(424, '2021AAAmixer 456ST.xls', 'mixer1', '50', 2, '2020-06-14', '10:19:00', 25, 350, 50, 'LUIS'),
(425, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 1, 520, 90, 'LUIS'),
(426, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 3, 170, 38, 'LUIS'),
(427, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 4, 310, 52, 'LUIS'),
(428, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 5, 500, 78, 'LUIS'),
(429, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 6, 410, 80, 'LUIS'),
(430, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 7, 90, 54, 'LUIS'),
(431, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 8, 330, 60, 'LUIS'),
(432, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 9, 220, 49, 'LUIS'),
(433, '2021AAAmixer 456ST.xls', 'mixer1', '51', 2, '2020-06-14', '16:04:00', 10, 200, 28, 'LUIS'),
(434, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 11, 330, 30, 'LUIS'),
(435, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 12, 190, 45, 'LUIS'),
(436, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 13, 300, 33, 'LUIS'),
(437, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 14, 210, 45, 'LUIS'),
(438, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 18, 390, 80, 'LUIS'),
(439, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 21, 200, 43, 'LUIS'),
(440, '2021AAAmixer 456ST.xls', 'mixer1', '52', 2, '2020-06-14', '16:22:00', 22, 210, 59, 'LUIS'),
(441, '2021AAAmixer 456ST.xls', 'mixer1', '53', 2, '2020-06-14', '17:42:00', 24, 330, 49, 'LUIS'),
(442, '2021AAAmixer 456ST.xls', 'mixer1', '53', 2, '2020-06-14', '17:42:00', 25, 170, 50, 'LUIS'),
(443, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 1, 430, 90, 'LUIS'),
(444, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 3, 180, 38, 'LUIS'),
(445, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 4, 190, 0, 'LUIS'),
(446, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 5, 290, 0, 'LUIS'),
(447, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 6, 290, 80, 'LUIS'),
(448, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 7, 160, 0, 'LUIS'),
(449, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 8, 250, 0, 'LUIS'),
(450, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 9, 180, 0, 'LUIS'),
(451, '2021AAAmixer 456ST.xls', 'mixer1', '54', 2, '2020-06-15', '08:23:00', 12, 120, 0, 'LUIS'),
(452, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 13, 160, 0, 'LUIS'),
(453, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 14, 230, 0, 'LUIS'),
(454, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 15, 180, 0, 'LUIS'),
(455, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 18, 230, 0, 'LUIS'),
(456, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 19, 190, 85, 'LUIS'),
(457, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 20, 320, 86, 'LUIS'),
(458, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 21, 300, 43, 'LUIS'),
(459, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 22, 180, 59, 'LUIS'),
(460, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 24, 190, 0, 'LUIS'),
(461, '2021AAAmixer 456ST.xls', 'mixer1', '55', 2, '2020-06-15', '08:45:00', 25, 320, 50, 'LUIS'),
(462, '2021AAAmixer 456ST.xls', 'mixer1', '56', 2, '2020-06-15', '14:35:00', 1, 330, 90, 'LUIS'),
(463, '2021AAAmixer 456ST.xls', 'mixer1', '56', 2, '2020-06-15', '14:35:00', 3, 180, 38, 'LUIS'),
(464, '2021AAAmixer 456ST.xls', 'mixer1', '56', 2, '2020-06-15', '14:35:00', 4, 170, 0, 'LUIS'),
(465, '2021AAAmixer 456ST.xls', 'mixer1', '56', 2, '2020-06-15', '14:35:00', 5, 420, 0, 'LUIS'),
(466, '2021AAAmixer 456ST.xls', 'mixer1', '56', 2, '2020-06-15', '14:35:00', 6, 160, 80, 'LUIS'),
(467, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 8, 410, 0, 'LUIS'),
(468, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 9, 160, 0, 'LUIS'),
(469, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 10, 180, 0, 'LUIS'),
(470, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 11, 200, 0, 'LUIS'),
(471, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 12, 220, 0, 'LUIS'),
(472, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 13, 120, 0, 'LUIS'),
(473, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 14, 220, 0, 'LUIS'),
(474, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 15, 90, 0, 'LUIS'),
(475, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 18, 420, 0, 'LUIS'),
(476, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 19, 200, 85, 'LUIS'),
(477, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 20, 280, 86, 'LUIS'),
(478, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 22, 280, 59, 'LUIS'),
(479, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 24, 250, 0, 'LUIS'),
(480, '2021AAAmixer 456ST.xls', 'mixer1', '57', 2, '2020-06-15', '15:49:00', 25, 50, 50, 'LUIS'),
(481, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 1, 590, 90, '0'),
(482, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 3, 190, 38, '0'),
(483, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 4, 460, 52, '0'),
(484, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 5, 540, 78, '0'),
(485, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 6, 530, 80, '0'),
(486, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 7, 220, 54, '0'),
(487, '2021AAAmixer 456ST.xls', 'mixer1', '58', 2, '2020-06-16', '08:25:00', 8, 290, 60, '0'),
(488, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 9, 380, 49, '0'),
(489, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 10, 250, 28, '0'),
(490, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 11, 190, 30, '0'),
(491, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 12, 390, 45, '0'),
(492, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 13, 270, 33, '0'),
(493, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 14, 200, 45, '0'),
(494, '2021AAAmixer 456ST.xls', 'mixer1', '59', 2, '2020-06-16', '09:47:00', 15, 130, 42, '0'),
(495, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 18, 160, 80, '0'),
(496, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 19, 300, 85, '0'),
(497, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 20, 280, 86, '0'),
(498, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 21, 260, 43, '0'),
(499, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 22, 420, 59, '0'),
(500, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 23, 0, 34, '0'),
(501, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 24, 390, 49, '0'),
(502, '2021AAAmixer 456ST.xls', 'mixer1', '60', 2, '2020-06-16', '10:06:00', 25, 80, 50, '0'),
(503, '2021AAAmixer 456ST.xls', 'mixer1', '61', 2, '2020-06-16', '15:54:00', 1, 460, 90, '0'),
(504, '2021AAAmixer 456ST.xls', 'mixer1', '61', 2, '2020-06-16', '15:54:00', 3, 240, 38, '0'),
(505, '2021AAAmixer 456ST.xls', 'mixer1', '61', 2, '2020-06-16', '15:54:00', 4, 250, 52, '0'),
(506, '2021AAAmixer 456ST.xls', 'mixer1', '61', 2, '2020-06-16', '15:54:00', 5, 480, 78, '0'),
(507, '2021AAAmixer 456ST.xls', 'mixer1', '61', 2, '2020-06-16', '15:54:00', 6, 360, 80, '0'),
(508, '2021AAAmixer 456ST.xls', 'mixer1', '62', 2, '2020-06-16', '16:08:00', 7, 280, 54, '0'),
(509, '2021AAAmixer 456ST.xls', 'mixer1', '62', 2, '2020-06-16', '16:08:00', 8, 260, 60, '0'),
(510, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 9, 420, 49, '0'),
(511, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 10, 0, 28, '0'),
(512, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 11, 230, 30, '0'),
(513, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 12, 270, 45, '0'),
(514, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 13, 140, 33, '0'),
(515, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 14, 300, 45, '0'),
(516, '2021AAAmixer 456ST.xls', 'mixer1', '63', 2, '2020-06-16', '17:03:00', 15, 190, 42, '0'),
(517, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 18, 400, 80, '0'),
(518, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 19, 250, 85, '0'),
(519, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 20, 280, 86, '0'),
(520, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 21, 350, 43, '0'),
(521, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 22, 410, 59, '0'),
(522, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 23, 0, 34, '0'),
(523, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 24, 450, 49, '0'),
(524, '2021AAAmixer 456ST.xls', 'mixer1', '64', 2, '2020-06-16', '17:17:00', 25, 330, 50, 'LUIS'),
(525, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 1, 450, 90, '0'),
(526, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 3, 110, 38, '0'),
(527, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 4, 220, 52, '0');
INSERT INTO `mixer_descargas` (`id`, `archivo`, `mixer`, `id_descarga`, `id_carga`, `fecha`, `hora`, `lote`, `cantidad`, `animales`, `operario`) VALUES
(528, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 5, 490, 78, '0'),
(529, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 6, 420, 80, '0'),
(530, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 7, 70, 54, '0'),
(531, '2021AAAmixer 456ST.xls', 'mixer1', '65', 2, '2020-06-17', '08:30:00', 8, 90, 60, '0'),
(532, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 8, 370, 60, '0'),
(533, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 9, 450, 49, '0'),
(534, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 10, 310, 34, '0'),
(535, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 11, 190, 25, '0'),
(536, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 12, 0, 45, '0'),
(537, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 13, 330, 51, '0'),
(538, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 14, 260, 45, '0'),
(539, '2021AAAmixer 456ST.xls', 'mixer1', '66', 2, '2020-06-17', '09:48:00', 15, 230, 42, '0'),
(540, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 18, 510, 50, '0'),
(541, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 19, 310, 85, '0'),
(542, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 20, 360, 86, '0'),
(543, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 21, 500, 76, '0'),
(544, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 22, 440, 59, '0'),
(545, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 23, 170, 34, '0'),
(546, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 24, 450, 49, '0'),
(547, '2021AAAmixer 456ST.xls', 'mixer1', '67', 2, '2020-06-17', '10:03:00', 25, 430, 50, '0'),
(548, '2021AAAmixer 456ST.xls', 'mixer1', '68', 2, '2020-06-17', '15:21:00', 1, 290, 90, '0'),
(549, '2021AAAmixer 456ST.xls', 'mixer1', '68', 2, '2020-06-17', '15:21:00', 3, 170, 38, '0'),
(550, '2021AAAmixer 456ST.xls', 'mixer1', '68', 2, '2020-06-17', '15:21:00', 4, 200, 52, '0'),
(551, '2021AAAmixer 456ST.xls', 'mixer1', '68', 2, '2020-06-17', '15:21:00', 5, 320, 78, '0'),
(552, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 6, 130, 80, '0'),
(553, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 7, 80, 54, '0'),
(554, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 8, 270, 60, '0'),
(555, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 9, 170, 49, '0'),
(556, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 10, 290, 34, '0'),
(557, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 11, 180, 25, '0'),
(558, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 12, 150, 45, '0'),
(559, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 13, 150, 51, '0'),
(560, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 14, 120, 45, '0'),
(561, '2021AAAmixer 456ST.xls', 'mixer1', '69', 2, '2020-06-17', '16:26:00', 15, 180, 42, '0'),
(562, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 18, 310, 80, '0'),
(563, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 19, 210, 85, '0'),
(564, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 20, 240, 86, '0'),
(565, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 21, 240, 76, '0'),
(566, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 22, 290, 59, '0'),
(567, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 23, 0, 34, '0'),
(568, '2021AAAmixer 456ST.xls', 'mixer1', '70', 2, '2020-06-17', '16:54:00', 24, 210, 49, '0'),
(569, '2021AAAmixer 456ST.xls', 'mixer1', '71', 2, '2020-06-18', '08:14:00', 1, 510, 90, 'LUIS'),
(570, '2021AAAmixer 456ST.xls', 'mixer1', '71', 2, '2020-06-18', '08:14:00', 3, 340, 38, 'LUIS'),
(571, '2021AAAmixer 456ST.xls', 'mixer1', '71', 2, '2020-06-18', '08:14:00', 4, 520, 52, 'LUIS'),
(572, '2021AAAmixer 456ST.xls', 'mixer1', '71', 2, '2020-06-18', '08:14:00', 5, 530, 78, 'LUIS'),
(573, '2021AAAmixer 456ST.xls', 'mixer1', '71', 2, '2020-06-18', '08:14:00', 6, 400, 80, 'LUIS'),
(574, '2021AAAmixer 456ST.xls', 'mixer1', '71', 2, '2020-06-18', '08:14:00', 7, 130, 54, 'LUIS'),
(575, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 8, 430, 60, 'LUIS'),
(576, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 9, 380, 40, 'LUIS'),
(577, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 10, 390, 45, 'LUIS'),
(578, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 12, 300, 45, 'LUIS'),
(579, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 13, 230, 51, 'LUIS'),
(580, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 14, 220, 45, 'LUIS'),
(581, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 15, 260, 42, 'LUIS'),
(582, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 18, 610, 80, 'LUIS'),
(583, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 19, 340, 85, 'LUIS'),
(584, '2021AAAmixer 456ST.xls', 'mixer1', '72', 2, '2020-06-18', '09:16:00', 20, 370, 86, 'LUIS'),
(585, '2021AAAmixer 456ST.xls', 'mixer1', '73', 2, '2020-06-18', '09:42:00', 21, 590, 76, 'LUIS'),
(586, '2021AAAmixer 456ST.xls', 'mixer1', '73', 2, '2020-06-18', '09:42:00', 22, 510, 59, 'LUIS'),
(587, '2021AAAmixer 456ST.xls', 'mixer1', '73', 2, '2020-06-18', '09:42:00', 23, 280, 34, 'LUIS'),
(588, '2021AAAmixer 456ST.xls', 'mixer1', '73', 2, '2020-06-18', '09:42:00', 24, 520, 49, 'LUIS'),
(589, '2021AAAmixer 456ST.xls', 'mixer1', '73', 2, '2020-06-18', '09:42:00', 25, 240, 50, 'LUIS'),
(590, '2021AAAmixer 456ST.xls', 'mixer1', '74', 2, '2020-06-18', '15:18:00', 1, 270, 90, 'Hector'),
(591, '2021AAAmixer 456ST.xls', 'mixer1', '74', 2, '2020-06-18', '15:18:00', 3, 170, 38, 'Hector'),
(592, '2021AAAmixer 456ST.xls', 'mixer1', '74', 2, '2020-06-18', '15:18:00', 4, 120, 52, 'Hector'),
(593, '2021AAAmixer 456ST.xls', 'mixer1', '74', 2, '2020-06-18', '15:18:00', 5, 320, 78, 'Hector'),
(594, '2021AAAmixer 456ST.xls', 'mixer1', '74', 2, '2020-06-18', '15:18:00', 6, 160, 80, 'Hector'),
(595, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 7, 110, 54, 'Hector'),
(596, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 8, 260, 18, 'Hector'),
(597, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 9, 110, 60, 'Hector'),
(598, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 12, 140, 45, 'Hector'),
(599, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 13, 150, 51, 'Hector'),
(600, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 14, 150, 45, 'Hector'),
(601, '2021AAAmixer 456ST.xls', 'mixer1', '75', 2, '2020-06-18', '15:35:00', 15, 180, 42, 'Hector'),
(602, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 18, 370, 80, 'Hector'),
(603, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 19, 230, 85, 'Hector'),
(604, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 20, 270, 86, 'Hector'),
(605, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 21, 270, 76, 'Hector'),
(606, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 22, 270, 59, 'Hector'),
(607, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 24, 190, 34, 'Hector'),
(608, '2021AAAmixer 456ST.xls', 'mixer1', '76', 2, '2020-06-18', '15:57:00', 25, 210, 50, 'Hector'),
(609, '2021AAAmixer 456ST.xls', 'mixer1', '77', 2, '2020-06-19', '08:20:00', 1, 550, 50, 'LUIS'),
(610, '2021AAAmixer 456ST.xls', 'mixer1', '77', 2, '2020-06-19', '08:20:00', 3, 70, 38, 'LUIS'),
(611, '2021AAAmixer 456ST.xls', 'mixer1', '77', 2, '2020-06-19', '08:20:00', 4, 420, 52, 'LUIS'),
(612, '2021AAAmixer 456ST.xls', 'mixer1', '77', 2, '2020-06-19', '08:20:00', 5, 600, 78, 'LUIS'),
(613, '2021AAAmixer 456ST.xls', 'mixer1', '77', 2, '2020-06-19', '08:20:00', 6, 460, 80, 'LUIS'),
(614, '2021AAAmixer 456ST.xls', 'mixer1', '77', 2, '2020-06-19', '08:20:00', 7, 220, 54, 'LUIS'),
(615, '2021AAAmixer 456ST.xls', 'mixer1', '78', 2, '2020-06-19', '09:22:00', 11, 440, 18, 'LUIS'),
(616, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 8, 540, 60, 'LUIS'),
(617, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 9, 350, 40, 'LUIS'),
(618, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 12, 350, 45, 'LUIS'),
(619, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 13, 320, 51, 'LUIS'),
(620, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 14, 290, 45, 'LUIS'),
(621, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 15, 240, 42, 'LUIS'),
(622, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 18, 500, 80, 'LUIS'),
(623, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 19, 320, 85, 'LUIS'),
(624, '2021AAAmixer 456ST.xls', 'mixer1', '79', 2, '2020-06-19', '10:17:00', 20, 460, 86, 'LUIS'),
(625, '2021AAAmixer 456ST.xls', 'mixer1', '80', 2, '2020-06-19', '10:55:00', 21, 660, 76, 'LUIS'),
(626, '2021AAAmixer 456ST.xls', 'mixer1', '80', 2, '2020-06-19', '10:55:00', 22, 560, 59, 'LUIS'),
(627, '2021AAAmixer 456ST.xls', 'mixer1', '80', 2, '2020-06-19', '10:55:00', 23, 130, 34, 'LUIS'),
(628, '2021AAAmixer 456ST.xls', 'mixer1', '80', 2, '2020-06-19', '10:55:00', 24, 320, 49, 'LUIS'),
(629, '2021AAAmixer 456ST.xls', 'mixer1', '80', 2, '2020-06-19', '10:55:00', 25, 440, 50, 'LUIS'),
(630, '2021AAAmixer 456ST.xls', 'mixer1', '81', 2, '2020-06-19', '14:38:00', 1, 580, 90, 'LUIS'),
(631, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 3, 180, 38, 'LUIS'),
(632, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 4, 200, 52, 'LUIS'),
(633, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 5, 400, 78, 'LUIS'),
(634, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 6, 450, 80, 'LUIS'),
(635, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 7, 80, 54, 'LUIS'),
(636, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 8, 320, 60, 'LUIS'),
(637, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 9, 390, 40, 'LUIS'),
(638, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 11, 0, 18, 'LUIS'),
(639, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 12, 150, 45, 'LUIS'),
(640, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 13, 0, 51, 'LUIS'),
(641, '2021AAAmixer 456ST.xls', 'mixer1', '82', 2, '2020-06-19', '15:49:00', 14, 150, 45, 'LUIS'),
(642, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 15, 130, 42, 'LUIS'),
(643, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 18, 450, 80, 'LUIS'),
(644, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 19, 370, 85, 'LUIS'),
(645, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 20, 380, 86, 'LUIS'),
(646, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 21, 590, 76, 'LUIS'),
(647, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 22, 130, 59, 'LUIS'),
(648, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 23, 120, 34, 'LUIS'),
(649, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 24, 430, 49, 'LUIS'),
(650, '2021AAAmixer 456ST.xls', 'mixer1', '83', 2, '2020-06-19', '16:08:00', 25, 0, 50, 'LUIS'),
(651, '2021AAAmixer 456ST.xls', 'mixer1', '84', 2, '2020-06-20', '08:31:00', 1, 520, 90, 'LUIS'),
(652, '2021AAAmixer 456ST.xls', 'mixer1', '84', 2, '2020-06-20', '08:31:00', 3, 340, 38, 'LUIS'),
(653, '2021AAAmixer 456ST.xls', 'mixer1', '84', 2, '2020-06-20', '08:31:00', 4, 220, 52, 'LUIS'),
(654, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 5, 690, 78, 'LUIS'),
(655, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 6, 410, 80, 'LUIS'),
(656, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 7, 140, 54, 'LUIS'),
(657, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 8, 550, 60, 'LUIS'),
(658, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 9, 210, 40, 'LUIS'),
(659, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 10, 0, 45, 'LUIS'),
(660, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 13, 320, 51, 'LUIS'),
(661, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 14, 270, 45, 'LUIS'),
(662, '2021AAAmixer 456ST.xls', 'mixer1', '85', 2, '2020-06-20', '09:38:00', 15, 200, 42, 'LUIS'),
(663, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 18, 720, 80, 'LUIS'),
(664, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 19, 420, 85, 'LUIS'),
(665, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 20, 530, 86, 'LUIS'),
(666, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 21, 760, 76, 'LUIS'),
(667, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 22, 680, 59, 'LUIS'),
(668, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 23, 130, 34, 'LUIS'),
(669, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 24, 460, 0, 'LUIS'),
(670, '2021AAAmixer 456ST.xls', 'mixer1', '86', 2, '2020-06-20', '10:17:00', 25, 150, 50, 'LUIS'),
(671, '2021AAAmixer 456ST.xls', 'mixer1', '87', 2, '2020-06-20', '15:04:00', 1, 400, 90, 'Hector'),
(672, '2021AAAmixer 456ST.xls', 'mixer1', '87', 2, '2020-06-20', '15:04:00', 3, 70, 38, 'Hector'),
(673, '2021AAAmixer 456ST.xls', 'mixer1', '87', 2, '2020-06-20', '15:04:00', 4, 300, 52, 'Hector'),
(674, '2021AAAmixer 456ST.xls', 'mixer1', '87', 2, '2020-06-20', '15:04:00', 5, 130, 78, 'Hector'),
(675, '2021AAAmixer 456ST.xls', 'mixer1', '87', 2, '2020-06-20', '15:04:00', 6, 420, 80, 'Hector'),
(676, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 7, 110, 54, 'Hector'),
(677, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 8, 100, 60, 'Hector'),
(678, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 9, 200, 40, 'Hector'),
(679, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 10, 250, 45, 'Hector'),
(680, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 11, 0, 18, 'Hector'),
(681, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 13, 150, 51, 'Hector'),
(682, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 14, 190, 45, 'Hector'),
(683, '2021AAAmixer 456ST.xls', 'mixer1', '88', 2, '2020-06-20', '15:23:00', 15, 230, 42, 'Hector'),
(684, '2021AAAmixer 456ST.xls', 'mixer1', '89', 2, '2020-06-20', '15:45:00', 18, 290, 80, 'Hector'),
(685, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 19, 300, 85, 'Hector'),
(686, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 20, 250, 86, 'Hector'),
(687, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 21, 290, 76, 'Hector'),
(688, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 22, 250, 59, 'Hector'),
(689, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 23, 190, 34, 'Hector'),
(690, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 24, 320, 49, 'Hector'),
(691, '2021AAAmixer 456ST.xls', 'mixer1', '90', 2, '2020-06-20', '15:48:00', 25, 260, 50, 'Hector'),
(692, '2021AAAmixer 456ST.xls', 'mixer1', '91', 2, '2020-06-21', '08:50:00', 1, 430, 90, 'Hector'),
(693, '2021AAAmixer 456ST.xls', 'mixer1', '91', 2, '2020-06-21', '08:50:00', 3, 210, 38, 'Hector'),
(694, '2021AAAmixer 456ST.xls', 'mixer1', '91', 2, '2020-06-21', '08:50:00', 4, 270, 52, 'Hector'),
(695, '2021AAAmixer 456ST.xls', 'mixer1', '91', 2, '2020-06-21', '08:50:00', 5, 500, 78, 'Hector'),
(696, '2021AAAmixer 456ST.xls', 'mixer1', '91', 2, '2020-06-21', '08:50:00', 6, 290, 80, 'Hector'),
(697, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 7, 180, 54, 'Hector'),
(698, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 8, 410, 60, 'Hector'),
(699, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 9, 230, 40, 'Hector'),
(700, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 10, 360, 45, 'Hector'),
(701, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 11, 0, 18, 'Hector'),
(702, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 13, 310, 51, 'Hector'),
(703, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 14, 290, 45, 'Hector'),
(704, '2021AAAmixer 456ST.xls', 'mixer1', '92', 2, '2020-06-21', '09:14:00', 15, 270, 42, 'Hector'),
(705, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 18, 490, 80, 'Hector'),
(706, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 19, 440, 85, 'Hector'),
(707, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 20, 420, 86, 'Hector'),
(708, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 21, 460, 76, 'Hector'),
(709, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 22, 290, 59, 'Hector'),
(710, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 23, 200, 34, 'Hector'),
(711, '2021AAAmixer 456ST.xls', 'mixer1', '93', 2, '2020-06-21', '09:39:00', 24, 180, 49, 'Hector'),
(712, '2021AAAmixer 456ST.xls', 'mixer1', '94', 2, '2020-06-21', '11:07:00', 25, 160, 50, 'Hector'),
(713, '2021AAAmixer 456ST.xls', 'mixer1', '95', 2, '2020-06-21', '15:48:00', 1, 330, 0, 'Hector'),
(714, '2021AAAmixer 456ST.xls', 'mixer1', '95', 2, '2020-06-21', '15:48:00', 3, 100, 38, 'Hector'),
(715, '2021AAAmixer 456ST.xls', 'mixer1', '95', 2, '2020-06-21', '15:48:00', 4, 270, 0, 'Hector'),
(716, '2021AAAmixer 456ST.xls', 'mixer1', '95', 2, '2020-06-21', '15:48:00', 5, 290, 0, 'Hector'),
(717, '2021AAAmixer 456ST.xls', 'mixer1', '95', 2, '2020-06-21', '15:48:00', 6, 200, 0, 'Hector'),
(718, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 7, 110, 0, 'Hector'),
(719, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 8, 270, 0, 'Hector'),
(720, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 9, 200, 0, 'Hector'),
(721, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 10, 230, 0, 'Hector'),
(722, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 11, 0, 18, 'Hector'),
(723, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 13, 220, 0, 'Hector'),
(724, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 14, 190, 0, 'Hector'),
(725, '2021AAAmixer 456ST.xls', 'mixer1', '96', 2, '2020-06-21', '16:03:00', 15, 210, 0, 'Hector'),
(726, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 18, 250, 0, 'Hector'),
(727, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 19, 390, 85, 'Hector'),
(728, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 20, 370, 0, 'Hector'),
(729, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 21, 320, 0, 'Hector'),
(730, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 22, 220, 59, 'Hector'),
(731, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 23, 140, 0, 'Hector'),
(732, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 24, 270, 0, 'Hector'),
(733, '2021AAAmixer 456ST.xls', 'mixer1', '97', 2, '2020-06-21', '16:29:00', 25, 310, 50, 'Hector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mixer_recetas`
--

CREATE TABLE `mixer_recetas` (
  `id` int(11) NOT NULL,
  `archivo` varchar(150) DEFAULT NULL,
  `id_receta` int(10) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `tiempoMezcla` varchar(100) DEFAULT NULL,
  `ingrediente1` varchar(100) DEFAULT NULL,
  `cantidad1` int(10) DEFAULT NULL,
  `ingrediente2` varchar(100) DEFAULT NULL,
  `cantidad2` int(10) DEFAULT NULL,
  `ingrediente3` varchar(100) DEFAULT NULL,
  `cantidad3` int(10) DEFAULT NULL,
  `ingrediente4` varchar(100) DEFAULT NULL,
  `cantidad4` int(10) DEFAULT NULL,
  `ingrediente5` varchar(100) DEFAULT NULL,
  `cantidad5` int(10) DEFAULT NULL,
  `ingrediente6` varchar(100) DEFAULT NULL,
  `cantidad6` int(50) DEFAULT NULL,
  `ingrediente7` varchar(100) DEFAULT NULL,
  `cantidad7` int(10) DEFAULT NULL,
  `ingrediente8` varchar(100) DEFAULT NULL,
  `cantidad8` int(10) DEFAULT NULL,
  `ingrediente9` varchar(100) DEFAULT NULL,
  `cantidad9` int(10) DEFAULT NULL,
  `ingrediente10` varchar(100) DEFAULT NULL,
  `cantidad10` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mixer_recetas`
--

INSERT INTO `mixer_recetas` (`id`, `archivo`, `id_receta`, `nombre`, `tipo`, `tiempoMezcla`, `ingrediente1`, `cantidad1`, `ingrediente2`, `cantidad2`, `ingrediente3`, `cantidad3`, `ingrediente4`, `cantidad4`, `ingrediente5`, `cantidad5`, `ingrediente6`, `cantidad6`, `ingrediente7`, `cantidad7`, `ingrediente8`, `cantidad8`, `ingrediente9`, `cantidad9`, `ingrediente10`, `cantidad10`) VALUES
(1, '2021AAAmixer 456ST.xls', 1, 'Gordo', 'Kg', '0', 'CascaraMani', 600, 'Agua', 250, 'Maiz', 4550, 'Concentrado', 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021AAAmixer 456ST.xls', 2, 'Ingreso', 'Kg', '0', 'Silo', 480, 'Maiz', 400, 'Concentrado', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2021AAAmixer 456ST.xls', 3, 'Desarrollo', 'Kg', '0', 'Silo', 150, 'Maiz', 730, 'Concentrado', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muertes`
--

CREATE TABLE `muertes` (
  `id` int(11) NOT NULL,
  `IDE` varchar(150) DEFAULT NULL,
  `LID` varchar(150) DEFAULT NULL,
  `feedlot` varchar(150) NOT NULL,
  `tropa` varchar(150) DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `raza` varchar(150) DEFAULT NULL,
  `sexo` varchar(150) DEFAULT NULL,
  `proveedor` varchar(150) DEFAULT NULL,
  `corral` int(10) DEFAULT NULL,
  `origen` varchar(150) DEFAULT NULL,
  `notas` varchar(150) DEFAULT NULL,
  `gdmTotal` float DEFAULT NULL,
  `gpvTotal` float DEFAULT NULL,
  `totalDias` int(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estadoTropa` varchar(150) DEFAULT NULL,
  `estado` varchar(150) DEFAULT NULL,
  `statusDate` date DEFAULT NULL,
  `grupo` varchar(150) DEFAULT NULL,
  `causaMuerte` varchar(150) DEFAULT NULL,
  `caravanaValida` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operarios`
--

CREATE TABLE `operarios` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operarios`
--

INSERT INTO `operarios` (`id`, `feedlot`, `nombre`) VALUES
(1, 'Lorena', 'Juan'),
(2, 'Lorena', 'Pepe'),
(3, 'Lorena', 'Mauro'),
(4, 'Lorena Prueba', 'Mauro'),
(5, 'Lorena Prueba', 'Coco'),
(7, 'Acopiadora Pampeana', 'Jorge'),
(8, 'Acopiadora Hoteleria', 'Pepe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razas`
--

CREATE TABLE `razas` (
  `id` int(11) NOT NULL,
  `raza` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `razas`
--

INSERT INTO `razas` (`id`, `raza`) VALUES
(1, 'Aberdeen Angus'),
(2, 'Bradford'),
(3, 'Shorthorn'),
(4, 'Hereford'),
(5, 'Brangus'),
(206, 'Britanico'),
(202, 'Holando'),
(201, 'Cruza'),
(211, 'Angus'),
(212, 'Braford'),
(213, 'Sin Registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroegresos`
--

CREATE TABLE `registroegresos` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(150) DEFAULT NULL,
  `tropa` varchar(150) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(100) DEFAULT NULL,
  `pesoPromedio` float DEFAULT NULL,
  `destino` varchar(150) DEFAULT NULL,
  `gmdPromedio` float DEFAULT NULL,
  `gpvPromedio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroingresos`
--

CREATE TABLE `registroingresos` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(150) NOT NULL,
  `tropa` varchar(150) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(100) DEFAULT NULL,
  `pesoPromedio` float DEFAULT NULL,
  `renspa` varchar(150) DEFAULT NULL,
  `adpv` float DEFAULT NULL,
  `estado` varchar(150) DEFAULT NULL,
  `proveedor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registroingresos`
--

INSERT INTO `registroingresos` (`id`, `feedlot`, `tropa`, `fecha`, `cantidad`, `pesoPromedio`, `renspa`, `adpv`, `estado`, `proveedor`) VALUES
(1, 'SuperRural', 'Ingreso fasano corral 3', '2020-08-10', 26, 333.96, '', 0, 'Regular', 'Fassano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroinsumo`
--

CREATE TABLE `registroinsumo` (
  `id` int(11) NOT NULL,
  `insumo` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `porceMS` float DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registroinsumo`
--

INSERT INTO `registroinsumo` (`id`, `insumo`, `precio`, `porceMS`, `fecha`) VALUES
(81, 'Expeller de soja', 30, 88, '2021-02-09'),
(63, 'Maiz', 74, 88, '2021-02-08'),
(49, 'Silo Trigo', 0, 30, '2021-02-08'),
(77, 'Premix ing. s/atb', 90.2, 99, '2021-02-09'),
(78, 'Cascara de mani', 4.1, 90, '2021-02-09'),
(79, 'Silo Trigo', 2.01, 20, '2021-02-09'),
(42, 'premix C/NM', 74.26, 99, '2021-02-08'),
(66, 'Silo Trigo', 2, 20, '2021-02-08'),
(65, 'Maiz', 5, 55, '2021-02-08'),
(47, 'Maiz', 17.4, 87, '2021-02-08'),
(53, 'Soja Poroto', 28.4, 88, '2021-02-08'),
(80, 'Expeller de soja', 30, 88, '2021-02-09'),
(76, 'Premix ing. c/atb', 200.47, 99, '2021-02-09'),
(68, 'Soja Poroto', 28.4, 88, '2021-02-09'),
(75, 'Expeller de soja', 30, 88, '2021-02-09'),
(70, 'Maiz', 17.4, 88, '2021-02-09'),
(74, 'Cascara de mani', 4, 90, '2021-02-09'),
(82, 'Expeller de soja', 30.01, 88, '2021-02-09'),
(83, 'Agua', 0.5, 0.2, '2021-02-09'),
(84, 'Agua', 0.05, 0.12, '2021-02-09'),
(85, 'Cascara de mani', 4.1, 90, '2021-02-10'),
(86, 'Alfalfa prefloración', 2.5, 20, '2021-02-12'),
(87, 'Agua', 0.1, 1, '2021-02-25'),
(88, 'Agua', 0.1, 1, '2021-02-25'),
(89, 'Agua', 0.1, 1, '2021-02-25'),
(90, 'Agua', 0.1, 1, '2021-02-25'),
(91, 'Agua', 0.01, 0.1, '2021-02-25'),
(92, 'Agua', 0.01, 1, '2021-02-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registromuertes`
--

CREATE TABLE `registromuertes` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(150) NOT NULL,
  `tropa` varchar(150) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(100) DEFAULT NULL,
  `causaMuerte` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `feedlot` varchar(150) NOT NULL,
  `tropa` varchar(150) NOT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `animales` int(11) DEFAULT 0,
  `operario` varchar(150) DEFAULT NULL,
  `operario1` varchar(150) DEFAULT NULL,
  `operario2` varchar(150) DEFAULT NULL,
  `operario3` varchar(150) DEFAULT NULL,
  `procedimiento` varchar(150) NOT NULL DEFAULT '',
  `fechaRealizado` date DEFAULT NULL,
  `fechaMetafilaxis` date DEFAULT NULL,
  `metafilaxis` tinyint(1) NOT NULL DEFAULT 0,
  `fechaVacuna` date DEFAULT NULL,
  `vacuna` tinyint(1) NOT NULL DEFAULT 0,
  `fechaRefuerzo` date DEFAULT NULL,
  `refuerzo` tinyint(1) NOT NULL DEFAULT 0,
  `notificado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `feedlot`, `tropa`, `fechaIngreso`, `animales`, `operario`, `operario1`, `operario2`, `operario3`, `procedimiento`, `fechaRealizado`, `fechaMetafilaxis`, `metafilaxis`, `fechaVacuna`, `vacuna`, `fechaRefuerzo`, `refuerzo`, `notificado`) VALUES
(22, 'SuperRural', 'Ingreso fasano corral 3', '2020-08-10', 26, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoformula`
--

CREATE TABLE `tipoformula` (
  `id` int(11) NOT NULL,
  `tipo` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoformula`
--

INSERT INTO `tipoformula` (`id`, `tipo`) VALUES
(2, 'Prueba');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `causas`
--
ALTER TABLE `causas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formulas`
--
ALTER TABLE `formulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insumosPremix`
--
ALTER TABLE `insumosPremix`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mixer`
--
ALTER TABLE `mixer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mixer_cargas`
--
ALTER TABLE `mixer_cargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mixer_descargas`
--
ALTER TABLE `mixer_descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mixer_recetas`
--
ALTER TABLE `mixer_recetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `muertes`
--
ALTER TABLE `muertes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operarios`
--
ALTER TABLE `operarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registroegresos`
--
ALTER TABLE `registroegresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registroingresos`
--
ALTER TABLE `registroingresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registroinsumo`
--
ALTER TABLE `registroinsumo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registromuertes`
--
ALTER TABLE `registromuertes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoformula`
--
ALTER TABLE `tipoformula`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `causas`
--
ALTER TABLE `causas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formulas`
--
ALTER TABLE `formulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `insumosPremix`
--
ALTER TABLE `insumosPremix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `mixer`
--
ALTER TABLE `mixer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mixer_cargas`
--
ALTER TABLE `mixer_cargas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1070;

--
-- AUTO_INCREMENT de la tabla `mixer_descargas`
--
ALTER TABLE `mixer_descargas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

--
-- AUTO_INCREMENT de la tabla `mixer_recetas`
--
ALTER TABLE `mixer_recetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `muertes`
--
ALTER TABLE `muertes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `operarios`
--
ALTER TABLE `operarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `razas`
--
ALTER TABLE `razas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT de la tabla `registroegresos`
--
ALTER TABLE `registroegresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registroingresos`
--
ALTER TABLE `registroingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registroinsumo`
--
ALTER TABLE `registroinsumo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `registromuertes`
--
ALTER TABLE `registromuertes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tipoformula`
--
ALTER TABLE `tipoformula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
