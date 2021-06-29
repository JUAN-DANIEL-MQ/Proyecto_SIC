/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : br_correspondencia_v3

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 29/06/2021 17:23:49
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of accion
-- ----------------------------
INSERT INTO `accion` VALUES (1, 'Firmar');
INSERT INTO `accion` VALUES (2, 'Sellar');
INSERT INTO `accion` VALUES (3, 'Llenado');

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
  CONSTRAINT `fk_estudici` FOREIGN KEY (`id_estudiante`) REFERENCES `usuario` (`ci`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_co` FOREIGN KEY (`id_tipo_co`) REFERENCES `tipo_correspondencia` (`id_tipo_co`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of correspondencia
-- ----------------------------
INSERT INTO `correspondencia` VALUES (14, 1, 200019111, 'https://docs.google.com/spreadsheets/d/1hwmIMq58rMHH3TSpA_lW_Fu39_71h35aHWe4UprMBfQ/edit?usp=sharing', 2, 1, '2021-06-29', '2021-07-02', 'Revicion del los datos');
INSERT INTO `correspondencia` VALUES (15, 2, 200019222, 'https://drive.google.com/file/d/1ThRPcaENIKtkCo6tJLtpGvw9GLwIgked/view?usp=sharing', 5, 2, '2021-06-29', '2021-07-02', NULL);

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
  CONSTRAINT `fk_nivcuent` FOREIGN KEY (`nivel_user`) REFERENCES `nivel_cuenta` (`id_nivcuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuarioc` FOREIGN KEY (`id_persona`) REFERENCES `usuario` (`ci`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cuenta
-- ----------------------------
INSERT INTO `cuenta` VALUES (7, '111_est', '111', 2, 200019111);
INSERT INTO `cuenta` VALUES (8, '222_est', '222', 2, 200019222);
INSERT INTO `cuenta` VALUES (9, '123_fun', '123', 3, 200019123);
INSERT INTO `cuenta` VALUES (10, '321_fun', '321', 1, 200019321);
INSERT INTO `cuenta` VALUES (11, '456_fun', '456', 1, 200019456);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of derivacion
-- ----------------------------
INSERT INTO `derivacion` VALUES (11, 1, 14, 200019321, '2021-06-29');
INSERT INTO `derivacion` VALUES (12, 2, 15, 200019123, '2021-06-29');

-- ----------------------------
-- Table structure for modalidad
-- ----------------------------
DROP TABLE IF EXISTS `modalidad`;
CREATE TABLE `modalidad`  (
  `id_modalidad` int NOT NULL AUTO_INCREMENT,
  `nombre_modalidad` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_modalidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nivel_cuenta
-- ----------------------------
INSERT INTO `nivel_cuenta` VALUES (1, 'Funcionario');
INSERT INTO `nivel_cuenta` VALUES (2, 'Estudiante');
INSERT INTO `nivel_cuenta` VALUES (3, 'Administrador');
INSERT INTO `nivel_cuenta` VALUES (4, 'Ayudante');

-- ----------------------------
-- Table structure for tipo_correspondencia
-- ----------------------------
DROP TABLE IF EXISTS `tipo_correspondencia`;
CREATE TABLE `tipo_correspondencia`  (
  `id_tipo_co` int NOT NULL AUTO_INCREMENT,
  `nombre_tipo_co` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_tipo_co`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
  `telefono` int NULL DEFAULT NULL,
  `id_modingreso` int NULL DEFAULT NULL,
  `cargo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ci`) USING BTREE,
  INDEX `fk_cuenta`(`id_modingreso`) USING BTREE,
  CONSTRAINT `fk_modalidad` FOREIGN KEY (`id_modingreso`) REFERENCES `modalidad` (`id_modalidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (200019111, 'Martin', 'Pintos', 'Canazas', 76543981, 2, 'Estudiante');
INSERT INTO `usuario` VALUES (200019123, 'Juan Daniel ', 'Mamani', 'Quispe', 7864577, NULL, 'Administrador');
INSERT INTO `usuario` VALUES (200019222, 'Paulina', 'Quispe', 'Rojas', 666666, 1, 'Estudiante');
INSERT INTO `usuario` VALUES (200019321, 'Sofia', 'Mendez', 'Balderrama', 77723879, NULL, 'Secretaria');
INSERT INTO `usuario` VALUES (200019456, 'Efrain', 'Canaza', 'Beltran', 77785542, NULL, 'Ayudante');

SET FOREIGN_KEY_CHECKS = 1;
