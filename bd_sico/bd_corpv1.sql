/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : bd_corp

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 12/06/2021 15:29:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente`  (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ci` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `celular` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cliente
-- ----------------------------
INSERT INTO `cliente` VALUES (1, 'Juan Daniel Mamani Quispe', '13606050 LP', 77587963);
INSERT INTO `cliente` VALUES (2, 'Jorge Daniel Gutierrez Oraquino', '98655FDS CB', 74323145);
INSERT INTO `cliente` VALUES (3, 'Beatriz Aruquipa Quispe', '687SDF57 OR', 77875416);
INSERT INTO `cliente` VALUES (4, 'Marcos Chambi Chambi', '777642345 PD', 67698543);
INSERT INTO `cliente` VALUES (5, 'Limber Mamani Mamani ', '997787 87 PT', 67893412);
INSERT INTO `cliente` VALUES (6, 'Juan David Quenallata', '78877875 BE', 76532512);

-- ----------------------------
-- Table structure for cuenta
-- ----------------------------
DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE `cuenta`  (
  `id_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `rol_cuenta` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_cuenta`) USING BTREE,
  INDEX `fk_idusuario`(`id_usuario`) USING BTREE,
  CONSTRAINT `fk_idusuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuenta
-- ----------------------------
INSERT INTO `cuenta` VALUES (1, 'jesusgoncon', 1, 'Administrador');
INSERT INTO `cuenta` VALUES (2, 'luisjose', 2, 'Secretaria');
INSERT INTO `cuenta` VALUES (3, 'mariamada', 3, 'Usuario');

-- ----------------------------
-- Table structure for documento
-- ----------------------------
DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento`  (
  `id_documento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_doc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `id_tipodoc` int(11) NOT NULL,
  PRIMARY KEY (`id_documento`) USING BTREE,
  INDEX `fk_tipodoc`(`id_tipodoc`) USING BTREE,
  CONSTRAINT `fk_tipodoc` FOREIGN KEY (`id_tipodoc`) REFERENCES `tipo` (`id_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documento
-- ----------------------------
INSERT INTO `documento` VALUES (1, 'Solicitud de empleo', 'Se trata de una especie de formulario que sirve para presentar o dar a conocer las experiencias profesionales que tiene la persona que lo llena', 1);
INSERT INTO `documento` VALUES (2, 'Solicitud de curso', 'Refiere a un documento por el cual una persona pide a una institución entrar a un determinado ciclo educativo, quien le dará una respuesta para la realización de un examen de admisión.', 1);
INSERT INTO `documento` VALUES (3, 'Solicitud de carta de terceros', 'Tipo de solicitud que se lleva a cabo al momento de pedir una ayuda para una tercera persona. En esta el escritor ha de proporcionar todos los detalles para que sea tomado en cuenta en un corto tiempo', 1);
INSERT INTO `documento` VALUES (4, 'Solicitud de compra', 'Es un documento que acredita a una persona de que pagó para que se le sea entregado un determinado producto o servicio.', 1);
INSERT INTO `documento` VALUES (5, 'Solicitud de queja', 'Se trata de una manifestación de descontento, censura, protesta o inconformidad que da a conocer una persona sea escrita, verbal o electrónicamente sobre algo o alguien.', 1);
INSERT INTO `documento` VALUES (6, 'Certificado de servidor', NULL, 2);
INSERT INTO `documento` VALUES (7, 'Certificado de pertenencia a e', NULL, 2);
INSERT INTO `documento` VALUES (8, 'Certificado de representante', NULL, 2);
INSERT INTO `documento` VALUES (9, 'Certificado de apoderado', NULL, 2);
INSERT INTO `documento` VALUES (10, 'Certificado de sello de empres', NULL, 2);
INSERT INTO `documento` VALUES (11, 'Certificado de Factura Electró', NULL, 2);
INSERT INTO `documento` VALUES (12, 'Certificado de Colegiado', NULL, 2);
INSERT INTO `documento` VALUES (13, 'Acta de reunión', 'Se denomina acta de reunión a aquel documento en el cual se procede a efectuar los pertinentes apuntes de la totalidad de lo sucedido en la asamblea.', 3);
INSERT INTO `documento` VALUES (14, 'Acta de sociedad', 'Las sociedades existen, en parte, para blindar a sus accionistas de las responsabilidades por deudas que pudiesen producirse en la gestión de la sociedad.', 3);
INSERT INTO `documento` VALUES (15, 'Actas de inspeccion', 'El Acta de Inspección es el instrumento básico para un inspector que ermarca aquellos aspectos cuya conformidad permita establecer la adecuación de la errpresa a los requisitos sanitarios', 3);
INSERT INTO `documento` VALUES (16, 'Circular voluntaria por repara', NULL, 4);
INSERT INTO `documento` VALUES (17, 'Circular voluntaria de una esc', NULL, 4);
INSERT INTO `documento` VALUES (18, 'Circular voluntaria vecinal', NULL, 4);
INSERT INTO `documento` VALUES (20, 'Circular de un empleo', NULL, 4);
INSERT INTO `documento` VALUES (22, 'Circular obligatoria del coleg', NULL, 4);
INSERT INTO `documento` VALUES (23, 'Modelo curriculum sin experien', NULL, 8);
INSERT INTO `documento` VALUES (24, 'Modelo de curriculum estudiant', NULL, 8);
INSERT INTO `documento` VALUES (25, 'Compra venta de inmuebles', NULL, 11);
INSERT INTO `documento` VALUES (26, 'Administración de bienes', NULL, 11);
INSERT INTO `documento` VALUES (27, 'Compra venta de automóvil y tr', NULL, 11);
INSERT INTO `documento` VALUES (28, 'Trámites matrimoniales, divorc', NULL, 11);
INSERT INTO `documento` VALUES (29, 'Inscripciones en los registros', NULL, 11);
INSERT INTO `documento` VALUES (30, 'Tramitación de herencias y suc', NULL, 11);
INSERT INTO `documento` VALUES (31, 'Representación en juicios', NULL, 11);
INSERT INTO `documento` VALUES (32, 'Constitución de empresas', NULL, 11);
INSERT INTO `documento` VALUES (33, 'Cobranzas de cheques y deudas', NULL, 11);
INSERT INTO `documento` VALUES (34, 'Recoger documentos oficiales', NULL, 11);
INSERT INTO `documento` VALUES (35, 'Recoger documentos oficiales', NULL, 11);
INSERT INTO `documento` VALUES (36, 'Declaración jurada general o s', 'Este tipo de declaración personal y voluntaria tiene el propósito de alegar la veracidad de determinados acontecimientos. Puede ser empleada en diversas circunstancias de tipo personal o de negocios, ya que es menos formal que la notariada.', 7);
INSERT INTO `documento` VALUES (37, 'Declaración jurada notariada y', 'En este tipo de manifestación verbal o escrita se asegura la veracidad de ciertos hechos bajo juramento, asumiendo como cierto la declaración. La declaración falsa, cualquiera que sea, ante las autoridades será causal de sanciones penales y administrativas, y deberá ser firmada ante un abogado o notario público.', 7);
INSERT INTO `documento` VALUES (38, 'Declaración jurada de ingresos', 'Este modelo se emplea para manifestar a un organismo público el nivel de ingresos inferior o igual a una cifra de la cual debemos dejar constancia. Como requisito para realizar un trámite posterior ante esa oficina.', 7);
INSERT INTO `documento` VALUES (40, 'Declaración jurada de estado c', 'Esta declaración alega que la persona no está relacionada en la actualidad a un matrimonio que le impida contraer el actual y que reúne los requisitos necesarios para la celebración.', 7);
INSERT INTO `documento` VALUES (41, 'Declaración jurada de oposició', 'Esta declaración se utiliza para manifestar el desacuerdo ante un procedimiento o calificación de cara a la entidad que lo realiza.', 7);
INSERT INTO `documento` VALUES (42, 'Declaración jurada de patrimon', 'Es el medio para dar fe de los datos económicos manifestados por escrito ante una determinada administración. Por lo general se utiliza para justificar ingresos, propiedades, cuentas bancarias y al momento de tomar un cargo.', 7);
INSERT INTO `documento` VALUES (43, 'Declaración jurada de patrimon', 'Es el medio para dar fe de los datos económicos manifestados por escrito ante una determinada administración. Por lo general se utiliza para justificar ingresos, propiedades, cuentas bancarias y al momento de tomar un cargo.', 7);

-- ----------------------------
-- Table structure for registro
-- ----------------------------
DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro`  (
  `id_regisro` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario_reg` int(11) NOT NULL,
  `id_doc:_reg` int(11) NOT NULL,
  `id_cliente_reg` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_regisro`) USING BTREE,
  INDEX `fk_idusuario_reg`(`id_usuario_reg`) USING BTREE,
  INDEX `fk_iddocumento`(`id_doc:_reg`) USING BTREE,
  INDEX `fk_idcliente`(`id_cliente_reg`) USING BTREE,
  CONSTRAINT `fk_idcliente` FOREIGN KEY (`id_cliente_reg`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_iddocumento` FOREIGN KEY (`id_doc:_reg`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idusuario_reg` FOREIGN KEY (`id_usuario_reg`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registro
-- ----------------------------
INSERT INTO `registro` VALUES (1, 2, 6, 4, '2021-06-17', 'Revisado');
INSERT INTO `registro` VALUES (2, 3, 11, 5, '2021-06-18', 'Pendiente');
INSERT INTO `registro` VALUES (3, 3, 13, 2, '2021-03-20', 'Archivado');
INSERT INTO `registro` VALUES (4, 2, 20, 1, '2021-06-26', 'Pendiente');
INSERT INTO `registro` VALUES (5, 3, 30, 6, '2021-04-24', 'Archivo');
INSERT INTO `registro` VALUES (6, 3, 43, 3, '2021-06-16', 'Revisado');

-- ----------------------------
-- Table structure for tipo
-- ----------------------------
DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo`  (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipo
-- ----------------------------
INSERT INTO `tipo` VALUES (1, 'Instancia o solicitud', 'La instancia es un documento que utilizan las empresas o los particulares para requerir algo de los organismos públicos. Estos organismos habilitan normalmente los modelos impresos que se necesitan para la presentación de instancias.');
INSERT INTO `tipo` VALUES (2, 'Certificado', 'Es un tipo de documento que se utiliza para confirmar o dar fe de un determinado hecho. Por ejemplo, se suelen pedir en las entrevistas de trabajo para constatar tu formación y experiencia.');
INSERT INTO `tipo` VALUES (3, 'Acta', 'El acta es un texto que agrupa los puntos tratados y los acuerdos que se han tomado en una reunión de un órgano colegiado o asamblea para que tengan validez. Estas pueden ser, por ejemplo, las reuniones de un Parlamento, comunidad de vecinos, Ayuntamiento');
INSERT INTO `tipo` VALUES (4, 'Circular', 'Es una carta, aviso u orden mediante el que una autoridad se dirige a órganos inferiores para trasladarles una instrucción. La circular debe ser sencilla y breve.');
INSERT INTO `tipo` VALUES (5, 'Oficio', 'Se utiliza para la comunicación entre diferentes departamentos o administraciones. Si los departamentos forman parte de la misma entidad u órgano, éste tendría el nombre de nota interior.');
INSERT INTO `tipo` VALUES (6, 'Saluda', 'Es un escrito en el cual una persona que ocupa un cierto cargo, comunica un cambio o un aviso. Siempre se hace de forma breve. No requiere alguna acción por parte de quienes lo reciben, es meramente informativo.');
INSERT INTO `tipo` VALUES (7, 'Declaración Jurada', 'Es una declaración escrita o verbal cuya veracidad se asegura mediante un juramento ante una autoridad administrativa o jurídica. Esto hace que el contenido se tome como cierto hasta que se demuestre lo contrario.');
INSERT INTO `tipo` VALUES (8, 'Currículum vitae', 'Es un documento en el cual se enumera la formación, las habilidades y la experiencia laboral de una persona con el fin de conseguir u optar a un trabajo.');
INSERT INTO `tipo` VALUES (9, 'Carta comercial', 'Es un documento formal que se hace con el objetivo de mantener comunicación con otros comercios o empresas. Se utiliza para realizar, por ejemplo, estrategias de marketing o campañas de publicidad conjuntas.');
INSERT INTO `tipo` VALUES (10, 'Informe', 'Este puede ser oral o escrito e informa sobre el estado de una cosa o persona, o sobre un hecho en particular. Puede ser un informe comercial, policial, médico, etc.');
INSERT INTO `tipo` VALUES (11, 'Poder', 'Documento en el que se constata la cesión de la capacidad que da una persona a otra para que pueda actuar en su nombre. El que da el poder se llama poderdante y el que lo recibe tiene el nombre de apoderado.');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellido` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ci` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `correo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `celular` int(11) NOT NULL,
  `cargo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1, 'Jesus ', 'Gonzales Camarena', '138798 LP', 'jesugonca@gmail.com', 77898654, 'Administrador');
INSERT INTO `usuario` VALUES (2, 'Luis Jose ', 'Perez Tamara', '13982777 PD', 'luisperes@gmail.com', 75774323, 'Secretario');
INSERT INTO `usuario` VALUES (3, 'Maria', 'Amada Sanchez', '878546879 BN', 'mariaamd@gmail.com', 76598432, 'Ayudante');

SET FOREIGN_KEY_CHECKS = 1;
