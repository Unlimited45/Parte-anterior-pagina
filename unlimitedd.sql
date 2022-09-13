-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 22:22:49
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unlimitedd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `ID_calificacion` int(11) NOT NULL,
  `ID_persona` int(11) NOT NULL,
  `Codigo_curso` int(11) NOT NULL,
  `nota` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`ID_calificacion`, `ID_persona`, `Codigo_curso`, `nota`) VALUES
(1, 1000160619, 1005, 98),
(2, 1021394728, 100, 50),
(3, 1141319520, 1006, 80),
(4, 1000810993, 1001, 50),
(5, 1072145560, 1002, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_compras`
--

CREATE TABLE `carrito_compras` (
  `ID_carrito` int(11) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `Codigo_curso` int(11) DEFAULT NULL,
  `ID_persona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_compras`
--

INSERT INTO `carrito_compras` (`ID_carrito`, `subtotal`, `Codigo_curso`, `ID_persona`) VALUES
(1, 150000, 1001, 0),
(2, 145000, 1004, 0),
(3, 210000, 1008, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `ID_certificado` int(11) NOT NULL,
  `fecha_fin_curso` date NOT NULL,
  `ID_persona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`ID_certificado`, `fecha_fin_curso`, `ID_persona`) VALUES
(1, '2023-12-05', 1077721145),
(2, '2023-11-09', 1026447318),
(3, '2022-12-10', 55177272),
(4, '2023-10-14', 1141919520);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Codigo_curso` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `precio` bigint(20) NOT NULL,
  `horario` varchar(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_inscripcion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Codigo_curso`, `tipo`, `duracion`, `descripcion`, `titulo`, `precio`, `horario`, `fecha_inicio`, `fecha_inscripcion`) VALUES
