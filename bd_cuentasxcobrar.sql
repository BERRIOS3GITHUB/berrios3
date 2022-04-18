-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2022 a las 23:45:59
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
-- Base de datos: `bd_cuentasxcobrar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentacliente`
--

CREATE TABLE `cuentacliente` (
  `numFactura` varchar(50) NOT NULL,
  `codCliente` varchar(50) NOT NULL,
  `nomCliente` varchar(50) NOT NULL,
  `rucCliente` varchar(50) NOT NULL,
  `subTotal` varchar(50) NOT NULL,
  `igv` varchar(50) NOT NULL,
  `totalCobrar` varchar(50) NOT NULL,
  `fechaCobro` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentacliente`
--

INSERT INTO `cuentacliente` (`numFactura`, `codCliente`, `nomCliente`, `rucCliente`, `subTotal`, `igv`, `totalCobrar`, `fechaCobro`, `estado`) VALUES
('1582', '123', 'jose sanchez', '12345678912', '6.0', '1.08', '7.08', '03/02/2022', 'PENDIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentaproducto`
--

CREATE TABLE `cuentaproducto` (
  `numFactura` varchar(50) NOT NULL,
  `idProducto` varchar(50) NOT NULL,
  `nomProducto` varchar(50) NOT NULL,
  `descriProducto` varchar(50) NOT NULL,
  `cantProducto` varchar(50) NOT NULL,
  `precioProducto` varchar(50) NOT NULL,
  `importeProducto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentaproducto`
--

INSERT INTO `cuentaproducto` (`numFactura`, `idProducto`, `nomProducto`, `descriProducto`, `cantProducto`, `precioProducto`, `importeProducto`) VALUES
('1582', '001', 'Lapiz', 'Lapiz 2B Faber Castell', '2', '1.00', '2.0'),
('1582', '002', 'Lapicero', 'Lapicero azul Pilot', '1', '4.00', '4.0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
