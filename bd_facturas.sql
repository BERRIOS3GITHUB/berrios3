-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2022 a las 23:46:09
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_facturas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprafactura`
--

CREATE TABLE `comprafactura` (
  `nfactura` varchar(50) NOT NULL,
  `idproducto` varchar(50) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `importe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comprafactura`
--

INSERT INTO `comprafactura` (`nfactura`, `idproducto`, `nombreProducto`, `descripcion`, `precio`, `cantidad`, `importe`) VALUES
('1582', '001', 'Lapiz', 'Lapiz 2B Faber Castell', '1.00', '2', '2.0'),
('1582', '002', 'Lapicero', 'Lapicero azul Pilot', '4.00', '1', '4.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `nfactura` varchar(50) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `codCliente` varchar(50) NOT NULL,
  `nomCliente` varchar(50) NOT NULL,
  `rucCliente` varchar(50) NOT NULL,
  `subTotal` varchar(50) NOT NULL,
  `igv` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`nfactura`, `fecha`, `codCliente`, `nomCliente`, `rucCliente`, `subTotal`, `igv`, `total`) VALUES
('1582', '03/02/2022', '123', 'jose sanchez', '12345678912', '6.0', '1.08', '7.08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
