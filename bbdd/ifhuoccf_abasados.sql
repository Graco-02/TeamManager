-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-10-2025 a las 08:11:50
-- Versión del servidor: 11.4.8-MariaDB-cll-lve
-- Versión de PHP: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ifhuoccf_abasados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `municipio` varchar(1000) DEFAULT NULL,
  `sector` varchar(1000) DEFAULT NULL,
  `url_logo` varchar(5000) DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT 0,
  `entrenador` varchar(2000) DEFAULT NULL,
  `delegado` varchar(2000) DEFAULT NULL,
  `categoria` varchar(2000) NOT NULL,
  `circunscripcion` varchar(1000) NOT NULL,
  `anio` varchar(20) NOT NULL,
  `rama` varchar(1000) NOT NULL,
  `entrenador_tel` varchar(20) DEFAULT NULL,
  `delegado_tel` varchar(20) DEFAULT NULL,
  `equipo_tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `municipio`, `sector`, `url_logo`, `estado`, `entrenador`, `delegado`, `categoria`, `circunscripcion`, `anio`, `rama`, `entrenador_tel`, `delegado_tel`, `equipo_tel`) VALUES
(7, 'clublosmina', 'SANTO DOMINGO ESTE', 'LOS MINA', 'logolosmina.png', 0, 'Valentin Ozuna', 'Valentin Ozuna', 'TODAS', '2', '1977 ', 'Femenino y masculino', '8297888845', '8297888845', NULL),
(9, 'maranatha', 'Santo Domingo Este', 'El Brisal', 'logomaranatha.png', 0, 'Carlos Manuel García Fernandez ', 'Carlos Manuel García Fernandez ', 'TODAS', '1', '2019', 'Masculino', ' 8494100813', '8494100813', NULL),
(11, 'mariadelmar', 'Santo Domingo Este', 'Los Frailes', 'PHOTO-2025-10-03-15-25-51.jpg', 0, 'Pavel Ernesto Valdera Almonte', 'Pavel Ernesto Valdera Almonte', 'todas', '3', '1997', 'masculino', '8293807182', '8293807182', NULL),
(16, 'clubitalia', 'Santo Domingo Este', 'Urbanizacion Italia', 'PHOTO-2025-10-03-15-33-57.jpg', 0, 'Juan Carlos Medina', 'Juan Carlos Medina', 'todas', '3', '1987', 'masculino', '8293937515', '8293937515', NULL),
(17, 'deportivocjb', 'SANTO DOMINGO ESTE', 'Ciuda Juan Bosh', 'e9303b74-0002-498e-bb80-f2d701353155.JPG', 0, 'Sabel Miguel Montilla Nuñez', 'Sabel Miguel Montilla Nuñez', 'todas', '3', '2021', 'masculino', '8299167188', '8299167188', NULL),
(18, 'clubvillafaro', 'Santo Domingo Este', 'Villa Faro', 'WhatsApp Image 2025-10-03 at 4.30.04 PM.jpeg', 0, 'Juan Carlos Saro Cuevas', 'Juan Carlos Saro Cuevas', 'todas', '3', '1972', 'masculino/femenino', '8093510452', '8093510452', NULL),
(19, 'toritokids', 'Santo Domingo Este', 'Los Mina', 'WhatsApp Image 2025-10-03 at 6.05.48 PM.jpeg', 0, 'Cesar David Salcedo Ramos', 'Cesar David Salcedo Ramos', 'todas', '2', '2014', 'masculino', '8496333801', '8496333801', NULL),
(20, 'clubsanantonio', 'Santo Domingo Este', 'Los Mina', 'WhatsApp Image 2025-10-03 at 6.05.05 PM.jpeg', 0, 'Joel Vargas', 'Joel Vargas', 'todas', '2', '1986', 'masculino/femenino', '8092192319', '8092192319', NULL),
(21, 'clubframboyan', 'Santo Domingo Este', 'Los Mina', 'viex7EkyRqwfyVPlogoframboyan.png', 0, 'Jose Ernesto German C.', 'Jose Ernesto German C.', 'todas', '2', '1973', 'masculino/femenino', '8298469539', '8298469539', NULL),
(22, 'avanzadajuvenil', 'Santo Domingo Oeste', 'LAS CAOBAS', 'WhatsApp Image 2025-10-04 at 11.14.14 AM.jpeg', 0, 'Enmanuel Ceballo', 'Agustin Matos', 'todas', '4', '1978', 'masculino/femenino', '8094233282', '8092240339', NULL),
(23, 'jovenesunidos', 'SANTO DOMINGO OESTE', 'LAS CAOBAS', 'WhatsApp Image 2025-10-04 at 11.15.02 AM.jpeg', 0, 'Natanael Gonzalez De Jesus', 'Gregorio Rosel', 'todas', '4', '1991', 'masculino', '8092103360', '8493413361', NULL),
(24, 'clubarenaso', 'Santo Domingo Oeste', 'Las Caobas', 'WhatsApp Image 2025-10-04 at 12.30.09 PM.jpeg', 0, 'Pablo Rodriguez', 'Maria del Carmen De La Cruz', 'todas', '4', '2006', 'masculino/femenino', '8295584578', '8099072325', NULL),
(25, 'progreso', 'Santo Domingo Oeste', 'Las Caobas', '23.png', 0, 'Rolando Matias Suriel', 'Rolando Matias Suriel', 'todas', '4', '1997', 'masculino', '8094047881', '8094047881', NULL),
(26, 'olimpo', 'Santo Domingo Oeste', 'Las Caobas', 'WhatsApp Image 2025-10-04 at 1.48.19 PM.jpeg', 0, 'Gilberto De La Cruz', 'Nelson Santa Maria', 'todas', '4', '1992', 'masculino', '8492717778', '8292638607', NULL),
(27, 'clubcup', 'LOS ALCARRIZOS', 'ALCARRIZOS VIEJO', 'cup.png', 0, 'Fabricio Miguel Ramos Regalado', 'Hipolito Antonio Doñe', 'todas', '5', '1968', 'masculino/femenino', '8298603823', '8094408985', NULL),
(29, 'parquedeleste', 'Santo Domingo Este', 'Los tres Ojos', 'WhatsApp Image 2025-10-07 at 4.11.30 PM.jpeg', 0, 'Bruno Santana', 'Bruno Santana', 'todas', '1', '2016', 'masculino', '8094390582', '8094390582', NULL),
(30, 'clublosfrailes', 'Santo Domingo Este', 'Los Frailes', 'WhatsApp Image 2025-10-07 at 4.55.57 PM (1).jpeg', 0, 'Jose Diaz', 'Jose Diaz', 'todas', '3', '1984', 'masculino', '8099126464', '8099126464', NULL),
(31, 'balata', 'Santo Domingo Este', 'El Almirante', 'WhatsApp Image 2025-10-07 at 5.27.40 PM.jpeg', 0, 'Jose Novas', 'Jose Novas', 'todas', '3', '1997', 'masculino/femenino', '8295929772', '8295929772', NULL),
(32, 'clubeugeniomh', 'Santo Domingo Este', 'Eugenio Maria de Hostos', 'LOGO EUGENIO MA DE HOSTOS.jpg', 0, 'Alan Herrera', 'Luis Pimental', 'todas', '3', '1985', 'masculino/femenino', '8098992728', '8295208121', NULL),
(33, 'miradorlasamericas', 'Santo Domingo Este', 'Los Frailes', 'WhatsApp Image 2025-10-07 at 5.29.20 PM.jpeg', 0, 'Eugenio Metiviel', 'Principe Escalante', 'todas', '3', '2002', 'masculino', '8092356243', '8094234772', NULL),
(34, 'clublabrador', 'Santo Domingo Este', 'Las Americas', 'WhatsApp Image 2025-10-07 at 5.30.43 PM.jpeg', 0, 'Julio Rodriguez', 'willy Terrero', 'todas', '3', '2019', 'masculino', '8295983683', '8293358737', NULL),
(36, 'clubvictorburgos', 'Santo Domingo Norte', 'Sabana Perdida', '8Nx7XgMObT5fLJ5victor burgos.jpg', 0, 'Wander Santana', 'Ruben Santana', 'todas', '5', '1994', 'masculino/femenino', '8095901625', '8295922672', NULL),
(37, 'loscaribes', 'Santo Domingo Norte', 'Sabana Perdida', 'rRmTOVCJLDxQUXDloscaribes.jpeg', 0, 'Domingo De La Rosa', 'Jeurin Jeraldo', 'todas', '5', '1981', 'masculino/femenino', '8094540251', '8096662306', NULL),
(38, 'clubinvivienda', 'Santo Domingo Este', 'Invivienda', 'tT2OhFt3lj1dx8R2222.jpeg', 0, 'Jose Alberto Sanchez', 'Manuel Carrasco Reyes', 'todas', '4', '1993', 'masculino/femenino', '8298533460', '8492085003', NULL),
(39, 'clubsanssouci', 'Santo Domingo Este', 'Pensador Villa Duarte', 'VWcbBvAkdjn1KQt305083440_593753229111773_9209538045735870716_n.jpg', 0, 'Eyesmeri Noblet Ortega', 'Eladio Reyes Guzman', 'todas', '1', '2013', 'masculino/femenino', '8494605660', '8097029463', NULL),
(40, 'francianueva', 'Santo Domingo Este', 'Villa Duarte', 'c4nhohbtGrSXygtfrancianueva.jpg', 0, 'Carlos Yulier Baez King', 'Miguel Medrano', 'todas', '1', '1979', 'masculino', '8494276586', '8296299982', NULL),
(41, 'ramonmatiasmellas', 'Santo Domingo Este', 'Ramon Matias Mella', 'x1hVR8UQKpmjSKaWhatsApp Image 2025-10-09 at 5.02.30 PM.jpeg', 0, 'Carlos Fernandez', 'Jorge Heramos Cornelio', 'todas', '1', '1975', 'masculino', '8094200271', '8099531181', NULL),
(44, 'villavenezuela', 'Santo Domingo Este', 'Los Mina', 'vrSCa8ZWEK5NzaHWhatsApp Image 2025-10-09 at 5.36.12 PM.jpeg', 0, 'Ramon Perez', 'Simey David De Los Santos Abreu', 'todas', '2', '1985', 'masculino/femenino', '8297074820', '8093151143', NULL),
(45, 'intocables', 'Los Alcarrizos', 'Los Alcarrizos', 'DgdRQj018fHCbiGWhatsApp Image 2025-10-09 at 6.55.35 PM (1).jpeg', 0, 'William Cabral Lugo', 'William Cabral Lugo', 'todas', '5', '1998', 'masculino/femenino', '8094191775', '8094191775', NULL),
(46, 'clubprueba', 'Santo Domingo Este', 'Prueba', 'yOVktpGFwtO3iJSLogo ClubPrueba.png', 0, 'Juan Perez', 'Juan Perez', 'todass', '1', '2001', 'masculino/femenino', '8099876543', '8099876543', NULL),
(47, '29dejunio', 'Santo Domingo Este', 'Los Mina', 'KllsQPzhZswYpmJWhatsApp Image 2025-10-10 at 3.11.15 PM.jpeg', 0, 'Roger Mercedes', 'Roberto Ferreira', 'todas', '2', '1966', 'masculino/femenino', '8097988854', '8097471098', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `cantidad_equipos` int(3) NOT NULL,
  `cantidad_jugadores_equipo` int(3) NOT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `fecha_incio` date DEFAULT NULL,
  `estado` int(1) DEFAULT 0 COMMENT '0-abierto 1-cerrado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `cantidad_equipos`, `cantidad_jugadores_equipo`, `descripcion`, `fecha_incio`, `estado`) VALUES
(1, 'Torneo Juvenil ABASADO 2025', 48, 15, 'Año Base: 11 Jugadores 2006 y 4 Jugadores 2005', '2025-10-19', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `histori_log`
--

CREATE TABLE `histori_log` (
  `usuario` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `accion` varchar(1) NOT NULL,
  `regant` varchar(3000) DEFAULT NULL,
  `regnew` varchar(3000) DEFAULT NULL,
  `modulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `histori_log`
--

