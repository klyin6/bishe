/*
 Navicat Premium Data Transfer

 Source Server         : 林枫
 Source Server Type    : MySQL
 Source Server Version : 90000 (9.0.0)
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 90000 (9.0.0)
 File Encoding         : 65001

 Date: 28/10/2024 19:16:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `confidence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `total_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weights` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES (10, 'http://localhost:9999/files/fdb845d9ff914a2f85ec7bf5a3595e6a', '狗', '100.00%', '0.7061秒', 'ResNet18_model', 'Animal_ResNet18_model_99.904%.pth', 'admin', '2024-10-28 19:00:28');
INSERT INTO `records` VALUES (12, 'http://localhost:9999/files/2c383bd5ab6b4039a9ef128803f51e7a', '狗', '99.98%', '0.0435秒', 'ResNet18_model', 'Animal_ResNet18_model_99.904%.pth', 'admin', '2024-10-28 19:11:08');
INSERT INTO `records` VALUES (13, 'http://localhost:9999/files/25324bd93c1d4f429b7ea161afb4df66', '蝴蝶', '100.00%', '0.0409秒', 'ResNet18_model', 'Animal_ResNet18_model_99.904%.pth', 'admin', '2024-10-28 19:11:32');
INSERT INTO `records` VALUES (14, 'http://localhost:9999/files/b73bb707c5844db5bf3cc798e23d1cfc', '大象', '100.00%', '0.0447秒', 'ResNet18_model', 'Animal_ResNet18_model_99.904%.pth', 'admin', '2024-10-28 19:11:58');
INSERT INTO `records` VALUES (16, 'http://localhost:9999/files/2db7ba5761fc41c8bfbada5b71c0f2f6', '猫', '100.00%', '0.0479秒', 'ResNet18_model', 'Animal_ResNet18_model_99.904%.pth', 'admin', '2024-10-28 19:13:18');
INSERT INTO `records` VALUES (17, 'http://localhost:9999/files/90a63b93493c473dac119f3c7c34e473', '鸡', '100.00%', '0.0348秒', 'ResNet18_model', 'Animal_ResNet18_model_99.904%.pth', 'admin', '2024-10-28 19:13:48');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Table \'.\\demo\\user\' is marked as crashed and should be repaired' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '张三', '男', '123@qq.com', '1234567889', 'admin', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif');
INSERT INTO `user` VALUES (2, '123', '123', '张三', '男', '123@qq.com', '1234567889', 'common', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif');

SET FOREIGN_KEY_CHECKS = 1;
