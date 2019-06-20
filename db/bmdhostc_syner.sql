-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `citas`;
CREATE TABLE `citas` (
  `id_cita` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `id_horario` tinyint(4) NOT NULL,
  `fecha` datetime NOT NULL,
  `status_cita` tinyint(4) NOT NULL,
  `hechosysintomas` varchar(150) NOT NULL,
  `hechos` text NOT NULL,
  `sintomas` text NOT NULL,
  PRIMARY KEY (`id_cita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `citas` (`id_cita`, `id_usuario`, `id_medico`, `id_horario`, `fecha`, `status_cita`, `hechosysintomas`, `hechos`, `sintomas`) VALUES
(151,	0,	193,	4,	'2018-03-26 00:00:00',	1,	'',	'',	''),
(152,	0,	193,	1,	'2018-03-25 00:00:00',	1,	'',	'',	''),
(153,	197,	0,	1,	'2018-08-08 00:00:00',	1,	'',	'',	''),
(154,	197,	0,	1,	'2018-08-08 00:00:00',	1,	'',	'',	''),
(155,	200,	0,	1,	'2018-08-08 00:00:00',	1,	'',	'',	''),
(156,	200,	197,	1,	'2018-08-08 00:00:00',	1,	'',	'',	''),
(157,	200,	197,	1,	'2018-07-06 00:00:00',	1,	'',	'',	''),
(158,	202,	197,	2,	'2018-07-06 00:00:00',	2,	'',	'17748444219632471330',	'74348371104355756544 63831379975714993138'),
(159,	201,	197,	9,	'2018-08-04 00:00:00',	1,	'',	'98273886472698161455 45168478843372513402 12824425527774902272',	'19853837360852568269 67449441636405391782 96448502845496952534 68617896694246535742 64222709016347362806'),
(160,	201,	198,	10,	'0000-00-00 00:00:00',	1,	'',	'88054593941280117421 34981504604992084470',	'19853837360852568269 6666909846147933789 13769627476047037851 86226041699263615978');

DROP TABLE IF EXISTS `crudpdo`;
CREATE TABLE `crudpdo` (
  `id_pdo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identitas',
  `nm_pdo` varchar(45) NOT NULL COMMENT 'Nama',
  `gd_pdo` varchar(20) NOT NULL COMMENT 'Jenis Kelamin',
  `tl_pdo` varchar(25) NOT NULL COMMENT 'Phone',
  `ar_pdo` text NOT NULL COMMENT 'Alamat',
  PRIMARY KEY (`id_pdo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `crudpdo` (`id_pdo`, `nm_pdo`, `gd_pdo`, `tl_pdo`, `ar_pdo`) VALUES
(1,	'juancho',	'male',	'456',	'more and more testing'),
(2,	'yadira',	'female',	'34556',	'more testing'),
(3,	'mario munoz',	'male',	'32435',	'aldskalsdkalk'),
(4,	'pololos',	'vatote perrote',	'123456',	'testing');

DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `idgenero` smallint(6) NOT NULL AUTO_INCREMENT,
  `desc_genero` varchar(10) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `genero` (`idgenero`, `desc_genero`) VALUES
(1,	'Hombre'),
(2,	'Mujer');

DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `padecimientos` text NOT NULL,
  `alergias` text NOT NULL,
  `adicciones` text NOT NULL,
  `ejercicio` text NOT NULL,
  `hisotria_fam` text NOT NULL,
  PRIMARY KEY (`id_historial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `historial` (`id_historial`, `id`, `padecimientos`, `alergias`, `adicciones`, `ejercicio`, `hisotria_fam`) VALUES
(12,	96,	'no',	'si',	'no',	'si',	'no'),
(13,	96,	'no',	'si',	'no',	'si',	'no'),
(14,	96,	'no',	'si',	'no',	'si',	'no'),
(15,	97,	'Pasado Bronquitis asmatica, Actual ninguno',	'Algodon',	'Si, tabaquismo',	'2hrs',	'Hipertencion Madre, Diabetes Padre'),
(16,	109,	'Asma',	'Polen',	'Face',	'Trotar',	'Rodillas'),
(17,	108,	'Dolor de cadera, sinusitis',	'Lacteos, cacahuates',	'No',	'No',	'Padecimientos del corazon, cancer, diabetes, dolor cronico'),
(18,	112,	'hernia discal, me operaron en el 2012',	'al sol y polvo',	'no',	'muy poca',	'cardiopatias y diabetes'),
(19,	113,	'no',	'no',	'alcohol',	'mucha',	'cancer, una tia'),
(20,	114,	'Ninguno',	'Polen, melon, nuez',	'No',	'',	'Diabetes mellitus, hipertensiÃ³n arterial, artritis'),
(21,	118,	'diarrea',	'ninguno',	'alcohol',	'box, pesas, futbol ',	'Ninguna'),
(22,	119,	'',	'',	'',	'Gym 5 hrs por semana',	'Presion alta'),
(23,	120,	'Hipertension, Diabetes, Obesidad',	'Penicilina',	'Tabaquismo y Etilismo Actual',	'sedentarismo',	'Hilertension, Diabetes, Cancer de Pulmon, Infarto al miocardio'),
(24,	125,	'SustracciÃ³n de anginas.',	'Penicilina',	'',	'',	''),
(25,	125,	'',	'',	'',	'',	''),
(26,	140,	'artritis',	'gatos',	'alcohol',	'nada de nada',	'cardiopatias'),
(27,	144,	'Asma Bronquial por alergia ',	'Polen(zacate de campo, mimosa, rodadora)',	'Ninguna',	'Muy poca',	''),
(28,	146,	'lumbargia',	'al sol y al polvo',	'no',	'nataciÃ³n',	'cardiopatias y diabetes'),
(29,	151,	'LumbalgÃ­a',	'Al sol y al polvo',	'No',	'NataciÃ³n 2-3 veces a la semana',	'CardiopatÃ­as, diabetes'),
(30,	157,	'',	'',	'',	'',	'diabetes'),
(31,	158,	'Dolres de cabeza',	'A mantarayas',	'No',	'Si',	'Corazon'),
(32,	159,	'lumbalgia',	'sol y polvo',	'no',	'minima',	'cardiopatias y diabetes'),
(34,	164,	'4e722d08ef75d7f310a2566b13204ca3',	'9639a4e79ad4822d4c3ed4763ba61462',	'f05dd330007685cc1abbf11149f3872d',	'4133c40a58adabfb27df5fe8ccd2d885',	'fb507bbc36e1f9ff7823da5cf1eb07d8'),
(35,	176,	'b4f9e00095f428c1a73bce0979225273',	'413e561889e161aca0bc35a421e473a3',	'dcda2cd49d3bdffe93db48ffd78717d6',	'480cb1ed91749a77ed15f856cfc7c98d',	'e7477d727c7c269fd015ff301451c115'),
(36,	179,	'0d5b5c17b459e5b46b756d71fcc4a4aa',	'b1765ee4f271f3d2e0c2f5cf98b16c78',	'b1765ee4f271f3d2e0c2f5cf98b16c78',	'22f213e2e6a3fead4b24391db17907a8',	'902107d7acb694fccc977b6774081223'),
(37,	187,	'480cb1ed91749a77ed15f856cfc7c98d',	'480cb1ed91749a77ed15f856cfc7c98d',	'480cb1ed91749a77ed15f856cfc7c98d',	'7947a117f12b793bdf17adc583e03e77',	'480cb1ed91749a77ed15f856cfc7c98d'),
(38,	189,	'a5da5f332e75c8fe109c091bd025e82f',	'f9d37919c71305bb84cb1286c4fe8560',	'6d932a44c05931c34638319568d35222',	'dcda2cd49d3bdffe93db48ffd78717d6',	'ea0e27001a9f8741459178e9a492d4c7'),
(39,	197,	'e4b9c309f1d99767334af81547095ba5',	'f0616858d1d05f4f39412b2b60be963b',	'f05dd330007685cc1abbf11149f3872d',	'd3d5a521c6a565d206a1b79a61a4e6e3',	'7cdab47de2b44bd8ab2057d347aeead7'),
(40,	200,	'49658553406ba740629843cb75783610',	'f0616858d1d05f4f39412b2b60be963b',	'cbbd1c9edc3ed4a7f45c3b8b1ee8df8b',	'd3d5a521c6a565d206a1b79a61a4e6e3',	'30c8995c47b43c1a55cca3c2f5cdbfb7'),
(41,	201,	'b33e6814d827d68b91acbfa4ecbfce09',	'97d4704d36e156362bcdd1945856ca0d',	'f05dd330007685cc1abbf11149f3872d',	'9d0a49c5de3b2d37154bffecf42c42a2',	'ea0e27001a9f8741459178e9a492d4c7');

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios` (
  `id_horario` tinyint(4) NOT NULL AUTO_INCREMENT,
  `h_inicio` time NOT NULL,
  `h_terminacion` time NOT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `horarios` (`id_horario`, `h_inicio`, `h_terminacion`) VALUES
(1,	'08:00:00',	'08:30:00'),
(2,	'08:30:00',	'09:00:00'),
(3,	'09:00:00',	'09:30:00'),
(4,	'09:30:00',	'10:00:00'),
(5,	'10:00:00',	'10:30:00'),
(6,	'10:30:00',	'11:00:00'),
(7,	'11:00:00',	'11:30:00'),
(8,	'11:30:00',	'12:00:00'),
(9,	'12:00:00',	'12:30:00'),
(10,	'13:00:00',	'13:30:00'),
(11,	'13:30:00',	'14:00:00'),
(12,	'14:00:00',	'14:30:00'),
(13,	'14:30:00',	'15:00:00'),
(14,	'15:00:00',	'15:30:00'),
(15,	'16:00:00',	'16:30:00'),
(16,	'16:30:00',	'17:00:00'),
(17,	'17:00:00',	'17:30:00'),
(18,	'17:30:00',	'18:00:00'),
(19,	'18:00:00',	'18:30:00'),
(20,	'18:30:00',	'19:00:00'),
(21,	'19:00:00',	'19:30:00'),
(22,	'19:30:00',	'20:00:00');

DROP TABLE IF EXISTS `idc_identidad`;
CREATE TABLE `idc_identidad` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `curp` varchar(20) NOT NULL,
  `ap_paterno` varchar(20) NOT NULL,
  `ap_materno` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `f_nac` date NOT NULL,
  `nac_ciudad` varchar(50) NOT NULL,
  `nac_estado` varchar(50) NOT NULL,
  `dom_calle_num` varchar(50) NOT NULL,
  `dom_col` varchar(50) NOT NULL,
  `dom_cod_post` smallint(6) NOT NULL,
  `dom_ciudad` varchar(50) NOT NULL,
  `dom_estado` varchar(50) NOT NULL,
  `num_cta_agua` varchar(50) NOT NULL,
  `num_cta_luz` varchar(50) NOT NULL,
  `tel_res` varchar(10) NOT NULL,
  `tel_cel` varchar(10) NOT NULL,
  `corr_elect` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `f_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `idc_identidad` (`idc`, `curp`, `ap_paterno`, `ap_materno`, `nombre`, `f_nac`, `nac_ciudad`, `nac_estado`, `dom_calle_num`, `dom_col`, `dom_cod_post`, `dom_ciudad`, `dom_estado`, `num_cta_agua`, `num_cta_luz`, `tel_res`, `tel_cel`, `corr_elect`, `pwd`, `f_registro`) VALUES
(29,	'1',	'abc',	'',	'',	'0000-00-00',	'',	'',	'',	'',	0,	'',	'',	'',	'',	'',	'',	'',	'',	'2018-03-20 19:21:48');

DROP TABLE IF EXISTS `idc_idvalidada`;
CREATE TABLE `idc_idvalidada` (
  `idc` int(11) NOT NULL,
  `idc_validada` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `idc_idvalidada` (`idc`, `idc_validada`) VALUES
(14,	'5e81ca4a0459eb8a8a30b43fa98974aea8c9f3b288cd6da1aa2b368b96b4f3dd77c1f6c36050508fcb9115a36f5bddc890db'),
(13,	'b90e7311b15f1b18b95bf86649f1c7313e905316f57a299e3078b9dd06c080ae8ae0103f94639da7a7b872780397611293ac'),
(12,	'9a656d60b8dc22dd8b24e3d78609e73d601d5d2b865d1764b0893ef296aa3e864a3254701e739e1755fe6fd0f25569e460e1'),
(15,	'32158a33ea07edc39067547be188c100dc5afa7f3521055dab7c30378fbcba78d735a49db7f9cc7423fec506090e4b7717ca'),
(16,	'22cb4658057b96d59a66dedb8f871b28229c495e159628c03b6da4752c8b71db64aff0e13b83839c0da6cb824280213eae49'),
(17,	'53604bf9078ab0c6e7c0ec512da3fb8d73b0716add69cb936d157c2e3550c8628aad57750f409bf004e367d38b056cb8b4c9'),
(18,	'03dacaf29b9d89845411b86bc9c70b862368f3dceef58b672f6f7847ee7a0c9eacec7b8f784de8ad02b9d335556b9b3e3fe4'),
(19,	'bc4d6fe7c1d45378175b7587ccb1d2d8de7c9db93f7982711df2cbac54c663692574ff36abed1507012b2346bd709bdf56c8'),
(20,	'508ef3735042496bf62a529cd1599a1b7b8916025971d0b26239d483515a3f0af6f18b20faef9cb072424f2ea721dda5a931'),
(21,	'b6249a7faa78af4407363864df7e6bf97b74d257f91c38858f6e3b2a412439c31409e082f070f5a0bebea8e7bbe5d5f993d4'),
(22,	'2daae47fd9da598e6374e701a6904e6c23925e20f838fb37f3142940fc5514503defc8e66eb474598f3aab8389c93bdb42b9'),
(23,	'bd8fcfa5df5e070213f04399f448af5f207250a27b5d8efa8923044b765a73628adff87531496b54a4aa91189dd6ec5891e7'),
(24,	'dc6cdbddd9d679e3d08032cad21637b85c953c43ccb62445eb1c678dd1abc179a7c234ffdf9e562b8fd79509843e6a3ad643'),
(25,	'941ad0e43cc4be60541ae0de608660b00e26f6b8a385baa5196c219fb6bd8dcee5a43df4779fcdd205589dc4c5c81d3f0917'),
(26,	'e3ae08c937bf4c6e531418b670bdaf9bbc9aa1e0a4c16d1d75da9a811c34569f3ade14327e7deb5a0fdf2ef46fa8f5712568'),
(27,	'84cd336af34c5be7d4dd7e738abb292145a1532cc64e3fc6403f7e9a36293cde180d17bb0f0c28bcf35d5ba82a4487cebeb3'),
(28,	'153d019a062f9ac48969d84ae9aecccf3b8218bbcb7e7236e86929462117dfa8354f7823623c15b1ff5b86e54e6a68e3123e');

DROP TABLE IF EXISTS `padron_electoral_tbl_cambio_contrasena`;
CREATE TABLE `padron_electoral_tbl_cambio_contrasena` (
  `id_Usuario` int(11) NOT NULL,
  `cambio_Contrasena` bit(1) DEFAULT NULL,
  `fecha_Hora_cambio_contrasena` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `padron_electoral_tbl_cambio_contrasena` (`id_Usuario`, `cambio_Contrasena`, `fecha_Hora_cambio_contrasena`) VALUES
(3,	NULL,	NULL),
(4,	NULL,	NULL),
(12,	NULL,	NULL);

DROP TABLE IF EXISTS `padron_electoral_tbl_det_logs`;
CREATE TABLE `padron_electoral_tbl_det_logs` (
  `id_Actividad` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `padron_electoral_tbl_det_operadores_inmediatos`;
CREATE TABLE `padron_electoral_tbl_det_operadores_inmediatos` (
  `id_Operador` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `id_opinmediato_Predecesor` tinyint(4) DEFAULT NULL,
  `id_opinmediato_Antecesor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_Operador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `padron_electoral_tbl_det_operadores_inmediatos` (`id_Operador`, `descripcion`, `id_opinmediato_Predecesor`, `id_opinmediato_Antecesor`) VALUES
(1,	'Coordinador nivel A',	2,	1),
(2,	'Coordinador nivel B',	3,	1),
(3,	'Coordinador nivel C',	4,	2),
(4,	'Coordinador nivel D',	5,	3),
(5,	'Presidente de Seccional',	6,	4),
(6,	'Promotor del voto',	6,	5);

DROP TABLE IF EXISTS `padron_electoral_tbl_det_usuarios`;
CREATE TABLE `padron_electoral_tbl_det_usuarios` (
  `id_Detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_Usuario` int(11) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `clave_Elector` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_Detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `padron_electoral_tbl_distritos`;
CREATE TABLE `padron_electoral_tbl_distritos` (
  `id_Distrito` smallint(6) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_Distrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `padron_electoral_tbl_distritos` (`id_Distrito`, `codigo`) VALUES
(1,	'A'),
(2,	'B'),
(3,	'C'),
(4,	'D'),
(5,	'E'),
(6,	'F'),
(7,	'G'),
(8,	'H'),
(9,	'I'),
(10,	'J');

DROP TABLE IF EXISTS `padron_electoral_tbl_estatus_usuarios`;
CREATE TABLE `padron_electoral_tbl_estatus_usuarios` (
  `id_Estatus_usuarios` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Estatus_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `padron_electoral_tbl_estatus_usuarios` (`id_Estatus_usuarios`, `descripcion`) VALUES
(0,	'inactivo'),
(1,	'activo');

DROP TABLE IF EXISTS `padron_electoral_tbl_funciones_aplicacion`;
CREATE TABLE `padron_electoral_tbl_funciones_aplicacion` (
  `id_Funcion` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Funcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `padron_electoral_tbl_funciones_por_usuario`;
CREATE TABLE `padron_electoral_tbl_funciones_por_usuario` (
  `id_Funcion` tinyint(4) NOT NULL AUTO_INCREMENT,
  `id_Usuario` int(11) NOT NULL,
  `id_Permiso` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_Funcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `padron_electoral_tbl_logs`;
CREATE TABLE `padron_electoral_tbl_logs` (
  `id_Usuario` int(11) NOT NULL,
  `id_Actividad` tinyint(4) DEFAULT NULL,
  `fecha_Hora_log` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `padron_electoral_tbl_permisos`;
CREATE TABLE `padron_electoral_tbl_permisos` (
  `id_Permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_Permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `padron_electoral_tbl_roles`;
CREATE TABLE `padron_electoral_tbl_roles` (
  `id_Rol_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_Rol_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `padron_electoral_tbl_roles` (`id_Rol_usuario`, `descripcion`) VALUES
(1,	'sysadmin'),
(2,	'coordinador'),
(3,	'presidente seccional'),
(4,	'promotor del voto');

DROP TABLE IF EXISTS `padron_electoral_tbl_usuarios`;
CREATE TABLE `padron_electoral_tbl_usuarios` (
  `id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `ap_Paterno` varchar(15) DEFAULT NULL,
  `ap_Materno` varchar(15) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `f_nacim` date DEFAULT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  `id_Rol_usuario` tinyint(4) DEFAULT NULL,
  `id_Estatus_usuario` tinyint(4) DEFAULT NULL,
  `id_Agregado_por` tinyint(4) DEFAULT NULL,
  `id_Operador` tinyint(4) DEFAULT NULL,
  `fecha_Agregado` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Usuario`),
  KEY `id_Operador` (`id_Operador`),
  CONSTRAINT `padron_electoral_tbl_usuarios_ibfk_1` FOREIGN KEY (`id_Operador`) REFERENCES `padron_electoral_tbl_det_operadores_inmediatos` (`id_Operador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `padron_electoral_tbl_usuarios` (`id_Usuario`, `ap_Paterno`, `ap_Materno`, `name`, `f_nacim`, `codigo`, `id_Rol_usuario`, `id_Estatus_usuario`, `id_Agregado_por`, `id_Operador`, `fecha_Agregado`, `email`, `password`) VALUES
(3,	'munoza',	'anaya',	'jhon1',	'0000-00-00',	'A',	1,	1,	1,	1,	'2018-04-06 03:29:10',	'juan.arturo.mu1noz@gmail.com',	'5b96672ae7709eab297550cae362d5bee468c57d'),
(4,	'ramos',	'felix',	'david',	'0000-00-00',	'A',	1,	1,	1,	1,	'2018-04-06 04:56:46',	'Davidalonsoramos@gmail.com',	'5b96672ae7709eab297550cae362d5bee468c57d'),
(10,	'munoz',	'anaya',	'juan3',	'0000-00-00',	'A',	NULL,	1,	12,	2,	'2018-04-06 03:57:18',	'juan.arturo.m1unoz@gmail.com',	'f6N8m@6S'),
(11,	'erso',	'erso',	'jyn',	'0000-00-00',	'A',	NULL,	1,	1,	2,	'2018-04-06 05:02:22',	'jmu1noz@syner.info',	'X%a9%N@x'),
(12,	'munoz',	'anayaa',	'juan',	'0000-00-00',	'C',	NULL,	1,	12,	2,	'2018-04-06 03:56:59',	'juan.arturo.munoz@gmail.com',	'5b96672ae7709eab297550cae362d5bee468c57d'),
(13,	'erso',	'erso',	'jyn',	'0000-00-00',	'C',	NULL,	1,	12,	3,	'2018-04-06 03:30:08',	'jmunoz@syner.info',	'c%EKDnKe'),
(14,	'andor',	'',	'cassian',	'0000-00-00',	'C',	NULL,	1,	12,	3,	'2018-04-06 04:13:06',	'jmunoz@syner.info',	'n7BZhx9b'),
(15,	'andor1',	'',	'cassian1',	'0000-00-00',	'C',	NULL,	1,	14,	3,	'2018-04-06 04:19:38',	'jmunoz@syner.info',	'#pgrMJXB'),
(16,	'syndulla',	'',	'hera',	'0000-00-00',	'C',	NULL,	1,	12,	3,	'2018-04-06 04:50:31',	'jaamunoz@gmail.com',	'HYW$cMb0'),
(17,	'skywalker',	'',	'luke',	'0000-00-00',	'C',	NULL,	1,	12,	3,	'2018-04-06 04:51:51',	'mail@mail.com',	'FPZRRW1Y');

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id_person` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(65) NOT NULL,
  `lastname` varchar(65) NOT NULL,
  `age` varchar(45) NOT NULL,
  `hometown` varchar(200) NOT NULL,
  `job` varchar(200) NOT NULL,
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `person` (`id_person`, `firstname`, `lastname`, `age`, `hometown`, `job`) VALUES
(1,	'Ghazali',	'Samudra',	'22',	'sigli',	'kantoran'),
(2,	'Bukhari',	'Zulkifli',	'19',	'grong-grong',	'mahasiswa');

DROP TABLE IF EXISTS `status_cita`;
CREATE TABLE `status_cita` (
  `id_status` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `status_cita` (`id_status`, `descripcion`) VALUES
(1,	'Confirmada'),
(2,	'Atendida'),
(3,	'Cancelada'),
(4,	'Atendiendo');

DROP TABLE IF EXISTS `syneriot_temps`;
CREATE TABLE `syneriot_temps` (
  `sak_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `temp` tinyint(4) NOT NULL,
  PRIMARY KEY (`sak_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `syneriot_temps` (`sak_id`, `date`, `temp`) VALUES
(1,	'0000-00-00 00:00:00',	25),
(2,	'0000-00-00 00:00:00',	25),
(3,	'2015-04-18 19:47:33',	25),
(4,	'2015-04-19 03:53:12',	20);

DROP TABLE IF EXISTS `tbl_asociaciones_pacmed`;
CREATE TABLE `tbl_asociaciones_pacmed` (
  `idasc` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario_paciente` int(11) NOT NULL,
  `id_usuario_medico` int(11) NOT NULL,
  `idesp` tinyint(4) NOT NULL,
  `fecha_asc` datetime NOT NULL,
  PRIMARY KEY (`idasc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_asociaciones_pacmed` (`idasc`, `idusuario_paciente`, `id_usuario_medico`, `idesp`, `fecha_asc`) VALUES
(3,	96,	95,	0,	'0000-00-00 00:00:00'),
(4,	96,	92,	0,	'0000-00-00 00:00:00'),
(6,	96,	100,	0,	'0000-00-00 00:00:00'),
(7,	96,	101,	0,	'0000-00-00 00:00:00'),
(8,	106,	100,	0,	'2016-07-21 00:00:00'),
(9,	100,	107,	0,	'2016-07-26 00:00:00'),
(10,	100,	107,	0,	'2016-07-26 00:00:00'),
(11,	100,	107,	0,	'2016-07-26 00:00:00'),
(12,	100,	107,	0,	'2016-07-26 00:00:00'),
(13,	100,	100,	0,	'2016-07-26 00:00:00'),
(14,	96,	107,	0,	'2016-07-26 00:00:00'),
(15,	96,	92,	0,	'2016-07-26 00:00:00'),
(16,	96,	101,	0,	'2016-07-26 00:00:00'),
(17,	96,	95,	0,	'2016-07-26 00:00:00'),
(18,	109,	0,	0,	'2016-08-08 00:00:00'),
(19,	112,	100,	0,	'2016-08-08 00:00:00'),
(20,	112,	95,	0,	'2016-08-08 00:00:00'),
(21,	113,	100,	0,	'2016-08-08 00:00:00'),
(22,	120,	0,	0,	'2016-08-10 00:00:00'),
(23,	120,	0,	0,	'2016-08-10 00:00:00'),
(24,	120,	0,	0,	'2016-08-10 00:00:00'),
(25,	120,	0,	0,	'2016-08-10 00:00:00'),
(26,	120,	0,	0,	'2016-08-10 00:00:00'),
(27,	120,	0,	0,	'2016-08-10 00:00:00'),
(28,	120,	0,	0,	'2016-08-10 00:00:00'),
(29,	120,	0,	0,	'2016-08-10 00:00:00'),
(30,	120,	0,	0,	'2016-08-10 00:00:00'),
(31,	120,	0,	0,	'2016-08-10 00:00:00'),
(32,	120,	0,	0,	'2016-08-10 00:00:00'),
(33,	120,	0,	0,	'2016-08-10 00:00:00'),
(34,	120,	0,	0,	'2016-08-10 00:00:00'),
(35,	120,	0,	0,	'2016-08-10 00:00:00'),
(36,	120,	0,	0,	'2016-08-10 00:00:00'),
(37,	120,	0,	0,	'2016-08-10 00:00:00'),
(38,	96,	115,	0,	'2016-08-10 00:00:00'),
(39,	96,	123,	0,	'2016-08-10 00:00:00'),
(40,	120,	115,	0,	'2016-08-11 00:00:00'),
(41,	120,	92,	0,	'2016-08-11 00:00:00'),
(42,	120,	93,	0,	'2016-08-11 00:00:00'),
(43,	120,	101,	0,	'2016-08-11 00:00:00'),
(44,	127,	92,	0,	'2017-06-24 00:00:00'),
(45,	127,	127,	0,	'2017-06-24 00:00:00'),
(46,	127,	101,	0,	'2017-06-24 00:00:00'),
(47,	127,	107,	0,	'2017-06-24 00:00:00'),
(48,	127,	115,	0,	'2017-06-24 00:00:00'),
(49,	127,	115,	0,	'2017-06-24 00:00:00'),
(50,	127,	127,	0,	'2017-06-24 00:00:00'),
(51,	127,	127,	0,	'2017-06-24 00:00:00'),
(52,	127,	127,	0,	'2017-06-24 00:00:00'),
(53,	127,	127,	0,	'2017-06-24 00:00:00'),
(54,	127,	127,	0,	'2017-06-24 00:00:00'),
(55,	127,	127,	0,	'2017-06-24 00:00:00'),
(56,	127,	127,	0,	'2017-06-24 00:00:00'),
(57,	127,	127,	0,	'2017-06-24 00:00:00'),
(58,	140,	128,	0,	'2017-06-24 00:00:00'),
(59,	140,	128,	0,	'2017-06-24 00:00:00'),
(60,	140,	143,	0,	'2017-06-24 00:00:00'),
(61,	140,	128,	0,	'2017-06-24 00:00:00'),
(62,	144,	135,	0,	'2017-06-26 00:00:00'),
(63,	146,	107,	0,	'2017-06-26 00:00:00'),
(64,	146,	128,	0,	'2017-06-26 00:00:00'),
(65,	146,	92,	0,	'2017-06-26 00:00:00'),
(66,	146,	101,	0,	'2017-06-26 00:00:00'),
(67,	146,	100,	0,	'2017-06-26 00:00:00'),
(68,	145,	147,	0,	'2017-06-26 00:00:00'),
(69,	148,	135,	0,	'2017-06-27 00:00:00'),
(70,	148,	132,	0,	'2017-06-27 00:00:00'),
(71,	145,	153,	0,	'2017-07-05 00:00:00'),
(72,	145,	156,	0,	'2017-07-28 00:00:00'),
(73,	158,	153,	0,	'2017-07-29 00:00:00'),
(74,	159,	147,	0,	'2017-08-23 00:00:00'),
(75,	189,	190,	0,	'2017-09-13 00:00:00'),
(76,	191,	190,	0,	'2017-09-27 00:00:00'),
(77,	0,	193,	0,	'2018-03-25 00:00:00'),
(78,	196,	194,	0,	'2018-03-30 00:00:00'),
(79,	196,	195,	20,	'2018-03-30 00:00:00'),
(80,	197,	0,	0,	'2018-07-05 00:00:00'),
(81,	200,	197,	0,	'2018-07-06 00:00:00'),
(82,	200,	197,	0,	'2018-07-06 00:00:00'),
(83,	202,	197,	0,	'2018-07-06 00:00:00'),
(84,	202,	197,	0,	'2018-07-06 00:00:00'),
(85,	201,	197,	0,	'2018-07-06 00:00:00'),
(86,	201,	198,	0,	'2018-07-06 00:00:00');

DROP TABLE IF EXISTS `tbl_asociaciones_pacmed1`;
CREATE TABLE `tbl_asociaciones_pacmed1` (
  `idasc` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario_paciente` tinyint(4) NOT NULL,
  `id_usuario_medico` tinyint(4) NOT NULL,
  `fecha_asc` datetime NOT NULL,
  PRIMARY KEY (`idasc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_asociaciones_pacmed1` (`idasc`, `idusuario_paciente`, `id_usuario_medico`, `fecha_asc`) VALUES
(6,	127,	127,	'2017-06-24 23:00:29');

DROP TABLE IF EXISTS `tbl_catmedicos`;
CREATE TABLE `tbl_catmedicos` (
  `idcat` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idespecialidad` tinyint(2) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `perfil_completo` bit(1) NOT NULL,
  PRIMARY KEY (`idcat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_catmedicos` (`idcat`, `idusuario`, `idespecialidad`, `cedula`, `perfil_completo`) VALUES
(1,	107,	1,	'',	CONV('0', 2, 10) + 0),
(2,	92,	2,	'',	CONV('0', 2, 10) + 0),
(3,	93,	2,	'',	CONV('0', 2, 10) + 0),
(4,	95,	3,	'',	CONV('0', 2, 10) + 0),
(5,	100,	1,	'',	CONV('0', 2, 10) + 0),
(6,	101,	5,	'',	CONV('0', 2, 10) + 0),
(7,	92,	4,	'',	CONV('0', 2, 10) + 0),
(8,	92,	6,	'',	CONV('0', 2, 10) + 0),
(9,	93,	7,	'',	CONV('0', 2, 10) + 0),
(10,	93,	8,	'',	CONV('0', 2, 10) + 0),
(11,	95,	9,	'',	CONV('0', 2, 10) + 0),
(12,	95,	10,	'',	CONV('0', 2, 10) + 0),
(13,	100,	11,	'',	CONV('0', 2, 10) + 0),
(14,	100,	12,	'',	CONV('0', 2, 10) + 0),
(15,	105,	13,	'',	CONV('0', 2, 10) + 0),
(16,	105,	14,	'',	CONV('0', 2, 10) + 0),
(17,	107,	15,	'',	CONV('0', 2, 10) + 0),
(18,	107,	16,	'',	CONV('0', 2, 10) + 0),
(19,	92,	17,	'',	CONV('0', 2, 10) + 0),
(20,	92,	18,	'',	CONV('0', 2, 10) + 0),
(21,	93,	19,	'',	CONV('0', 2, 10) + 0),
(22,	123,	1,	'45234523',	CONV('0', 2, 10) + 0),
(23,	115,	1,	'',	CONV('0', 2, 10) + 0),
(24,	128,	1,	'12345',	CONV('0', 2, 10) + 0),
(25,	132,	1,	'Abc1234',	CONV('0', 2, 10) + 0),
(26,	134,	1,	'1234',	CONV('0', 2, 10) + 0),
(27,	135,	1,	'11111',	CONV('0', 2, 10) + 0),
(28,	138,	2,	'12345',	CONV('0', 2, 10) + 0),
(29,	143,	19,	'12345',	CONV('0', 2, 10) + 0),
(30,	147,	1,	'12345',	CONV('0', 2, 10) + 0),
(31,	150,	2,	'1234',	CONV('0', 2, 10) + 0),
(32,	152,	0,	'12345',	CONV('0', 2, 10) + 0),
(33,	152,	0,	'12345',	CONV('0', 2, 10) + 0),
(34,	152,	5,	'12345',	CONV('0', 2, 10) + 0),
(35,	153,	1,	'6178950',	CONV('0', 2, 10) + 0),
(36,	156,	13,	'321321321',	CONV('0', 2, 10) + 0),
(37,	190,	1,	'1234',	CONV('0', 2, 10) + 0),
(38,	193,	100,	'abc12345',	CONV('0', 2, 10) + 0),
(39,	103,	102,	'abc12345',	CONV('0', 2, 10) + 0),
(40,	194,	20,	'abc12345',	CONV('0', 2, 10) + 0),
(41,	197,	18,	'',	CONV('0', 2, 10) + 0),
(42,	201,	3,	'',	CONV('0', 2, 10) + 0),
(43,	203,	7,	'123456789',	CONV('0', 2, 10) + 0),
(44,	198,	1,	'',	CONV('0', 2, 10) + 0);

DROP TABLE IF EXISTS `tbl_cat_estudios`;
CREATE TABLE `tbl_cat_estudios` (
  `idestudio` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`idestudio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_cat_estudios` (`idestudio`, `descripcion`) VALUES
(1,	'Sangre'),
(2,	'Orina'),
(3,	'Flemas'),
(4,	'Heces fecales'),
(5,	'Radiografia'),
(6,	'MRI'),
(7,	'Lobotomia');

DROP TABLE IF EXISTS `tbl_detalles_cita`;
CREATE TABLE `tbl_detalles_cita` (
  `iddetalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_cita` int(11) NOT NULL,
  `id_tratamiento` int(11) DEFAULT NULL,
  `hechos` varchar(100) NOT NULL,
  `sintomas` varchar(100) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `temp` tinyint(2) NOT NULL,
  `fc` tinyint(3) NOT NULL,
  `fr` tinyint(2) NOT NULL,
  `ta` varchar(7) NOT NULL,
  `auscultacion` varchar(100) NOT NULL,
  `orden_lab_img_elect` varchar(20) DEFAULT NULL,
  `id_orden_lab_img_elect` int(11) DEFAULT NULL,
  `diagnostico` varchar(100) NOT NULL,
  PRIMARY KEY (`iddetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_detalles_cita` (`iddetalle`, `id_cita`, `id_tratamiento`, `hechos`, `sintomas`, `peso`, `temp`, `fc`, `fr`, `ta`, `auscultacion`, `orden_lab_img_elect`, `id_orden_lab_img_elect`, `diagnostico`) VALUES
(79,	147,	NULL,	'',	'',	0,	0,	0,	0,	'',	'se hizo exploracion ambdominal, presenta inflamacion',	'',	NULL,	'amebiasis'),
(80,	148,	NULL,	'',	'',	0,	0,	0,	0,	'',	'se reviso al paciente en el area referida encontrando musculos contraidos',	'',	NULL,	'contractura muscular'),
(81,	150,	NULL,	'',	'',	0,	0,	0,	0,	'',	'se revisop al paciente',	'',	NULL,	'gastritis'),
(82,	158,	NULL,	'',	'',	70,	37,	80,	20,	'120/90',	'',	'',	NULL,	'Mafutecteria ');

DROP TABLE IF EXISTS `tbl_detalles_tratamiento`;
CREATE TABLE `tbl_detalles_tratamiento` (
  `id_tratamiento` int(11) NOT NULL,
  `partida` int(11) NOT NULL AUTO_INCREMENT,
  `medicamento` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `cantidad` smallint(4) NOT NULL,
  `hora` tinyint(2) NOT NULL,
  `tx_inicio` date NOT NULL,
  `tx_fin` date NOT NULL,
  `id_estatus_tratamiento` tinyint(4) NOT NULL,
  `notaparamedico` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`partida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_detalles_tratamiento` (`id_tratamiento`, `partida`, `medicamento`, `tipo`, `cantidad`, `hora`, `tx_inicio`, `tx_fin`, `id_estatus_tratamiento`, `notaparamedico`) VALUES
(108,	140,	'kaopectate',	'3',	2,	8,	'0000-00-00',	'0000-00-00',	1,	NULL),
(109,	141,	'desinlamadorzina',	'2',	3,	24,	'0000-00-00',	'0000-00-00',	1,	NULL),
(110,	142,	'genoprazol',	'1',	2,	8,	'2017-09-27',	'2017-09-27',	1,	NULL),
(111,	143,	'testoreno',	'2',	10,	12,	'2018-07-08',	'2018-07-08',	1,	NULL),
(111,	144,	'parasetamol',	'1',	500,	8,	'2018-07-06',	'2018-07-06',	1,	NULL);

DROP TABLE IF EXISTS `tbl_det_orden`;
CREATE TABLE `tbl_det_orden` (
  `id_det_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) NOT NULL,
  `id_estatus_orden` tinyint(4) NOT NULL,
  `id_fecha` datetime NOT NULL,
  PRIMARY KEY (`id_det_orden`),
  KEY `id_orden` (`id_orden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_espmedicas`;
CREATE TABLE `tbl_espmedicas` (
  `idesp` tinyint(2) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`idesp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_espmedicas` (`idesp`, `descripcion`) VALUES
(1,	'Medicina Familiar'),
(3,	'General y Cirujano'),
(4,	'Pediatra'),
(5,	'Cardiologia'),
(6,	'Ortopedia'),
(7,	'Internista'),
(8,	'Nefrologia'),
(9,	'Neumologia'),
(10,	'Oncologia'),
(11,	'Otorrino'),
(12,	'Neurologia'),
(13,	'Oftalmologia'),
(14,	'Odontologia'),
(15,	'Urologia'),
(16,	'Dermatologia'),
(17,	'Podologia'),
(18,	'Psiquiatria'),
(19,	'Ginecologia'),
(20,	'Psicología');

DROP TABLE IF EXISTS `tbl_estatus_ordenes_lab`;
CREATE TABLE `tbl_estatus_ordenes_lab` (
  `id_estatus_orden` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_estatus_orden`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_estatus_ordenes_lab` (`id_estatus_orden`, `descripcion`) VALUES
(1,	'Ordenado'),
(2,	'Paciente Acudió a Lab'),
(3,	'En laboratorio'),
(4,	'Resultados Listos');

DROP TABLE IF EXISTS `tbl_estatus_tratamiento`;
CREATE TABLE `tbl_estatus_tratamiento` (
  `id_estatus_tratamiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estatus_tratamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_estatus_tratamiento` (`id_estatus_tratamiento`, `descripcion`) VALUES
(1,	'Vigente'),
(2,	'Suspendido'),
(3,	'Terminado'),
(4,	'Cancelado'),
(5,	'En revisión por part');

DROP TABLE IF EXISTS `tbl_estudios_paciente`;
CREATE TABLE `tbl_estudios_paciente` (
  `id_estudio` int(11) NOT NULL AUTO_INCREMENT,
  `id_cita` int(11) NOT NULL,
  `id_tipo_svc` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_estudio`),
  KEY `id_cita` (`id_cita`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_generalesmedicos`;
CREATE TABLE `tbl_generalesmedicos` (
  `idgenerales` int(11) NOT NULL AUTO_INCREMENT,
  `idmedico` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `idespecialidad` tinyint(2) NOT NULL,
  `consulta_en` varchar(50) NOT NULL,
  PRIMARY KEY (`idgenerales`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_generalesmedicos` (`idgenerales`, `idmedico`, `cedula`, `idespecialidad`, `consulta_en`) VALUES
(1,	0,	'abc123',	2,	'h. angeles'),
(3,	101,	'abc12345',	2,	'h. star medica'),
(4,	105,	'4689928',	1,	''),
(5,	105,	'8987478',	1,	'Hopital, clinica, direccion #de consultorio'),
(6,	105,	'4689928',	1,	'Hospital STJ, Barranco Azul s/n, '),
(7,	115,	'12345678',	1,	'Hospital Zaragoza, C. RamÃ³n RayÃ³n s/n, consultor'),
(8,	115,	'1234567',	1,	'Hospital Zaragoza, C. RamÃ³n RayÃ³n s/n, consultor'),
(9,	115,	'1122334',	1,	'Hospital Zaragoza, C. RamÃ³n RayÃ³n s/n, consultor'),
(10,	115,	'1234567',	1,	'Hospital Zaragoza, C. RamÃ³n RayÃ³n s/n, consultor'),
(11,	121,	'12345',	1,	'zaragoza'),
(12,	122,	'A122356',	1,	'femap3'),
(13,	122,	'b12345',	1,	'gemap4'),
(14,	122,	'c12345',	1,	'femap5'),
(15,	123,	'd12245',	1,	'feamp6'),
(16,	123,	'45234523',	1,	'femap7'),
(17,	128,	'12345',	1,	'hospital de la familia1'),
(18,	132,	'Abc1234',	1,	'por ahi'),
(19,	134,	'1234',	1,	'uni'),
(20,	135,	'11111',	1,	'imss'),
(21,	138,	'12345',	2,	'calle del hospital #20'),
(22,	143,	'12345',	2,	'imss 66'),
(23,	147,	'12345',	1,	'imss 6'),
(24,	150,	'1234',	2,	'imss 66'),
(27,	152,	'12345',	5,	'imss 66'),
(28,	153,	'6178950',	1,	'C. Victoria 9048 Fracc. Alameda HipÃ³dromo'),
(29,	156,	'321321321',	13,	'dssadfas'),
(30,	190,	'1234',	1,	'imss 6'),
(31,	194,	'abc12345',	20,	'abc'),
(32,	197,	'',	18,	''),
(33,	201,	'',	3,	'9-9'),
(34,	203,	'123456789',	7,	'hospital 1'),
(35,	198,	'',	1,	'');

DROP TABLE IF EXISTS `tbl_honorariosmedicos`;
CREATE TABLE `tbl_honorariosmedicos` (
  `idhonorarios` int(11) NOT NULL AUTO_INCREMENT,
  `idmedico` int(11) NOT NULL,
  `concepto` varchar(50) NOT NULL,
  `cantidad` decimal(10,0) NOT NULL,
  `idtarifahonorarios` tinyint(1) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`idhonorarios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_honorariosmedicos` (`idhonorarios`, `idmedico`, `concepto`, `cantidad`, `idtarifahonorarios`, `desc`) VALUES
(1,	101,	'consulta regular',	100,	1,	''),
(2,	105,	'Consulta',	300,	1,	''),
(3,	115,	'Consulta',	300,	1,	''),
(4,	124,	'consulta horario regular',	150,	1,	''),
(5,	124,	'consulta fuera de horario regular',	250,	2,	''),
(6,	128,	'',	0,	0,	'100 pesos'),
(7,	132,	'',	0,	0,	'100'),
(8,	134,	'',	0,	0,	'100'),
(9,	135,	'',	0,	0,	'100'),
(10,	138,	'',	0,	0,	'300'),
(11,	143,	'',	0,	0,	'300'),
(12,	147,	'',	0,	0,	'100'),
(13,	150,	'',	0,	0,	'100'),
(14,	152,	'',	0,	0,	'100'),
(15,	152,	'',	0,	0,	'100'),
(16,	152,	'',	0,	0,	'100'),
(17,	153,	'',	0,	0,	'150'),
(18,	156,	'',	0,	0,	'100'),
(19,	190,	'',	0,	0,	'100 pesos'),
(20,	194,	'',	0,	0,	'abc'),
(21,	197,	'',	0,	0,	''),
(22,	197,	'Consulta ',	50,	1,	''),
(23,	197,	'Analisis ',	200,	1,	''),
(24,	201,	'',	0,	0,	'Regular 30 pesos\r\n'),
(25,	203,	'',	0,	0,	'Horario regular: $50'),
(26,	198,	'',	0,	0,	'');

DROP TABLE IF EXISTS `tbl_horariosconsultas`;
CREATE TABLE `tbl_horariosconsultas` (
  `idhorario` int(11) NOT NULL AUTO_INCREMENT,
  `idmedico` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `desc` varchar(500) NOT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_horariosconsultas` (`idhorario`, `idmedico`, `dia`, `desc`) VALUES
(1,	101,	'lunes',	''),
(2,	101,	'martes',	''),
(3,	101,	'miercoles',	''),
(4,	101,	'jueves',	''),
(5,	101,	'viernes',	''),
(7,	101,	'lunes',	''),
(8,	101,	'lunes',	''),
(9,	101,	'lunes',	''),
(10,	101,	'Lunes',	''),
(11,	128,	'',	'L,Mi,V: 8-1;3-5\r\nMa,J: 3-6'),
(12,	132,	'',	'lunes y martes horario de oficina'),
(13,	134,	'',	'lv'),
(14,	135,	'',	'9pm'),
(15,	138,	'',	'9-1pm'),
(16,	143,	'',	'9am-1pm'),
(17,	147,	'',	'todo el dia'),
(18,	150,	'',	'maniana'),
(19,	152,	'',	'matutino'),
(20,	152,	'',	'matutino'),
(21,	152,	'',	'vespertino'),
(22,	153,	'',	'10:00 - 17:00'),
(23,	156,	'',	'9a,'),
(24,	190,	'',	'3-9pm'),
(25,	194,	'',	'abc'),
(26,	197,	'',	''),
(27,	201,	'',	'9:00 am 9:00pm'),
(28,	203,	'',	'L-J 11:00 a 16:30'),
(29,	198,	'',	'');

DROP TABLE IF EXISTS `tbl_horariosconsultas_det`;
CREATE TABLE `tbl_horariosconsultas_det` (
  `idhorario` int(11) NOT NULL,
  `hora` varchar(15) NOT NULL,
  `idtarifahonorarios` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_idhorariosmedicos`;
CREATE TABLE `tbl_idhorariosmedicos` (
  `id_horario` tinyint(2) NOT NULL AUTO_INCREMENT,
  `hora_inicio` varchar(5) NOT NULL,
  `hora_fin` varchar(5) NOT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_idhorariosmedicos` (`id_horario`, `hora_inicio`, `hora_fin`) VALUES
(1,	'09:00',	'09:30'),
(2,	'09:30',	'10:00'),
(3,	'10:00',	'10:30'),
(4,	'10:30',	'11:00'),
(5,	'11:00',	'11:30'),
(6,	'11:30',	'12:00'),
(7,	'12:00',	'12:30'),
(8,	'12:30',	'13:00'),
(9,	'16:00',	'16:30'),
(10,	'16:30',	'17:00'),
(11,	'17:00',	'17:30'),
(12,	'17:30',	'18:00'),
(13,	'18:00',	'18:30'),
(14,	'18:30',	'19:00'),
(15,	'19:00',	'19:30');

DROP TABLE IF EXISTS `tbl_keys`;
CREATE TABLE `tbl_keys` (
  `idkey` int(11) NOT NULL AUTO_INCREMENT,
  `p` varchar(20) NOT NULL,
  `q` varchar(20) NOT NULL,
  PRIMARY KEY (`idkey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_keys` (`idkey`, `p`, `q`) VALUES
(1,	'9990454949',	'9990450271');

DROP TABLE IF EXISTS `tbl_laboratorios`;
CREATE TABLE `tbl_laboratorios` (
  `id_lab` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `directorio_img_ordenes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_laboratorios` (`id_lab`, `nombre`, `rfc`, `direccion`, `tel`, `email`, `password`, `fecha_registro`, `directorio_img_ordenes`) VALUES
(4,	'munoz labs',	'abc1234',	'jrz mx',	'656112333',	'munoz@labs.com',	'ac5011099b7929f7268a3a191230f083',	'2017-06-28 00:00:00',	''),
(5,	'lab2',	'abc',	'abc',	'12345',	'lab2@labs.com',	'cccaef27105d358ee93672cfbe6a9e75',	'2017-07-03 00:00:00',	''),
(6,	'bere labs',	'abc1234',	'juarez',	'12345',	'bere@labs.com',	'e32704788153b401e9ce1e3626fb92f1',	'2017-07-28 00:00:00',	''),
(7,	'lab1',	'avc',	'juarez',	'12345',	'lab1@labs.com',	'c71d95e45c691880f27c86d5e37d5b97',	'2017-07-28 00:00:00',	''),
(8,	'munozlab1',	'a',	'a',	'1',	'munoz1@labs.com',	'6ebb699ee94c9a33ca5b40d46c3e520d',	'2017-09-24 00:00:00',	''),
(9,	'teclab1',	'a',	'a',	'1',	'teclab1@labs.com',	'd7da4c9c786561c72173d90072135aaf',	'2017-09-24 00:00:00',	''),
(10,	'lab-lab',	'a',	'a',	'a',	'tech2@labs.com',	'a90065bedeaa9edd49fec117b419b5f8',	'2017-09-24 00:00:00',	''),
(11,	'Malditos licenciados inc. ',	'8813ROCEASDC',	'Heroico colegio militar ',	'6564290753',	'Kuronoshinigami1388@gmail.com',	'27d6d7e19e674e6bad1077800bfd3367',	'2018-07-05 00:00:00',	''),
(12,	'Malditos licenciados inc. ',	'8813ROCEASDC',	'Heroico colegio militar ',	'6564290753',	'kuronoshinigami88@gmail.com',	'0a7a99e64877e93a8be4d08a2ad4dc15',	'2018-07-05 00:00:00',	'');

DROP TABLE IF EXISTS `tbl_msjs_cifrados`;
CREATE TABLE `tbl_msjs_cifrados` (
  `id_msj` int(11) NOT NULL AUTO_INCREMENT,
  `id_origen` int(11) NOT NULL,
  `id_destino` int(11) NOT NULL,
  `id_estatus` int(11) NOT NULL,
  `msj` varchar(500) NOT NULL,
  PRIMARY KEY (`id_msj`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_ordenes_lab`;
CREATE TABLE `tbl_ordenes_lab` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_cita` int(11) NOT NULL,
  `id_tipo_svc` tinyint(4) NOT NULL,
  `especificaciones_del_medico` varchar(100) NOT NULL,
  PRIMARY KEY (`id_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_ordenes_lab` (`id_orden`, `id_cita`, `id_tipo_svc`, `especificaciones_del_medico`) VALUES
(1,	90,	0,	''),
(2,	91,	6,	'Todo '),
(3,	93,	1,	'smac 30'),
(4,	98,	1,	'smak 40'),
(5,	123,	5,	'de torax, anterior y lateral'),
(6,	123,	5,	'de craneo'),
(7,	123,	5,	'de craneo'),
(8,	123,	6,	'smac 20'),
(9,	123,	6,	'smac 20'),
(10,	123,	1,	'smac 30'),
(11,	123,	1,	'smac 30'),
(12,	123,	1,	'smac 30'),
(13,	123,	1,	'smac 30'),
(14,	123,	1,	'smac 30'),
(15,	123,	1,	'smac 30'),
(16,	123,	1,	'smac 30'),
(17,	123,	1,	'smac 30'),
(18,	123,	1,	'ddddd'),
(19,	123,	7,	'fffffffff'),
(20,	123,	3,	'aaaaaa'),
(21,	127,	1,	'smac 30');

DROP TABLE IF EXISTS `tbl_pacmejoria`;
CREATE TABLE `tbl_pacmejoria` (
  `id_estado` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_pacmejoria` (`id_estado`, `descripcion`) VALUES
(1,	'Pior'),
(2,	'Igual'),
(3,	'Mejor'),
(4,	'Sanando');

DROP TABLE IF EXISTS `tbl_primerLogin`;
CREATE TABLE `tbl_primerLogin` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `primerLogin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_primerLogin` (`id_login`, `id_usuario`, `primerLogin`) VALUES
(30,	196,	'2018-03-31 03:34:46'),
(29,	195,	'2018-03-31 03:33:14'),
(28,	194,	'2018-03-29 05:04:04'),
(27,	3,	'2018-03-24 19:15:01'),
(31,	197,	'2018-07-06 04:05:07'),
(32,	198,	'2018-07-06 04:11:09'),
(33,	200,	'2018-07-06 04:26:37'),
(34,	201,	'2018-07-06 04:30:46'),
(35,	202,	'2018-07-06 20:00:31'),
(36,	203,	'2018-07-06 20:02:57');

DROP TABLE IF EXISTS `tbl_psic_datos_generales`;
CREATE TABLE `tbl_psic_datos_generales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_paterno` varchar(20) NOT NULL,
  `ap_materno` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `f_nacim` date NOT NULL,
  `idtipousuario` tinyint(2) NOT NULL,
  `calle_y_num` varchar(30) NOT NULL,
  `colonia` varchar(20) NOT NULL,
  `codigo_postal` varchar(5) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `id_estado_civil` tinyint(4) NOT NULL,
  `id_grado_estudios` tinyint(4) NOT NULL,
  `ocupacion` varchar(15) NOT NULL,
  `id_religion` tinyint(4) NOT NULL,
  `ciudad_nacimiento` varchar(20) NOT NULL,
  `id_estado_nacimiento` tinyint(4) NOT NULL,
  `tiempo_en_cdj` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_psic_datos_generales` (`id`, `ap_paterno`, `ap_materno`, `name`, `sexo`, `f_nacim`, `idtipousuario`, `calle_y_num`, `colonia`, `codigo_postal`, `telefono`, `id_estado_civil`, `id_grado_estudios`, `ocupacion`, `id_religion`, `ciudad_nacimiento`, `id_estado_nacimiento`, `tiempo_en_cdj`) VALUES
(1,	'munoz',	'anaya',	'juan',	'1',	'0000-00-00',	1,	'rancho 1234',	'pradera',	'32618',	'6564063059',	1,	5,	'ing',	1,	'juarez',	12,	37),
(3,	'munz',	'any',	'juancho',	'H',	'1980-10-10',	1,	'',	'',	'',	'12232',	1,	5,	'ing',	1,	'jurit',	1,	10);

DROP TABLE IF EXISTS `tbl_psic_espmedicas`;
CREATE TABLE `tbl_psic_espmedicas` (
  `idesp` tinyint(2) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`idesp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_psic_espmedicas` (`idesp`, `descripcion`) VALUES
(100,	'Psicología clínica y'),
(102,	'Psicología organizac'),
(103,	'Psicología educativa'),
(104,	'Neuropsicología'),
(105,	'Psicología social'),
(106,	'Psicología familiar '),
(107,	'Psicología del depor'),
(108,	'Psicología forense');

DROP TABLE IF EXISTS `tbl_psic_primera_cita`;
CREATE TABLE `tbl_psic_primera_cita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_consultas_previas` tinyint(4) NOT NULL,
  `motivos` varchar(500) NOT NULL,
  `motivo_consulta` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_resultados_ordenes_lab`;
CREATE TABLE `tbl_resultados_ordenes_lab` (
  `id_rx` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudio` int(11) NOT NULL,
  `datos` varchar(500) NOT NULL,
  `interpretacion` varchar(500) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_svs_por_laboratorio`;
CREATE TABLE `tbl_svs_por_laboratorio` (
  `id_lab` int(11) NOT NULL,
  `id_tipo_svc` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_svs_por_laboratorio` (`id_lab`, `id_tipo_svc`) VALUES
(0,	1),
(4,	5),
(4,	4),
(4,	3),
(4,	1),
(0,	2),
(0,	3),
(9,	1),
(9,	2),
(9,	3);

DROP TABLE IF EXISTS `tbl_test`;
CREATE TABLE `tbl_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_tipos_svs_laboratorios`;
CREATE TABLE `tbl_tipos_svs_laboratorios` (
  `id_tipo_svc` tinyint(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_svc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_tipos_svs_laboratorios` (`id_tipo_svc`, `descripcion`) VALUES
(1,	'Análisis de Sangre'),
(2,	'Análisis de Orina'),
(3,	'Análisis de Heces'),
(4,	'Rayos X'),
(5,	'IMR'),
(6,	'Ultrasonido');

DROP TABLE IF EXISTS `tbl_tratamientos`;
CREATE TABLE `tbl_tratamientos` (
  `id_tratamiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_cita` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_estatus_tratamiento` tinyint(4) NOT NULL,
  `notas` varchar(200) NOT NULL,
  PRIMARY KEY (`id_tratamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_tratamientos` (`id_tratamiento`, `id_cita`, `id_usuario`, `id_estatus_tratamiento`, `notas`) VALUES
(108,	147,	191,	1,	'Tratamiento para tratar: '),
(109,	148,	189,	1,	'Tratamiento para tratar: '),
(110,	150,	189,	1,	'Tratamiento para tratar: '),
(111,	158,	202,	1,	'Tratamiento para tratar: ');

DROP TABLE IF EXISTS `tbl_tx_dsignt`;
CREATE TABLE `tbl_tx_dsignt` (
  `id_dsignt` int(11) NOT NULL AUTO_INCREMENT,
  `id_tratamiento` int(11) NOT NULL,
  `f_dsignt` text NOT NULL,
  PRIMARY KEY (`id_dsignt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_tx_dsignt` (`id_dsignt`, `id_tratamiento`, `f_dsignt`) VALUES
(8,	110,	'5379165248400733542 58012509743986031453 96119043467482017679 26970046296120984066 88814930141467678603 43665934750618487048 98593770948809953311 47053503972091900012'),
(7,	109,	'76432852050856161204 93174734143966432992 88608238664561301193 35719583058266013797 3900774534655317345 97140783665598737855 25884866013075496709 90465023843475392737'),
(6,	108,	'5798935867633092980 47891364408297671787 45064773457508197898 70724493513274757431 60132052669636200177 43756215797344468035 20125134742613248772 50813116979967742555'),
(9,	111,	'60959378978960986827 69317182966225424680 53754529267316408607 65486108870654699226 32278645306231727552 51687338980915723045 4998618600361514607 35059418020933322778');

DROP TABLE IF EXISTS `tbl_users_log`;
CREATE TABLE `tbl_users_log` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_step` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_users_log` (`id_actividad`, `id_user`, `id_step`, `date`) VALUES
(1,	0,	1,	'2018-03-24 12:40:03'),
(2,	3,	1,	'2018-03-24 12:41:58'),
(3,	0,	2,	'2018-03-25 20:58:09'),
(4,	0,	3,	'2018-03-25 21:04:58'),
(5,	0,	3,	'2018-03-25 21:05:22'),
(6,	194,	1,	'2018-03-28 23:03:17'),
(7,	195,	1,	'2018-03-30 21:32:19'),
(8,	196,	1,	'2018-03-30 21:33:55'),
(9,	196,	2,	'2018-03-30 21:35:15'),
(10,	196,	3,	'2018-03-30 21:35:42'),
(11,	195,	1,	'2018-04-03 21:34:21'),
(12,	195,	1,	'2018-04-03 21:36:48'),
(13,	195,	1,	'2018-04-03 21:38:17'),
(14,	0,	1,	'2018-04-03 21:42:48'),
(15,	0,	1,	'2018-04-03 21:43:43'),
(16,	0,	1,	'2018-04-03 21:46:30'),
(17,	0,	1,	'2018-04-03 21:49:14'),
(18,	0,	1,	'2018-04-03 21:51:44'),
(19,	3,	1,	'2018-04-03 22:06:12'),
(20,	4,	1,	'2018-04-04 20:56:33'),
(21,	0,	1,	'2018-04-04 20:59:56'),
(22,	0,	1,	'2018-04-04 21:01:45'),
(23,	0,	1,	'2018-04-04 21:02:56'),
(24,	0,	1,	'2018-04-04 21:03:39'),
(25,	5,	1,	'2018-04-04 21:07:34'),
(26,	6,	1,	'2018-04-04 21:10:31'),
(27,	7,	1,	'2018-04-05 19:53:09'),
(28,	0,	1,	'2018-04-05 20:54:30'),
(29,	0,	1,	'2018-04-05 20:55:09'),
(30,	8,	1,	'2018-04-05 20:56:29'),
(31,	9,	1,	'2018-04-05 21:13:58'),
(32,	10,	1,	'2018-04-05 21:16:34'),
(33,	11,	1,	'2018-04-05 21:18:02'),
(34,	12,	1,	'2018-04-05 21:23:44'),
(35,	13,	1,	'2018-04-05 21:30:08'),
(36,	14,	1,	'2018-04-05 22:13:07'),
(37,	15,	1,	'2018-04-05 22:19:38'),
(38,	16,	1,	'2018-04-05 22:50:31'),
(39,	17,	1,	'2018-04-05 22:51:51'),
(40,	197,	1,	'2018-07-05 22:03:53'),
(41,	197,	3,	'2018-07-05 22:07:06'),
(42,	198,	1,	'2018-07-05 22:07:59'),
(43,	197,	3,	'2018-07-05 22:08:31'),
(44,	197,	5,	'2018-07-05 22:12:05'),
(45,	197,	2,	'2018-07-05 22:12:39'),
(46,	199,	1,	'2018-07-05 22:18:02'),
(47,	11,	1,	'2018-07-05 22:22:27'),
(48,	12,	1,	'2018-07-05 22:24:25'),
(49,	200,	1,	'2018-07-05 22:25:37'),
(50,	200,	3,	'2018-07-05 22:29:18'),
(51,	201,	1,	'2018-07-05 22:30:17'),
(52,	200,	5,	'2018-07-05 22:30:33'),
(53,	201,	5,	'2018-07-05 22:32:05'),
(54,	202,	1,	'2018-07-06 13:58:06'),
(55,	203,	1,	'2018-07-06 13:59:40'),
(56,	200,	2,	'2018-07-06 14:19:38'),
(57,	200,	2,	'2018-07-06 14:19:51'),
(58,	202,	2,	'2018-07-06 14:19:57'),
(59,	202,	2,	'2018-07-06 14:20:08'),
(60,	200,	3,	'2018-07-06 14:20:22'),
(61,	200,	3,	'2018-07-06 14:22:33'),
(62,	202,	3,	'2018-07-06 14:22:45'),
(63,	201,	2,	'2018-07-06 14:22:47'),
(64,	197,	4,	'2018-07-06 14:23:56'),
(65,	201,	3,	'2018-07-06 14:23:57'),
(66,	201,	2,	'2018-07-06 14:24:43'),
(67,	201,	3,	'2018-07-06 14:25:53');

DROP TABLE IF EXISTS `tbl_user_steps`;
CREATE TABLE `tbl_user_steps` (
  `id_step` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_step`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_user_steps` (`id_step`, `descripcion`) VALUES
(1,	'Registro 1era vez'),
(2,	'Asoció un médico'),
(3,	'Creo una Cita'),
(4,	'Atendó una cita'),
(5,	'Agregó Historial Méd'),
(6,	'Creó tratamiento'),
(7,	'Notificó al médico c'),
(8,	'Cerró tratamiento');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_materno` text NOT NULL,
  `ap_paterno` text NOT NULL,
  `name` text NOT NULL,
  `idtipousuario` tinyint(2) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `diary` text NOT NULL,
  `f_nacim` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `ap_materno`, `ap_paterno`, `name`, `idtipousuario`, `email`, `password`, `diary`, `f_nacim`, `sexo`) VALUES
(103,	'hdez',	'hdez',	'juan2',	2,	'juan.arturo.mu1noz@gmail.com',	'Abc12345!',	'',	'0000-00-00',	'1'),
(193,	'hdez',	'hdez',	'juan1',	2,	'juan.ar1turo.munoz@gmail.com',	'Abc1234!',	'',	'0000-00-00',	'1'),
(194,	'hdez',	'hdez1',	'juan',	2,	'juan.arturo.mu7noz@gmail.com',	'f06c47b0847615fab7cdbbfe9b91265bb9a19191',	'',	'0000-00-00',	'H'),
(195,	'hdez',	'hdez',	'juan4',	2,	'juan.arturo.munoz@gmail.com',	'5b96672ae7709eab297550cae362d5bee468c57d',	'',	'0000-00-00',	'H'),
(196,	'anaya',	'munoz',	'juan',	1,	'jmunoz@syner.info',	'5b96672ae7709eab297550cae362d5bee468c57d',	'',	'0000-00-00',	'H'),
(197,	'Doctor',	'SeÃ±or ',	'Profesor Patricio',	2,	'Kuronoshinigami1388@gmail.com',	'c8ae4d93d855879368bb110e2a026ea092123493',	'',	'0000-00-00',	'H'),
(198,	'Mmarquez',	'Chavez',	'Heriberto',	2,	'heribertocha@outlook.com',	'8c31b65bdecdc9f18b695d7318186fd1feed690d',	'',	'0000-00-00',	'H'),
(199,	'ch',	'her',	'mr',	1,	'heribertocha@yahoo.com.mx',	'IHjg3%!4',	'',	'0000-00-00',	'H'),
(200,	'Rodriguez',	'Eduardo',	'Carballo',	1,	'kuronoshinigami88@gmail.com',	'c8ae4d93d855879368bb110e2a026ea092123493',	'',	'0000-00-00',	'H'),
(201,	'mati',	'joun',	'ganio',	1,	'heribertocha@gmail.com',	'8c31b65bdecdc9f18b695d7318186fd1feed690d',	'',	'0000-00-00',	'H'),
(202,	'Chaparro',	'Gonzalez',	'Gabriel Isidro',	1,	'al124250@alumnos.uacj.mx',	'1f801c34ae356cc48fe323392832509b68647fe1',	'',	'0000-00-00',	'H'),
(203,	'Chaparro',	'Gonzalez',	'Jose Luis',	2,	'mafu.home@hotmail.com',	'1f801c34ae356cc48fe323392832509b68647fe1',	'',	'0000-00-00',	'H');

DROP TABLE IF EXISTS `users_det`;
CREATE TABLE `users_det` (
  `id` smallint(6) NOT NULL,
  `idtipousuario` smallint(6) NOT NULL,
  `idgenero` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users_det` (`id`, `idtipousuario`, `idgenero`) VALUES
(0,	1,	0),
(2,	1,	0),
(3,	1,	0),
(68,	1,	1),
(69,	2,	2),
(70,	1,	2),
(71,	2,	1),
(72,	1,	1),
(73,	1,	1),
(74,	2,	1),
(75,	0,	0),
(76,	0,	0),
(78,	1,	0),
(79,	1,	0),
(80,	1,	0),
(81,	1,	0),
(82,	1,	0),
(83,	1,	0),
(84,	1,	0),
(85,	1,	0),
(86,	1,	0),
(87,	1,	0),
(88,	1,	0),
(89,	1,	0),
(90,	1,	0),
(91,	2,	0),
(92,	2,	0),
(94,	1,	0),
(95,	2,	0),
(96,	1,	0),
(97,	1,	0),
(98,	2,	0),
(99,	1,	0),
(100,	2,	0),
(101,	2,	0),
(102,	1,	0),
(103,	1,	0),
(104,	1,	0),
(105,	2,	0),
(106,	1,	0),
(107,	2,	0),
(108,	1,	0),
(109,	1,	0),
(110,	1,	0),
(111,	1,	0),
(112,	1,	0),
(113,	1,	0),
(114,	1,	0),
(115,	2,	0),
(116,	1,	0),
(117,	1,	0),
(118,	1,	0),
(119,	1,	0),
(120,	1,	0),
(121,	2,	0),
(122,	2,	0),
(123,	2,	0),
(124,	2,	0),
(125,	1,	0),
(126,	2,	0),
(127,	2,	0),
(128,	2,	0),
(129,	1,	0),
(130,	2,	0),
(131,	2,	0),
(132,	2,	0),
(133,	1,	0),
(134,	2,	0),
(135,	2,	0),
(136,	1,	0),
(137,	1,	0),
(138,	2,	0),
(139,	1,	0),
(140,	1,	0),
(141,	1,	0),
(142,	2,	0),
(143,	2,	0),
(144,	1,	0),
(145,	1,	0),
(146,	1,	0),
(147,	2,	0),
(148,	1,	0),
(149,	2,	0),
(150,	2,	0),
(151,	1,	0),
(152,	2,	0),
(153,	2,	0),
(154,	1,	0),
(155,	1,	0),
(156,	2,	0),
(157,	2,	0),
(158,	1,	0),
(159,	1,	0),
(160,	1,	0),
(161,	1,	0),
(170,	1,	0),
(171,	1,	0),
(172,	1,	0),
(173,	1,	0),
(174,	1,	0),
(175,	1,	0),
(176,	1,	0),
(177,	2,	0),
(178,	2,	0),
(179,	1,	0),
(180,	2,	0),
(181,	1,	0),
(182,	1,	0),
(183,	1,	0),
(184,	1,	0),
(185,	1,	0),
(186,	1,	0),
(187,	1,	0),
(188,	1,	0),
(189,	1,	0),
(190,	2,	0),
(191,	1,	0),
(192,	1,	0),
(194,	2,	0),
(195,	2,	0),
(196,	1,	0),
(197,	2,	0),
(198,	2,	0),
(199,	1,	0),
(200,	1,	0),
(201,	1,	0),
(202,	1,	0),
(203,	2,	0);

DROP TABLE IF EXISTS `users_type`;
CREATE TABLE `users_type` (
  `idtipousuario` tinyint(2) NOT NULL AUTO_INCREMENT,
  `desctipousuario` varchar(50) NOT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users_type` (`idtipousuario`, `desctipousuario`) VALUES
(1,	'Paciente'),
(2,	'Medico'),
(3,	'Otro'),
(4,	'admin tecnico'),
(5,	'admisiones'),
(6,	'dir medico');

-- 2018-07-10 02:43:48