INSERT INTO `histori_log` (`usuario`, `fecha`, `accion`, `regant`, `regnew`, `modulo`) VALUES
('Admin', '2025-08-20 01:34:25', 'A', '', 'DENNYGOMEZ40220162289ADMIN1absado20250', 'USUARIOS'),
('Admin', '2025-08-20 01:34:50', 'A', 'FulanitoDe Tal00118329580Admin00000', 'FulanitoDe Tal00118329580Apuntaladenito00000', 'USUARIOS'),
('Admin', '2025-08-21 01:06:37', 'A', '', 'DennyGomez40220162289apuntaladenitoAbasado20250', 'USUARIOS'),
('apuntaladenito', '2025-08-26 04:01:09', 'A', '', 'Torneo Juvenil ABASADO 20254815Año Base: 11 Jugadores 2006 y 4 Jugadores 20052025-09-270', 'EVENTOS'),
('apuntaladenito', '2025-10-03 01:46:47', 'M', 'Torneo Juvenil ABASADO 20254815Año Base: 11 Jugadores 2006 y 4 Jugadores 20052025-09-27', 'Torneo Juvenil ABASADO 20254815Año Base: 11 Jugadores 2006 y 4 Jugadores 20052025-10-180', 'EVENTOS'),
('apuntaladenito', '2025-10-03 01:53:55', 'A', '', 'ValetinOzuna22300273095clublosminaclublosmina1', 'USUARIOS'),
('apuntaladenito', '2025-10-03 01:56:23', 'A', '', 'ValetinOzuna22300273095clublosmina12341', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:00:39', 'A', '', 'JOSEPEREZ12345678999prueba123412341', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:06:38', 'A', '', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 02:07:28', 'M', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845Santo Domingo EsteLos Mina', 'NaNJuvenil21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 02:10:59', 'A', 'Club Los MinaClub Los Minadd8050d65ff746e6ee49cf1a51f1672d0f7095fa88ac31f61abd48ffc78fabba1', 'ValentinOzuna22300273095clublosminaclublosmina1', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:11:46', 'A', '', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845SANTO DOMINGO ESTELOS MINA', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 02:13:02', 'M', 'clublosminaclublosmina62428c6ca43d7c97f4b327d8843411f8fa71ee62c6fdccb10fe92dfb32ec16eb1', 'clublosminaOzuna22300273095clublosmina1234567891', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:14:19', 'M', 'clublosminaOzuna22300273095clublosmina1234567891', 'clublosminaOzuna22300273095clublosmina12341', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:15:50', 'M', 'clublosminaOzuna22300273095clublosmina12341', 'ValetinOzuna22300273095clublosmina12341', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:19:09', 'M', 'ValetinOzuna22300273095clublosmina12341', 'ValetinOzuna22300273095clublosmina12341', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:20:27', 'M', 'DennyGomez40220162289apuntaladenitoAbasado20250', 'DennyGomez40220162289apuntaladenitoAbasado20250', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:21:01', 'M', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845SANTO DOMINGO ESTELOS MINA', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845SANTO DOMINGO ESTELOS MINA', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 02:22:00', 'M', 'clublosminaOzuna22300273095clublosmina62428c6ca43d7c97f4b327d8843411f8fa71ee62c6fdccb10fe92dfb32ec16eb1', 'clublosminaOzuna22300273095clublosmina12341', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:26:39', 'M', 'clublosminaOzuna22300273095clublosmina12341', 'clublosminaOzuna22300273095clublosmina12342', 'USUARIOS'),
('apuntaladenito', '2025-10-03 02:32:41', 'M', 'clublosminaOzuna22300273095clublosmina12342', 'valentinOzuna22300273095clublosmina12342', 'USUARIOS'),
('Admin', '2025-10-03 02:12:53', 'M', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845SANTO DOMINGO ESTELOS MINA', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845SANTO DOMINGO ESTELOS MINA', 'EQUIPOS'),
('Admin', '2025-10-03 02:14:23', 'A', '', 'NaNXXXXXXXX2012XXXXXXXXX8099999999XXXXX8099999999XXXXXXXX', 'EQUIPOS'),
('Admin', '2025-10-03 02:15:54', 'A', '', 'NaNXXXXXXXX2012XXXXXXXX0000000000XXXX0000000000XXXXXXXX', 'EQUIPOS'),
('Admin', '2025-10-03 02:24:06', 'A', '', 'NaNXXXXXXXX2012XXXXXXXX8099999999XXXX8099999999XXXXXXXX', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 03:34:11', 'A', '', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845clublosminaclublosmina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 03:37:53', 'M', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845clublosminaclublosmina', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845clublosminaclublosmina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 03:39:49', 'A', '', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845SANTO DOMINGO ESTELOS MINA', 'EQUIPOS'),
('clublosmina', '2025-10-03 03:47:42', 'A', '', 'Yadiel MiguelPeña Baez402052119452007-06-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-03 03:58:27', 'M', 'Yadiel MiguelPeña Baez402052119452007-06-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-06-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-03 03:58:52', 'M', 'Yadiel MiguelPeña Baez402052119452007-06-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-06-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-03 04:01:03', 'B', '', '', 'JUGADORES'),
('clublosmina', '2025-10-03 04:03:00', 'A', '', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-03 04:03:48', 'M', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-03 04:04:18', 'M', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-03 04:23:01', 'A', '', 'NaNTODAS22019MasculinoCarlos Manuel García Fernandez  8494100813Carlos Manuel García Fernandez 8494100813Santo Domingo EsteEl Brisal', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 04:25:40', 'M', 'MaranathaMaranathaa26c5f68c663d76c0685440b3144e77017b858ebf57e3ce8014353e9daf1ff561', 'Carlos García40227283161maranathaa26c5f68c663d76c0685440b3144e77017b858ebf57e3ce8014353e9daf1ff561', 'USUARIOS'),
('apuntaladenito', '2025-10-03 04:28:16', 'A', '', 'NaNTODAS12019MasculinoCarlos Manuel García Fernandez  8494100813Carlos Manuel García Fernandez 8494100813Santo Domingo EsteEl Brisal', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 04:39:16', 'M', 'NaNTODAS12019MasculinoCarlos Manuel García Fernandez  8494100813Carlos Manuel García Fernandez 8494100813Santo Domingo EsteEl Brisal', 'NaNTODAS12019MasculinoCarlos Manuel García Fernandez  8494100813Carlos Manuel García Fernandez 8494100813Santo Domingo EsteEl Brisal', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 04:39:45', 'M', 'NaNTODAS12019MasculinoCarlos Manuel García Fernandez  8494100813Carlos Manuel García Fernandez 8494100813Santo Domingo EsteEl Brisal', 'NaNTODAS12019MasculinoCarlos Manuel García Fernandez  8494100813Carlos Manuel García Fernandez 8494100813Santo Domingo EsteEl Brisal', 'EQUIPOS'),
('maranatha', '2025-10-03 04:42:45', 'A', '', 'dppdpp402052119451112007-10-0211119111111111101111', 'JUGADORES'),
('apuntaladenito', '2025-10-03 04:44:36', 'B', '', '', 'JUGADORES'),
('apuntaladenito', '2025-10-03 07:27:15', 'A', '', 'NaNtodas31997masculinoPavel Ernesto Valdera Almonte8293807182Pavel Ernesto Valdera Almonte8293807182Santo Domingo EsteLos Frailes', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 07:34:53', 'A', '', 'NaNtodas31987masculinoJuan Carlos Medina8293937515Juan Carlos Medina8293937515Santo Domingo EsteUrbanizacion Italia', 'EQUIPOS'),
('clubitalia', '2025-10-03 07:54:03', 'A', '', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO82956312180Colegio LAMS School', 'JUGADORES'),
('apuntaladenito', '2025-10-03 07:58:06', 'M', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO8295631218Colegio LAMS School', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO82956312180Colegio LAMS School', 'JUGADORES'),
('apuntaladenito', '2025-10-03 07:58:25', 'M', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO8295631218Colegio LAMS School', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO82956312180Colegio LAMS School', 'JUGADORES'),
('clubitalia', '2025-10-03 07:58:41', 'M', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO8295631218Colegio LAMS School', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO82956312180Colegio LAMS School', 'JUGADORES'),
('clubitalia', '2025-10-03 07:58:43', 'M', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO8295631218Colegio LAMS School', 'Rayan MisaelNovas Guzman402510842872008-02-14Calle Arezzo num. 69 , Urb. Italia16ACTIVO82956312180Colegio LAMS School', 'JUGADORES'),
('apuntaladenito', '2025-10-03 08:12:07', 'A', '', 'NaNtodas32021masculinoSabel Miguel Montilla Nuñez8299167188Sabel Miguel Montilla Nuñez8299167188SANTO DOMINGO ESTECiuda Juan Bosh', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 08:17:07', 'M', 'deportivocjbdeportivocjb15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb2251', 'deportivocjbdeportivocjb00103473922deportivocjbdeportivolaspalmas1', 'USUARIOS'),
('apuntaladenito', '2025-10-03 08:17:32', 'M', 'deportivocjbdeportivocjb00103473922deportivocjbdeportivolaspalmas1', 'deportivocjbdeportivocjb00103473922deportivocjbdeportivolaspalmas1', 'USUARIOS'),
('deportivocjb', '2025-10-03 08:27:41', 'A', '', 'Carlos AndresFerreras402065330992005-02-26calle puerto rico casa 19, alma rosa17ACTIVO80921912250Liceo Eugenio Maria de Hostos', 'JUGADORES'),
('apuntaladenito', '2025-10-03 08:34:42', 'A', '', 'NaNtodas31972masculino/femeninoJuan Carlos Saro Cuevas8093510452Juan Carlos Saro Cuevas8093510452Santo Domingo EsteVilla Faro', 'EQUIPOS'),
('deportivocjb', '2025-10-03 08:46:20', 'A', '', 'jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355402132513470Francisco Alberto Caamaño Deño', 'JUGADORES'),
('clubvillafaro', '2025-10-03 08:47:58', 'A', '', 'HarlenRamirez Grullon4021009-53092006-02-09Calle jose soriano #14, Villa Faro18ACTIVO80931336080Liceo Juan Pablo Duarte', 'JUGADORES'),
('deportivocjb', '2025-10-03 08:48:28', 'M', 'jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355Francisco Alberto Caamaño Deño', 'jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355402132513470Francisco Alberto Caamaño Deño', 'JUGADORES'),
('apuntaladenito', '2025-10-03 09:39:35', 'M', 'Carlos AndresFerreras402065330992005-02-26calle puerto rico casa 19, alma rosa17ACTIVO8092191225Liceo Eugenio Maria de Hostos', 'Carlos AndresFerreras402065330992005-02-26calle puerto rico casa 19, alma rosa17ACTIVO80921912250Liceo Eugenio Maria de Hostos', 'JUGADORES'),
('apuntaladenito', '2025-10-03 09:39:49', 'M', 'jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355Francisco Alberto Caamaño Deño', 'jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355402132513470Francisco Alberto Caamaño Deño', 'JUGADORES'),
('apuntaladenito', '2025-10-03 10:06:54', 'A', '', 'NaNtodas22015masculinoJoel Vargas8496333801Joel Vargas8496333801Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 10:08:58', 'A', '', 'NaNtodas21986masculino/femeninoJoel Vargas8092192319Joel Vargas8092192319Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 10:09:34', 'M', 'NaNtodas22015masculinoJoel Vargas8496333801Joel Vargas8496333801Santo Domingo EsteLos Mina', 'NaNtodas22015masculinoCesar David Salcedo Ramos8496333801Cesar David Salcedo Ramos8496333801Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 10:09:41', 'M', 'NaNtodas22015masculinoCesar David Salcedo Ramos8496333801Cesar David Salcedo Ramos8496333801Santo Domingo EsteLos Mina', 'NaNtodas22014masculinoCesar David Salcedo Ramos8496333801Cesar David Salcedo Ramos8496333801Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-03 10:15:36', 'A', '', 'NaNtodas21973masculino/femeninoJose Ernesto German C.8298469539Jose Ernesto German C.8298469539Santo Domingo EsteLos Mina', 'EQUIPOS'),
('clubsanantonio', '2025-10-03 10:33:33', 'A', '', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO829578951056147960Escuela Juan Bautista Zafra', 'JUGADORES'),
('clubsanantonio', '2025-10-03 10:34:11', 'M', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO8295789510Escuela Juan Bautista Zafra', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO829578951056147960Escuela Juan Bautista Zafra', 'JUGADORES'),
('apuntaladenito', '2025-10-03 10:35:51', 'M', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO8295789510Escuela Juan Bautista Zafra', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO829578951056147960Escuela Juan Bautista Zafra', 'JUGADORES'),
('clubsanantonio', '2025-10-03 10:36:06', 'M', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO8295789510Escuela Juan Bautista Zafra', 'DanielGuillen Goodman00RD7818752006-06-23Calle 29 , Los Mina20ACTIVO829578951056147960Escuela Juan Bautista Zafra', 'JUGADORES'),
('apuntaladenito', '2025-10-03 10:47:11', 'M', 'clubframboyanclubframboyan431b845ecfe410aeafad9cfe4e4c62684243a85987963845b4f59eb7e97b42941', 'clubframboyanclubframboyan00104565189clubframboyanDenito8091', 'USUARIOS'),
('clubframboyan', '2025-10-03 10:56:28', 'A', '', 'Eduardo JoseRodriguez Ramirez402081226132008-12-18Calle Trinitaria 6 , Residencial Juliana 121ACTIVO80977572030Colegio Santa Rosa De Lima', 'JUGADORES'),
('apuntaladenito', '2025-10-03 10:57:40', 'M', 'Eduardo JoseRodriguez Ramirez402081226132008-12-18Calle Trinitaria 6 , Residencial Juliana 121ACTIVO8097757203Colegio Santa Rosa De Lima', 'Eduardo JoseRodriguez Ramirez402081226132008-12-18Calle Trinitaria 6 , Residencial Juliana 121ACTIVO80977572030Colegio Santa Rosa De Lima', 'JUGADORES'),
('clubframboyan', '2025-10-03 10:59:03', 'M', 'Eduardo JoseRodriguez Ramirez402081226132008-12-18Calle Trinitaria 6 , Residencial Juliana 121ACTIVO8097757203Colegio Santa Rosa De Lima', 'Eduardo JoseRodriguez Ramirez402081226132008-12-18Calle Trinitaria 6 , Residencial Juliana 121ACTIVO80977572030Colegio Santa Rosa De Lima', 'JUGADORES'),
('apuntaladenito', '2025-10-04 03:35:19', 'M', 'HarlenRamirez Grullon4021009-53092006-02-09Calle jose soriano #14, Villa Faro18ACTIVO8093133608Liceo Juan Pablo Duarte', 'HarlenRamirez Grullon4021009-53092006-02-09Calle jose soriano #14, Villa Faro18ACTIVO80931336080Liceo Juan Pablo Duarte', 'JUGADORES'),
('apuntaladenito', '2025-10-04 03:18:00', 'A', '', 'NaNtodas41978masculino/femeninoEnmanuel Ceballo8094233282Agustin Matos8092240339Santo Domingo OesteLAS CAOBAS', 'EQUIPOS'),
('avanzadajuvenil', '2025-10-04 03:32:43', 'A', '', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO82996822920Colegio Instituto Olimpo Ramon', 'JUGADORES'),
('avanzadajuvenil', '2025-10-04 03:33:14', 'M', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO8299682292Colegio Instituto Olimpo Ramon', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO82996822920Colegio Instituto Olimpo Ramon', 'JUGADORES'),
('apuntaladenito', '2025-10-04 03:34:59', 'M', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO8299682292Colegio Instituto Olimpo Ramon', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO82996822920Colegio Instituto Olimpo Ramon', 'JUGADORES'),
('avanzadajuvenil', '2025-10-04 03:35:28', 'M', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO8299682292Colegio Instituto Olimpo Ramon', 'William FernandoJorge Correa402134649812007-08-21Calle 16 Villa Aura, Eduardo Arturo 1222ACTIVO82996822920Colegio Instituto Olimpo Ramon', 'JUGADORES'),
('apuntaladenito', '2025-10-04 03:50:41', 'A', '', 'NaNtodas41991masculinoNatanael Gonzalez De Jesus8092103360Gregorio Rosel8493413361SANTO DOMINGO OESTELAS CAOBAS', 'EQUIPOS'),
('jovenesunidos', '2025-10-04 04:04:56', 'A', '', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('jovenesunidos', '2025-10-04 04:07:25', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('jovenesunidos', '2025-10-04 04:08:41', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('apuntaladenito', '2025-10-04 04:09:25', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('jovenesunidos', '2025-10-04 04:09:52', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('apuntaladenito', '2025-10-04 04:30:55', 'A', '', 'NaNtodas42006masculino/femeninoPablo Rodriguez8295584578Maria del Carmen De La Cruz8099072325Santo Domingo OesteLas Caobas', 'EQUIPOS'),
('apuntaladenito', '2025-10-04 04:57:11', 'A', '', 'NaNtodas41997masculinoRolando Matias Suriel8094047881Rolando Matias Suriel8094047881Santo Domingo OesteLas Caobas', 'EQUIPOS'),
('apuntaladenito', '2025-10-04 05:07:37', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('apuntaladenito', '2025-10-04 05:07:51', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('jovenesunidos', '2025-10-04 05:09:25', 'M', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO8295378363Colegio Crossover', 'Cesar AndresParedes Horton402001865892009-04-27Calle Angel Martinez , Residencial Don Bolivar23ACTIVO82953783630Colegio Crossover', 'JUGADORES'),
('apuntaladenito', '2025-10-04 05:35:17', 'M', 'avanzadajuvenilavanzadajuvenilcdb6c5bccbe1e8b1a8f481b479567fd39fcca2051fef2964335a4616c5e866761', 'avanzadajuvenilavanzadajuvenil40227275118avanzadajuvenilavanzada25251', 'USUARIOS'),
('apuntaladenito', '2025-10-04 05:49:14', 'A', '', 'NaNtodas41992masculinoGilberto De La Cruz8492717778Nelson Santa Maria8292638607Santo Domingo OesteLas Caobas', 'EQUIPOS'),
('olimpo', '2025-10-04 05:55:46', 'A', '', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 05:57:47', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 05:58:14', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('apuntaladenito', '2025-10-04 05:58:49', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 05:59:12', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 06:02:01', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 21626ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 06:02:09', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 21626ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 06:02:19', 'M', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221472006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('olimpo', '2025-10-04 06:02:30', 'M', 'Franklin WilliamHernandez Quezada402307221472006-05-11calle 1ra 2126ACTIVO8295152999Colegio Crossover', 'Franklin WilliamHernandez Quezada402307221482006-05-11calle 1ra 2126ACTIVO82951529990Colegio Crossover', 'JUGADORES'),
('apuntaladenito', '2025-10-04 06:48:27', 'M', 'mariadelmarmariadelmar7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb911', 'mariadelmarmariadelmar00116369869mariadelmarMaria2341', 'USUARIOS'),
('apuntaladenito', '2025-10-04 08:16:23', 'M', 'clubsanantonioclubsanantoniocdb6c5bccbe1e8b1a8f481b479567fd39fcca2051fef2964335a4616c5e866761', 'clubsanantonioclubsanantonio22301663427clubsanantonioPumbabasketball1', 'USUARIOS'),
('apuntaladenito', '2025-10-04 08:23:25', 'A', '', 'NaNtodas51968masculino/femeninoFabricio Miguel Ramos Regalado8298603823Hipolito Antonio Doñe8094408985LOS ALCARRIZOSALCARRIZOS VIEJO', 'EQUIPOS'),
('apuntaladenito', '2025-10-04 08:36:25', 'M', 'clubsanantonioclubsanantonio22301663427clubsanantonioPumbabasketball1', 'clubsanantonioclubsanantonio22301663427clubsanantonioPumbabasketball1', 'USUARIOS'),
('progreso', '2025-10-05 01:39:51', 'A', '', 'JEAN PAULMERCEDES MATEO402009391852009-09-27LAS CAOBAS MANZANA 43 NÚMERO 22C25ACTIVO849526261968898380LICEO ELSA MOJICA', 'JUGADORES'),
('progreso', '2025-10-05 01:42:53', 'A', '', 'ANGEL DARIELGÓMEZ FAMILIA402014637482009-12-30SAN MIGUEL MANOGUAYABO25ACTIVO849462033062626120COLEGIO LA ESCALERITA', 'JUGADORES'),
('progreso', '2025-10-05 01:46:26', 'A', '', 'LEANDRO ENRIQUEGÓMEZ CANO402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO829461435352293570JOSÉ BORDAS VALDEZ', 'JUGADORES'),
('progreso', '2025-10-05 01:49:10', 'A', '', 'ALISSON MANUELMATEO CRUZ402085141082009-01-15LAS CAOBAS25ACTIVO829873423465140920LICEO ELSA MOJICA', 'JUGADORES'),
('progreso', '2025-10-05 01:52:34', 'A', '', 'JAMELPHY MICHELLPALMER MESA000068422622009-05-09PROLONGACIÓN 27 GUAJIMÍA 225ACTIVO829474111868422620LICEO ELSA MOJICA', 'JUGADORES'),
('progreso', '2025-10-05 01:55:50', 'A', '', 'JORDANY GABRIELMARTÍNEZ SALCEDO402-0006686-82008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO809321958963695010COLEGIO LAS MERCEDES', 'JUGADORES'),
('apuntaladenito', '2025-10-05 06:27:54', 'M', 'JORDANY GABRIELMARTÍNEZ SALCEDO402-0006686-82008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO8093219589COLEGIO LAS MERCEDES', 'JORDANY GABRIELMARTÍNEZ SALCEDO402000668682008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO809321958963695010COLEGIO LAS MERCEDES', 'JUGADORES'),
('apuntaladenito', '2025-10-05 06:31:20', 'M', 'clublosminaclublosmina48036afa7bb37a5b11d2c96ce5439865877f80691ce17cabfa577f0bcb380bb31', 'clublosminaclublosmina22300273095clublosminaLosmina20251', 'USUARIOS'),
('apuntaladenito', '2025-10-05 06:46:09', 'M', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVOO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-05 06:46:18', 'M', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVOO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-10-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-06 07:54:12', 'M', 'clubitaliaclubitaliacdb6c5bccbe1e8b1a8f481b479567fd39fcca2051fef2964335a4616c5e866761', 'clubitaliaclubitalia00112607239clubitalia0223141', 'USUARIOS'),
('apuntaladenito', '2025-10-06 09:10:24', 'A', '', 'NaNTODAS21977 Femenino y masculinoValentin Ozuna8297888845Valentin Ozuna8297888845clublosminaclublosmina', 'EQUIPOS'),
('clublosmina', '2025-10-06 09:24:14', 'A', '', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-06 09:24:39', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-06 09:26:29', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-06 09:26:57', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-06 09:27:58', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-06 10:19:30', 'M', 'JORDANY GABRIELMARTÍNEZ SALCEDO402000668682008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO8093219589COLEGIO LAS MERCEDES', 'JORDANY GABRIELMARTÍNEZ SALCEDO402000668682008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO809321958963695010COLEGIO LAS MERCEDES', 'JUGADORES'),
('apuntaladenito', '2025-10-06 10:20:31', 'M', 'ALISSON MANUELMATEO CRUZ402085141082009-01-15LAS CAOBAS25ACTIVO8298734234LICEO ELSA MOJICA', 'ALISSON MANUELMATEO CRUZ402085141082009-01-15LAS CAOBAS25ACTIVO829873423465140920LICEO ELSA MOJICA', 'JUGADORES'),
('apuntaladenito', '2025-10-06 10:21:35', 'M', 'JEAN PAULMERCEDES MATEO402009391852009-09-27LAS CAOBAS MANZANA 43 NÚMERO 22C25ACTIVO8495262619LICEO ELSA MOJICA', 'JEAN PAULMERCEDES MATEO402009391852009-09-27LAS CAOBAS MANZANA 43 NÚMERO 22C25ACTIVO849526261968898380LICEO ELSA MOJICA', 'JUGADORES'),
('apuntaladenito', '2025-10-06 10:22:10', 'M', 'ANGEL DARIELGÓMEZ FAMILIA402014637482009-12-30SAN MIGUEL MANOGUAYABO25ACTIVO8494620330COLEGIO LA ESCALERITA', 'ANGEL DARIELGÓMEZ FAMILIA402014637482009-12-30SAN MIGUEL MANOGUAYABO25ACTIVO849462033062626120COLEGIO LA ESCALERITA', 'JUGADORES'),
('apuntaladenito', '2025-10-06 10:22:56', 'M', 'LEANDRO ENRIQUEGÓMEZ CANO402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO8294614353JOSÉ BORDAS VALDEZ', 'LEANDRO ENRIQUEGÓMEZ CANO402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO829461435352293570JOSÉ BORDAS VALDEZ', 'JUGADORES'),
('apuntaladenito', '2025-10-07 04:07:26', 'M', 'Torneo Juvenil ABASADO 20254815Año Base: 11 Jugadores 2006 y 4 Jugadores 20052025-10-18', 'Torneo Juvenil ABASADO 20254815Año Base: 11 Jugadores 2006 y 4 Jugadores 20052025-10-190', 'EVENTOS'),
('mariadelmar', '2025-10-07 04:12:30', 'A', '', 'Algenis Jesus Cueva Novas 402-3312513-32006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350402-3312513-30la inmaculadad Fe y Alegria ', 'JUGADORES'),
('mariadelmar', '2025-10-07 04:17:15', 'A', '', 'Anthony Almonte Gomez 402-3013389-02006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8096988902402-3013389-00la inmaculadad Fe y Alegria ', 'JUGADORES'),
('mariadelmar', '2025-10-07 04:31:55', 'A', '', 'Justin Jadiel Alonzo sanchez 402-1204838-92008-02-06Fray Bartolome De Las Casas 11jugador 8299143478402-1204838-90no esta estudiando ', 'JUGADORES'),
('apuntaladenito', '2025-10-07 04:36:03', 'A', '', '  MaikelRodriguez22300618919mrodriguez2025abasado2', 'USUARIOS'),
('apuntaladenito', '2025-10-07 08:13:36', 'A', '', 'NaNtodas12016masculinoBruno Santana8094390582Bruno Santana8094390582Santo Domingo EsteLos tres Ojos', 'EQUIPOS'),
('parquedeleste', '2025-10-07 08:28:28', 'A', '', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018712210190Escuela Fernando Alberto Defilló', 'JUGADORES'),
('parquedeleste', '2025-10-07 08:30:17', 'M', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018Escuela Fernando Alberto Defilló', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO80946700187122101920Escuela Fernando Alberto Defilló', 'JUGADORES'),
('parquedeleste', '2025-10-07 08:30:24', 'M', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018Escuela Fernando Alberto Defilló', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018712210190Escuela Fernando Alberto Defilló', 'JUGADORES'),
('apuntaladenito', '2025-10-07 08:30:46', 'M', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018Escuela Fernando Alberto Defilló', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018712210190Escuela Fernando Alberto Defilló', 'JUGADORES'),
('apuntaladenito', '2025-10-07 08:32:26', 'M', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018Escuela Fernando Alberto Defilló', 'Edisson SebastianArias Peralta402051358622010-11-07Fernado alberto defillo calle primera respaldo los tres ojos29ACTIVO8094670018712210190Escuela Fernando Alberto Defilló', 'JUGADORES'),
('apuntaladenito', '2025-10-07 08:40:55', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-07 08:42:06', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-07 09:05:38', 'A', '', 'NaNtodas31984masculinoJose Diaz8099126464Jose Diaz8099126464Santo Domingo EsteLos Frailes', 'EQUIPOS'),
('clublosfrailes', '2025-10-07 09:14:16', 'A', '', 'Dilan AntonioSepulveda Cuevas402126708932007-09-25interior jpqbello 18 casa 2, Los Frailes san bartolo30ACTIVO82927337530Centro Educativo del Nivel Secundario Pedro Poveda', 'JUGADORES'),
('clublosfrailes', '2025-10-07 09:23:12', 'A', '', 'JeannielGarcia402055450942008-07-28antonio guzman 1 30ACTIVO84988171210escuela republica de corea', 'JUGADORES'),
('clublosfrailes', '2025-10-07 09:24:04', 'M', 'Dilan AntonioSepulveda Cuevas402126708932007-09-25interior jpqbello 18 casa 2, Los Frailes san bartolo30ACTIVO8292733753Centro Educativo del Nivel Secundario Pedro Poveda', 'Dilan AntonioSepulveda Cuevas402126708932007-09-25Calle Yolanda Guzman #10 Los Frailes San bartolo30ACTIVO82927337530Centro Educativo del Nivel Secundario Pedro Poveda', 'JUGADORES'),
('apuntaladenito', '2025-10-07 09:24:27', 'M', 'Dilan AntonioSepulveda Cuevas402126708932007-09-25Calle Yolanda Guzman #10 Los Frailes San bartolo30ACTIVO8292733753Centro Educativo del Nivel Secundario Pedro Poveda', 'Dilan AntonioSepulveda Cuevas402126708932007-09-25Calle Yolanda Guzman #10 Los Frailes San bartolo30ACTIVO82927337530Centro Educativo del Nivel Secundario Pedro Poveda', 'JUGADORES'),
('clublosfrailes', '2025-10-07 09:26:14', 'M', 'JeannielGarcia402055450942008-07-28antonio guzman 1 30ACTIVO8498817121escuela republica de corea', 'JeannielGarcia402055450942008-07-28antonio guzman 1  230ACTIVO84988171210escuela republica de corea', 'JUGADORES'),
('apuntaladenito', '2025-10-07 09:29:29', 'A', '', 'NaNtodas31997masculino/femeninoJose Novas8295929772Jose Novas8295929772Santo Domingo EsteEl Almirante', 'EQUIPOS'),
('balata', '2025-10-07 09:39:07', 'A', '', 'Derek MiguelCabrera Del Orbe402330161182008-01-31calle alonzo perez peaton 19 apt 214 2b31ACTIVO82077064610Centro Educativo Juan Jose Duarte', 'JUGADORES'),
('apuntaladenito', '2025-10-07 09:45:47', 'A', '', 'NaNtodas31985masculino/femeninoAlan Herrera8098992728Luis Pimental8295208121Santo Domingo EsteEugenio Maria de Hostos', 'EQUIPOS'),
('apuntaladenito', '2025-10-07 09:50:28', 'M', 'Anthony Almonte Gomez 402-3013389-02006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8096988902la inmaculadad Fe y Alegria ', 'Anthony Almonte Gomez 402301338902006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8096988902402-3013389-00la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-07 09:51:14', 'M', 'Algenis Jesus Cueva Novas 402-3312513-32006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350la inmaculadad Fe y Alegria ', 'Algenis Jesus Cueva Novas 402-331251332006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350402-3312513-30la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-07 10:02:14', 'A', '', 'NaNtodas32002masculinoEugenio Metiviel8092356243Principe Escalante8094234772Santo Domingo EsteLos Frailes', 'EQUIPOS'),
('apuntaladenito', '2025-10-07 10:08:18', 'A', '', 'NaNtodas32019masculinoJulio Rodriguez8295983683willy Terrero8293358737Santo Domingo EsteLas Americas', 'EQUIPOS'),
('balata', '2025-10-07 11:31:46', 'A', '', 'Darwin Manuel Hernandez  Santana 401000824332007-11-05Almirante 2da etapa31Activos 84987827750Los estudiantes ', 'JUGADORES'),
('clublosmina', '2025-10-08 12:27:57', 'M', 'Ariel Arturo Erazo Sánchez 402157902192005-05-31C/27D los mina7Activo 8296899945Colegio josefina White', 'Ariel Arturo Erazo Sánchez 402157902192005-05-31C/27D los mina7Activo 82968999450Colegio josefina White', 'JUGADORES'),
('balata', '2025-10-08 12:46:03', 'A', '', 'Erick arnaldo Miliano polanco 402302339972005-10-04Los tres brazos 31Activos 8094098197B0Instituto politécnico ave maría ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 01:32:52', 'A', '', 'Elinzon Alberto Lopez peńa402-331114142005-03-17Las mercedes #58 / los minas 20Soltero (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('balata', '2025-10-08 01:52:58', 'A', '', 'Carlos duannyCordero 402377658272008-06-24Almirante 2da etapa31Activos 84950217550Centro educativo mayaje ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 02:12:07', 'A', '', 'George Stewar De los Santos Soriano402-1438914-62006-08-07Pedro Benoet #3920Soltero(849) 409-147954380310Ramon Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 02:39:29', 'M', 'FulanitoDe Tal00118329580Admin00000', 'FulanitoDe Tal00118329580Admindenito1230', 'USUARIOS'),
('apuntaladenito', '2025-10-08 02:43:30', 'M', 'Juan Manuel Dominguez Cleto402-3138544-02005-02-22Respaldo trina de Moya # 0620Soltero(829) 524‑0456‬San Vicente de Paúl ', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 0620Soltero(829) 524‑0456‬55291640San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 02:43:46', 'M', 'Erick JosePolanco Robles 402-1437894-12006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Soltero(849) 573‑1725‬Colombina Canario ', 'Erick JosePolanco Robles 402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Soltero(849) 573‑1725‬37612070Colombina Canario ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 02:44:02', 'M', 'George Stewar De los Santos Soriano402-1438914-62006-08-07Pedro Benoet #3920Soltero(849) 409-1479Ramon Emilio Jiménez ', 'George Stewar De los Santos Soriano402143891462006-08-07Pedro Benoet #3920Soltero(849) 409-147954380310Ramon Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 02:44:17', 'M', 'Elinzon Alberto Lopez peńa402-3311141-42005-03-17Las mercedes #58 / los minas 20Soltero (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Soltero (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 02:47:00', 'M', 'jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355Francisco Alberto Caamaño Deño', 'Jose Antonio Turbi Pinales402132513472007-12-01Residencial Antares 1 c/La Gaviota17activo8295702355402132513470Francisco Alberto Caamaño Deño', 'JUGADORES'),
('apuntaladenito', '2025-10-08 02:47:20', 'M', 'Justin Jadiel Alonzo sanchez 402-1204838-92008-02-06Fray Bartolome De Las Casas 11jugador 8299143478no esta estudiando ', 'Justin Jadiel Alonzo sanchez 402120483892008-02-06Fray Bartolome De Las Casas 11jugador 8299143478402-1204838-90no esta estudiando ', 'JUGADORES'),
('balata', '2025-10-08 02:55:04', 'A', '', 'Dauryn alejandro Sierras guzmán 402011495602007-06-23Almirante los solares  431Activos 82985567870Trinade moya', 'JUGADORES'),
('clubsanantonio', '2025-10-08 02:55:29', 'A', '', 'Juan AlbertoSánchez Polanco402-1588244-62009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Soltero(829) 492-644970406430Fabio Amable Mota ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 02:56:09', 'M', 'Juan AlbertoSánchez Polanco402-1588244-62009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Soltero(829) 492-6449Fabio Amable Mota ', 'Juan AlbertoSánchez Polanco402-1588244-62009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Soltero(829) 492-644970406430Fabio Amable Mota ', 'JUGADORES'),
('balata', '2025-10-08 03:02:28', 'A', '', 'Graiverson Alberto Reyes ruyz402330881662005-12-12Almirante 2da etapa31Activos 82941099990Escuela jose Francisco peña gomez prepara', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:03:29', 'A', '', 'Darlin Eslin Aquino Hilario402-0153442-62008-08-08C/ U2 respaldo h #15 / los tres brazos 20Soltero(829) 316-488363230190Ramón Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:07:51', 'A', '', 'Dayron Perez Medina 402-0152018-62008-01-17Malecóncito respaldo 3 #2220Soltero(849) 851-384970328170Pedro Mir ', 'JUGADORES'),
('balata', '2025-10-08 03:08:30', 'A', '', 'Victor Luis Puente guzmán 402128150682006-01-01Almirante 2da etapa31Activos 82985234050Trina de moya', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:08:57', 'A', '', 'NaNTODAS21977 Femenino y masculinoJuan Perez8093421569Juan Perez8093421569santo domingosanto domingo', 'EQUIPOS'),
('clubsanantonio', '2025-10-08 03:14:15', 'A', '', 'Johanssel Ramirez 402-0368809-42008-02-01Prolongación Rosa Duarte/ Los mina viejo20Soltero (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('balata', '2025-10-08 03:16:31', 'A', '', 'Anthoni yandelLuzon de orbe 401001596782008-11-21Almirante 2da etapa31Activos 80986326060Llyly', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:21:01', 'B', 'pedrogomez12345678911991-08-09direcion35ACTIVO8092314569colegio', '', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:21:39', 'B', 'juanPerez12345678901991-08-08calle 1 35ACTIVO8091234567colegio', '', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:21:47', 'A', '', 'David Alexander Noboa Abreu 402-0282782-62008-03-25C/21 I #30/  Los mina 20Soltero(809) 851-008767320580Fabio amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:21:57', 'M', 'Johanssel Ramirez 402-0368809-42008-02-01Prolongación Rosa Duarte/ Los mina viejo20Soltero (829) 487-2447Ramón Emilio Jiménez ', 'Johanssel Ramirez 402036880942008-02-01Prolongación Rosa Duarte/ Los mina viejo20Soltero (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:22:11', 'M', 'David Alexander Noboa Abreu 402-0282782-62008-03-25C/21 I #30/  Los mina 20Soltero(809) 851-0087Fabio amable Mota ', 'David Alexander Noboa Abreu 402028278262008-03-25C/21 I #30/  Los mina 20Soltero(809) 851-008767320580Fabio amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:22:37', 'M', 'Dayron Perez Medina 402-0152018-62008-01-17Malecóncito respaldo 3 #2220Soltero(849) 851-3849Pedro Mir ', 'Dayron Perez Medina 402015201862008-01-17Malecóncito respaldo 3 #2220Soltero(849) 851-384970328170Pedro Mir ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:22:57', 'M', 'Darlin Eslin Aquino Hilario402-0153442-62008-08-08C/ U2 respaldo h #15 / los tres brazos 20Soltero(829) 316-4883Ramón Emilio Jiménez ', 'Darlin Eslin Aquino Hilario402015344262008-08-08C/ U2 respaldo h #15 / los tres brazos 20Soltero(829) 316-488363230190Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:23:22', 'M', 'Algenis Jesus Cueva Novas 402-331251332006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350la inmaculadad Fe y Alegria ', 'Algenis Jesus Cueva Novas 402331251332006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350402-3312513-30la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:23:35', 'B', 'juanPerez12345678901991-08-08calle 1 35ACTIVO8091234567colegio', '', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:23:48', 'B', 'juanPerez12345678901991-08-08calle 1 35ACTIVO8091234567colegio', '', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:23:53', 'B', '', '', 'JUGADORES'),
('balata', '2025-10-08 03:28:53', 'A', '', 'Darwin elian Rosarios de los santos 402330595062005-10-06Almirante 2da etapa31Activos 82987106300Colegio profeta Daniel ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:31:04', 'A', '', 'Tairisis JhonLaureano Sanchez402-1341826-82005-11-06C/ Las mercedes #44/ Los minas 20Soltero (809) 942-373055231230Prof. Isabel Segura de Apatano', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:35:04', 'M', 'Tairisis JhonLaureano Sanchez402-1341826-82005-11-06C/ Las mercedes #44/ Los minas 20Soltero (809) 942-3730Prof. Isabel Segura de Apatano', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Soltero (809) 942-373055231230Prof. Isabel Segura de Apatano', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:35:21', 'M', 'Juan AlbertoSánchez Polanco402-1588244-62009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Soltero(829) 492-6449Fabio Amable Mota ', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Soltero(829) 492-644970406430Fabio Amable Mota ', 'JUGADORES'),
('balata', '2025-10-08 03:36:01', 'A', '', 'DiomarJimenez vidal402081290642008-11-02Calle Miguel día m 2 e 8 ap 2b el almirante 31Activos 80975792900Los estudiantes ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:36:04', 'M', 'Braylin Dariel Fernandez00000000002007-10-16C/ Las mercedes #29/ Vietnam20Soltero 0000000000Pedro Mir ', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Soltero 000000000050800690Pedro Mir ', 'JUGADORES'),
('balata', '2025-10-08 03:40:58', 'A', '', 'Angel  omer Cruz402022414812009-11-02Almirante 2da etapa31Activos 84950182200Trina de moya', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:41:39', 'A', '', 'David Alexander Noboa Abreu402-0282782-62008-03-25C/ 21-I #30/Los mina 20Soltero+1 (809) 851-008767320580Fabio Amable Mota ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:45:31', 'M', 'David Alexander Noboa Abreu402-0282782-62008-03-25C/ 21-I #30/Los mina 20Soltero+1 (809) 851-0087Fabio Amable Mota ', 'David Alexander Noboa Abreu402-0282782-62008-03-25C/ 21-I #30/Los mina 20Soltero+1 (809) 851-008767320580Fabio Amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:51:10', 'M', 'Darwin elian Rosarios de los santos 402330595062005-10-06Almirante 2da etapa31Activos 8298710630Colegio profeta Daniel ', 'Dawin Elian Rosarios De Los Santos 402330595062005-10-06Almirante 2da etapa31Activos 82987106300Colegio profeta Daniel ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:51:55', 'M', 'Graiverson Alberto Reyes ruyz402330881662005-12-12Almirante 2da etapa31Activos 8294109999Escuela jose Francisco peña gomez prepara', 'Graiverson Alberto Reyes Ruiz402330881662005-12-12Almirante 2da etapa31Activos 82941099990Escuela jose Francisco peña gomez prepara', 'JUGADORES'),
('clubsanantonio', '2025-10-08 03:52:04', 'A', '', 'Johanssel Ramirez 402-0368809-42008-02-01Repaso rosa Duarte #22 / Los mina viejo20Soltero (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:52:45', 'M', 'Victor Luis Puente guzmán 402128150682006-01-01Almirante 2da etapa31Activos 8298523405Trina de moya', 'Victor Luis Puente Guzmán 402128150682006-01-01Almirante 2da etapa31Activos 82985234050Trina de moya', 'JUGADORES'),
('balata', '2025-10-08 03:53:09', 'A', '', 'Anthoni yandelLuzon de orbe 401001596782008-11-21Almirante 2da etapa31Activos 80986326060Lili', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:54:36', 'M', 'Carlos duannyCordero 402377658272008-06-24Almirante 2da etapa31Activos 8495021755Centro educativo mayaje ', 'Carlos DuannyCordero 402377658272008-07-24Almirante 2da etapa31Activos 84950217550Centro educativo mayaje ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:55:37', 'M', 'Erick arnaldo Miliano polanco 402302339972005-10-04Los tres brazos 31Activos 8094098197Instituto politécnico ave maría ', 'Erick Srnaldo Miliano Polanco 402302339972005-10-04Los tres brazos 31Activos 8094098197B0Instituto politécnico ave maría ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:56:15', 'M', 'Ariel Arturo Erazo Sánchez 402157902192005-05-31C/27D los mina7Activo 8296899945Colegio josefina White', 'Ariel Arturo Erazo Sánchez 402157902192005-05-31C/27D los mina7Activo 82968999450Colegio josefina White', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:57:56', 'M', 'Johanssel Ramirez 402-0368809-42008-02-01Repaso rosa Duarte #22 / Los mina viejo20Soltero (829) 487-2447Ramón Emilio Jiménez ', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Soltero (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:58:13', 'M', 'David Alexander Noboa Abreu402-0282782-62008-03-25C/ 21-I #30/Los mina 20Soltero+1 (809) 851-0087Fabio Amable Mota ', 'David Alexander Noboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Soltero+1 (809) 851-008767320580Fabio Amable Mota ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 04:01:04', 'M', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Soltero (829) 487-2447Ramón Emilio Jiménez ', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Soltero (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:00:08', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Soltero (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:01:01', 'M', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 0620Soltero(829) 524‑0456‬San Vicente de Paúl ', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 0620Activo(829) 524‑0456‬55291640San Vicente de Paúl ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:01:45', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:02:33', 'M', 'George Stewar De los Santos Soriano402143891462006-08-07Pedro Benoet #3920Soltero(849) 409-1479Ramon Emilio Jiménez ', 'George Stewar De los Santos Soriano402143891462006-08-07Pedro Benoet #3920Activo(849) 409-147954380310Ramon Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:03:00', 'M', 'Erick JosePolanco Robles 402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Soltero(849) 573‑1725‬Colombina Canario ', 'Erick JosePolanco Robles 402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Activo(849) 573‑1725‬37612070Colombina Canario ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:03:31', 'M', 'Francis Boya Gomez00RD92291502007-12-13C/ 4 de agosto Respaldo e #3320Soltero (849) 273-8681Pedro Mir ', 'Francis Boya Gomez00RD92291502007-12-13C/ 4 de agosto Respaldo e #3320Activo  (849) 273-868166440840Pedro Mir ', 'JUGADORES');
INSERT INTO `histori_log` (`usuario`, `fecha`, `accion`, `regant`, `regnew`, `modulo`) VALUES
('clubsanantonio', '2025-10-08 05:04:00', 'M', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Soltero 0000000000Pedro Mir ', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 000000000050800690Pedro Mir ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:04:22', 'M', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Soltero(829) 492-6449Fabio Amable Mota ', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Activo(829) 492-644970406430Fabio Amable Mota ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:04:45', 'M', 'Darlin Eslin Aquino Hilario402015344262008-08-08C/ U2 respaldo h #15 / los tres brazos 20Soltero(829) 316-4883Ramón Emilio Jiménez ', 'Darlin Eslin Aquino Hilario402015344262008-08-08C/ U2 respaldo h #15 / los tres brazos 20Activo (829) 316-488363230190Ramón Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:05:03', 'M', 'Dayron Perez Medina 402015201862008-01-17Malecóncito respaldo 3 #2220Soltero(849) 851-3849Pedro Mir ', 'Dayron Perez Medina 402015201862008-01-17Malecóncito respaldo 3 #2220Activo(849) 851-384970328170Pedro Mir ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:05:42', 'M', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Soltero (809) 942-3730Prof. Isabel Segura de Apatano', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Activo(809) 942-373055231230Prof. Isabel Segura de Apatano', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:06:11', 'M', 'David Alexander Noboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Soltero+1 (809) 851-0087Fabio Amable Mota ', 'David Alexander Noboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Activo+1 (809) 851-008767320580Fabio Amable Mota ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:06:41', 'M', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Soltero (829) 487-2447Ramón Emilio Jiménez ', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Activo (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:13:52', 'M', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 0620Activo(829) 524‑0456‬San Vicente de Paúl ', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 06/ Los mina20Activo(829) 524‑0456‬55291640San Vicente de Paúl ', 'JUGADORES'),
('clubsanantonio', '2025-10-08 05:14:40', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 01:51:44', 'M', 'Graiverson Alberto Reyes Ruiz402330881662005-12-12Almirante 2da etapa31Activos 8294109999Escuela jose Francisco peña gomez prepara', 'Graiverson Alberto Reyes Ruiz402330881662005-12-12Almirante 2da etapa31Activos 82941099990Escuela jose Francisco peña gomez prepara', 'JUGADORES'),
('apuntaladenito', '2025-10-08 03:59:25', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-08 04:01:53', 'A', '', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-08 04:02:10', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('mariadelmar', '2025-10-08 04:02:19', 'A', '', 'Vargens romeoRomeo Berius pasp. R113038072007-08-24los frailes II 11jugador 809-944-5613R113038070Republica de Fillo ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 04:02:44', 'M', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO8296563926Liceo Pedro mir', 'Yadiel MiguelPeña Baez402052119452007-07-02Calle 37 #64 katanga7ACTIVO82965639260Liceo Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-08 04:03:46', 'M', 'Elian ezequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 8299908586San Vicente de Paúl ', 'Elian ezequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 82999085860San Vicente de Paúl ', 'JUGADORES'),
('clublosmina', '2025-10-08 04:04:29', 'M', 'Elian ezequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 8299908586San Vicente de Paúl ', 'Elian ezequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 82999085860San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 04:42:34', 'M', 'Vargens romeoRomeo Berius pasp. R113038072007-08-24los frailes II 11jugador 809-944-5613Republica de Fillo ', 'Vargens romeoRomeo Berius 00R113038072007-08-24los frailes II 11jugador 8099445613R113038070Republica de Fillo ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 05:48:47', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 05:55:34', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:09:07', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:13:54', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:14:11', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('clublosmina', '2025-10-08 06:24:46', 'A', '', 'DarwinDe la Cruz Ferreras00080170902009-02-20C/27D los mina7Activo 849438400163435300Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-08 06:27:01', 'M', 'DarwinDe la Cruz Ferreras00080170902009-02-20C/27D los mina7Activo 8494384001Pedro mir', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 849438400163435300Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:31:31', 'M', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa402331114142005-03-17Las mercedes #58 / los minas 20Activo (829) 859‑2868‬36195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:35:30', 'M', 'Dayron Perez Medina 402015201862008-01-17Malecóncito respaldo 3 #2220Activo(849) 851-3849Pedro Mir ', 'Dayron Perez Medina 402015201862008-01-17Malecóncito respaldo 3 #2220Activo(849) 851-384970328170Pedro Mir ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:36:00', 'M', 'Darlin Eslin Aquino Hilario402015344262008-08-08C/ U2 respaldo h #15 / los tres brazos 20Activo (829) 316-4883Ramón Emilio Jiménez ', 'Darlin Eslin Aquino Hilario402015344262008-08-08C/ U2 respaldo h #15 / los tres brazos 20Activo (829) 316-488363230190Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:37:07', 'M', 'Erick JosePolanco Robles 402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Activo(849) 573‑1725‬Colombina Canario ', 'Erick JosePolanco Robles 402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Activo(849) 573‑1725‬37612070Colombina Canario ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:38:08', 'M', 'George Stewar De los Santos Soriano402143891462006-08-07Pedro Benoet #3920Activo(849) 409-1479Ramon Emilio Jiménez ', 'Jeorge Stewar De los Santos Soriano402143891462006-08-07Pedro Benoet #3920Activo(849) 409-147954380310Ramon Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:39:28', 'M', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Activo (829) 487-2447Ramón Emilio Jiménez ', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Activo (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:39:56', 'M', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 06/ Los mina20Activo(829) 524‑0456‬San Vicente de Paúl ', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 06/ Los mina20Activo(829) 524‑0456‬55291640San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:40:16', 'M', 'David Alexander Noboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Activo+1 (809) 851-0087Fabio Amable Mota ', 'David Alexander Noboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Activo+1 (809) 851-008767320580Fabio Amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:40:42', 'M', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Activo(829) 492-6449Fabio Amable Mota ', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Activo(829) 492-644970406430Fabio Amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:41:38', 'M', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Activo(809) 942-3730Prof. Isabel Segura de Apatano', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Activo(809) 942-373055231230Prof. Isabel Segura de Apatano', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:42:30', 'M', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 0000000000Pedro Mir ', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 000000000050800690Pedro Mir ', 'JUGADORES'),
('clublosmina', '2025-10-08 06:42:36', 'M', 'Marlon santiago Pinales frías 4020196685892008-09-28Calle 8 esquina Chepita Pérez de La Paz 7Activo 8093615839San Vicente de Paúl ', 'Marlon santiago Pinales frías 4020196685892008-09-28Calle 8 esquina Chepita Pérez de La Paz 7Activo 80936158390San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 06:42:43', 'M', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 0000000000Pedro Mir ', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 000000000050800690Pedro Mir ', 'JUGADORES'),
('clublosmina', '2025-10-08 06:48:28', 'A', '', 'EDISON Miguel Bencosme Hernández 402-3085868-62009-02-24Calle 21 D 7Activo 82927693080San Vicente de Paúl ', 'JUGADORES'),
('clublosmina', '2025-10-08 06:57:38', 'A', '', 'Daunil augustoCabrera Batista 402000643262008-01-16Calle 42 r2  #737Activo 84926422180San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 07:12:32', 'M', 'juanPerez12345678902005-01-01calle 1 35Activo8091234567colegio', 'juanPerez12345678902005-01-01calle 1 35Activo80912345670colegio', 'JUGADORES'),
('apuntaladenito', '2025-10-08 07:16:39', 'M', 'EDISON Miguel Bencosme Hernández 402-3085868-62009-02-24Calle 21 D 7Activo 8292769308San Vicente de Paúl ', 'EDISON Miguel Bencosme Hernández 402-308586862009-02-24Calle 21 D 7Activo 82927693080San Vicente de Paúl ', 'JUGADORES'),
('clublosmina', '2025-10-08 07:23:21', 'A', '', 'Jan  Carlos Lara leazar402095097772008-12-05Calle Pedro francisco bono Mejía #237Activo 80951282160San Vicente de Paúl (prepara)', 'JUGADORES'),
('apuntaladenito', '2025-10-08 08:10:34', 'A', '', 'NaNtodas51994masculino/femeninoWander Santana8095901625Ruben Santana8295922672Santo Domingo NorteSabana Perdida', 'EQUIPOS'),
('apuntaladenito', '2025-10-08 08:42:52', 'A', '', 'NaNtodas51981masculino/femeninoDomingo De La Rosa8094540251Jeurin Jeraldo8096662306Santo Domingo NorteSabana Perdida', 'EQUIPOS'),
('loscaribes', '2025-10-08 08:56:15', 'A', '', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('apuntaladenito', '2025-10-08 08:57:43', 'M', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8096662306Colegio Mi Pequeño Hogar', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('mariadelmar', '2025-10-08 09:05:01', 'A', '', 'Angel Manuel Zapata Bautista 402-0967215-92005-08-21los frailes II 11jugador 809000000402-0967215-90la inmaculadad Fe y Alegria ', 'JUGADORES'),
('mariadelmar', '2025-10-08 09:07:06', 'A', '', 'Samuel Isaac Vil Martinez 402-3017863-02006-06-05los frailes II 11jugador 809000000402-3017863-00la inmaculadad Fe y Alegria ', 'JUGADORES'),
('loscaribes', '2025-10-08 09:10:35', 'A', '', 'AdamGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('loscaribes', '2025-10-08 09:10:51', 'M', 'AdamGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO8098025864Liceo Gregorio Luperon', 'AdamGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('loscaribes', '2025-10-08 09:11:25', 'M', 'AdamGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO8098025864Liceo Gregorio Luperon', 'AdamGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('apuntaladenito', '2025-10-08 09:13:23', 'M', 'AdamGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO8098025864Liceo Gregorio Luperon', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('mariadelmar', '2025-10-08 09:17:58', 'A', '', 'Melvin Ricardo Amezquita Muñoz 402-3020359-42007-08-02los frailes II 11jugador 8492532971402-3020359-40universidad Odntologica Dominicana ', 'JUGADORES'),
('apuntaladenito', '2025-10-08 09:18:01', 'M', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO8098025864Liceo Gregorio Luperon', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('apuntaladenito', '2025-10-08 09:18:10', 'M', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8096662306Colegio Mi Pequeño Hogar', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('loscaribes', '2025-10-08 09:18:58', 'M', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8096662306Colegio Mi Pequeño Hogar', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('loscaribes', '2025-10-08 09:19:06', 'M', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO8098025864Liceo Gregorio Luperon', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('loscaribes', '2025-10-08 09:31:23', 'A', '', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO82952212630Emma balaguer', 'JUGADORES'),
('loscaribes', '2025-10-08 09:34:11', 'A', '', 'Ansfermin YandelJuan Alcantara402294304712005-01-09Lotes y Servicios37ACTIVO82952212630Emma Balaguer', 'JUGADORES'),
('loscaribes', '2025-10-08 09:38:58', 'A', '', 'Darlin DavidAlmanza Ventura402052121582007-01-24calle 15 casa #15 Barrio el progreso37ACTIVO80989078920Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-08 09:40:18', 'A', '', 'NaNtodas41993masculino/femeninoJose Alberto Sanchez8298533460Manuel Carrasco Reyes8492085003Santo Domingo EsteInvivienda', 'EQUIPOS'),
('loscaribes', '2025-10-08 09:44:22', 'A', '', 'Joshua DavidRamirez Gutierrez402000136452007-05-14calle 30 #6 el progreso sabana perdida37ACTIVO80995873240liceo canada', 'JUGADORES'),
('loscaribes', '2025-10-08 09:49:36', 'A', '', 'Randy AndersonMartinez402143593392005-09-01calle ramon duarte, barrio brisar de los palmares37ACTIVO82925400900colegio nuevo milenio', 'JUGADORES'),
('clubinvivienda', '2025-10-08 09:49:57', 'A', '', 'Washlin JoseRamirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO82989204090Escuela Maria Trinidad Sanchez', 'JUGADORES'),
('clubinvivienda', '2025-10-08 09:51:14', 'M', 'Washlin JoseRamirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO8298920409Escuela Maria Trinidad Sanchez', 'Washlin JoseRamirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO82989204090Escuela Maria Trinidad Sanchez', 'JUGADORES'),
('clubinvivienda', '2025-10-08 09:52:09', 'M', 'Washlin JoseRamirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO8298920409Escuela Maria Trinidad Sanchez', 'Washlin JoseRamirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO82989204090Escuela Maria Trinidad Sanchez', 'JUGADORES'),
('loscaribes', '2025-10-08 09:53:27', 'A', '', 'Jose DavidMorel402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO82931892780sabana japon', 'JUGADORES'),
('clubinvivienda', '2025-10-08 09:56:33', 'A', '', 'Jose RafelFabian Castillo402313165772007-12-24Hipodromo 5to Centenario38ACTIVO82970540300Instituto tecnologico Simon Orozco', 'JUGADORES'),
('loscaribes', '2025-10-08 09:58:44', 'A', '', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO80940365120colegio Sagrario Elcilia Diaz', 'JUGADORES'),
('clubinvivienda', '2025-10-08 09:59:26', 'A', '', 'Robinson AngelMañon Florian402010109482007-11-10Calle la Hipica Residencial Las Cayenas38ACTIVO82971677290Escuela Nuestra Señora del perpetuo socorro', 'JUGADORES'),
('apuntaladenito', '2025-10-08 10:02:06', 'M', 'Robinson AngelMañon Florian402010109482007-11-10Calle la Hipica Residencial Las Cayenas38ACTIVO8297167729Escuela Nuestra Señora del perpetuo socorro', 'Robinson AngelMañon Florian402010109482007-11-10Calle la Hipica Residencial Las Cayenas38ACTIVO82971677290Escuela Nuestra Señora del perpetuo socorro', 'JUGADORES'),
('clubinvivienda', '2025-10-08 10:06:51', 'A', '', 'Albert LuisFeliz Marquez12345678002008-01-08Calle Marcelo Lara invivienda38ACTIVO82927368820Escuela Maria Trinidad Sanchez', 'JUGADORES'),
('loscaribes', '2025-10-08 10:07:07', 'A', '', 'Luis DavidAguasviva Coste402182555252006-05-08calle Fauto Maseu # 5 barrio liberta sabana perdida37ACTIVO80967323510westscranto high school', 'JUGADORES'),
('loscaribes', '2025-10-08 10:12:39', 'A', '', 'keytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO82999161590centro educativo sicopedalogico de la rosa el milloncito', 'JUGADORES'),
('loscaribes', '2025-10-08 10:15:41', 'A', '', 'HamsellMarte santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO82937718310Ramona neris Sosa', 'JUGADORES'),
('mariadelmar', '2025-10-08 10:20:22', 'A', '', 'Abdelsamad xoah vandeross Shephard402-0287074-32009-06-28los frailes II 11jugador 809-727-6056402-0287074-30no estudia ', 'JUGADORES'),
('clublosmina', '2025-10-08 10:24:40', 'M', 'EDISON Miguel Bencosme Hernández 402-308586862009-02-24Calle 21 D 7Activo 8292769308San Vicente de Paúl ', 'EDISON Miguel Bencosme Hernández 402308586862009-02-24Calle 21 D 7Activo 82927693080San Vicente de Paúl ', 'JUGADORES'),
('clubinvivienda', '2025-10-09 01:13:34', 'M', 'Washlin JoseRamirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO8298920409Escuela Maria Trinidad Sanchez', 'Wassly José Ramirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO82989204090Escuela Maria Trinidad Sanchez', 'JUGADORES'),
('clubinvivienda', '2025-10-09 02:27:34', 'A', '', 'Manuel Carrasco 402-0108638-22007-04-13santo domingo este invivienda 38deportista 84920850030escuela Lilian portalatin sosa', 'JUGADORES'),
('clubinvivienda', '2025-10-09 02:40:04', 'A', '', 'HernanPichardo90077475592008-08-03Av. Simon Orozco, Invivienda38Estudiante829-830-609719-01180Colegio Nuevo Atardecer', 'JUGADORES'),
('clubinvivienda', '2025-10-09 02:44:20', 'A', '', 'Lian Pichardo73664894902008-08-03Av. Simon Orozco, Invivienda38Estudiante829-807-302419-01190Colegio Nuevo Atardecer', 'JUGADORES'),
('clubinvivienda', '2025-10-09 02:47:36', 'A', '', 'Yhency López 402000171502007-06-09Central #65 trinitarios segundo 38Deportista 82878009210Políticos cristo obrero ', 'JUGADORES'),
('clubinvivienda', '2025-10-09 02:54:03', 'A', '', 'DereekGarcía 402-1223479-92008-10-13Sector Almirante, urbanización Ramon Matías mella #1038Deportista82965433160Liceo técnico Manuel del Cabral fe y alegría ', 'JUGADORES'),
('apuntaladenito', '2025-10-09 03:20:12', 'M', 'Francis Boya Gomez00RD92291502007-12-13C/ 4 de agosto Respaldo e #3320Activo  (849) 273-8681Pedro Mir ', 'Francis Boya Gomez00RD92291502007-12-13C/ 4 de agosto Respaldo e #3320Activo  (849) 273-868166440840Pedro Mir ', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:27:32', 'M', 'Manuel Carrasco 402-0108638-22007-04-13santo domingo este invivienda 38deportista 8492085003escuela Lilian portalatin sosa', 'Manuel Carrasco 402-0108638-22007-04-13santo domingo este invivienda 38deportista 84920850030escuela Lilian portalatin sosa', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:33:35', 'M', 'Jose RafelFabian Castillo402313165772007-12-24Hipodromo 5to Centenario38ACTIVO8297054030Instituto tecnologico Simon Orozco', 'José RafaelFabian Castillo402313165772007-12-24Hipodromo V Centenario38ACTIVO82970540300Instituto tecnologico Simon Orozco', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:34:49', 'M', 'José RafaelFabian Castillo402313165772007-12-24Hipodromo V Centenario38ACTIVO8297054030Instituto tecnologico Simon Orozco', 'José RafaelFabian Castillo402313165772007-12-24Hipodromo V Centenario38ACTIVO82970540300Instituto tecnologico Simon Orozco', 'JUGADORES'),
('apuntaladenito', '2025-10-09 03:37:54', 'M', 'DereekGarcía 402-1223479-92008-10-13Sector Almirante, urbanización Ramon Matías mella #1038Deportista8296543316Liceo técnico Manuel del Cabral fe y alegría ', 'DereekGarcía 402122347992008-10-13Sector Almirante, urbanización Ramon Matías mella #1038Deportista82965433160Liceo técnico Manuel del Cabral fe y alegría ', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:39:01', 'M', 'Manuel Carrasco 402-0108638-22007-04-13santo domingo este invivienda 38deportista 8492085003escuela Lilian portalatin sosa', 'Manuel Carrasco 402-0108638-22007-04-13santo domingo este invivienda 38ACTIVO84920850030escuela Lilian portalatin sosa', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:39:15', 'M', 'HernanPichardo90077475592008-08-03Av. Simon Orozco, Invivienda38Estudiante829-830-6097Colegio Nuevo Atardecer', 'HernanPichardo90077475592008-08-03Av. Simon Orozco, Invivienda38ACTIVO829-830-609719-01180Colegio Nuevo Atardecer', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:39:27', 'M', 'Lian Pichardo73664894902008-08-03Av. Simon Orozco, Invivienda38Estudiante829-807-3024Colegio Nuevo Atardecer', 'Lian Pichardo73664894902008-08-03Av. Simon Orozco, Invivienda38ACTIVO829-807-302419-01190Colegio Nuevo Atardecer', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:39:39', 'M', 'Yhency López 402000171502007-06-09Central #65 trinitarios segundo 38Deportista 8287800921Políticos cristo obrero ', 'Yhency López 402000171502007-06-09Central #65 trinitarios segundo 38ACTIVO82878009210Políticos cristo obrero ', 'JUGADORES'),
('clubinvivienda', '2025-10-09 03:39:49', 'M', 'DereekGarcía 402122347992008-10-13Sector Almirante, urbanización Ramon Matías mella #1038Deportista8296543316Liceo técnico Manuel del Cabral fe y alegría ', 'DereekGarcía 402122347992008-10-13Sector Almirante, urbanización Ramon Matías mella #1038ACTIVO82965433160Liceo técnico Manuel del Cabral fe y alegría ', 'JUGADORES'),
('clublosmina', '2025-10-09 04:33:20', 'A', '', 'Yadiel Tejada Rosario 402015426682008-10-28Calle 14 Losmina sur #24 7Activo 82937481400Juan bautista zafra (prepara ) ', 'JUGADORES'),
('clublosmina', '2025-10-09 04:36:35', 'M', 'Yadiel Tejada Rosario 402015426682008-10-28Calle 14 Losmina sur #24 7Activo 8293748140Juan bautista zafra (prepara ) ', 'Yadiel Tejeda Rosario 402015426682008-10-28Calle 14 Losmina sur #24 7Activo 82937481400Juan bautista zafra (prepara ) ', 'JUGADORES'),
('clublosmina', '2025-10-09 04:46:18', 'A', '', 'AnthoniOrtiz Báez 402317642552008-04-09Calle santa Luisa #547Activo 829651477465243520San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-09 06:38:16', 'M', 'clublosminaclublosmina22300273095clublosmina62428c6ca43d7c97f4b327d8843411f8fa71ee62c6fdccb10fe92dfb32ec16eb1', 'clublosminaclublosmina22300273095clublosminaLosmina20251', 'USUARIOS'),
('apuntaladenito', '2025-10-09 06:40:15', 'M', 'HernanPichardo90077475592008-08-03Av. Simon Orozco, Invivienda38ACTIVO829-830-6097Colegio Nuevo Atardecer', 'HernanPichardo90077475592008-08-03Av. Simon Orozco, Invivienda38ACTIVO829830609719-01180Colegio Nuevo Atardecer', 'JUGADORES'),
('apuntaladenito', '2025-10-09 06:54:43', 'M', 'Darlin DavidAlmanza Ventura402052121582007-01-24calle 15 casa #15 Barrio el progreso37ACTIVO8098907892Emma balaguer', 'Darlin DavidAlmanza Ventura402052121582007-01-24calle 15 casa #15 Barrio el progreso37ACTIVO80989078920Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-09 06:55:53', 'M', 'Darlin DavidAlmanza Ventura402052121582007-01-24calle 15 casa #15 Barrio el progreso37ACTIVO8098907892Emma balaguer', 'Darlin DavidAlmanza Ventura402052121582007-01-24calle 15 casa #15 Barrio el progreso37ACTIVO80989078920Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-09 06:57:57', 'M', 'Joshua DavidRamirez Gutierrez402000136452007-05-14calle 30 #6 el progreso sabana perdida37ACTIVO8099587324liceo canada', 'Joshua DavidRamirez Gutierrez402000136452007-05-14calle 30 #6 el progreso sabana perdida37ACTIVO80995873240liceo canada', 'JUGADORES'),
('apuntaladenito', '2025-10-09 06:58:11', 'M', 'Joshua DavidRamirez Gutierrez402000136452007-05-14calle 30 #6 el progreso sabana perdida37ACTIVO8099587324liceo canada', 'Joshua DavidRamirez Gutierrez402000136452007-05-14calle 30 #6 el progreso sabana perdida37ACTIVO80995873240liceo canada', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:02:08', 'M', 'Jose DavidMorel402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO8293189278sabana japon', 'Jose DavidMorel402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO82931892780sabana japon', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:03:03', 'M', 'Jose DavidMorel402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO8293189278sabana japon', 'Jose DavidMorel402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO82931892780sabana japon', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:04:08', 'M', 'Jose DavidMorel402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO8293189278sabana japon', 'Jose DavidMorel Selmo402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO82931892780sabana japon', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:09:55', 'M', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO8094036512colegio Sagrario Elcilia Diaz', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO80940365120colegio Sagrario Elcilia Diaz', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:13:09', 'M', 'Luis DavidAguasviva Coste402182555252006-05-08calle Fauto Maseu # 5 barrio liberta sabana perdida37ACTIVO8096732351westscranto high school', 'Luis DavidAguasviva Coste402182555252006-05-08calle Fauto Maseu # 5 barrio liberta sabana perdida37ACTIVO80967323510westscranto high school', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:15:41', 'M', 'keytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO8299916159centro educativo sicopedalogico de la rosa el milloncito', 'keytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO82999161590centro educativo sicopedalogico de la rosa el milloncito', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:16:30', 'M', 'Abdelsamad xoah vandeross Shephard402-0287074-32009-06-28los frailes II 11jugador 809-727-6056no estudia ', 'Abdelsamad xoah vandeross Shephard402028707432009-06-28los frailes II 11jugador 8097276056402-0287074-30no estudia ', 'JUGADORES'),
('apuntaladenito', '2025-10-09 07:16:42', 'M', 'Manuel Carrasco 402-0108638-22007-04-13santo domingo este invivienda 38ACTIVO8492085003escuela Lilian portalatin sosa', 'Manuel Carrasco 402010863822007-04-13santo domingo este invivienda 38ACTIVO84920850030escuela Lilian portalatin sosa', 'JUGADORES'),
('clublosmina', '2025-10-09 07:27:42', 'M', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 8294896547Pedro mir', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 829489654766033530Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-09 07:27:51', 'M', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 8294896547Pedro mir', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 829489654766033530Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-09 07:28:02', 'M', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 8294896547Pedro mir', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 829489654766033530Pedro mir', 'JUGADORES'),
('clublosmina', '2025-10-09 07:28:22', 'M', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 8294896547Pedro mir', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 829489654766033530Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-09 08:10:16', 'A', '', 'NaNtodas12013masculino/femeninoEyesmeri Noblet Ortega8494605660Eladio Reyes Guzman8097029463Santo Domingo EstePensador Villa Duarte', 'EQUIPOS'),
('apuntaladenito', '2025-10-09 08:27:40', 'A', '', 'NaNtodas11979masculinoCarlos Yulier Baez King8494276586Miguel Medrano8296299982Santo Domingo EsteVilla Duarte', 'EQUIPOS'),
('clubsanssouci', '2025-10-09 08:38:48', 'A', '', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO84962713640Escuela Sanchez Isabel', 'JUGADORES'),
('clubsanssouci', '2025-10-09 08:42:51', 'M', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO8496271364Escuela Sanchez Isabel', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO84962713640Escuela Sanchez Isabel', 'JUGADORES'),
('clubsanssouci', '2025-10-09 08:43:03', 'M', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO8496271364Escuela Sanchez Isabel', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO84962713640Escuela Sanchez Isabel', 'JUGADORES'),
('clubsanssouci', '2025-10-09 08:43:24', 'M', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO8496271364Escuela Sanchez Isabel', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO84962713640Escuela Sanchez Isabel', 'JUGADORES'),
('clubsanssouci', '2025-10-09 08:49:07', 'M', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO8496271364Escuela Sanchez Isabel', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO84962713640Escuela Sanchez Isabel', 'JUGADORES'),
('apuntaladenito', '2025-10-09 08:51:58', 'M', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO8496271364Escuela Sanchez Isabel', 'Junior IsmaelSanchez Torrez402020155902008-02-20Calle 16 . 27 de Febrero39ACTIVO84962713640Escuela Sanchez Isabel', 'JUGADORES'),
('apuntaladenito', '2025-10-09 09:06:16', 'A', '', 'NaNtodas11975masculinoCarlos Fernandez8094200271Jorge Heramos Cornelio8099531181Santo Domingo EsteRamon Matias Mella', 'EQUIPOS'),
('ramonmatiasmellas', '2025-10-09 09:24:57', 'A', '', 'Justin MiguelPerez Ozoria402430751792005-03-02Calle 1ra edificio 22 Ramon Matias Mellas41ACTIVO84975465220Escuela San Francisco', 'JUGADORES'),
('apuntaladenito', '2025-10-09 09:41:15', 'A', '', 'NaNtodas21985masculino/femeninoRamon Perez8297074820Simey David De Los Santos Abreu8093151143Santo Domingo EsteLos Mina', 'EQUIPOS'),
('villavenezuela', '2025-10-09 09:47:28', 'A', '', 'Simey DavidDe Los Santos Abreu402181189052005-11-12Calle 7 Ercilia Pepin, Los Mina44ACTIVO80931511430Escuela Ramon Emilio Jimenez', 'JUGADORES'),
('villavenezuela', '2025-10-09 09:52:01', 'A', '', 'Onauris EliezerCruz Aquino402192477112006-09-02Avenida Venezuela Urb. Ambar manzana D Edificio 544ACTIVO80993538880Escuela Manuel de Jesus Garban', 'JUGADORES'),
('villavenezuela', '2025-10-09 09:52:20', 'M', 'Onauris EliezerCruz Aquino402192477112006-09-02Avenida Venezuela Urb. Ambar manzana D Edificio 544ACTIVO8099353888Escuela Manuel de Jesus Garban', 'Onauris EliezerCruz Aquino402192477112006-09-02Avenida Venezuela Urb. Ambar manzana D Edificio 544ACTIVO80993538880Escuela Manuel de Jesus Garban', 'JUGADORES'),
('apuntaladenito', '2025-10-09 09:55:06', 'M', 'Simey DavidDe Los Santos Abreu402181189052005-11-12Calle 7 Ercilia Pepin, Los Mina44ACTIVO8093151143Escuela Ramon Emilio Jimenez', 'Simey DavidDe Los Santos Abreu402181189052005-11-12Calle 7 Ercilia Pepin, Los Mina44ACTIVO80931511430Escuela Ramon Emilio Jimenez', 'JUGADORES'),
('apuntaladenito', '2025-10-09 09:55:29', 'M', 'Onauris EliezerCruz Aquino402192477112006-09-02Avenida Venezuela Urb. Ambar manzana D Edificio 544ACTIVO8099353888Escuela Manuel de Jesus Garban', 'Onauris EliezerCruz Aquino402192477112006-09-02Avenida Venezuela Urb. Ambar manzana D Edificio 544ACTIVO80993538880Escuela Manuel de Jesus Garban', 'JUGADORES'),
('clubitalia', '2025-10-09 11:10:38', 'A', '', 'Angel DavidPerez Moquete402-1447301-52007-10-11calle sicilia urb. italia16infantil8492603333APm07101100020f.a.r.d', 'JUGADORES'),
('apuntaladenito', '2025-10-09 11:42:57', 'M', 'francianuevafrancianueva7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb911', 'francianuevafrancianueva22301451146francianueva92141', 'USUARIOS'),
('francianueva', '2025-10-09 11:49:27', 'A', '', 'jostin Eduardo Rodriguez brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 40202584971078640Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-09 11:51:45', 'M', 'jostin Eduardo Rodriguez brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 4020258497107864Socorro Sanchez ', 'jostin Eduardo Rodriguez brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 40202584971078640Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-09 11:52:27', 'M', 'jostin Eduardo Rodriguez brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 4020258497107864Socorro Sanchez ', 'jostin Eduardo Rodriguez brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 40202584971078640Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-09 11:58:28', 'A', '', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 40202582956872250Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 12:03:19', 'M', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 4020258295687225Socorro Sanchez ', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 40202582956872250Socorro Sanchez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 12:09:56', 'M', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 8494384001Pedro mir', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 849438400163435300Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-10 12:10:17', 'M', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 8494384001Pedro mir', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 849438400163435300Pedro mir', 'JUGADORES'),
('francianueva', '2025-10-10 01:17:07', 'A', '', 'Bryan sanzun402372119542008-09-09calle gloriosa francia Nueva villa duarte 40202582964212540Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 01:21:11', 'M', 'Bryan sanzun402372119542008-09-09calle gloriosa francia Nueva villa duarte 4020258296421254Socorro Sanchez ', 'Bryan sanzun402372119542008-09-09calle gloriosa francia Nueva villa duarte 40202582964212540Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 01:28:17', 'M', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 4020258295687225Socorro Sanchez ', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 40202582956872250Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 01:29:00', 'M', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 4020258295687225Socorro Sanchez ', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 40202582956872250Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 01:44:13', 'A', '', 'Cristian de Jesus checo402000536182007-07-21calle 2 los mameyes puerca brava 40202584943073270fe y alegria ', 'JUGADORES'),
('francianueva', '2025-10-10 01:44:45', 'M', 'Cristian de Jesus checo402000536182007-07-21calle 2 los mameyes puerca brava 4020258494307327fe y alegria ', 'Cristian de Jesus checo402000536182007-07-21calle 2 los mameyes puerca brava 40202584943073270fe y alegria ', 'JUGADORES'),
('francianueva', '2025-10-10 02:01:53', 'A', '', 'Albert Alberto Perez Garcia 4022911895312005-10-30respardo los 3 ojos isabelita 40202584942765860colegio isabelita ', 'JUGADORES'),
('francianueva', '2025-10-10 04:20:12', 'A', '', 'jostin Gabriel castillo402084578002014-02-07calle gloriosa francia Nueva villa duarte 40202584962361680Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 04:21:07', 'M', 'jostin Gabriel castillo402084578002014-02-07calle gloriosa francia Nueva villa duarte 4020258496236168Socorro Sanchez ', 'jostin Gabriel castillo402084578002014-02-07calle gloriosa francia Nueva villa duarte 40202584962361680Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 04:38:38', 'A', '', 'raymond adrielPerez moreno402156862012006-08-17Santo Domingo las caobas 40202584988026780escuela la Cervantes ', 'JUGADORES'),
('clublosmina', '2025-10-10 11:06:03', 'M', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 8494384001Pedro mir', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 849438400163435300Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:35:21', 'A', '', 'NaNtodas51998masculino/femeninoWilliam Cabral Lugo8094191775William Cabral Lugo8094191775Los AlcarrizosLos Alcarrizos', 'EQUIPOS'),
('apuntaladenito', '2025-10-10 11:41:50', 'M', 'Samuel Isaac Vil Martinez 402-3017863-02006-06-05los frailes II 11jugador 809000000la inmaculadad Fe y Alegria ', 'Samuel Isaac Vil Martinez 402301786302006-06-05los frailes II 11jugador 809000000402-3017863-00la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:45:33', 'M', 'Angel DavidPerez Moquete402-1447301-52007-10-11calle sicilia urb. italia16infantil8492603333f.a.r.d', 'Angel DavidPerez Moquete402144730152007-10-11calle sicilia urb. italia16infantil8492603333APm07101100020f.a.r.d', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:46:08', 'M', 'Angel Manuel Zapata Bautista 402-0967215-92005-08-21los frailes II 11jugador 809000000la inmaculadad Fe y Alegria ', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11jugador 809000000402-0967215-90la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:46:19', 'M', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11jugador 809000000la inmaculadad Fe y Alegria ', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11jugador 8090000000la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:50:12', 'M', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11jugador 809000000la inmaculadad Fe y Alegria ', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11jugador 8090000000la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:51:18', 'M', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11jugador 809000000la inmaculadad Fe y Alegria ', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11ACTIVO8090000000la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:52:07', 'M', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11ACTIVO809000000la inmaculadad Fe y Alegria ', 'Angel Manuel Zapata Bautista 402096721592005-08-21los frailes II 11ACTIVO8090000000la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:54:01', 'M', 'Wassly José Ramirez De Los Santos40234962612007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO8298920409Escuela Maria Trinidad Sanchez', 'Washlin José Ramirez De Los Santos402349626172007-08-31C/ framboyan #9 Charles de Gaulle38ACTIVO82989204090Escuela Maria Trinidad Sanchez', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:59:34', 'M', 'Abdelsamad xoah vandeross Shephard402028707432009-06-28los frailes II 11jugador 8097276056no estudia ', 'Abdelsamad Xoah Vandeross Shephard Nicolas402028707432009-06-28los frailes II 11ACTIVO80972760560no estudia ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:59:52', 'M', 'Abdelsamad Xoah Vandeross Shephard Nicolas402028707432009-06-28los frailes II 11ACTIVO8097276056no estudia ', 'Abdelsamad Xoah Vandeross Shephard Nicolas402028707432009-06-28los frailes II 11ACTIVO80972760560no estudia ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 12:00:41', 'M', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO8098025864Liceo Gregorio Luperon', 'AdanGonzalez Rondon402304849212006-03-20Autopista Duarte Km18 Pablo Mella Bizono 20237ACTIVO80980258640Liceo Gregorio Luperon', 'JUGADORES'),
('apuntaladenito', '2025-10-10 12:17:15', 'A', '', 'NaNtodas12001masculino/femeninoJuan Perez8099876543Juan Perez8099876543Santo Domingo EstePrueba', 'EQUIPOS'),
('clubsanantonio', '2025-10-10 12:37:47', 'A', '', 'Elinzon Alberto Lopez peńa 402-3311141-42005-03-17C/ Las mercedes #88/ Vietnam los mina20Activo(829) 859-286836195010Ramón Emilio Jiménez ', 'JUGADORES'),
('clubprueba', '2025-10-10 12:48:40', 'A', '', 'AntonioCruz40276543212014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO809976432176543210Colegio Prueba', 'JUGADORES'),
('apuntaladenito', '2025-10-10 01:10:21', 'M', 'AntonioCruz40276543212014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO8099764321Colegio Prueba', 'AntonioCruz40276543212014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO809976432176543210Colegio Prueba', 'JUGADORES'),
('apuntaladenito', '2025-10-10 01:42:52', 'M', 'Melvin Ricardo Amezquita Muñoz 402-3020359-42007-08-02los frailes II 11jugador 8492532971universidad Odntologica Dominicana ', 'Melvin Ricardo Amezquita Muñoz 402302035942007-08-02los frailes II 11jugador 8492532971402-3020359-40universidad Odntologica Dominicana ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 01:44:00', 'M', 'AntonioCruz40276543212014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO8099764321Colegio Prueba', 'AntonioCruz402765432102014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO809976432176543210Colegio Prueba', 'JUGADORES'),
('apuntaladenito', '2025-10-10 01:44:29', 'M', 'Elinzon Alberto Lopez peńa 402-3311141-42005-03-17C/ Las mercedes #88/ Vietnam los mina20Activo(829) 859-2868Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa 402331114142005-03-17C/ Las mercedes #88/ Vietnam los mina20Activo(829) 859-286836195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 01:56:19', 'M', 'Elinzon Alberto Lopez peńa 402331114142005-03-17C/ Las mercedes #88/ Vietnam los mina20Activo(829) 859-2868Ramón Emilio Jiménez ', 'Elinzon Alberto Lopez peńa 402331114142005-03-17C/ Las mercedes #88/ Vietnam los mina20Activo(829) 859-286836195010Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:00:55', 'M', 'Anthony Almonte Gomez 402301338902006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8096988902la inmaculadad Fe y Alegria ', 'Anthony Almonte Gomez 402301338902006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 80969889020la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:01:22', 'M', 'Anthony Almonte Gomez 402301338902006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8096988902la inmaculadad Fe y Alegria ', 'Anthony Almonte Gomez 402301338902006-09-07calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 80969889020la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:02:56', 'M', 'Anthoni yandelLuzon de orbe 401001596782008-11-21Almirante 2da etapa31Activos 8098632606Lili', 'Anthony YandellLuzon Del Orbe 401001596782008-11-21Almirante 2da etapa31Activos 80986326060Lili', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:04:19', 'M', 'AnthoniOrtiz Báez 402317642552008-04-09Calle santa Luisa #547Activo 8296514774San Vicente de Paúl ', 'AnthonyOrtiz Báez 402317642552008-04-09Calle santa Luisa #547Activo 829651477465243520San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:12:50', 'M', 'Ansfermin YandelJuan Alcantara402294304712005-01-09Lotes y Servicios37ACTIVO8295221263Emma Balaguer', 'Ansfermin YandelJuan Alcantara402294304712005-01-09Lotes y Servicios37ACTIVO82952212630Emma Balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:14:08', 'M', 'Angel DavidPerez Moquete402144730152007-10-11calle sicilia urb. italia16infantil8492603333f.a.r.d', 'Angel DavidPerez Moquete402144730152007-10-11calle sicilia urb. italia16infantil8492603333APm07101100020f.a.r.d', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:15:58', 'M', 'ANGEL DARIELGÓMEZ FAMILIA402014637482009-12-30SAN MIGUEL MANOGUAYABO25ACTIVO8494620330COLEGIO LA ESCALERITA', 'Angel DarielGomez Familia402014637482009-12-30SAN MIGUEL MANOGUAYABO25ACTIVO849462033062626120COLEGIO LA ESCALERITA', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:20:13', 'M', 'Angel  omer Cruz402022414812009-11-02Almirante 2da etapa31Activos 8495018220Trina de moya', 'Angel OsmelCruz402022414812009-11-02Almirante 2da etapa31Activos 84950182200Trina de moya', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:21:07', 'M', 'ALISSON MANUELMATEO CRUZ402085141082009-01-15LAS CAOBAS25ACTIVO8298734234LICEO ELSA MOJICA', 'Alisson ManuelMateo Cruz402085141082009-01-15LAS CAOBAS25ACTIVO829873423465140920LICEO ELSA MOJICA', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:28:05', 'M', 'Algenis Jesus Cueva Novas 402331251332006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350la inmaculadad Fe y Alegria ', 'Algenis Jesus Cueva Novas 402331251332006-05-19calle 24 de abril , las americas km 10 1/2 los frailes II 11jugador 8292047350402-3312513-30la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:29:16', 'M', 'Albert Alberto Perez Garcia 4022911895312005-10-30respardo los 3 ojos isabelita 4020258494276586colegio isabelita ', 'Albert Alberto Perez Garcia 4022911895312005-10-30respardo los 3 ojos isabelita 40202584942765860colegio isabelita ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:30:55', 'M', 'Ariel Arturo Erazo Sánchez 402157902192005-05-31C/27D los mina7Activo 8296899945Colegio josefina White', 'Ariel ArturoErazo Sánchez402157902192005-05-31C/27D los mina7Activo 82968999450Colegio josefina White', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:32:12', 'M', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 0000000000Pedro Mir ', 'Braylin Dariel Fernandez223008949082007-10-16C/ Las mercedes #29/ Vietnam20Activo 000000000050800690Pedro Mir ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:33:31', 'M', 'Bryan sanzun402372119542008-09-09calle gloriosa francia Nueva villa duarte 4020258296421254Socorro Sanchez ', 'BryanSanzun Nin402372119542008-09-09calle gloriosa francia Nueva villa duarte 40202582964212540Socorro Sanchez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:45:11', 'M', 'Cristian de Jesus checo402000536182007-07-21calle 2 los mameyes puerca brava 4020258494307327fe y alegria ', 'Cristian de JesusCheco Henriguez402000536182007-07-21calle 2 los mameyes puerca brava 40202584943073270fe y alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:49:17', 'M', 'Darlin Eslin Aquino Hilario402015344262008-08-08C/ U2 respaldo h #15 / los tres brazos 20Activo (829) 316-4883Ramón Emilio Jiménez ', 'Darlin EslinAquino Hilario402015344262008-08-21C/ U2 respaldo h #15 / los tres brazos 20Activo 829316488363230190Ramón Emilio Jiménez ', 'JUGADORES');
INSERT INTO `histori_log` (`usuario`, `fecha`, `accion`, `regant`, `regnew`, `modulo`) VALUES
('apuntaladenito', '2025-10-10 02:52:31', 'M', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 8494384001Pedro mir', 'DarwinDe la Cruz Ferreras402015548872009-02-20C/27D los mina7Activo 849438400163435300Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:54:12', 'M', 'Darwin Manuel Hernandez  Santana 401000824332007-11-05Almirante 2da etapa31Activos 8498782775Los estudiantes ', 'Darwin ManuelHernandez  Santana401000824332007-12-05Almirante 2da etapa31Activos 84987827750Los estudiantes ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:57:04', 'M', 'Daunil augustoCabrera Batista 402000643262008-01-16Calle 42 r2  #737Activo 8492642218San Vicente de Paúl ', 'Daonil AugustoCabrera Batista 402000643262008-01-16Calle 42 r2  #737Activo 84926422180San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 02:58:15', 'M', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO8094036512colegio Sagrario Elcilia Diaz', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO80940365120colegio Sagrario Elcilia Diaz', 'JUGADORES'),
('loscaribes', '2025-10-10 03:00:25', 'M', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO8094036512colegio Sagrario Elcilia Diaz', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO80940365120colegio Sagrario Elcilia Diaz', 'JUGADORES'),
('loscaribes', '2025-10-10 03:01:15', 'M', 'HamsellMarte santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8293771831Ramona neris Sosa', 'HamsellMarte santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO82937718310Ramona neris Sosa', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:01:49', 'M', 'Randy AndersonMartinez402143593392005-09-01calle ramon duarte, barrio brisar de los palmares37ACTIVO8292540090colegio nuevo milenio', 'Randy AndersonRosario Martinez402143593392005-06-01calle ramon duarte, barrio brisar de los palmares37ACTIVO82925400900colegio nuevo milenio', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:03:25', 'M', 'Dauryn alejandro Sierras guzmán 402011495602007-06-23Almirante los solares  431Activos 8298556787Trinade moya', 'Dauryn AlejandroSierra Guzmán402011495602007-06-23Almirante los solares  431Activos 82985567870Trinade moya', 'JUGADORES'),
('loscaribes', '2025-10-10 03:03:25', 'M', 'keytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO8299916159centro educativo sicopedalogico de la rosa el milloncito', 'keytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO82999161590centro educativo sicopedalogico de la rosa el milloncito', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:04:34', 'M', 'David Alexander Noboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Activo+1 (809) 851-0087Fabio Amable Mota ', 'David AlexanderNoboa Abreu402028278262008-03-25C/ 21-I #30/Los mina 20Activo+1 (809) 851-008767320580Fabio Amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:05:45', 'M', 'Dayron Perez Medina 402015201862008-01-17Malecóncito respaldo 3 #2220Activo(849) 851-3849Pedro Mir ', 'DayronPerez Medina402015201862008-01-17Malecóncito respaldo 3 #2220Activo(849) 851-384970328170Pedro Mir ', 'JUGADORES'),
('loscaribes', '2025-10-10 03:06:32', 'M', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8096662306Colegio Mi Pequeño Hogar', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('loscaribes', '2025-10-10 03:07:34', 'M', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO8295221263Emma balaguer', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO82952212630Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:11:18', 'M', 'AntonioCruz402765432102014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO8099764321Colegio Prueba', 'AntonioCruz402765432102014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO809976432176543210Colegio Prueba', 'JUGADORES'),
('clubprueba', '2025-10-10 03:11:32', 'M', 'AntonioCruz402765432102014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO8099764321Colegio Prueba', 'AntonioCruz402765432102014-01-01Calle 1ra Casa #1 , Las Pruebas46ACTIVO809976432176543210Colegio Prueba', 'JUGADORES'),
('loscaribes', '2025-10-10 03:13:58', 'A', '', 'Angel DavidPeña Perez402467827062005-11-29calle cesar agusto sandino #28 barrio enrriquillo37ACTIVO82977012290colegio nuevo milenio', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:14:46', 'M', 'Derek MiguelCabrera Del Orbe402330161182008-01-31calle alonzo perez peaton 19 apt 214 2b31ACTIVO8207706461Centro Educativo Juan Jose Duarte', 'Derek MiguelCabrera Del Orbe402330161182008-01-31calle alonzo perez peaton 19 apt 214 2b31ACTIVO82077064610Centro Educativo Juan Jose Duarte', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:16:48', 'M', 'DiomarJimenez vidal402081290642008-11-02Calle Miguel día m 2 e 8 ap 2b el almirante 31Activos 8097579290Los estudiantes ', 'DiomarJimenez Vidal402081290642008-08-29Calle Miguel día m 2 e 8 ap 2b el almirante 31Activos 80975792900Los estudiantes ', 'JUGADORES'),
('loscaribes', '2025-10-10 03:19:52', 'M', 'HamsellMarte santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8293771831Ramona neris Sosa', 'HamsellMarte santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO82937718310Ramona neris Sosa', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:30:47', 'M', 'EDISON Miguel Bencosme Hernández 402308586862009-02-24Calle 21 D 7Activo 8292769308San Vicente de Paúl ', 'Edison MiguelBencosme Hernández402308586862009-02-24Calle 21 D 7Activo 82927693080San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:33:58', 'M', 'Elian ezequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 8299908586San Vicente de Paúl ', 'Elian EzequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 82999085860San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:35:08', 'M', 'Erick JosePolanco Robles 402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Activo(849) 573‑1725‬Colombina Canario ', 'Erick JosePolanco Robles402143789412006-10-17C/ francisco Javier de los castillos # 24/ Los mina 20Activo8495731725‬37612070Colombina Canario ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:35:28', 'M', 'Elian EzequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 8299908586San Vicente de Paúl ', 'Elian EzequielQuezada402037875732008-06-27Katanga c/5.2 los mina7Activo 82999085860San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:36:43', 'M', 'Francis Boya Gomez00RD92291502007-12-13C/ 4 de agosto Respaldo e #3320Activo  (849) 273-8681Pedro Mir ', 'FrancisBoya Gomez00RD92291502007-12-13C/ 4 de agosto Respaldo e #3320Activo  849273868166440840Pedro Mir ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:37:38', 'M', 'Graiverson Alberto Reyes Ruiz402330881662005-12-12Almirante 2da etapa31Activos 8294109999Escuela jose Francisco peña gomez prepara', 'Graiverson AlbertoReyes Ruiz402330881662005-12-12Almirante 2da etapa31Activos 82941099990Escuela jose Francisco peña gomez prepara', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:41:40', 'M', 'HamsellMarte santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8293771831Ramona neris Sosa', 'HamsellMarte Santos402015081492007-08-15Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO82937718310Ramona neris Sosa', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:46:18', 'M', 'Jan  Carlos Lara leazar402095097772008-12-05Calle Pedro francisco bono Mejía #237Activo 8095128216San Vicente de Paúl (prepara)', 'JanCarlosLara Leazar402095097772008-12-05Calle Pedro francisco bono Mejía #237Activo 80951282160San Vicente de Paúl (prepara)', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:46:30', 'M', 'JanCarlosLara Leazar402095097772008-12-05Calle Pedro francisco bono Mejía #237Activo 8095128216San Vicente de Paúl (prepara)', 'JancarlosLara Leazar402095097772008-12-05Calle Pedro francisco bono Mejía #237Activo 80951282160San Vicente de Paúl (prepara)', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:47:50', 'M', 'JEAN PAULMERCEDES MATEO402009391852009-09-27LAS CAOBAS MANZANA 43 NÚMERO 22C25ACTIVO8495262619LICEO ELSA MOJICA', 'Jean PaulMercedes Mateo402009391852009-09-27LAS CAOBAS MANZANA 43 NÚMERO 22C25ACTIVO849526261968898380LICEO ELSA MOJICA', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:48:52', 'M', 'JeannielGarcia402055450942008-07-28antonio guzman 1  230ACTIVO8498817121escuela republica de corea', 'JeannielGarcia402055450942008-07-28antonio guzman 1  230ACTIVO84988171210escuela republica de corea', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:49:28', 'M', 'Jeorge Stewar De los Santos Soriano402143891462006-08-07Pedro Benoet #3920Activo(849) 409-1479Ramon Emilio Jiménez ', 'Jeorge StewarDe los Santos Soriano402143891462006-08-07Pedro Benoet #3920Activo(849) 409-147954380310Ramon Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:50:09', 'M', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8096662306Colegio Mi Pequeño Hogar', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:50:43', 'M', 'Jeurin JeraldoDe la Rosa Abreu4021357791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO8096662306Colegio Mi Pequeño Hogar', 'Jeurin JeraldoDe la Rosa Abreu402135791192006-10-06Calle 3ra Casa #5 , Los Palmares Sabana Perdida37ACTIVO80966623060Colegio Mi Pequeño Hogar', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:51:44', 'M', 'Johanssel Ramirez 402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Activo (829) 487-2447Ramón Emilio Jiménez ', 'Johansel Ramirez402036880942008-02-01Repaso rosa Duarte #22 / Los mina viejo20Activo (829) 487-244765579670Ramón Emilio Jiménez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:52:34', 'M', 'JORDANY GABRIELMARTÍNEZ SALCEDO402000668682008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO8093219589COLEGIO LAS MERCEDES', 'Jordany GabrielMartinez Salcedo402000668682008-01-26MANOGUAYABO CALLE ANGEL MARÍA PÉREZ25ACTIVO809321958963695010COLEGIO LAS MERCEDES', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:53:45', 'M', 'José RafaelFabian Castillo402313165772007-12-24Hipodromo V Centenario38ACTIVO8297054030Instituto tecnologico Simon Orozco', 'José RafaelFabian Castillo402313165772007-12-24Hipodromo V Centenario38ACTIVO82970540300Instituto tecnologico Simon Orozco', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:54:46', 'M', 'jostin Eduardo Rodriguez brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 4020258497107864Socorro Sanchez ', 'Jostin Eduardo Rodriguez Brea 402190130892007-09-20calle los pinos villa duarte la francia Nueva 40202584971078640Socorro Sanchez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:55:49', 'M', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Activo(829) 492-6449Fabio Amable Mota ', 'Juan AlbertoSánchez Polanco402158824462009-10-27C/Horacio Ortiz Álvarez #20 / Los mina viejo20Activo(829) 492-644970406430Fabio Amable Mota ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:56:43', 'M', 'Juan Manuel Dominguez Cleto402313854402005-02-22Respaldo trina de Moya # 06/ Los mina20Activo(829) 524‑0456‬San Vicente de Paúl ', 'Juan ManuelDominguez Cleto402313854402005-02-22Respaldo trina de Moya # 06/ Los mina20Activo(829) 524‑0456‬55291640San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 03:58:43', 'M', 'Justin Jadiel Alonzo sanchez 402120483892008-02-06Fray Bartolome De Las Casas 11jugador 8299143478no esta estudiando ', 'Justin JadielAlonzo Sanchez 402120483892008-02-06Fray Bartolome De Las Casas 11jugador 8299143478402-1204838-90no esta estudiando ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:00:37', 'M', 'Justin JadielAlonzo Sanchez 402120483892008-02-06Fray Bartolome De Las Casas 11jugador 8299143478no esta estudiando ', 'Justin JadielAlonzo Sanchez 402120483892008-02-06Fray Bartolome De Las Casas 11jugador 82991434780N/A', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:01:45', 'M', 'Justin MiguelPerez Ozoria402430751792005-03-02Calle 1ra edificio 22 Ramon Matias Mellas41ACTIVO8497546522Escuela San Francisco', 'Justin MiguelPerez Ozoria402430751792005-03-02Calle 1ra edificio 22 Ramon Matias Mellas41ACTIVO84975465220Escuela San Francisco', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:02:30', 'M', 'keytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO8299916159centro educativo sicopedalogico de la rosa el milloncito', 'KeytherFerreras402090314712007-08-18calle Cesar agusto barrio enrriquillo37ACTIVO82999161590centro educativo sicopedalogico de la rosa el milloncito', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:02:57', 'M', 'LEANDRO ENRIQUEGÓMEZ CANO402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO8294614353JOSÉ BORDAS VALDEZ', 'Leandro EnriguezGomez Cano402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO829461435352293570JOSÉ BORDAS VALDEZ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:03:44', 'M', 'Leandro EnriguezGomez Cano402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO8294614353JOSÉ BORDAS VALDEZ', 'Leandro EnrigueGomez Cano402292705542006-02-12LAS CAOBAS MANZANA 24 NÚMERO 10A25ACTIVO829461435352293570JOSÉ BORDAS VALDEZ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:07:30', 'M', 'Leandro joseOzuna 402018065242010-07-01C/21D7Activo 8294896547Pedro mir', 'Leandro JoseOzuna 402018065242010-07-01C/21D7Activo 829489654766033530Pedro mir', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:11:24', 'M', 'lenin yoshuacaba Garcia 4023049100172008-03-31calle D francia Nueva la francia Nueva 4020258295687225Socorro Sanchez ', 'Lenin YoshuaCaba Garcia 402304910172008-03-31calle D francia Nueva la francia Nueva 40202582956872250Socorro Sanchez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:13:45', 'M', 'Marlon santiago Pinales frías 4020196685892008-09-28Calle 8 esquina Chepita Pérez de La Paz 7Activo 8093615839San Vicente de Paúl ', 'Marlon SantiagoPinales Frías402019685892008-09-28Calle 8 esquina Chepita Pérez de La Paz 7Activo 80936158390San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:16:40', 'M', 'Melvin Ricardo Amezquita Muñoz 402302035942007-08-02los frailes II 11jugador 8492532971universidad Odntologica Dominicana ', 'Melvin RicardoAmezquita Muñoz402302035942007-08-02los frailes II 11jugador 8492532971402-3020359-40universidad Odntologica Dominicana ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:17:59', 'M', 'raymond adrielPerez moreno402156862012006-08-17Santo Domingo las caobas 4020258498802678escuela la Cervantes ', 'Raymond AdrielPerez Moreno402156862012006-08-17Santo Domingo las caobas 40202584988026780escuela la Cervantes ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:19:21', 'M', 'Raymond Alberto García moya00Rd6881635 2007-04-10Katanga los mina7Activo  (829) 854-1510San Vicente de Paúl ', 'Raymond AlbertoGarcía Moya00RD6881635 2007-04-10Katanga los mina7Activo  82985415100San Vicente de Paúl ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:20:19', 'M', 'Roberto Angel Miniel sachez402000376952007-09-19Brisa del edén 431Activos 8096547543Liceo profesor simón orozco', 'Roberto AngelMiniel Sanchez402000376952007-09-19Brisa del edén 431Activos 80965475430Liceo profesor simón orozco', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:21:15', 'M', 'Robinson AngelMañon Florian402010109482007-11-10Calle la Hipica Residencial Las Cayenas38ACTIVO8297167729Escuela Nuestra Señora del perpetuo socorro', 'Robinson AngelMañon Florian402010109482007-11-19Calle la Hipica Residencial Las Cayenas38ACTIVO82971677290Escuela Nuestra Señora del perpetuo socorro', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:23:02', 'M', 'Ronal eduardoGarcias de la cruz 402382226532006-06-07Los prados de San luis31Activos 8293306675Escuela celeste argentina bertre meló ', 'Ronal EduardoGarcias De La Cruz 402382226532006-06-07Los prados de San luis31Activos 82933066750Escuela celeste argentina bertre meló ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:24:26', 'M', 'Royce enmanuelOzuna cleto402183611252005-12-25Calle moisés #297Activo  (809) 415-3325Colegio La Probidad', 'Royce EnmanuelOzuna Cleto402183611252005-12-25Calle moisés #297ACTIVO 80941533250Colegio La Probidad', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:27:24', 'M', 'Samuel Isaac Vil Martinez 402301786302006-06-05los frailes II 11jugador 809000000la inmaculadad Fe y Alegria ', 'Samuel IsaacVil Martinez402301786302006-06-05los frailes II 11ACTIVO 8090000000la inmaculadad Fe y Alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:28:54', 'M', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Activo(809) 942-3730Prof. Isabel Segura de Apatano', 'Tairisis JhonLaureano Sanchez402134182682005-11-06C/ Las mercedes #44/ Los minas 20Activo809942373055231230Prof. Isabel Segura de Apatano', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:30:40', 'M', 'Vargens romeoRomeo Berius 00R113038072007-08-24los frailes II 11jugador 8099445613Republica de Fillo ', 'Vargens romeoRomeo Berius 00R113038072007-08-24los frailes II 11jugador 8099445613R113038070Republica de Fillo ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:35:52', 'M', 'Vargens romeoRomeo Berius 00R113038072007-08-24los frailes II 11jugador 8099445613Republica de Fillo ', 'Vargens RomeoBerius0R113038072007-08-24los frailes II 11ACTIVO80994456130Republica de Fillo ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:36:32', 'M', 'Victor Luis Puente Guzmán 402128150682006-01-01Almirante 2da etapa31Activos 8298523405Trina de moya', 'Victor Luis Puente Guzmán 402128150682006-01-01Almirante 2da etapa31Activos 82985234050Trina de moya', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:38:46', 'M', 'Yadiel Tejeda Rosario 402015426682008-10-28Calle 14 Losmina sur #24 7Activo 8293748140Juan bautista zafra (prepara ) ', 'Yadiel Tejeda Rosario 402015426682008-10-28Calle 14 Losmina sur #24 7Activo 82937481400Juan bautista zafra (prepara ) ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 04:39:04', 'M', 'Yadiel Tejeda Rosario 402015426682008-10-28Calle 14 Losmina sur #24 7Activo 8293748140Juan bautista zafra (prepara ) ', 'YadielTejeda Rosario402015426682008-10-28Calle 14 Losmina sur #24 7ACTIVO82937481400Juan bautista zafra (prepara ) ', 'JUGADORES'),
('loscaribes', '2025-10-10 04:59:57', 'A', '', 'Luis AlfredoDiaz Henriquez402143994262007-09-30Barrio Libertad sabana perdida 37Activo8298899781402143994260Escuela óptica pelaez', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:23:17', 'M', 'Jose DavidMorel Selmo402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO8293189278sabana japon', 'Jose DavidMorel Selmo402063698172006-02-01calle canabo #9 villa blanca sabana perdida37ACTIVO82931892780sabana japon', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:27:14', 'M', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO8094036512colegio Sagrario Elcilia Diaz', 'Adonis MisaelPerez Rosario402061789372009-01-03calle simon bolivar #20 barrio liberta sabana perdida37ACTIVO80940365120colegio Sagrario Elcilia Diaz', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:27:52', 'M', 'Angel DavidPeña Perez402467827062005-11-29calle cesar agusto sandino #28 barrio enrriquillo37ACTIVO8297701229colegio nuevo milenio', 'Angel DavidPeña Perez402467827062005-11-29calle cesar agusto sandino #28 barrio enrriquillo37ACTIVO82977012290colegio nuevo milenio', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:29:51', 'M', 'Luis AlfredoDiaz Henriquez402143994262007-09-30Barrio Libertad sabana perdida 37Activo8298899781Escuela óptica pelaez', 'Luis AlfredoDiaz Henriquez402143994262007-09-30Barrio Libertad sabana perdida 37Activo8298899781402143994260Escuela óptica pelaez', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:31:19', 'M', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO8295221263Emma balaguer', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO82952212630Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:36:18', 'M', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO8295221263Emma balaguer', 'Carlos ManuelDuval Santana402150986962006-10-20calle 18 peaton D8, lotes y servicio37ACTIVO82952212630Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-10 05:51:19', 'M', 'Carlos ManuelDuval Santana402150986962006-10-20calle 18 peaton D8, lotes y servicio37ACTIVO8295221263Emma balaguer', 'Carlos ManuelDuval Santana402150986962006-10-20calle 18 peaton D8, lotes y servicio37ACTIVO82952212630Emma balaguer', 'JUGADORES'),
('francianueva', '2025-10-10 06:00:54', 'A', '', 'LEURIS DAVID LA HOZ 402465650282007-03-31CALLE H VILLA DUARTE LA FRANCIA NUEVA 4020259098788880Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 06:05:00', 'M', 'LEURIS DAVID LA HOZ 402465650282007-03-31CALLE H VILLA DUARTE LA FRANCIA NUEVA 402025909878888Socorro Sanchez ', 'LEURIS DAVID LA HOZ 402465650282007-03-31CALLE H VILLA DUARTE LA FRANCIA NUEVA 4020259098788880Socorro Sanchez ', 'JUGADORES'),
('francianueva', '2025-10-10 06:13:37', 'A', '', 'ALEX GARCIA MEDINA 402024103912005-03-05CALLE 25 de febrero villa duarte 40202584957335630Socorro Sanchez ', 'JUGADORES'),
('loscaribes', '2025-10-10 06:29:30', 'A', '', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo80996986524022331347700Emma Balaguer ', 'JUGADORES'),
('loscaribes', '2025-10-10 06:58:43', 'M', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo8099698652Emma Balaguer ', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo80996986524022331347700Emma Balaguer ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 07:02:48', 'M', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo8099698652Emma Balaguer ', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo80996986524022331347700Emma Balaguer ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 07:03:30', 'M', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo8099698652Emma Balaguer ', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo80996986524022331347700Emma Balaguer ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 07:03:42', 'M', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo8099698652Emma Balaguer ', 'David LizandroRodríguez Ortiz402331347702009-10-27Calle Simón bolívar # 10 Barrio Libertad 37Activo80996986520Emma Balaguer ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 07:14:09', 'A', '', 'NaNtodas21966masculino/femeninoRoger Mercedes8097988854Roberto Ferreira8097471098Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-10 07:52:08', 'M', 'Albert Alberto Perez Garcia 4022911895312005-10-30respardo los 3 ojos isabelita 4020258494276586colegio isabelita ', 'Albert Alberto Perez Garcia 4022911895312005-10-30respardo los 3 ojos isabelita 40202584942765860colegio isabelita ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 08:16:17', 'M', 'Albert Alberto Perez Garcia 4022911895312005-10-30respardo los 3 ojos isabelita 4020258494276586colegio isabelita ', 'Albert Alberto Perez Garcia 40229189532005-10-30respardo los 3 ojos isabelita 40202584942765860colegio isabelita ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 08:22:19', 'M', 'ALEX GARCIA MEDINA 402024103912005-03-05CALLE 25 de febrero villa duarte 4020258495733563Socorro Sanchez ', 'AlexGarcia Medina402024103912005-03-05CALLE 25 de febrero villa duarte 40202584957335630Socorro Sanchez ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 08:22:36', 'M', 'Albert Alberto Perez Garcia 40229189532005-10-30respardo los 3 ojos isabelita 4020258494276586colegio isabelita ', 'Albert Alberto Perez Garcia 402291895312005-10-30respardo los 3 ojos isabelita 40202584942765860colegio isabelita ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 08:23:43', 'M', 'Carlos ManuelDuval Santana402150986962006-10-20calle 18 peaton D8, lotes y servicio37ACTIVO8295221263Emma balaguer', 'Carlos ManuelDuval Santana402150986962005-10-20calle 18 peaton D8, lotes y servicio37ACTIVO82952212630Emma balaguer', 'JUGADORES'),
('apuntaladenito', '2025-10-10 08:24:51', 'M', 'HarlenRamirez Grullon4021009-53092006-02-09Calle jose soriano #14, Villa Faro18ACTIVO8093133608Liceo Juan Pablo Duarte', 'HarlenRamirez Grullon402100953092006-02-09Calle jose soriano #14, Villa Faro18ACTIVO80931336080Liceo Juan Pablo Duarte', 'JUGADORES'),
('apuntaladenito', '2025-10-10 08:26:34', 'M', 'Vargens RomeoBerius0R113038072007-08-24los frailes II 11ACTIVO8099445613Republica de Fillo ', 'Vargens RomeoBerius00R113038072007-08-24los frailes II 11ACTIVO80994456130Republica de Fillo ', 'JUGADORES'),
('clublabrador', '2025-10-10 09:37:33', 'M', 'Willy JoelTerrero Montero402133658162006-08-17Av.Hipodromo, Residencial Paseo Del Este ll34Santo Domingo Este829-335-8737Liceo Juan Ruperto Polanco', 'Willy JoelTerrero Montero402133658162006-08-17Av.Hipodromo, Residencial Paseo Del Este ll34Santo Domingo Este829-335-87370Liceo Juan Ruperto Polanco', 'JUGADORES'),
('clublabrador', '2025-10-10 09:40:54', 'M', 'Willy JoelTerrero Montero402133658162006-08-17Av.Hipodromo, Residencial Paseo Del Este ll34Santo Domingo Este829-335-8737Liceo Juan Ruperto Polanco', 'Willy JoelTerrero Montero402133658162006-08-17Av.Hipodromo, Residencial Paseo Del Este ll34Santo Domingo Este829-335-873758664700Liceo Juan Ruperto Polanco', 'JUGADORES'),
('francianueva', '2025-10-10 11:42:07', 'A', '', 'Elvis junior Antonio polanco 403148355362007-06-12los 3 ojos isabelita 40202580967221450isabelita ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:45:57', 'M', 'Erick Srnaldo Miliano Polanco 402302339972005-10-04Los tres brazos 31Activos 8094098197Instituto politécnico ave maría ', 'Erick Arnaldo Miliano Polanco 402302339972005-10-04Los tres brazos 31Activos 80940981970Instituto politécnico ave maría ', 'JUGADORES'),
('apuntaladenito', '2025-10-10 11:46:35', 'M', 'Erick Arnaldo Miliano Polanco 402302339972005-10-04Los tres brazos 31Activos 8094098197Instituto politécnico ave maría ', 'Erick Arnaldo Miliano Polanco 402302339972005-10-04Los tres brazos 31Activos 80940981970Instituto politécnico ave maría ', 'JUGADORES'),
('francianueva', '2025-10-11 12:03:04', 'A', '', 'janssel troncoso Mercedes 402187578432005-09-13calle primera los mameyes 40202584942765860fe y alegria ', 'JUGADORES'),
('avanzadajuvenil', '2025-10-11 12:12:22', 'M', 'George SmillVargas Jimenez402-1356146-32007-07-02Los girasoles 2do Calle norte22Estudiante829-816-4445Politécnico hermanas Mirabal', 'George SmillVargas Jimenez402-1356146-32007-07-02Los girasoles 2do Calle norte22Estudiante829-816-44450Politécnico hermanas Mirabal', 'JUGADORES'),
('avanzadajuvenil', '2025-10-11 12:16:34', 'A', '', 'JohanselBeriguete Mora402-4089361-62006-06-15Calle Libertad #3, La Venta22Estudiante849-642-36410Colegio Libertad', 'JUGADORES'),
('apuntaladenito', '2025-10-11 12:35:23', 'M', 'George SmillVargas Jimenez402-1356146-32007-07-02Los girasoles 2do Calle norte22Estudiante829-816-4445Politécnico hermanas Mirabal', 'George SmillVargas Jimenez402135614632007-07-02Los girasoles 2do Calle norte22ACTICO82981644450Politécnico hermanas Mirabal', 'JUGADORES'),
('apuntaladenito', '2025-10-11 12:36:38', 'M', 'JohanselBeriguete Mora402-4089361-62006-06-15Calle Libertad #3, La Venta22Estudiante849-642-3641Colegio Libertad', 'JohanselBeriguete Mora402408936162006-06-15Calle Libertad #3, La Venta22ACTIVO849-642-36410Colegio Libertad', 'JUGADORES'),
('apuntaladenito', '2025-10-11 01:01:54', 'M', 'janssel troncoso Mercedes 402187578432005-09-13calle primera los mameyes 4020258494276586fe y alegria ', 'Janssel Troncoso Mercedes 402187578432005-09-13calle primera los mameyes 40202584942765860fe y alegria ', 'JUGADORES'),
('apuntaladenito', '2025-10-11 01:54:39', 'M', 'Byron AlgenysPaulino Alcantara402-0812996-52009-02-04Prolongación 27, colinas 3 herrera22ACTIVO829-963-1212Centro educativo cristiano', 'Byron AlgenysPaulino Alcantara402081299652009-01-20Prolongación 27, colinas 3 herrera22ACTIVO829-963-121256205070Centro educativo cristiano', 'JUGADORES'),
('clubinvivienda', '2025-10-11 03:06:15', 'M', 'HernanPichardo90077475592008-08-03Av. Simon Orozco, Invivienda38ACTIVO8298306097Colegio Nuevo Atardecer', 'HernanPichardo402-1243467-02008-08-03Av. Simon Orozco, Invivienda38ACTIVO829830609719-01180Colegio Nuevo Atardecer', 'JUGADORES'),
('clubinvivienda', '2025-10-11 03:07:17', 'M', 'Lian Pichardo73664894902008-08-03Av. Simon Orozco, Invivienda38ACTIVO829-807-3024Colegio Nuevo Atardecer', 'Lian Pichardo402-1290426-82008-08-03Av. Simon Orozco, Invivienda38ACTIVO829-807-302419-01190Colegio Nuevo Atardecer', 'JUGADORES'),
('apuntaladenito', '2025-10-11 03:40:46', 'M', 'Smarlin MiguelPerdomo Javier 402-3294891-52005-02-14Calle 17 km 13 Los Ángeles22ACTIVO829-488-5806Escuela José bordas Valdez', 'Smarlin MiguelPerdomo Javier 402329489152005-02-14Calle 17 km 13 Los Ángeles22ACTIVO82948858060Escuela José bordas Valdez', 'JUGADORES'),
('apuntaladenito', '2025-10-11 04:31:34', 'M', 'NaNtodas21973masculino/femeninoJose Ernesto German C.8298469539Jose Ernesto German C.8298469539Santo Domingo EsteLos Mina', 'NaNtodas21973masculino/femeninoJose Ernesto German C.8298469539Jose Ernesto German C.8298469539Santo Domingo EsteLos Mina', 'EQUIPOS'),
('apuntaladenito', '2025-10-11 04:31:54', 'M', 'NaNtodas12001masculino/femeninoJuan Perez8099876543Juan Perez8099876543Santo Domingo EstePrueba', 'NaNtodass12001masculino/femeninoJuan Perez8099876543Juan Perez8099876543Santo Domingo EstePrueba', 'EQUIPOS'),
('avanzadajuvenil', '2025-10-11 06:21:40', 'A', '', 'Angel LuisLorenzo Reyes402-3299706-02005-11-14Manoguayabo Bellas Colinas22ACTIVO829-929-22390Politécnico las América', 'JUGADORES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(7) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(1000) DEFAULT NULL,
  `identificacion` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(5000) DEFAULT NULL,
  `equipo` int(11) NOT NULL,
  `url_img` varchar(5000) DEFAULT NULL,
  `url_adjunto1` varchar(5000) DEFAULT NULL,
  `estatus` varchar(100) NOT NULL,
  `centro` varchar(1000) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `idescolar` varchar(50) DEFAULT NULL,
  `estado_sistema` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombres`, `apellidos`, `identificacion`, `fecha_nacimiento`, `direccion`, `equipo`, `url_img`, `url_adjunto1`, `estatus`, `centro`, `telefono`, `idescolar`, `estado_sistema`) VALUES
(7, 'Rayan Misael', 'Novas Guzman', '40251084287', '2008-02-14', 'Calle Arezzo num. 69 , Urb. Italia', 16, 'Captura de pantalla 2025-10-03 155244.png', 'PHOTO-2025-10-03-15-50-24.jpg', 'ACTIVO', 'Colegio LAMS School', '8295631218', '', 1),
(8, 'Carlos Andres', 'Ferreras', '40206533099', '2005-02-26', 'calle puerto rico casa 19, alma rosa', 17, 'Captura de pantalla 2025-10-03 162228.png', '1.png', 'ACTIVO', 'Liceo Eugenio Maria de Hostos', '8092191225', '', 1),
(9, 'Jose Antonio ', 'Turbi Pinales', '40213251347', '2007-12-01', 'Residencial Antares 1 c/La Gaviota', 17, 'Captura de pantalla 2025-10-03 163341.png', 'cedula jose antonio,.png', 'activo', 'Francisco Alberto Caamaño Deño', '8295702355', '40213251347', 1),
(10, 'Harlen', 'Ramirez Grullon', '40210095309', '2006-02-09', 'Calle jose soriano #14, Villa Faro', 18, 'WhatsApp Image 2025-10-03 at 4.38.59 PM.jpeg', 'IMG_8917.jpg', 'ACTIVO', 'Liceo Juan Pablo Duarte', '8093133608', '', 1),
(11, 'Daniel', 'Guillen Goodman', '00RD781875', '2006-06-23', 'Calle 29 , Los Mina', 20, 'View recent photos.jpeg.png', 'View recent photos.jpeg (2).png', 'ACTIVO', 'Escuela Juan Bautista Zafra', '8295789510', '5614796', 1),
(12, 'Eduardo Jose', 'Rodriguez Ramirez', '40208122613', '2008-12-18', 'Calle Trinitaria 6 , Residencial Juliana 1', 21, 'IMG_8931.jpg', 'IMG_8929.jpg', 'ACTIVO', 'Colegio Santa Rosa De Lima', '8097757203', '', 1),
(13, 'William Fernando', 'Jorge Correa', '40213464981', '2007-08-21', 'Calle 16 Villa Aura, Eduardo Arturo 12', 22, '1233.jpeg', '1233333.jpeg', 'ACTIVO', 'Colegio Instituto Olimpo Ramon', '8299682292', '', 1),
(14, 'Cesar Andres', 'Paredes Horton', '40200186589', '2009-04-27', 'Calle Angel Martinez , Residencial Don Bolivar', 23, '1233.jpeg', 'c9973050-707e-412c-9789-7b833c181d7e.jpeg', 'ACTIVO', 'Colegio Crossover', '8295378363', '', 1),
(15, 'Franklin William', 'Hernandez Quezada', '40230722148', '2006-05-11', 'calle 1ra 21', 26, 'WhatsApp Image 2025-10-04 at 1.54.58 PM.jpeg', 'WhatsApp Image 2025-10-04 at 1.53.53 PM.jpeg', 'ACTIVO', 'Colegio Crossover', '8295152999', '', 1),
(16, 'Jean Paul', 'Mercedes Mateo', '40200939185', '2009-09-27', 'LAS CAOBAS MANZANA 43 NÚMERO 22C', 25, 'JEAN.png', 'jean.png', 'ACTIVO', 'LICEO ELSA MOJICA', '8495262619', '6889838', 1),
(17, 'Angel Dariel', 'Gomez Familia', '40201463748', '2009-12-30', 'SAN MIGUEL MANOGUAYABO', 25, 'ANGEL_DARIEL.png', 'angel_dariel.png', 'ACTIVO', 'COLEGIO LA ESCALERITA', '8494620330', '6262612', 1),
(18, 'Leandro Enrigue', 'Gomez Cano', '40229270554', '2006-02-12', 'LAS CAOBAS MANZANA 24 NÚMERO 10A', 25, 'LEANDRO.png', 'leandro.png', 'ACTIVO', 'JOSÉ BORDAS VALDEZ', '8294614353', '5229357', 1),
(19, 'Alisson Manuel', 'Mateo Cruz', '40208514108', '2009-01-15', 'LAS CAOBAS', 25, 'ALISSON.png', 'alison.png', 'ACTIVO', 'LICEO ELSA MOJICA', '8298734234', '6514092', 1),
(20, 'JAMELPHY MICHELL', 'PALMER MESA', '00006842262', '2009-05-09', 'PROLONGACIÓN 27 GUAJIMÍA 2', 25, 'JAMELPHY.png', 'JAMELPHY.png', 'ACTIVO', 'LICEO ELSA MOJICA', '8294741118', '6842262', 0),
(21, 'Jordany Gabriel', 'Martinez Salcedo', '40200066868', '2008-01-26', 'MANOGUAYABO CALLE ANGEL MARÍA PÉREZ', 25, 'YORDANY.png', 'yordany.png', 'ACTIVO', 'COLEGIO LAS MERCEDES', '8093219589', '6369501', 1),
(23, 'Algenis Jesus ', 'Cueva Novas ', '40233125133', '2006-05-19', 'calle 24 de abril , las americas km 10 1/2 los frailes II ', 11, 'MPTWgLpjxobIRTxCaptura de pantalla 2025-10-10 a las 10.27.53 a. m..png', 'WhatsApp Image 2025-10-07 at 12.46.59 AM.jpeg', 'jugador ', 'la inmaculadad Fe y Alegria ', '8292047350', '402-3312513-3', 1),
(24, 'Anthony ', 'Almonte Gomez ', '40230133890', '2006-09-07', 'calle 24 de abril , las americas km 10 1/2 los frailes II ', 11, 'i5wEUuFfuDXbQYaCaptura de pantalla 2025-10-10 a las 10.01.11 a. m..png', 'WhatsApp Image 2025-10-06 at 10.54.46 AM.jpeg', 'jugador ', 'la inmaculadad Fe y Alegria ', '8096988902', '', 1),
(25, 'Justin Jadiel', 'Alonzo Sanchez ', '40212048389', '2008-02-06', 'Fray Bartolome De Las Casas ', 11, 'mHLhkVjAH5oCFvkCaptura de pantalla 2025-10-10 a las 12.00.03 p. m..png', 'WhatsApp Image 2025-10-07 at 12.26.37 PM.jpeg', 'jugador ', 'N/A', '8299143478', '', 1),
(26, 'Edisson Sebastian', 'Arias Peralta', '40205135862', '2010-11-07', 'Fernado alberto defillo calle primera respaldo los tres ojos', 29, 'IMG_9012.jpg', 'WhatsApp Image 2025-10-07 at 4.19.38 PM.jpeg', 'ACTIVO', 'Escuela Fernando Alberto Defilló', '8094670018', '71221019', 0),
(28, 'Dilan Antonio', 'Sepulveda Cuevas', '40212670893', '2007-09-25', 'Calle Yolanda Guzman #10 Los Frailes San bartolo', 30, 'WhatsApp Image 2025-10-07 at 5.05.51 PM.jpeg', 'WhatsApp Image 2025-10-07 at 4.58.06 PM.jpeg', 'ACTIVO', 'Centro Educativo del Nivel Secundario Pedro Poveda', '8292733753', '', 1),
(31, 'Jeanniel', 'Garcia', '40205545094', '2008-07-28', 'antonio guzman 1  2', 30, 'pass3.jpeg', 'pass2.jpeg', 'ACTIVO', 'escuela republica de corea', '8498817121', '', 1),
(32, 'Derek Miguel', 'Cabrera Del Orbe', '40233016118', '2008-01-31', 'calle alonzo perez peaton 19 apt 214 2b', 31, '1123.jpeg', 'WhatsApp Image 2025-10-07 at 5.35.27 PM.jpeg', 'ACTIVO', 'Centro Educativo Juan Jose Duarte', '8207706461', '', 1),
(33, 'Darwin Manuel', 'Hernandez  Santana', '40100082433', '2007-12-05', 'Almirante 2da etapa', 31, 'IMG-20251007-WA0187.jpg', 'IMG-20251007-WA0189.jpeg', 'Activos ', 'Los estudiantes ', '8498782775', '', 1),
(34, 'Elian Ezequiel', 'Quezada', '40203787573', '2008-06-27', 'Katanga c/5.2 los mina', 7, 'IMG_20251007_193900_647.jpg', 'Opg6i9vSuq7NCqJelian.jpeg', 'Activo ', 'San Vicente de Paúl ', '8299908586', '', 1),
(55, 'Ariel Arturo', 'Erazo Sánchez', '40215790219', '2005-05-31', 'C/27D los mina', 7, 'IMG_20251007_195403_077.jpg', 'IMG_20251007_194628_817.jpg', 'Activo ', 'Colegio josefina White', '8296899945', '', 1),
(65, 'Erick Arnaldo ', 'Miliano Polanco ', '40230233997', '2005-10-04', 'Los tres brazos ', 31, 'IMG-20251007-WA0184.jpg', 'IMG-20251003-WA0086.jpg', 'Activos ', 'Instituto politécnico ave maría ', '8094098197', '', 1),
(67, 'Carlos Duanny', 'Cordero ', '40237765827', '2008-07-24', 'Almirante 2da etapa', 31, 'IMG-20251007-WA0219.jpg', 'IMG-20251003-WA0130.jpg', 'Activos ', 'Centro educativo mayaje ', '8495021755', '', 1),
(68, 'Juan Manuel', 'Dominguez Cleto', '40231385440', '2005-02-22', 'Respaldo trina de Moya # 06/ Los mina', 20, '4e5bafbf-500c-4e86-9a16-8e7880157c52.jpeg', '2StZ9iVBDzRsb0qjuanmanuel.jpeg', 'Activo', 'San Vicente de Paúl ', '(829) 524‑0456‬', '5529164', 1),
(72, 'Jeorge Stewar', 'De los Santos Soriano', '40214389146', '2006-08-07', 'Pedro Benoet #39', 20, 'cee3db3f-0d94-4fb2-9383-cd73d0cc27d6.jpeg', 'HzSkKxYAv4zFuVqjeorge.jpeg', 'Activo', 'Ramon Emilio Jiménez ', '(849) 409-1479', '5438031', 1),
(73, 'Erick Jose', 'Polanco Robles', '40214378941', '2006-10-17', 'C/ francisco Javier de los castillos # 24/ Los mina ', 20, 'ba81c3b2-3b54-4188-a0c9-573d486d46f3.jpeg', 'gyhphneeon5Xdsgerickjose.jpeg', 'Activo', 'Colombina Canario ', '8495731725‬', '3761207', 1),
(77, 'Francis', 'Boya Gomez', '00RD9229150', '2007-12-13', 'C/ 4 de agosto Respaldo e #33', 20, '32add62b-1595-4b18-b420-1ddf90e94574.jpeg', '7Mrf2ZCNkazlizvWhatsApp Image 2025-10-08 at 1.47.19 PM.jpeg', 'Activo  ', 'Pedro Mir ', '8492738681', '6644084', 1),
(79, 'Braylin Dariel ', 'Fernandez', '22300894908', '2007-10-16', 'C/ Las mercedes #29/ Vietnam', 20, '17059ddb-4c9c-4152-a19b-24c18bed1a5e.jpeg', 'cMzjVBpXWZp8NQgbraili.jpeg', 'Activo ', 'Pedro Mir ', '0000000000', '5080069', 1),
(82, 'Dauryn Alejandro', 'Sierra Guzmán', '40201149560', '2007-06-23', 'Almirante los solares  4', 31, 'IMG-20251007-WA0149.jpg', 'IMG-20250825-WA0112(1).jpg', 'Activos ', 'Trinade moya', '8298556787', '', 1),
(83, 'Juan Alberto', 'Sánchez Polanco', '40215882446', '2009-10-27', 'C/Horacio Ortiz Álvarez #20 / Los mina viejo', 20, 'IMG_5170.jpeg', '0rDea8VRgTcOUudWhatsApp Image 2025-10-08 at 1.47.22 PM.jpeg', 'Activo', 'Fabio Amable Mota ', '(829) 492-6449', '7040643', 1),
(84, 'Graiverson Alberto', 'Reyes Ruiz', '40233088166', '2005-12-12', 'Almirante 2da etapa', 31, 'IMG-20251007-WA0215.jpg', 'IMG-20250923-WA0015.jpg', 'Activos ', 'Escuela jose Francisco peña gomez prepara', '8294109999', '', 1),
(85, 'Darlin Eslin', 'Aquino Hilario', '40201534426', '2008-08-21', 'C/ U2 respaldo h #15 / los tres brazos ', 20, '1d4b553d-488c-437e-bd59-0305526a5f45.jpeg', '1yy6nIcMzWbovrgdarlin.jpeg', 'Activo ', 'Ramón Emilio Jiménez ', '8293164883', '6323019', 1),
(86, 'Dayron', 'Perez Medina', '40201520186', '2008-01-17', 'Malecóncito respaldo 3 #22', 20, '12e15697-3469-4e48-9e07-7bb3ac02ffeb.jpeg', 'Z0fQn9T84URf0Kyaliacerperez.jpeg', 'Activo', 'Pedro Mir ', '(849) 851-3849', '7032817', 1),
(87, 'Victor Luis ', 'Puente Guzmán ', '40212815068', '2006-01-01', 'Almirante 2da etapa', 31, 'BbTpEpQgCvQhgPECaptura de pantalla 2025-10-10 a las 12.36.19 p. m..png', 'IMG-20250923-WA0031.jpg', 'Activos ', 'Trina de moya', '8298523405', '', 1),
(94, 'Dawin Elian ', 'Rosarios De Los Santos ', '40233059506', '2005-10-06', 'Almirante 2da etapa', 31, 'IMG-20251007-WA0217.jpg', 'IMG-20251003-WA0093.jpg', 'Activos ', 'Colegio profeta Daniel ', '8298710630', '', 1),
(95, 'Tairisis Jhon', 'Laureano Sanchez', '40213418268', '2005-11-06', 'C/ Las mercedes #44/ Los minas ', 20, '01FD8C23-3FD1-42D4-88E8-4A33D9127FDC.jpeg', '4nVubwBzvZBU02GWhatsApp Image 2025-10-08 at 1.47.22 PM (2).jpeg', 'Activo', 'Prof. Isabel Segura de Apatano', '8099423730', '5523123', 1),
(96, 'Diomar', 'Jimenez Vidal', '40208129064', '2008-08-29', 'Calle Miguel día m 2 e 8 ap 2b el almirante ', 31, 'IMG-20251007-WA0212.jpg', 'IMG-20251007-WA0085(1).jpg', 'Activos ', 'Los estudiantes ', '8097579290', '', 1),
(97, 'Angel Osmel', 'Cruz', '40202241481', '2009-11-02', 'Almirante 2da etapa', 31, 'IMG-20241016-WA0123.jpg', 'motion_photo_7250630246439752303.jpg', 'Activos ', 'Trina de moya', '8495018220', '', 1),
(98, 'David Alexander', 'Noboa Abreu', '40202827826', '2008-03-25', 'C/ 21-I #30/Los mina ', 20, '0636e783-eae1-4db4-904c-da4a8a46e0ea.jpeg', 'RvDwR6nci59SIo0davidale.jpeg', 'Activo', 'Fabio Amable Mota ', '+1 (809) 851-0087', '6732058', 1),
(99, 'Johansel ', 'Ramirez', '40203688094', '2008-02-01', 'Repaso rosa Duarte #22 / Los mina viejo', 20, '7011c557-35d9-4638-9e54-296a39df5fa9.jpeg', 'Q6m7HpXv5dCS2lEjohansel.jpeg', 'Activo ', 'Ramón Emilio Jiménez ', '(829) 487-2447', '6557967', 1),
(100, 'Anthony Yandell', 'Luzon Del Orbe ', '40100159678', '2008-11-21', 'Almirante 2da etapa', 31, 'IMG-20251007-WA0227.jpg', 'IMG-20231124-WA0129.jpg', 'Activos ', 'Lili', '8098632606', '', 1),
(106, 'Roberto Angel', 'Miniel Sanchez', '40200037695', '2007-09-19', 'Brisa del edén 4', 31, 'IMG-20251007-WA0172.jpg', 'IMG-20251003-WA0084.jpg', 'Activos ', 'Liceo profesor simón orozco', '8096547543', '', 1),
(112, 'Yadiel Miguel', 'Peña Baez', '40205211945', '2007-07-02', 'Calle 37 #64 katanga', 7, 'Screenshot 2025-10-07 231059.pngFIci351ttN2yTiV', 'WhatsApp Image 2025-10-02 at 10.27.58 PM.jpegBKi4TgQKE4s3J9V', 'ACTIVO', 'Liceo Pedro mir', '8296563926', '', 1),
(113, 'Vargens Romeo', 'Berius', '00R11303807', '2007-08-24', 'los frailes II ', 11, 'tzgXFwmNYHN7p0sCaptura de pantalla 2025-10-10 a las 12.31.06 p. m..png', 'xvEx1spHgnhd6LhWhatsApp Image 2025-10-07 at 1.21.46 PM (1).jpeg', 'ACTIVO', 'Republica de Fillo ', '8099445613', '', 1),
(114, 'Darwin', 'De la Cruz Ferreras', '40201554887', '2009-02-20', 'C/27D los mina', 7, 'nxGr6wTpwzl93k8IMG_20251008_142343_877.jpg', 'xM6sd6pqC3rYU1uIMG_20251008_142413_010.jpg', 'Activo ', 'Pedro mir', '8494384001', '6343530', 1),
(115, 'Marlon Santiago', 'Pinales Frías', '40201968589', '2008-09-28', 'Calle 8 esquina Chepita Pérez de La Paz ', 7, 'IYSEwLWmw6o8caz2f2e5cb5-2b16-4c9d-a294-6fd0c8d10b24.jpeg', 'bHACzkjoitljAmm8d5a9c3e-d204-4589-822f-f37f1acfc085.jpeg', 'Activo ', 'San Vicente de Paúl ', '8093615839', '', 1),
(118, 'Edison Miguel', 'Bencosme Hernández', '40230858686', '2009-02-24', 'Calle 21 D ', 7, 'wEcyvcMTMQy0en3b9e59bce-ce78-4295-8eb9-27b60a56539c.jpeg', 'koWmUIiJbOWyg0s3944062f-8e13-4f59-baf9-e24016f74a0f.jpeg', 'Activo ', 'San Vicente de Paúl ', '8292769308', '', 1),
(119, 'Daonil Augusto', 'Cabrera Batista ', '40200064326', '2008-01-16', 'Calle 42 r2  #73', 7, '1Fxz3BFMDXhyRJBc1c5ab24-74c2-45ff-b444-42776b6d03fd.jpeg', 'qZgaJ6p1X7X8sBw3019a90e-1399-47c2-b5f2-fa3ef3aa7051.jpeg', 'Activo ', 'San Vicente de Paúl ', '8492642218', '', 1),
(123, 'Jancarlos', 'Lara Leazar', '40209509777', '2008-12-05', 'Calle Pedro francisco bono Mejía #23', 7, '3tEDXgfX7HCDkCnimage.jpg', '0aEudBYXpoNdzcH3e3d7a27-60fc-4409-ae95-af9cb65510b1.jpeg', 'Activo ', 'San Vicente de Paúl (prepara)', '8095128216', '', 1),
(133, 'Ronal Eduardo', 'Garcias De La Cruz ', '40238222653', '2006-06-07', 'Los prados de San luis', 31, 'vjetwF1cX5RgzuvIMG-20251008-WA0062.jpg', '3VoAMypbxLBkGANIMG-20251004-WA0241.jpg', 'Activos ', 'Escuela celeste argentina bertre meló ', '8293306675', '', 1),
(134, 'Jeurin Jeraldo', 'De la Rosa Abreu', '40213579119', '2006-10-06', 'Calle 3ra Casa #5 , Los Palmares Sabana Perdida', 37, 'HMjnBtYTYHvS3KByeo.jpeg', 'Q6FUz93ScIprejTmoreno1a.jpg', 'ACTIVO', 'Colegio Mi Pequeño Hogar', '8096662306', '', 1),
(135, 'Angel Manuel ', 'Zapata Bautista ', '40209672159', '2005-08-21', 'los frailes II ', 11, 'XQzw60Zhu2vXKYRCaptura de pantalla 2025-10-10 a las 7.47.12 a. m..png', 'iKuF7pWPiJdhykmWhatsApp Image 2025-10-08 at 4.26.42 PM.jpeg', 'ACTIVO', 'la inmaculadad Fe y Alegria ', '809000000', '', 1),
(136, 'Samuel Isaac', 'Vil Martinez', '40230178630', '2006-06-05', 'los frailes II ', 11, 'VUmfi8iv2iNuqaQCaptura de pantalla 2025-10-10 a las 12.27.12 p. m..png', 'wUIH5BEO97mDY13WhatsApp Image 2025-10-08 at 4.29.53 PM.jpeg', 'ACTIVO ', 'la inmaculadad Fe y Alegria ', '809000000', '', 1),
(137, 'Adan', 'Gonzalez Rondon', '40230484921', '2006-03-20', 'Autopista Duarte Km18 Pablo Mella Bizono 202', 37, 'a1lZ7b6pYVMyX26IMG_9060.jpg', 'BTl85OSM6lFyJ8LIMG_9059 (2).jpg', 'ACTIVO', 'Liceo Gregorio Luperon', '8098025864', '', 1),
(138, 'Melvin Ricardo', 'Amezquita Muñoz', '40230203594', '2007-08-02', 'los frailes II ', 11, 'sggTHqBatMmssmhCaptura de pantalla 2025-10-10 a las 12.15.43 p. m..png', 'k3TvdKJm7rLZOFSWhatsApp Image 2025-10-08 at 5.10.59 PM.jpeg', 'jugador ', 'universidad Odntologica Dominicana ', '8492532971', '402-3020359-4', 1),
(139, 'Carlos Manuel', 'Duval Santana', '40215098696', '2005-10-20', 'calle 18 peaton D8, lotes y servicio', 37, 'icGHbaZ7eDH9EDbchoco2).jpeg', '1HYQDQ0HXVhl5a6Captura de pantalla 2025-10-10 a las 1.50.09 p. m..png', 'ACTIVO', 'Emma balaguer', '8295221263', '', 1),
(140, 'Ansfermin Yandel', 'Juan Alcantara', '40229430471', '2005-01-09', 'Lotes y Servicios', 37, 'UAr1ytaYjCOG9mAIMG_9067.jpg', 'BdXM5nQ8wdaXHUkIMG_9061.jpg', 'ACTIVO', 'Emma Balaguer', '8295221263', '', 1),
(141, 'Darlin David', 'Almanza Ventura', '40205212158', '2007-01-24', 'calle 15 casa #15 Barrio el progreso', 37, '4F6BBipx9iY8CYodar2.jpeg', 'uCgZptgmUTUSEukdar1.jpeg', 'ACTIVO', 'Emma balaguer', '8098907892', '', 1),
(142, 'Joshua David', 'Ramirez Gutierrez', '40200013645', '2007-05-14', 'calle 30 #6 el progreso sabana perdida', 37, 'WbXKbJn0vbwaQ0Gjos2.jpeg', 'dbUcmSDxrnu9OZ9jos1.jpeg', 'ACTIVO', 'liceo canada', '8099587324', '', 1),
(144, 'Randy Anderson', 'Rosario Martinez', '40214359339', '2005-06-01', 'calle ramon duarte, barrio brisar de los palmares', 37, 'JYBTlrSD0sVphVgCaptura de pantalla 2025-10-10 a las 11.00.35 a. m..png', '19oVuLNC015E2mKrandy1.jpeg', 'ACTIVO', 'colegio nuevo milenio', '8292540090', '', 1),
(145, 'Washlin José ', 'Ramirez De Los Santos', '40234962617', '2007-08-31', 'C/ framboyan #9 Charles de Gaulle', 38, 'tHP0inVMzLxGnAFIMG_1696.jpeg', 'Y2AQAZ30zBL2zqcView recent photos.jpeg.png', 'ACTIVO', 'Escuela Maria Trinidad Sanchez', '8298920409', '', 1),
(146, 'Jose David', 'Morel Selmo', '40206369817', '2006-02-01', 'calle canabo #9 villa blanca sabana perdida', 37, 'Z7x4DJCrkRWQEj9Captura de pantalla 2025-10-10 a las 1.22.51 p. m..png', '4r6eKY9XGy6JBGaWhatsApp Image 2025-10-09 at 3.01.41 PM.jpeg', 'ACTIVO', 'sabana japon', '8293189278', '', 1),
(147, 'José Rafael', 'Fabian Castillo', '40231316577', '2007-12-24', 'Hipodromo V Centenario', 38, '4YQhidNcr08b32VIMG_20251001_175256.jpg', 'vkShkpYXDoRZdOhCaptura de pantalla 2025-10-10 a las 11.53.06 a. m..png', 'ACTIVO', 'Instituto tecnologico Simon Orozco', '8297054030', '', 1),
(148, 'Adonis Misael', 'Perez Rosario', '40206178937', '2009-01-03', 'calle simon bolivar #20 barrio liberta sabana perdida', 37, '3xqcNs7Z6hG8qnzadoni.jpeg', 'dqb5PNwQcZE8wQOWhatsApp Image 2025-10-09 at 3.09.27 PM.jpeg', 'ACTIVO', 'colegio Sagrario Elcilia Diaz', '8094036512', '', 1),
(149, 'Robinson Angel', 'Mañon Florian', '40201010948', '2007-11-19', 'Calle la Hipica Residencial Las Cayenas', 38, 'xgXISxeHeuvfeeeIMG-20251009-WA0004.jpg', 'jgfrMT4nlvNKgUUdeni2.jpeg', 'ACTIVO', 'Escuela Nuestra Señora del perpetuo socorro', '8297167729', '', 1),
(150, 'Albert Luis', 'Feliz Marquez', '1234567800', '2008-01-08', 'Calle Marcelo Lara invivienda', 38, 'dFbzGmt1Hwu47LLWhatsApp Image 2025-10-08 at 5.56.29 PM.jpeg', 'jfl4wsNGZO3vtdunooo.jpeg', 'ACTIVO', 'Escuela Maria Trinidad Sanchez', '8292736882', '', 0),
(151, 'Luis David', 'Aguasviva Coste', '40218255525', '2006-05-08', 'calle Fauto Maseu # 5 barrio liberta sabana perdida', 37, 'MHnQwzRYUtvcjlSWhatsApp Image 2025-10-09 at 3.12.17 PM.jpeg', 'gfmr63tGyLwpYYjWhatsApp Image 2025-10-09 at 3.11.54 PM.jpeg', 'ACTIVO', 'westscranto high school', '8096732351', '', 1),
(152, 'Keyther', 'Ferreras', '40209031471', '2007-08-18', 'calle Cesar agusto barrio enrriquillo', 37, 'COqVySbT5MqRK9Xkeyther.jpeg', 'A2wYGBZd2bwtZyOWhatsApp Image 2025-10-09 at 3.14.34 PM.jpeg', 'ACTIVO', 'centro educativo sicopedalogico de la rosa el milloncito', '8299916159', '', 1),
(153, 'Hamsell', 'Marte Santos', '40201508149', '2007-08-15', 'Calle 3ra Casa #5 , Los Palmares Sabana Perdida', 37, '1qh1pCL7cuRclyehansel.jpeg', 'g5tZqlfoZ8R2HfUe.jpeg', 'ACTIVO', 'Ramona neris Sosa', '8293771831', '', 1),
(154, 'Abdelsamad Xoah Vandeross ', 'Shephard Nicolas', '40202870743', '2009-06-28', 'los frailes II ', 11, '9ZMpc5xcNfnwpYzWhatsApp Image 2025-10-08 at 5.33.57 PM.jpeg', '0hR5WWU6JXIPNiuWhatsApp Image 2025-07-12 at 8.37.11 PM.jpeg', 'ACTIVO', 'no estudia ', '8097276056', '', 1),
(155, 'Manuel ', 'Carrasco ', '40201086382', '2007-04-13', 'santo domingo este invivienda ', 38, 'z3fA9rUME7qm8RDIMG-20251008-WA0060.jpg', '', 'ACTIVO', 'escuela Lilian portalatin sosa', '8492085003', '', 0),
(156, 'Hernan', 'Pichardo', '402-1243467-0', '2008-08-03', 'Av. Simon Orozco, Invivienda', 38, '', '', 'ACTIVO', 'Colegio Nuevo Atardecer', '8298306097', '19-0118', 0),
(157, 'Lian ', 'Pichardo', '402-1290426-8', '2008-08-03', 'Av. Simon Orozco, Invivienda', 38, '', '', 'ACTIVO', 'Colegio Nuevo Atardecer', '829-807-3024', '19-0119', 0),
(191, 'Yhency ', 'López ', '40200017150', '2007-06-09', 'Central #65 trinitarios segundo ', 38, 'x0n9bhyAwQArkE4IMG_20251008_224647.jpg', '', 'ACTIVO', 'Políticos cristo obrero ', '8287800921', '', 0),
(192, 'Dereek', 'García ', '40212234799', '2008-10-13', 'Sector Almirante, urbanización Ramon Matías mella #10', 38, '', '', 'ACTIVO', 'Liceo técnico Manuel del Cabral fe y alegría ', '8296543316', '', 0),
(193, 'Yadiel', 'Tejeda Rosario', '40201542668', '2008-10-28', 'Calle 14 Losmina sur #24 ', 7, '2E1m4IDLjGNaArSb7fbbbe2-7d23-4293-959a-0c245e17b0ae.jpeg', 'mKgPwIOVfVJLdrR121fe2e5-25cd-4453-98b8-f02e74fd8f0e.jpeg', 'ACTIVO', 'Juan bautista zafra (prepara ) ', '8293748140', '', 1),
(196, 'Anthony', 'Ortiz Báez ', '40231764255', '2008-04-09', 'Calle santa Luisa #54', 7, 'YE5tQlXZfSnINmw611b56ac-8d92-4a05-8f27-fc922d8f73a9.jpeg', '2amnyBdEvN8nc103108C069-2271-44CB-A5BC-D2FC7E5F7F83.jpeg', 'Activo ', 'San Vicente de Paúl ', '8296514774', '6524352', 1),
(197, 'Leandro Jose', 'Ozuna ', '40201806524', '2010-07-01', 'C/21D', 7, 'Bh4s7LmdoRg7YvpIMG_20251007_190940_955.jpg', '5465IPInpBdEPUoIMG_20251009_140108.jpg', 'Activo ', 'Pedro mir', '8294896547', '6603353', 1),
(198, 'Raymond Alberto', 'García Moya', '00RD6881635 ', '2007-04-10', 'Katanga los mina', 7, '3PU8XdwcGwRPl6jIMG_20251009_153615.jpg', 'LeaYvxJcXlHXdmRIMG_20251009_153743.jpg', 'Activo ', 'San Vicente de Paúl ', ' 8298541510', '', 1),
(199, 'Royce Enmanuel', 'Ozuna Cleto', '40218361125', '2005-12-25', 'Calle moisés #29', 7, '2M2gmbkyGtquadDIMG_20251009_154808.jpg', 'ZrqYyBHGkzOBiApIMG_20251009_154716_109.jpg', 'ACTIVO', 'Colegio La Probidad', ' 8094153325', '', 1),
(200, 'Junior Ismael', 'Sanchez Torrez', '40202015590', '2008-02-20', 'Calle 16 . 27 de Febrero', 39, 'Z0U1EgkFl9aAFH2WhatsApp Image 2025-10-09 at 4.36.37 PM.jpeg', '6w6AjnalMmq8uYQWhatsApp Image 2025-10-09 at 4.37.12 PM.jpeg', 'ACTIVO', 'Escuela Sanchez Isabel', '8496271364', '', 1),
(201, 'Justin Miguel', 'Perez Ozoria', '40243075179', '2005-03-02', 'Calle 1ra edificio 22 Ramon Matias Mellas', 41, 'J1phG4qoJqRtiAJWhatsApp Image 2025-10-09 at 5.22.32 PM.jpeg', 'G8p2vtCrd3uFdSK12.jpeg', 'ACTIVO', 'Escuela San Francisco', '8497546522', '', 1),
(202, 'Simey David', 'De Los Santos Abreu', '40218118905', '2005-11-12', 'Calle 7 Ercilia Pepin, Los Mina', 44, 'eo8iLVZrMuKrBlpWhatsApp Image 2025-10-09 at 5.44.40 PM.jpeg', 'q5vvBLeoviMZdDfWhatsApp Image 2025-10-09 at 5.44.12 PM.jpeg', 'ACTIVO', 'Escuela Ramon Emilio Jimenez', '8093151143', '', 1),
(203, 'Onauris Eliezer', 'Cruz Aquino', '40219247711', '2006-09-02', 'Avenida Venezuela Urb. Ambar manzana D Edificio 5', 44, 'Hf3Mg7Nj9di9mUPWhatsApp Image 2025-10-09 at 5.48.51 PM.jpeg', 'fQNASK2pNsHVgfOWhatsApp Image 2025-10-09 at 5.49.49 PM.jpeg', 'ACTIVO', 'Escuela Manuel de Jesus Garban', '8099353888', '', 1),
(204, 'Angel David', 'Perez Moquete', '40214473015', '2007-10-11', 'calle sicilia urb. italia', 16, 'HuCjdEacPGNUWqye30a5a49-7a16-48a6-aee9-1a8081df1faa.jpeg', 'YMmQ1RuqpaXma7eE3D1D32F-5ABD-44D2-BAC4-C36271C10662.jpeg', 'infantil', 'f.a.r.d', '8492603333', 'APm0710110002', 1),
(205, 'Jostin Eduardo ', 'Rodriguez Brea ', '40219013089', '2007-09-20', 'calle los pinos villa duarte la francia Nueva ', 40, 'bR4KCnR4BfYjvQhIMG_7629.jpeg', 'VNDoKdO5VtjAw7yWhatsApp Image 2025-10-09 at 7.30.33 PM (1).jpeg', '2025', 'Socorro Sanchez ', '8497107864', '', 1),
(206, 'Lenin Yoshua', 'Caba Garcia ', '40230491017', '2008-03-31', 'calle D francia Nueva la francia Nueva ', 40, 'hn7pgvtFMaeKtmvIMG_7706.jpeg', '3pl6S3HWPz5eih0WhatsApp Image 2025-10-09 at 7.30.32 PM.jpeg', '2025', 'Socorro Sanchez ', '8295687225', '', 1),
(207, 'Bryan', 'Sanzun Nin', '40237211954', '2008-09-09', 'calle gloriosa francia Nueva villa duarte ', 40, 'aPTkAlLOKFlTErpWhatsApp Image 2025-10-09 at 9.20.16 PM.jpeg', 'qljVttplhrUKcFfWhatsApp Image 2025-10-09 at 7.30.32 PM (3).jpeg', '2025', 'Socorro Sanchez ', '8296421254', '', 1),
(208, 'Cristian de Jesus', 'Checo Henriguez', '40200053618', '2007-07-21', 'calle 2 los mameyes puerca brava ', 40, 'ZTxbaLUzd67rl8lWhatsApp Image 2025-10-09 at 9.38.41 PM.jpeg', '2n8E98WhwraTWqAWhatsApp Image 2025-10-09 at 7.30.34 PM.jpeg', '2025', 'fe y alegria ', '8494307327', '', 1),
(209, 'Luis angel ', 'ulloa ', '40259170823', '2014-05-25', 'calle h la francia Nueva villa duarte ', 40, 'GZjiO6b5nJnG0K0WhatsApp Image 2025-10-09 at 9.54.13 PM.jpeg', 'tMjrGHNgj6ll2B9WhatsApp Image 2025-10-09 at 9.47.04 PM.jpeg', '2025', 'Ramon Matias mella ', '8495350804', '', 0),
(213, 'Albert Alberto ', 'Perez Garcia ', '40229189531', '2005-10-30', 'respardo los 3 ojos isabelita ', 40, 'iV11vOMwtVJ5rJ0WhatsApp Image 2025-10-09 at 9.38.32 PM.jpeg', 'B4PvN6JIQJJDafiWhatsApp Image 2025-10-09 at 7.30.32 PM (4).jpeg', '2025', 'colegio isabelita ', '8494276586', '', 1),
(221, 'jostin Gabriel ', 'castillo', '40208457800', '2014-02-07', 'calle gloriosa francia Nueva villa duarte ', 40, 'pJixivhEfcHNVGJWhatsApp Image 2025-10-09 at 9.20.16 PM (1).jpeg', 'Wnkvfyud9kfakkJWhatsApp Image 2025-10-09 at 10.05.10 PM.jpeg', '2025', 'Socorro Sanchez ', '8496236168', '', 0),
(222, 'Raymond Adriel', 'Perez Moreno', '40215686201', '2006-08-17', 'Santo Domingo las caobas ', 40, 'fpLkn49CkpQ6zG60b41a1b5-0938-4a37-a652-7744e96dfe4a.jpeg', '4uzAZyPQUgjcw1VWhatsApp Image 2025-10-09 at 7.30.32 PM (1).jpeg', '2025', 'escuela la Cervantes ', '8498802678', '', 1),
(223, 'Elinzon Alberto ', 'Lopez peńa ', '40233111414', '2005-03-17', 'C/ Las mercedes #88/ Vietnam los mina', 20, 'hwERm1bGgLX6YPLCaptura de pantalla 2025-10-10 a las 9.48.50 a. m..png', '813fHSAca9EA9X1IMG_5288.jpeg', 'Activo', 'Ramón Emilio Jiménez ', '(829) 859-2868', '3619501', 1),
(224, 'Antonio', 'Cruz', '40276543210', '2014-01-01', 'Calle 1ra Casa #1 , Las Pruebas', 46, '5wHb86fBcCBtPIWimagene jugador 1.png', 'uuD3FG1phkBH0Goacta.png', 'ACTIVO', 'Colegio Prueba', '8099764321', '7654321', 0),
(225, 'Angel David', 'Peña Perez', '40246782706', '2005-11-29', 'calle cesar agusto sandino #28 barrio enrriquillo', 37, '2HA1AUVYvRYlMByangel.jpeg', '36bsq36ottmjbFwcedula angel.jpeg', 'ACTIVO', 'colegio nuevo milenio', '8297701229', '', 1),
(226, 'Luis Alfredo', 'Diaz Henriquez', '40214399426', '2007-09-30', 'Barrio Libertad sabana perdida ', 37, '29UzmKfodKsN0Gtluis.jfif', 's2wFqKo4EjXn1jucedula.jpg', 'Activo', 'Escuela óptica pelaez', '8298899781', '40214399426', 0),
(227, 'LEURIS DAVID ', 'LA HOZ ', '40246565028', '2007-03-31', 'CALLE H VILLA DUARTE LA FRANCIA NUEVA ', 40, '4T87TY3rdex3Ks4WhatsApp Image 2025-10-09 at 7.30.34 PM (1).jpeg', 'WknIFSemcGlSAPMIMG_7677.jpeg', '2025', 'Socorro Sanchez ', '909878888', '', 0),
(228, 'Alex', 'Garcia Medina', '40202410391', '2005-03-05', 'CALLE 25 de febrero villa duarte ', 40, 'gxanu0wBV745lQsunnamed.jpg', '0j89yqePDx8Ci4GWhatsApp Image 2025-10-09 at 7.30.33 PM (2).jpeg', '2025', 'Socorro Sanchez ', '8495733563', '', 1),
(229, 'David Lizandro', 'Rodríguez Ortiz', '40233134770', '2009-10-27', 'Calle Simón bolívar # 10 Barrio Libertad ', 37, 'aBHSSjBFXplRyKvWhatsApp Image 2025-10-07 at 10.06.01 PM.jpeg', 'x3TE8tnnklx6uamWhatsApp Image 2025-10-10 at 2.57.09 PM.jpeg', 'Activo', 'Emma Balaguer ', '8099698652', '', 1),
(233, 'Willy Joel', 'Terrero Montero', '40213365816', '2006-08-17', 'Av.Hipodromo, Residencial Paseo Del Este ll', 34, 'CNqEVzICYKaCLDwabasado wiili.jfif', '9frj6i2GWnhaFlNabasado w.jfif', 'Santo Domingo Este', 'Liceo Juan Ruperto Polanco', '829-335-8737', '5866470', 0),
(235, 'Edgar Alexander', 'Ulloa De La Cruz', '40233984729', '2006-11-24', 'Engombe, santo domingo oeste', 22, 'xpwaHzLQ2eGdjYcDiseño sin título (14).png', 'QkN2UBeAsHmAIDiImagen de WhatsApp 2025-08-30 a las 09.26.02_5dba1fee.jpg', 'ACTIVO', 'Andrés Medrano en Bayona', '8099847945', '', 1),
(241, 'Elvis junior ', 'Antonio polanco ', '40314835536', '2007-06-12', 'los 3 ojos isabelita ', 40, 'uMHcfcgwEJJywHlIMG_7715.jpeg', 'DwtDQF2R4jLpxamIMG_7727.jpeg', '2025', 'isabelita ', '8096722145', '', 0),
(242, 'Janssel ', 'Troncoso Mercedes ', '40218757843', '2005-09-13', 'calle primera los mameyes ', 40, 'KuHNXnXgwLUsxIeIMG_7627.jpeg', 'AmwUHIpQdVoWltf43cb1653-86fd-40ce-878a-bba09740b55c.jpeg', '2025', 'fe y alegria ', '8494276586', '', 1),
(243, 'George Smill', 'Vargas Jimenez', '40213561463', '2007-07-02', 'Los girasoles 2do Calle norte', 22, 'EVSxOabLuwsroyBImagen de WhatsApp 2025-10-10 a las 19.55.35_275d742e.jpg', 'MqIGoVshm6Tiy3aImagen de WhatsApp 2025-10-10 a las 08.07.52_b1ff2fa3.jpg', 'ACTICO', 'Politécnico hermanas Mirabal', '8298164445', '', 1),
(244, 'Johansel', 'Beriguete Mora', '40240893616', '2006-06-15', 'Calle Libertad #3, La Venta', 22, 'xeaVCCDWsxrZ2lnImagen de WhatsApp 2025-10-10 a las 20.13.49_5aac6d0d.jpg', 'vAeEQLiOomaP30HImagen de WhatsApp 2025-10-10 a las 20.10.31_aa553181.jpg', 'ACTIVO', 'Colegio Libertad', '849-642-3641', '', 1),
(245, 'Byron Algenys', 'Paulino Alcantara', '40208129965', '2009-01-20', 'Prolongación 27, colinas 3 herrera', 22, 'qtbvd6MDmOycrCrImagen de WhatsApp 2025-08-08 a las 15.56.40_5c4d1d34.jpg', 'c8o5yLw4gHB8RvNimagen_2025-10-10_210313975.png', 'ACTIVO', 'Centro educativo cristiano', '829-963-1212', '5620507', 1),
(246, 'Smarlin Miguel', 'Perdomo Javier ', '40232948915', '2005-02-14', 'Calle 17 km 13 Los Ángeles', 22, '1J1r5pEYfZxxll7imagen_2025-10-10_225621586.png', 'E6ZpBmApHCVuvxjImagen de WhatsApp 2025-10-10 a las 20.38.48_d433c09a.jpg', 'ACTIVO', 'Escuela José bordas Valdez', '8294885806', '', 1),
(247, 'Angel Luis', 'Lorenzo Reyes', '402-3299706-0', '2005-11-14', 'Manoguayabo Bellas Colinas', 22, 'EctHcvdNjXpHQmUImagen de WhatsApp 2025-10-11 a las 02.20.28_6d6590b6.jpg', '9aOGtk8Rv6Vo21FImagen de WhatsApp 2025-10-11 a las 02.04.11_6c3a1df6.jpg', 'ACTIVO', 'Politécnico las América', '829-929-2239', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_equipo_evento`
--

CREATE TABLE `relacion_equipo_evento` (
  `id` int(11) NOT NULL,
  `equipo` int(5) NOT NULL,
  `evento` int(11) NOT NULL,
  `indpago` int(1) NOT NULL DEFAULT 0,
  `ruta_volante` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `relacion_equipo_evento`
--

INSERT INTO `relacion_equipo_evento` (`id`, `equipo`, `evento`, `indpago`, `ruta_volante`) VALUES
(6, 11, 1, 0, NULL),
(7, 16, 1, 0, NULL),
(8, 17, 1, 0, NULL),
(9, 18, 1, 0, NULL),
(10, 19, 1, 0, NULL),
(12, 21, 1, 0, NULL),
(14, 23, 1, 0, NULL),
(15, 24, 1, 0, NULL),
(16, 25, 1, 1, 'WhatsApp Image 2025-10-04 at 12.59.37 PM.jpeg'),
(17, 26, 1, 0, NULL),
(18, 27, 1, 0, NULL),
(19, 30, 1, 0, NULL),
(20, 34, 1, 0, NULL),
(21, 33, 1, 0, NULL),
(22, 32, 1, 0, NULL),
(23, 31, 1, 0, NULL),
(25, 37, 1, 0, NULL),
(26, 38, 1, 0, NULL),
(27, 36, 1, 0, NULL),
(28, 9, 1, 0, NULL),
(29, 20, 1, 0, NULL),
(31, 39, 1, 0, NULL),
(33, 7, 1, 0, NULL),
(34, 45, 1, 0, NULL),
(40, 46, 1, 0, NULL),
(41, 44, 1, 1, 'PHOTO-2025-10-10-23-25-27.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_equipo_jugador_evento`
--

CREATE TABLE `relacion_equipo_jugador_evento` (
  `equipo` int(9) NOT NULL,
  `evento` int(9) NOT NULL,
  `jugador` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `relacion_equipo_jugador_evento`
--

INSERT INTO `relacion_equipo_jugador_evento` (`equipo`, `evento`, `jugador`) VALUES
(16, 1, 7),
(20, 1, 11),
(21, 1, 12),
(22, 1, 13),
(23, 1, 14),
(26, 1, 15),
(11, 1, 23),
(11, 1, 24),
(11, 1, 25),
(30, 1, 31),
(31, 1, 32),
(31, 1, 33),
(7, 1, 34),
(7, 1, 55),
(31, 1, 65),
(31, 1, 67),
(20, 1, 68),
(20, 1, 72),
(20, 1, 73),
(20, 1, 77),
(20, 1, 79),
(31, 1, 82),
(20, 1, 83),
(31, 1, 84),
(20, 1, 85),
(20, 1, 86),
(31, 1, 87),
(31, 1, 94),
(20, 1, 95),
(31, 1, 96),
(31, 1, 97),
(20, 1, 98),
(20, 1, 99),
(31, 1, 100),
(31, 1, 106),
(7, 1, 112),
(11, 1, 113),
(7, 1, 114),
(7, 1, 115),
(7, 1, 118),
(7, 1, 119),
(7, 1, 123),
(31, 1, 133),
(37, 1, 134),
(11, 1, 135),
(11, 1, 136),
(37, 1, 137),
(11, 1, 138),
(37, 1, 139),
(37, 1, 140),
(37, 1, 141),
(37, 1, 142),
(37, 1, 144),
(38, 1, 145),
(37, 1, 146),
(38, 1, 147),
(37, 1, 148),
(38, 1, 149),
(38, 1, 150),
(37, 1, 151),
(37, 1, 152),
(37, 1, 153),
(11, 1, 154),
(38, 1, 155),
(38, 1, 156),
(38, 1, 157),
(38, 1, 191),
(38, 1, 192),
(7, 1, 193),
(7, 1, 196),
(7, 1, 198),
(7, 1, 199),
(39, 1, 200),
(16, 1, 204),
(40, 1, 205),
(40, 1, 206),
(40, 1, 207),
(40, 1, 208),
(40, 1, 213),
(40, 1, 222),
(20, 1, 223),
(46, 1, 224),
(37, 1, 225),
(37, 1, 226),
(40, 1, 227),
(40, 1, 228),
(37, 1, 229),
(34, 1, 233),
(22, 1, 235),
(22, 1, 243);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu001`
--

CREATE TABLE `usu001` (
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(500) NOT NULL DEFAULT '0000',
  `tipo` int(1) NOT NULL DEFAULT 0,
  `nombres` varchar(100) NOT NULL DEFAULT 'Fulanito',
  `apellidos` varchar(100) NOT NULL DEFAULT 'De Tal',
  `identificacion` varchar(20) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `lugar` varchar(255) DEFAULT NULL,
  `fecalta` date DEFAULT NULL,
  `estado` int(1) NOT NULL DEFAULT 0,
  `url_img` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `usu001`
--

INSERT INTO `usu001` (`usuario`, `clave`, `tipo`, `nombres`, `apellidos`, `identificacion`, `municipio`, `sector`, `calle`, `lugar`, `fecalta`, `estado`, `url_img`) VALUES
('29dejunio', 'f80e79575d99bc27c47f3ba310c1fc3a8e09a298c50df82bed4577fdbd5df252', 1, '29dejunio', '', '', NULL, NULL, NULL, NULL, '2025-10-10', 0, 'KllsQPzhZswYpmJWhatsApp Image 2025-10-10 at 3.11.15 PM.jpeg'),
('Admin', 'denito123', 0, 'Fulanito', 'De Tal', '00118329580', '', NULL, NULL, NULL, '2025-08-02', 0, ''),
('apuntaladenito', '8092ffc3763c018d4b78d78fb08f09d5d52dad027b44c49cb938cd2ee6d62a32', 0, 'Denny', 'Gomez', '40220162289', NULL, NULL, NULL, NULL, '2025-08-21', 0, 'logo SOBRE NEGRO.png'),
('avanzadajuvenil', 'avanzada2525', 1, 'avanzadajuvenil', 'avanzadajuvenil', '40227275118', NULL, NULL, NULL, NULL, '2025-10-04', 0, ''),
('balata', 'c00cf031587d12c309358e85de8876b2738d3ef2cadd88db6b07318ea0ba8973', 1, 'balata', '', '', NULL, NULL, NULL, NULL, '2025-10-07', 0, 'WhatsApp Image 2025-10-07 at 5.27.40 PM.jpeg'),
('clubarenaso', '8b41b2a5c80b7b898f8c2e982902b9e8c23ab781e00561c183443604b5a7468f', 1, 'clubarenaso', '', '', NULL, NULL, NULL, NULL, '2025-10-04', 0, 'WhatsApp Image 2025-10-04 at 12.30.09 PM.jpeg'),
('clubcup', 'cdb6c5bccbe1e8b1a8f481b479567fd39fcca2051fef2964335a4616c5e86676', 1, 'clubcup', '', '', NULL, NULL, NULL, NULL, '2025-10-04', 0, 'cup.png'),
('clubeugeniomh', 'a40287091e65e6c99f426bf73b0cb7ae7986fff95e24ad7c4d31d1bc3f198c3f', 1, 'clubeugeniomh', '', '', NULL, NULL, NULL, NULL, '2025-10-07', 0, 'LOGO EUGENIO MA DE HOSTOS.jpg'),
('clubframboyan', 'ab9a040016612fc0a9ae1f24b3c122a29d32205e720be6093ba0eea92a10b408', 1, 'clubframboyan', 'clubframboyan', '00104565189', NULL, NULL, NULL, NULL, '2025-10-03', 0, ''),
('clubinvivienda', 'c458c2f76545bdf1807c8db8b5846a685a37aa2078368d8288ab46cb879a24da', 1, 'clubinvivienda', '', '', NULL, NULL, NULL, NULL, '2025-10-08', 0, 'tT2OhFt3lj1dx8R2222.jpeg'),
('clubitalia', '022314', 1, 'clubitalia', 'clubitalia', '00112607239', NULL, NULL, NULL, NULL, '2025-10-03', 0, ''),
('clublabrador', '88a292a987329e82dddb415feb2470602ad21ca26ab3be07b16ecdd9601c6112', 1, 'clublabrador', '', '', NULL, NULL, NULL, NULL, '2025-10-07', 0, 'WhatsApp Image 2025-10-07 at 5.30.43 PM.jpeg'),
('clublosfrailes', 'cdb6c5bccbe1e8b1a8f481b479567fd39fcca2051fef2964335a4616c5e86676', 1, 'clublosfrailes', '', '', NULL, NULL, NULL, NULL, '2025-10-07', 0, 'WhatsApp Image 2025-10-07 at 4.55.57 PM (1).jpeg'),
('clublosmina', 'Losmina2025', 1, 'clublosmina', 'clublosmina', '22300273095', NULL, NULL, NULL, NULL, '2025-10-03', 0, 'Kgoyub4EdxfRnaE'),
('clubprueba', '7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb91', 1, 'clubprueba', '', '', NULL, NULL, NULL, NULL, '2025-10-10', 0, 'yOVktpGFwtO3iJSLogo ClubPrueba.png'),
('clubsanantonio', 'Pumbabasketball', 1, 'clubsanantonio', 'clubsanantonio', '22301663427', NULL, NULL, NULL, NULL, '2025-10-03', 0, ''),
('clubsanssouci', 'dd49477b0b970dde26d58606384cfedd0dc5740b719bffc06442e7d949849deb', 1, 'clubsanssouci', '', '', NULL, NULL, NULL, NULL, '2025-10-09', 0, 'VWcbBvAkdjn1KQt305083440_593753229111773_9209538045735870716_n.jpg'),
('clubvictorburgos', '284d9a101beeb8fbf979d029b25fa49f859739904bfc3a918ecba1c00001b0af', 1, 'clubvictorburgos', '', '', NULL, NULL, NULL, NULL, '2025-10-08', 0, '8Nx7XgMObT5fLJ5victor burgos.jpg'),
('clubvillafaro', '7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb91', 1, 'clubvillafaro', '', '', NULL, NULL, NULL, NULL, '2025-10-03', 0, 'WhatsApp Image 2025-10-03 at 4.30.04 PM.jpeg'),
('deportivocjb', 'deportivolaspalmas', 1, 'deportivocjb', 'deportivocjb', '00103473922', NULL, NULL, NULL, NULL, '2025-10-03', 0, ''),
('francianueva', '9214', 1, 'francianueva', 'francianueva', '22301451146', NULL, NULL, NULL, NULL, '2025-10-09', 0, '2NUh3j7kh1K79tA'),
('intocables', 'd381dd0eecfd1868526e1ce9fbb1dcc224af8b1e2985f3969bd817ebbb622cb9', 1, 'intocables', '', '', NULL, NULL, NULL, NULL, '2025-10-10', 0, 'DgdRQj018fHCbiGWhatsApp Image 2025-10-09 at 6.55.35 PM (1).jpeg'),
('jovenesunidos', '7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb91', 1, 'jovenesunidos', '', '', NULL, NULL, NULL, NULL, '2025-10-04', 0, 'WhatsApp Image 2025-10-04 at 11.15.02 AM.jpeg'),
('loscaribes', '2c9bb9c8ce3c0f38f903a5b70f27ecd2d0900dd5f058fd7133f39269d13f8499', 1, 'loscaribes', '', '', NULL, NULL, NULL, NULL, '2025-10-08', 0, 'rRmTOVCJLDxQUXDloscaribes.jpeg'),
('maranatha', '5c263939d3181eff357ed83a40a5a81d0700cdbb7d5f3ec734ecce511f52e0b3', 1, 'maranatha', '', '', NULL, NULL, NULL, NULL, '2025-10-03', 0, 'logomaranatha.png'),
('mariadelmar', 'Maria234', 1, 'mariadelmar', 'mariadelmar', '00116369869', NULL, NULL, NULL, NULL, '2025-10-03', 0, ''),
('miradorlasamericas', '5c48a0951419f3dd226bed518ee038b84a11a26b2d9509d595f09e977d896514', 1, 'miradorlasamericas', '', '', NULL, NULL, NULL, NULL, '2025-10-07', 0, 'WhatsApp Image 2025-10-07 at 5.29.20 PM.jpeg'),
('mrodriguez', '2025abasado', 2, '  Maikel', 'Rodriguez', '22300618919', NULL, NULL, NULL, NULL, '2025-10-07', 0, ''),
('olimpo', '7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb91', 1, 'olimpo', '', '', NULL, NULL, NULL, NULL, '2025-10-04', 0, 'WhatsApp Image 2025-10-04 at 1.48.19 PM.jpeg'),
('parquedeleste', 'cdb6c5bccbe1e8b1a8f481b479567fd39fcca2051fef2964335a4616c5e86676', 1, 'parquedeleste', '', '', NULL, NULL, NULL, NULL, '2025-10-07', 0, 'WhatsApp Image 2025-10-07 at 4.11.30 PM.jpeg'),
('progreso', '392af8d360042470bbaa4339b1193c3a814408e91dc56461b0f32b8ece44c350', 1, 'progreso', '', '', NULL, NULL, NULL, NULL, '2025-10-04', 0, '23.png'),
('ramonmatiasmellas', '7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb91', 1, 'ramonmatiasmellas', '', '', NULL, NULL, NULL, NULL, '2025-10-09', 0, 'x1hVR8UQKpmjSKaWhatsApp Image 2025-10-09 at 5.02.30 PM.jpeg'),
('toritokids', 'bcc5ca95c9de2d644709705c647737564188bbf5c37f8fcf9cbbf6bb696af506', 1, 'toritokids', '', '', NULL, NULL, NULL, NULL, '2025-10-03', 0, 'WhatsApp Image 2025-10-03 at 6.05.48 PM.jpeg'),
('villavenezuela', '7946adec2b651cd1d3bd896b81f469a4b472d4cb6d0c667d8c159e0c8a32cb91', 1, 'villavenezuela', '', '', NULL, NULL, NULL, NULL, '2025-10-09', 0, 'vrSCa8ZWEK5NzaHWhatsApp Image 2025-10-09 at 5.36.12 PM.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `equipo_name` (`nombre`) USING BTREE;

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `histori_log`
--
ALTER TABLE `histori_log`
  ADD KEY `usu_log` (`usuario`) USING BTREE,
  ADD KEY `usuario_log_fecha` (`usuario`,`fecha`) USING BTREE;

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `identificacion_jugador` (`identificacion`) USING BTREE,
  ADD KEY `jugador_equipo` (`equipo`) USING BTREE;

--
-- Indices de la tabla `relacion_equipo_evento`
--
ALTER TABLE `relacion_equipo_evento`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `equipo_evento` (`equipo`,`evento`) USING BTREE,
  ADD KEY `relacion_evento` (`evento`) USING BTREE;

--
-- Indices de la tabla `relacion_equipo_jugador_evento`
--
ALTER TABLE `relacion_equipo_jugador_evento`
  ADD UNIQUE KEY `relacion_evento_unica` (`equipo`,`evento`,`jugador`) USING BTREE,
  ADD KEY `jugador_evento` (`jugador`) USING BTREE,
  ADD KEY `evento_jugador` (`evento`) USING BTREE;

--
-- Indices de la tabla `usu001`
--
ALTER TABLE `usu001`
  ADD PRIMARY KEY (`usuario`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de la tabla `relacion_equipo_evento`
--
ALTER TABLE `relacion_equipo_evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `histori_log`
--
ALTER TABLE `histori_log`
  ADD CONSTRAINT `usuario_log_indx` FOREIGN KEY (`usuario`) REFERENCES `usu001` (`usuario`);

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugador_equipo` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`);

--
-- Filtros para la tabla `relacion_equipo_evento`
--
ALTER TABLE `relacion_equipo_evento`
  ADD CONSTRAINT `relacion_equipo` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `relacion_evento` FOREIGN KEY (`evento`) REFERENCES `eventos` (`id`);

--
-- Filtros para la tabla `relacion_equipo_jugador_evento`
--
ALTER TABLE `relacion_equipo_jugador_evento`
  ADD CONSTRAINT `equipo_jugador_evento` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `evento_jugador` FOREIGN KEY (`evento`) REFERENCES `eventos` (`id`),
  ADD CONSTRAINT `jugador_evento` FOREIGN KEY (`jugador`) REFERENCES `jugadores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