(100, 'virtual', '3 meses', ' te permitirá adquirir las habilidades para el man', 'Microsoft excel', 78000, 'lunes-viernes', '2023-02-10', '2022-11-02'),
(1001, 'virtual', '3 meses', 'El curso de Power Point está destinado a la realiz', 'Power point', 78000, 'lunes,martes y viern', '2022-05-20', '2022-06-15'),
(1002, 'virtual', '2 meses', 'El objetivo de este curso básico de Word es que lo', 'Microsoft word', 80000, 'lunes y martes', '2022-11-02', '2022-06-12'),
(1003, 'virtual', '1 semana', 'Microsoft Teams es una plataforma de comunicación ', 'Microsoft teams', 67000, 'lunes,miercoles y ju', '2022-08-02', '2022-11-14'),
(1004, 'virtual', '3 semanas', 'Cualquier mensaje se puede modificar, reutilizar, ', 'correo electronico', 70000, 'Sabado, domingo y lu', '2023-01-20', '2023-02-15'),
(1005, 'virtual', '2 semanas', 'Identificar los componentes principales de la inte', 'Drive', 78000, 'lunes,miercoles y vi', '2022-11-02', '2022-11-10'),
(1006, 'virtual', '2 semanas', 'Google Classroom es una herramienta creada por Goo', 'Classroom', 55000, 'lunes y martes', '2022-07-14', '2022-08-10'),
(1007, 'virtual', '2 semanas', 'Es una plataforma colaborativa para la educación, ', 'territorium', 90000, 'martes y jueves', '2022-11-02', '2023-02-10'),
(1008, 'virtual', '1 mes', 'Verificar la oferta de programas disponibles en el', 'Sofia plus', 90000, 'miercoles y viernes', '2022-06-26', '2022-07-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_apoyo`
--

CREATE TABLE `material_apoyo` (
  `ID_material` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `ID_persona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `material_apoyo`
--

INSERT INTO `material_apoyo` (`ID_material`, `nombre`, `tipo`, `descripcion`, `ID_persona`) VALUES
(1, 'guias microsoft word', 'documento', 'En estas guias podra encontrar la introduccion a word', 55177272),
(2, 'powerpoint', 'video', 'En este video podra encontrar todo lo relacionado con power point', 1077721145),
(3, 'territorium', 'guias y videos', 'En este material encontrara lo que tienes que saber de territorium', 1141919520),
(4, 'teams', 'documentos', 'Teams es una plataforma interesante, en este docum', 1026447318),
(5, 'drive', 'video', 'en este video encontraras las funciones de drive', 1077721145);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_pago` int(11) NOT NULL,
  `tipo_de_pago` varchar(50) NOT NULL,
  `valor` bigint(20) NOT NULL,
  `ID_persona` int(11) DEFAULT NULL,
  `ID_carrito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`ID_pago`, `tipo_de_pago`, `valor`, `ID_persona`, `ID_carrito`) VALUES
(1, 'Nequi', 54000, 55177272, 2),
(2, 'Tarjeta credito', 85000, 1026447318, 1),
(3, 'Daviplata', 77000, 55177272, 3),
(4, 'Tarjeta debito', 86000, 1077721145, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `ID_permisos` int(11) NOT NULL,
  `nombre_permiso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`ID_permisos`, `nombre_permiso`) VALUES
(101, 'AGREGAR'),
(102, 'ACTUALIZAR'),
(103, 'LEER'),
(104, 'ELIMINAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ID_persona` int(11) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `Codigo_curso` int(11) DEFAULT NULL,
  `ID_rol` int(11) DEFAULT NULL,
  `ID_permisos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ID_persona`, `nombres`, `apellidos`, `fecha_nacimiento`, `direccion`, `telefono`, `correo`, `contraseña`, `Codigo_curso`, `ID_rol`, `ID_permisos`) VALUES
(55177272, 'ana', 'ocampo', '1974-12-25', 'calle 6a#89-47', 3123458571, 'yudiocampo123@gmail.com', '12345..', 1005, 2, 103),
(102450241, 'camilo', 'rojas', '1991-08-04', 'calle 7ab', 3123987410, 'camiilin@hotmail.com', '1234560..', 1001, 2, 103),
(102450242, 'camila', 'rodriguez', '1991-08-05', 'calle 7abc', 3123987411, 'camilaro@hotmail.com', 'camiilaon', 100, 2, 103),
(1000160619, 'anderson', 'samudio', '2002-12-03', 'clle 42a 89-51', 3205868288, 'gort3052@gmail.com', 'tre2345', 1005, 2, 103),
(1000810993, 'lorena', 'pineda', '2003-10-31', 'crra77g75-98', 3123127571, 'wendylorenagonzalez@gmail.com', '123456', 1005, 2, 103),
(1021394728, 'daniela', 'rojas', '2004-03-30', 'cr78f65c45', 3214144627, 'danielarojas@gmail.com', 'unlimited1234', 1005, 2, 103),
(1021394729, 'daniela', 'beltran', '2001-04-20', 'calle 5 #54', 3002457008, 'danielabeltran@gmail.com', '1234500.', 1002, 2, 103),
(1026447318, 'paola', 'pinzon', '2000-03-09', 'calle 9a #02-7', 3112700441, 'yydain@outlook.es', '11235', 1002, 2, 103),
(1072145560, 'Jhon', 'valencia', '1962-10-01', 'carerra 40D#45 7', 3004501296, 'jhonvalencia1221@gmail.com', 'Colombia1962', NULL, 3, 101),
(1077721145, 'leonel', 'alvarez', '1998-02-08', 'carerra 7 #77D 6', 3004552117, 'leoleo@gmail.com', '12210', NULL, 2, 103),
(1141319520, 'dan', 'silva', '2001-04-20', 'calle 7a #77', 3195688080, 'silvaocampo.an@gmail.com', 'damian', 1006, 2, 103),
(1141919520, 'pedro', 'paez', '1957-07-24', 'calle 5D #44-78', 3205547796, 'paezpedro@hotmail.com', '85200', 1007, 2, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_rol` int(11) NOT NULL,
  `nombre_rol` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_rol`, `nombre_rol`, `descripcion`) VALUES
(1, 'Administrador', 'El que administra la pagina web'),
(2, 'Usuario', 'El que ingresa a la pagina web'),
(3, 'Profesor', 'El que acompaña a los usuarios con los cursos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones_en_linea`
--

CREATE TABLE `sesiones_en_linea` (
  `ID_sesiones` int(11) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `hora` time DEFAULT NULL,
  `link` varchar(50) NOT NULL,
  `ID_persona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sesiones_en_linea`
--

INSERT INTO `sesiones_en_linea` (`ID_sesiones`, `tema`, `hora`, `link`, `ID_persona`) VALUES
(1, 'analizar las actividades subidas', '14:10:00', 'https://meet.google.com/_meet/hty-mqkx-sgu?pli=1&i', 1077721145),
(2, 'resolver problematicas', '15:00:00', 'https://meet.google.com/vun-oekb-vzy?pli=1', 1141919520),
(3, 'explicacion taller', '12:00:00', 'https://meet.google.com/edq-vhoz-noe', 1026447318);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`ID_calificacion`),
  ADD KEY `Codigo_curso` (`Codigo_curso`),
  ADD KEY `ID_persona` (`ID_persona`);

--
-- Indices de la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD PRIMARY KEY (`ID_carrito`),
  ADD KEY `fk_cursos` (`Codigo_curso`);

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`ID_certificado`),
  ADD KEY `fk_person` (`ID_persona`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Codigo_curso`);

--
-- Indices de la tabla `material_apoyo`
--
ALTER TABLE `material_apoyo`
  ADD PRIMARY KEY (`ID_material`),
  ADD KEY `fk_per` (`ID_persona`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_pago`),
  ADD KEY `fk_gente` (`ID_persona`),
  ADD KEY `fk_carrito` (`ID_carrito`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`ID_permisos`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID_persona`),
  ADD KEY `fk_curso` (`Codigo_curso`),
  ADD KEY `fk_rol` (`ID_rol`),
  ADD KEY `fk_permisos` (`ID_permisos`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_rol`);

--
-- Indices de la tabla `sesiones_en_linea`
--
ALTER TABLE `sesiones_en_linea`
  ADD PRIMARY KEY (`ID_sesiones`),
  ADD KEY `fk_personaa` (`ID_persona`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`Codigo_curso`) REFERENCES `cursos` (`Codigo_curso`),
  ADD CONSTRAINT `calificacion_ibfk_2` FOREIGN KEY (`ID_persona`) REFERENCES `persona` (`ID_persona`);

--
-- Filtros para la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD CONSTRAINT `fk_cursos` FOREIGN KEY (`Codigo_curso`) REFERENCES `cursos` (`Codigo_curso`);

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `fk_person` FOREIGN KEY (`ID_persona`) REFERENCES `persona` (`ID_persona`);

--
-- Filtros para la tabla `material_apoyo`
--
ALTER TABLE `material_apoyo`
  ADD CONSTRAINT `fk_per` FOREIGN KEY (`ID_persona`) REFERENCES `persona` (`ID_persona`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `fk_carrito` FOREIGN KEY (`ID_carrito`) REFERENCES `carrito_compras` (`ID_carrito`),
  ADD CONSTRAINT `fk_gente` FOREIGN KEY (`ID_persona`) REFERENCES `persona` (`ID_persona`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_curso` FOREIGN KEY (`Codigo_curso`) REFERENCES `cursos` (`Codigo_curso`),
  ADD CONSTRAINT `fk_permisos` FOREIGN KEY (`ID_permisos`) REFERENCES `permisos` (`ID_permisos`),
  ADD CONSTRAINT `fk_rol` FOREIGN KEY (`ID_rol`) REFERENCES `rol` (`ID_rol`);

--
-- Filtros para la tabla `sesiones_en_linea`
--
ALTER TABLE `sesiones_en_linea`
  ADD CONSTRAINT `fk_personaa` FOREIGN KEY (`ID_persona`) REFERENCES `persona` (`ID_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
