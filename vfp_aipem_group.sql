-- Base de datos: `vfp_aipem_group`

CREATE TABLE `cursadas` (
  `nro_cursada` int(5) NOT NULL,
  `nro_curso` int(5) NOT NULL,
  `nro_legajo` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cursadas` (`nro_cursada`, `nro_curso`, `nro_legajo`, `fecha`, `estado`) VALUES
(2, 1, 3, '2022-04-10', 'APROBADO'),
(4, 2, 1, '2022-03-10', 'APROBADO');

CREATE TABLE `cursos` (
  `nro_curso` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `cursos` (`nro_curso`, `nombre`) VALUES
(1, 'INTRO A LA PROGRAMACION                           '),
(2, 'RRHH                                              ');

CREATE TABLE `empleados` (
  `nro_legajo` int(5) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `empleados` (`nro_legajo`, `apellido`, `nombre`) VALUES
(1, 'BOHACEC                                           ', 'LEANDRO IVAN                                      '),
(2, 'PERALTA                     ', 'JOSE LUIS                   '),
(3, 'ALTAMIRANO                  ', 'RAMON ANDRES                ');

ALTER TABLE `cursadas`
  ADD PRIMARY KEY (`nro_cursada`),
  ADD KEY `nro_curso` (`nro_curso`),
  ADD KEY `nro_legajo` (`nro_legajo`);

ALTER TABLE `cursos`
  ADD PRIMARY KEY (`nro_curso`);

ALTER TABLE `empleados`
  ADD UNIQUE KEY `indice_nro_legajo` (`nro_legajo`);

ALTER TABLE `cursadas`
  MODIFY `nro_cursada` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `cursos`
  MODIFY `nro_curso` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `cursadas`
  ADD CONSTRAINT `cursadas_ibfk_1` FOREIGN KEY (`nro_curso`) REFERENCES `cursos` (`nro_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursadas_ibfk_2` FOREIGN KEY (`nro_legajo`) REFERENCES `empleados` (`nro_legajo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

