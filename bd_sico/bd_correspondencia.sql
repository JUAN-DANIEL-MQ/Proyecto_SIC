/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : bd_correspondencia

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 27/06/2021 23:22:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accion
-- ----------------------------
DROP TABLE IF EXISTS `accion`;
CREATE TABLE `accion`  (
  `id_accion` int NOT NULL AUTO_INCREMENT,
  `nombre_accion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_accion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accion
-- ----------------------------
INSERT INTO `accion` VALUES (1, 'Firmar');
INSERT INTO `accion` VALUES (2, 'Sellar');
INSERT INTO `accion` VALUES (3, 'Llenado');

-- ----------------------------
-- Table structure for cargo
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo`  (
  `id_cargo` int NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_cargo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cargo
-- ----------------------------
INSERT INTO `cargo` VALUES (1, 'Secretaria');
INSERT INTO `cargo` VALUES (2, 'Ayudante');

-- ----------------------------
-- Table structure for correspondencia
-- ----------------------------
DROP TABLE IF EXISTS `correspondencia`;
CREATE TABLE `correspondencia`  (
  `id_co` int NOT NULL AUTO_INCREMENT,
  `id_tipo_co` int NOT NULL,
  `id_estudiante` int NOT NULL,
  `referencia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nro_hojas` int NOT NULL,
  `nro_copias` int NULL DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_devolucion` date NULL DEFAULT NULL,
  `observacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_co`) USING BTREE,
  INDEX `fk_tipo_co`(`id_tipo_co`) USING BTREE,
  INDEX `fk_estudici`(`id_estudiante`) USING BTREE,
  CONSTRAINT `fk_tipo_co` FOREIGN KEY (`id_tipo_co`) REFERENCES `tipo_correspondencia` (`id_tipo_co`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_estudici` FOREIGN KEY (`id_estudiante`) REFERENCES `usuario` (`ci`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of correspondencia
-- ----------------------------
INSERT INTO `correspondencia` VALUES (5, 2, 222, 'Necesito que firmen', 1, 2, '2021-06-27', NULL, NULL);
INSERT INTO `correspondencia` VALUES (6, 3, 111, 'Firma del director', 2, 1, '2021-06-27', NULL, NULL);

-- ----------------------------
-- Table structure for cuenta
-- ----------------------------
DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE `cuenta`  (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nivel_user` int NOT NULL,
  `id_persona` int NOT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  INDEX `id_funcio`(`id_persona`) USING BTREE,
  INDEX `fk_nivcuent`(`nivel_user`) USING BTREE,
  CONSTRAINT `fk_usuarioc` FOREIGN KEY (`id_persona`) REFERENCES `usuario` (`ci`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_nivcuent` FOREIGN KEY (`nivel_user`) REFERENCES `nivel_cuenta` (`id_nivcuenta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuenta
-- ----------------------------
INSERT INTO `cuenta` VALUES (1, '111_e', '111', 2, 111);
INSERT INTO `cuenta` VALUES (2, '444_a', '444', 3, 444);

-- ----------------------------
-- Table structure for derivacion
-- ----------------------------
DROP TABLE IF EXISTS `derivacion`;
CREATE TABLE `derivacion`  (
  `id_derivacion` int NOT NULL AUTO_INCREMENT,
  `id_accion` int NOT NULL,
  `id_co` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `fecha_recepcion` date NOT NULL,
  PRIMARY KEY (`id_derivacion`) USING BTREE,
  INDEX `fk_correspond`(`id_co`) USING BTREE,
  INDEX `fk_accion`(`id_accion`) USING BTREE,
  INDEX `fk_funcionario`(`id_funcionario`) USING BTREE,
  CONSTRAINT `fk_accion` FOREIGN KEY (`id_accion`) REFERENCES `accion` (`id_accion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_correspond` FOREIGN KEY (`id_co`) REFERENCES `correspondencia` (`id_co`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `usuario` (`ci`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of derivacion
-- ----------------------------
INSERT INTO `derivacion` VALUES (1, 1, 5, 444, '0000-00-00');
INSERT INTO `derivacion` VALUES (2, 1, 6, 555, '0000-00-00');

-- ----------------------------
-- Table structure for modalidad
-- ----------------------------
DROP TABLE IF EXISTS `modalidad`;
CREATE TABLE `modalidad`  (
  `id_modalidad` int NOT NULL AUTO_INCREMENT,
  `nombre_modalidad` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_modalidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modalidad
-- ----------------------------
INSERT INTO `modalidad` VALUES (1, 'Prefacultativo');
INSERT INTO `modalidad` VALUES (2, 'Seficiencia Academica');
INSERT INTO `modalidad` VALUES (3, 'Exelencia Academica');

-- ----------------------------
-- Table structure for nivel_cuenta
-- ----------------------------
DROP TABLE IF EXISTS `nivel_cuenta`;
CREATE TABLE `nivel_cuenta`  (
  `id_nivcuenta` int NOT NULL AUTO_INCREMENT,
  `nombre_nivel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_nivcuenta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nivel_cuenta
-- ----------------------------
INSERT INTO `nivel_cuenta` VALUES (1, 'Funcionario');
INSERT INTO `nivel_cuenta` VALUES (2, 'Estudiante');
INSERT INTO `nivel_cuenta` VALUES (3, 'Administrador');

-- ----------------------------
-- Table structure for tipo_correspondencia
-- ----------------------------
DROP TABLE IF EXISTS `tipo_correspondencia`;
CREATE TABLE `tipo_correspondencia`  (
  `id_tipo_co` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo_co` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_tipo_co`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tipo_correspondencia
-- ----------------------------
INSERT INTO `tipo_correspondencia` VALUES (1, 'Certificado de notas');
INSERT INTO `tipo_correspondencia` VALUES (2, 'Cert. de Estudiante Regular');
INSERT INTO `tipo_correspondencia` VALUES (3, 'Carta Solicitud');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `ci` int NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ap_paterno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ap_materno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_cargo` int NULL DEFAULT NULL,
  `telefono` int NULL DEFAULT NULL,
  `id_modingreso` int NULL DEFAULT NULL,
  `genero` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ci`) USING BTREE,
  INDEX `fk_cargo`(`id_cargo`) USING BTREE,
  INDEX `fk_cuenta`(`id_modingreso`) USING BTREE,
  CONSTRAINT `fk_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_modalidad` FOREIGN KEY (`id_modingreso`) REFERENCES `modalidad` (`id_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (111, 'MArtin', 'Pinto', 'Canaza', NULL, 77878, 1, 'M');
INSERT INTO `usuario` VALUES (222, 'Sofia', 'Mendez', 'Balderrama', NULL, 879, 3, 'F');
INSERT INTO `usuario` VALUES (444, 'Paulina', 'Quispe', 'Rojas', 2, 666666, NULL, 'M');
INSERT INTO `usuario` VALUES (555, 'Carlos', 'Sanches', 'Perez', 1, 777777, NULL, 'F');

SET FOREIGN_KEY_CHECKS = 1;
