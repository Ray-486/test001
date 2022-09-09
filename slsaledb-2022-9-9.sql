/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1mysql80
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : slsaledb

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/09/2022 09:27:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for affiche
-- ----------------------------
DROP TABLE IF EXISTS `affiche`;
CREATE TABLE `affiche`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '编码',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '内容',
  `publisher` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发布人',
  `publishTime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `startTime` datetime(0) NULL DEFAULT NULL COMMENT '生效时间',
  `endTime` datetime(0) NULL DEFAULT NULL COMMENT '失效时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of affiche
-- ----------------------------
INSERT INTO `affiche` VALUES (34, '公告1', '公告1', '<font face=\"Arial, Verdana\" size=\"2\">公告<b><i>1公告1公告1公告1</i></b>公告1公告<span style=\"background-color: rgb(204, 0, 0);\">1公告1公告1</span>公告1公告1公告1公告1公告1公告1</font>', 'admin', '2014-04-10 14:56:24', '2014-04-10 00:00:00', '2014-04-19 00:00:00');
INSERT INTO `affiche` VALUES (35, '公告2', '公告2', '<font face=\"Arial, Verdana\" size=\"2\">公告2公告2公告2公告2公告2公告2公告2公告2公告2公告2</font>', 'admin', '2014-04-10 14:52:33', '2014-04-09 00:00:00', '2014-04-18 00:00:00');
INSERT INTO `affiche` VALUES (36, '公告3', '公告3', '<font face=\"Arial, Verdana\" size=\"2\">公告3公告3公告3公告3公告3公告3公告3</font>', 'admin', '2014-04-10 14:52:54', '2014-04-07 00:00:00', '2014-04-18 00:00:00');
INSERT INTO `affiche` VALUES (37, '公告3', '公告4', '<font face=\"Arial, Verdana\" size=\"2\">公告4公告4公告4公告4公告4公告4公告4公告4公告4</font>', 'admin', '2014-04-10 14:55:08', '2014-04-09 00:00:00', '2014-04-12 00:00:00');
INSERT INTO `affiche` VALUES (38, '公告5', '公告5', '<font face=\"Arial, Verdana\" size=\"2\">公告5公告5公告5公告5公告5公告5公告5</font>', 'admin', '2014-04-10 14:55:17', '2014-04-09 00:00:00', '2014-04-19 00:00:00');

-- ----------------------------
-- Table structure for au_authority
-- ----------------------------
DROP TABLE IF EXISTS `au_authority`;
CREATE TABLE `au_authority`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleId` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `functionId` bigint(0) NULL DEFAULT NULL COMMENT '功能ID',
  `userTypeId` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '用户类型ID',
  `creationTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `createdBy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3753 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of au_authority
-- ----------------------------
INSERT INTO `au_authority` VALUES (3525, 26, 80, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3524, 26, 79, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3523, 26, 78, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3658, 2, 92, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3392, 1, 93, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3391, 1, 92, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (1635, 25, 37, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1634, 25, 16, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1633, 25, 15, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1632, 25, 14, 0, '2014-04-09 10:36:42', 'admin');
INSERT INTO `au_authority` VALUES (1631, 25, 13, 0, '2014-04-09 10:36:42', 'admin');
INSERT INTO `au_authority` VALUES (1630, 25, 2, 0, '2014-04-09 10:36:42', 'admin');
INSERT INTO `au_authority` VALUES (3390, 1, 91, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3389, 1, 90, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3388, 1, 89, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3387, 1, 88, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3386, 1, 87, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3385, 1, 86, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3657, 2, 91, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3656, 2, 76, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3655, 2, 75, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3383, 1, 84, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3382, 1, 83, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3381, 1, 82, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (1650, 25, 72, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1651, 25, 73, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1652, 25, 74, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1653, 25, 75, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1654, 25, 76, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (3384, 1, 85, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (1643, 25, 65, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1644, 25, 66, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1645, 25, 67, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1646, 25, 68, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1647, 25, 69, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1648, 25, 70, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1649, 25, 71, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (3380, 1, 81, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3379, 1, 80, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3378, 1, 79, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3377, 1, 78, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3376, 1, 77, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3375, 1, 76, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3374, 1, 75, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3373, 1, 74, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3372, 1, 73, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3371, 1, 72, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3370, 1, 71, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3369, 1, 70, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3368, 1, 69, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3367, 1, 68, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3366, 1, 67, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3365, 1, 66, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3364, 1, 65, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3363, 1, 64, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3362, 1, 63, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3361, 1, 62, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3360, 1, 61, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3359, 1, 60, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3358, 1, 59, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3357, 1, 58, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3356, 1, 57, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3355, 1, 56, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3354, 1, 55, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3353, 1, 54, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3347, 1, 48, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3348, 1, 49, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3349, 1, 50, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3350, 1, 51, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3351, 1, 52, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3654, 2, 74, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3653, 2, 73, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3652, 2, 72, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3651, 2, 71, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3650, 2, 70, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3649, 2, 69, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3648, 2, 68, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3647, 2, 67, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3646, 2, 66, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (1642, 25, 64, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1641, 25, 63, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1636, 25, 38, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1637, 25, 39, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1638, 25, 40, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1639, 25, 41, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (1640, 25, 62, 0, '2014-04-09 10:36:43', 'admin');
INSERT INTO `au_authority` VALUES (3645, 2, 65, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3644, 2, 64, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3643, 2, 63, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3522, 26, 77, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3521, 26, 41, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3520, 26, 40, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3519, 26, 39, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3518, 26, 38, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3517, 26, 37, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3516, 26, 18, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3515, 26, 17, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3514, 26, 7, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3513, 26, 6, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3642, 2, 62, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3641, 2, 41, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3640, 2, 40, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3639, 2, 39, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3638, 2, 38, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3637, 2, 37, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3636, 2, 22, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3635, 2, 21, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3634, 2, 19, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3633, 2, 16, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3632, 2, 15, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3631, 2, 14, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3630, 2, 13, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3629, 2, 7, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3352, 1, 53, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3346, 1, 47, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3345, 1, 46, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3344, 1, 45, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3343, 1, 44, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3342, 1, 43, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3341, 1, 42, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3340, 1, 41, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3339, 1, 40, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3338, 1, 39, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3337, 1, 38, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3336, 1, 37, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3335, 1, 36, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3334, 1, 35, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3333, 1, 34, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3332, 1, 33, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3331, 1, 32, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3330, 1, 31, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3329, 1, 30, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3328, 1, 29, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3327, 1, 28, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3326, 1, 27, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3325, 1, 26, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3324, 1, 25, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3323, 1, 24, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3322, 1, 23, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3321, 1, 22, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3320, 1, 21, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3319, 1, 20, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3318, 1, 19, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3317, 1, 18, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3316, 1, 17, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3315, 1, 16, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3314, 1, 15, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3313, 1, 14, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3312, 1, 13, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3311, 1, 12, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3310, 1, 11, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3309, 1, 10, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3308, 1, 9, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3307, 1, 8, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3306, 1, 7, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3305, 1, 6, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3304, 1, 5, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3303, 1, 4, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3302, 1, 3, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3301, 1, 2, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3300, 1, 1, 0, '2022-09-05 21:24:49', '系统管理员');
INSERT INTO `au_authority` VALUES (3526, 26, 81, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3527, 26, 82, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3528, 26, 83, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3529, 26, 84, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3530, 26, 85, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3531, 26, 86, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3532, 26, 87, 0, '2022-09-07 14:13:16', '系统管理员');
INSERT INTO `au_authority` VALUES (3537, 28, 2, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3536, 28, 1, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3538, 28, 3, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3539, 28, 4, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3540, 28, 5, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3541, 28, 6, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3542, 28, 7, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3543, 28, 8, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3544, 28, 9, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3545, 28, 10, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3546, 28, 11, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3547, 28, 12, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3548, 28, 13, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3549, 28, 14, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3550, 28, 15, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3551, 28, 16, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3552, 28, 17, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3553, 28, 18, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3554, 28, 19, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3555, 28, 20, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3556, 28, 21, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3557, 28, 22, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3558, 28, 23, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3559, 28, 24, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3560, 28, 25, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3561, 28, 26, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3562, 28, 27, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3563, 28, 28, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3564, 28, 29, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3565, 28, 30, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3566, 28, 31, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3567, 28, 32, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3568, 28, 33, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3569, 28, 34, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3570, 28, 35, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3571, 28, 36, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3572, 28, 37, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3573, 28, 38, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3574, 28, 39, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3575, 28, 40, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3576, 28, 41, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3577, 28, 42, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3578, 28, 43, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3579, 28, 44, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3580, 28, 45, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3581, 28, 46, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3582, 28, 47, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3583, 28, 48, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3584, 28, 49, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3585, 28, 50, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3586, 28, 51, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3587, 28, 52, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3588, 28, 53, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3589, 28, 54, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3590, 28, 55, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3591, 28, 56, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3592, 28, 57, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3593, 28, 58, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3594, 28, 59, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3595, 28, 60, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3596, 28, 61, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3597, 28, 62, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3598, 28, 63, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3599, 28, 64, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3600, 28, 65, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3601, 28, 66, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3602, 28, 67, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3603, 28, 68, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3604, 28, 69, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3605, 28, 70, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3606, 28, 71, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3607, 28, 72, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3608, 28, 73, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3609, 28, 74, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3610, 28, 75, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3611, 28, 76, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3612, 28, 77, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3613, 28, 78, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3614, 28, 79, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3615, 28, 80, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3616, 28, 81, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3617, 28, 82, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3618, 28, 83, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3619, 28, 84, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3620, 28, 85, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3621, 28, 86, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3622, 28, 87, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3623, 28, 88, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3624, 28, 89, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3625, 28, 90, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3626, 28, 91, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3627, 28, 92, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3628, 28, 93, 0, '2022-09-07 14:49:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3659, 2, 93, 0, '2022-09-07 22:00:24', '系统管理员');
INSERT INTO `au_authority` VALUES (3660, 30, 1, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3661, 30, 2, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3662, 30, 3, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3663, 30, 4, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3664, 30, 5, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3665, 30, 6, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3666, 30, 7, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3667, 30, 8, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3668, 30, 9, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3669, 30, 10, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3670, 30, 11, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3671, 30, 12, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3672, 30, 13, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3673, 30, 14, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3674, 30, 15, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3675, 30, 16, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3676, 30, 17, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3677, 30, 18, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3678, 30, 19, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3679, 30, 20, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3680, 30, 21, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3681, 30, 22, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3682, 30, 23, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3683, 30, 24, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3684, 30, 25, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3685, 30, 26, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3686, 30, 27, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3687, 30, 28, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3688, 30, 29, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3689, 30, 30, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3690, 30, 31, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3691, 30, 32, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3692, 30, 33, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3693, 30, 34, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3694, 30, 35, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3695, 30, 36, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3696, 30, 37, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3697, 30, 38, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3698, 30, 39, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3699, 30, 40, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3700, 30, 41, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3701, 30, 42, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3702, 30, 43, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3703, 30, 44, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3704, 30, 45, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3705, 30, 46, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3706, 30, 47, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3707, 30, 48, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3708, 30, 49, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3709, 30, 50, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3710, 30, 51, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3711, 30, 52, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3712, 30, 53, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3713, 30, 54, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3714, 30, 55, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3715, 30, 56, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3716, 30, 57, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3717, 30, 58, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3718, 30, 59, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3719, 30, 60, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3720, 30, 61, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3721, 30, 62, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3722, 30, 63, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3723, 30, 64, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3724, 30, 65, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3725, 30, 66, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3726, 30, 67, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3727, 30, 68, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3728, 30, 69, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3729, 30, 70, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3730, 30, 71, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3731, 30, 72, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3732, 30, 73, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3733, 30, 74, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3734, 30, 75, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3735, 30, 76, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3736, 30, 77, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3737, 30, 78, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3738, 30, 79, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3739, 30, 80, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3740, 30, 81, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3741, 30, 82, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3742, 30, 83, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3743, 30, 84, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3744, 30, 85, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3745, 30, 86, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3746, 30, 87, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3747, 30, 88, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3748, 30, 89, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3749, 30, 90, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3750, 30, 91, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3751, 30, 92, 0, '2022-09-08 09:38:37', '系统管理员');
INSERT INTO `au_authority` VALUES (3752, 30, 93, 0, '2022-09-08 09:38:37', '系统管理员');

-- ----------------------------
-- Table structure for au_function
-- ----------------------------
DROP TABLE IF EXISTS `au_function`;
CREATE TABLE `au_function`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `functionCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '功能编码',
  `functionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '功能名称',
  `funcUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '功能URL',
  `parentId` bigint(0) NULL DEFAULT NULL,
  `creationTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of au_function
-- ----------------------------
INSERT INTO `au_function` VALUES (1, 'backendmanage', '后台管理', NULL, 0, NULL);
INSERT INTO `au_function` VALUES (2, 'membermanage', '会员管理', NULL, 0, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (3, 'ebank', '电子银行', NULL, 0, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (4, 'shoppingmanage', '购物管理', NULL, 0, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (5, 'infosearch', '信息查询', NULL, 0, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (6, 'informanage', '信息管理', '/back_basic_management.html', 0, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (7, 'userlist', '用户管理', '/back_user', 1, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (8, 'rolelist', '角色管理', '/back_role_management.html', 1, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (9, 'authoritymanage', '权限管理', '/back_authority_management.html', 1, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (10, 'goodsinfolist', '商品管理', '/back_goods_management.html', 1, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (11, 'goodspacklist', '商品套餐管理', '/back_goods_package_management.html', 1, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (12, 'datadictionary', '数据字典', '/back_dd_management.html', 1, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (13, 'registmember', '注册新会员', '/member/registmember.html', 2, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (14, 'memberlist', '新会员管理', '/member/memberlist.html', 2, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (15, 'modifypersonalinfo', '修改本人资料', '/member/modifypersonalinfo.html', 2, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (16, 'modifypersonalpwd', '修改本人密码', '/member/modifypersonalpwd.html', 2, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (17, 'affiche', '公告管理', '/informanage/affiche.html', 6, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (18, 'information', '资讯管理', '/informanage/information.html', 6, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (19, 'download', '下载中心', '/informanage/downloadcenter.html', 6, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (20, 'messagelist', '留言管理', '/message/messagelist.html', 6, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (21, 'mymessage', '我的留言', '/message/mymessage.html', 6, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (22, 'getgoodsinfo', '查看商品信息', '/backend/getgoodsinfo.html', 10, '2014-04-04 15:03:24');
INSERT INTO `au_function` VALUES (23, 'modifystate', '修改商品上架状态', '/backend/modifystate.html', 10, '2014-04-04 15:05:48');
INSERT INTO `au_function` VALUES (24, 'goodsSNisexit', '商品编号重复判断', '/backend/goodsSNisexit.html', 10, '2014-04-04 15:05:48');
INSERT INTO `au_function` VALUES (25, 'modifygoodsinfo', '修改商品信息', '/backend/modifygoodsinfo.html', 10, '2014-04-04 15:05:48');
INSERT INTO `au_function` VALUES (26, 'delgoodsinfo', '删除商品', '/backend/delgoodsinfo.html', 10, '2014-04-04 15:05:48');
INSERT INTO `au_function` VALUES (27, 'addgoodsinfo', '添加商品', '/backend/addgoodsinfo.html', 10, '2014-04-04 15:05:48');
INSERT INTO `au_function` VALUES (28, 'modifygoodspackstate', '修改商务套餐上下架状态', '/backend/modifygoodspackstate.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (29, 'viewgoodspack', '查看商务套餐信息', '/backend/viewgoodspack.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (30, 'addgoodspack', '添加商务套餐', '/backend/addgoodspack.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (31, 'modifygoodspack', '修改商务套餐', '/backend/modifygoodspack.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (32, 'saveaddgoodspack', '保存添加的商品套餐', '/backend/saveaddgoodspack.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (33, 'savemodifygoodspack', '修改商务套餐信息', '/backend/savemodifygoodspack.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (34, 'goodspackcodeisexit', '商务套餐code重复判断', '/backend/goodspackcodeisexit.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (35, 'delgoodspack', '删除商务套餐', '/backend/delgoodspack.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (36, 'goodslist', '商务套餐中的商品列表', '/backend/goodslist.html', 11, '2014-04-04 15:10:20');
INSERT INTO `au_function` VALUES (37, 'portalafficheList', '后台首页公告列表页面', '/informanage/portalafficheList.html', 999, '2014-04-04 15:13:09');
INSERT INTO `au_function` VALUES (38, 'portalAfficheDetail', '后台首页公告列表点击进入详情页面', '/informanage/portalAfficheDetail.html', 999, '2014-04-04 15:13:09');
INSERT INTO `au_function` VALUES (39, 'portalinfoList', '后台首页资讯列表页面', '/informanage/portalinfoList.html', 999, '2014-04-04 15:13:09');
INSERT INTO `au_function` VALUES (40, 'portalInfoDetail', '后台首页资讯列表点击进入详情页面', '/informanage/portalInfoDetail.html', 999, '2014-04-04 15:13:09');
INSERT INTO `au_function` VALUES (41, 'modifyPwd', '首页head修改密码', '/backend/modifyPwd.html', 999, '2014-04-04 15:13:09');
INSERT INTO `au_function` VALUES (42, 'adduser', '添加用户', '/backend/adduser.html', 7, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (43, 'getuser', '获取用户', '/backend/getuser.html', 7, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (44, 'loadUserTypeList', '获取用户类型列表', '/backend/loadUserTypeList.html', 7, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (45, 'upload', '上传图片Url', '/backend/upload.html', 7, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (46, 'delpic', '删除上传后的图片的URL', '/backend/delpic.html', 7, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (47, 'modifyuser', '修改用户信息', '/backend/modifyuser.html', 7, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (48, 'modifyRole', '修改角色是否启用和修改角色信息', '/backend/modifyRole.html', 8, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (49, 'addRole', '增加角色', '/back_role_edit.html', 8, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (50, 'delRole', '删除角色', '/backend/delRole.html', 8, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (51, 'functions', '获取所有权限', '/backend/functions.html', 9, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (52, 'getAuthorityDefault', '获取权限回显', '/backend/getAuthorityDefault.html', 9, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (53, 'modifyAuthority', '修改权限', '/backend/modifyAuthority.html', 9, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (54, 'addDic', '添加数据字典', '/backend/addDic.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (55, 'addDicSub', '添加数据字典枚举数据', '/backend/addDicSub.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (56, 'modifylDic', '修改数据字典数据', '/backend/modifylDic.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (57, 'modifyDic', '修改数据字典枚举数据', '/backend/modifyDic.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (58, 'delMainDic', '删除数据字典', '/backend/delMainDic.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (59, 'delDic', '删除数据字典枚举数据', '/backend/delDic.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (60, 'typecodeisexit', '类型代码不能重复验证', '/backend/typecodeisexit.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (61, 'getJsonDic', '获取数据字典枚举数据JSON', '/backend/getJsonDic.html', 12, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (62, 'registmember', '注册新会员下一步', '/member/registmember.html', 13, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (63, 'saveregistmember', '提交注册新会员', '/member/saveregistmember.html', 13, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (64, 'upload', '上传图片Url', '/backend/upload.html', 13, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (65, 'delpic', '删除上传后的图片的URL', '/backend/delpic.html', 13, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (66, 'logincodeisexit', '判断登录Code是否重复', '/backend/logincodeisexit.html', 13, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (67, 'registok', '注册成功信息回显', '/member/registok.html', 13, '2014-04-04 15:27:09');
INSERT INTO `au_function` VALUES (68, 'getuser', '获取用户', '/backend/getuser.html', 14, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (69, 'logincodeisexit', '判断登录Code是否重复', '/backend/logincodeisexit.html', 14, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (70, 'modifymember', '修改新会员信息', '/member/modifymember.html', 14, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (71, 'deluser', '删除新会员', '/backend/deluser.html', 14, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (72, 'upload', '上传图片Url', '/backend/upload.html', 15, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (73, 'delpic', '删除上传后的图片的URL', '/backend/delpic.html', 15, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (74, 'savepersonalinfo', '执行修改本人资料', '/member/savepersonalinfo.html', 15, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (75, 'modifyPwd', '执行修改本人密码', '/backend/modifyPwd.html', 16, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (76, 'savesecondpwd', '执行修改本人二级密码', '/member/savesecondpwd.html', 16, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (77, 'addAffiche', '添加公告', '/informanage/addAffiche.html', 17, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (78, 'viewAffiche', '查看公告', '/informanage/viewAffiche.html', 17, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (79, 'modifyAffiche', '修改公告', '/informanage/modifyAffiche.html', 17, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (80, 'delAffiche', '删除公告', '/informanage/delAffiche.html', 17, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (81, 'modifyInfoState', '修改发布状态', '/informanage/modifyInfoState.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (82, 'viewInfo', '查看资讯信息', '/informanage/viewInfo.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (83, 'modifyinformation', '修改资讯信息', '/informanage/modifyinformation.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (84, 'upload', '上传资讯文件', '/informanage/upload.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (85, 'delInfoFile', '删除资讯的文件', '/informanage/delInfoFile.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (86, 'delInfo', '删除资讯', '/informanage/delInfo.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (87, 'addInformation', '添加资讯信息', '/informanage/addInformation.html', 18, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (88, 'getmessage', '查看留言', '/message/getmessage.html', 20, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (89, 'replymessage', '回复留言', '/message/replymessage.html', 20, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (90, 'delmessage', '删除留言', '/backend/delmessage.html', 20, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (91, 'addmessage', '添加留言', '/message/addmessage.html', 21, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (92, 'reply', '显示回复列表', '/message/reply.html', 21, '2014-04-04 15:39:25');
INSERT INTO `au_function` VALUES (93, 'registrule', '查看注册条款', '/member/registrule.html', 13, '2014-04-04 15:27:09');

-- ----------------------------
-- Table structure for au_role
-- ----------------------------
DROP TABLE IF EXISTS `au_role`;
CREATE TABLE `au_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色名称',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `isStart` int(0) NULL DEFAULT NULL COMMENT '是否启用（0、未启用1、启用）',
  `createdBy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of au_role
-- ----------------------------
INSERT INTO `au_role` VALUES (1, 'sl_role01', '管理员', '2014-03-13 00:00:00', 1, 'admin');
INSERT INTO `au_role` VALUES (2, 'sl_role02', '会员', '2014-04-08 00:00:00', 1, 'admin');
INSERT INTO `au_role` VALUES (26, 'sl_role03', '其它', '2014-04-10 00:00:00', 1, 'admin');
INSERT INTO `au_role` VALUES (28, 'sl_role04', '开发者', '2022-09-07 14:08:43', 1, 'admin');
INSERT INTO `au_role` VALUES (30, 'sl_role05', '用户', '2022-09-08 09:38:20', 1, 'admin');

-- ----------------------------
-- Table structure for au_user
-- ----------------------------
DROP TABLE IF EXISTS `au_user`;
CREATE TABLE `au_user`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `loginCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '登录账号',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '登录密码（初始密码为证件号码后六位）',
  `password2` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '二级密码（初始密码为证件号码后六位）',
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户真实姓名',
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `cardType` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '证件类型id',
  `cardTypeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '证件类型名称',
  `idCard` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '证件号码',
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货国家',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'email',
  `userAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收获地址',
  `postCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮编',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `referId` bigint(0) NULL DEFAULT NULL COMMENT '推荐人id（默认为当前登录用户id）',
  `referCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '推荐人编码（默认为当前登录用户loginCode）',
  `roleId` bigint(0) NULL DEFAULT NULL COMMENT '所属角色ID',
  `roleName` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '所属角色名称',
  `userType` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户类型id',
  `userTypeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户类型名称',
  `isStart` int(0) NULL DEFAULT NULL COMMENT '是否启用（1、启用2、未启用）',
  `lastUpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '最新更新时间',
  `lastLoginTime` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `bankAccount` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开户卡号',
  `bankName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开户行',
  `accountHolder` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开户人',
  `idCardPicPath` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '身份证照片存放路径',
  `bankPicPath` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '银行卡照片存放路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of au_user
-- ----------------------------
INSERT INTO `au_user` VALUES (2, 'admin', '123456', '123456', '系统管理员', '女', '2002-01-01', '1', '二代身份证', '123456', '中国', '13522614019', '123@hanlu.com', '西华大学', '121212', '2022-09-07 01:28:59', NULL, 'admin', 1, '会员', NULL, '注册会员', 1, '2022-09-07 01:28:59', NULL, '3423423432432', '中国银行', '张果', '', '');
INSERT INTO `au_user` VALUES (79, 'rongxing', '123456', NULL, '戎星01', NULL, NULL, NULL, '二代身份证', '350209200009103232', '中国', '13423456578', '23@123.com', '西华大学', '614200', '2022-09-07 14:06:19', NULL, 'admin', NULL, '会员', NULL, '注册会员', 1, '2022-09-07 14:06:19', NULL, '1231123123123', '中国银行', '张三', NULL, NULL);
INSERT INTO `au_user` VALUES (73, 'user', '123456', '123456', '北大青鸟', '', '2011-04-10', '1', '身份证', '123456', '中国', '123456', '', '', '', '2014-04-10 00:00:00', 2, 'admin', 2, '会员', '1', '注册会员', 1, '2014-04-10 14:41:14', '2014-04-10 15:15:26', '123456', '北京银行', '北大青鸟', '/statics/uploadfiles/1397098771656_IDcard.jpg', '/statics/uploadfiles/1397112341821_bank.jpg');

-- ----------------------------
-- Table structure for basics_parameter
-- ----------------------------
DROP TABLE IF EXISTS `basics_parameter`;
CREATE TABLE `basics_parameter`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `VALUE` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DR` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '系统基础支撑数据信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of basics_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `typeCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型编码',
  `typeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型名称',
  `valueId` int(0) NULL DEFAULT NULL COMMENT '类型值ID',
  `valueName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '类型值Name',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES (1, 'CARD_TYPE', '证件类型', 1, '身份证');
INSERT INTO `data_dictionary` VALUES (2, 'CARD_TYPE', '证件类型', 2, '驾驶证');
INSERT INTO `data_dictionary` VALUES (3, 'CARD_TYPE', '证件类型', 3, '军官证');
INSERT INTO `data_dictionary` VALUES (4, 'CARD_TYPE', '证件类型', 4, '护照');
INSERT INTO `data_dictionary` VALUES (5, 'USER_TYPE', '用户类型', 1, '注册会员');
INSERT INTO `data_dictionary` VALUES (6, 'USER_TYPE', '用户类型', 2, '普通消费会员');
INSERT INTO `data_dictionary` VALUES (7, 'USER_TYPE', '用户类型', 3, 'VIP会员');
INSERT INTO `data_dictionary` VALUES (8, 'USER_TYPE', '用户类型', 4, '加盟店');
INSERT INTO `data_dictionary` VALUES (9, 'PACK_TYPE', '套餐类型', 1, '报单套餐');
INSERT INTO `data_dictionary` VALUES (10, 'PACK_TYPE', '套餐类型', 2, '重消套餐');
INSERT INTO `data_dictionary` VALUES (11, 'PACK_TYPE', '套餐类型', 3, '辅消套餐');
INSERT INTO `data_dictionary` VALUES (12, 'FINANCE_ACTION', '财务动作', 1, '基本');
INSERT INTO `data_dictionary` VALUES (13, 'FINANCE_ACTION', '财务动作', 2, '重消');
INSERT INTO `data_dictionary` VALUES (14, 'FINANCE_ACTION', '财务动作', 3, '同时');
INSERT INTO `data_dictionary` VALUES (15, 'ORDER_STATUS', '订单状态', 1, '已下单');
INSERT INTO `data_dictionary` VALUES (16, 'ORDER_STATUS', '订单状态', 2, '已取消');
INSERT INTO `data_dictionary` VALUES (17, 'ORDER_STATUS', '订单状态', 3, '已付款');
INSERT INTO `data_dictionary` VALUES (18, 'ORDER_STATUS', '订单状态', 4, '已配货');
INSERT INTO `data_dictionary` VALUES (19, 'ORDER_STATUS', '订单状态', 5, '已发货');
INSERT INTO `data_dictionary` VALUES (20, 'ORDER_STATUS', '订单状态', 6, '已送达');
INSERT INTO `data_dictionary` VALUES (21, 'ORDER_STATUS', '订单状态', 7, '已收货');
INSERT INTO `data_dictionary` VALUES (22, 'ORDER_STATUS', '订单状态', 8, '交易成功');
INSERT INTO `data_dictionary` VALUES (23, 'ORDER_STATUS', '订单状态', 9, '交易未成功');
INSERT INTO `data_dictionary` VALUES (24, 'EXPRESS_TYPE', '快递类型', 1, 'EMS');
INSERT INTO `data_dictionary` VALUES (25, 'EXPRESS_TYPE', '快递类型', 2, '顺丰快递');
INSERT INTO `data_dictionary` VALUES (26, 'EXPRESS_TYPE', '快递类型', 3, '圆通快递');
INSERT INTO `data_dictionary` VALUES (27, 'EXPRESS_TYPE', '快递类型', 4, '申通快递');
INSERT INTO `data_dictionary` VALUES (28, 'INFO_TYPE', '资讯类型', 1, '图片');
INSERT INTO `data_dictionary` VALUES (29, 'INFO_TYPE', '资讯类型', 2, '视频');
INSERT INTO `data_dictionary` VALUES (30, 'INFO_TYPE', '资讯类型', 3, '文本');
INSERT INTO `data_dictionary` VALUES (31, 'CASH_IN_STATUS', '提现状态', 1, '已申请');
INSERT INTO `data_dictionary` VALUES (32, 'CASH_IN_STATUS', '提现状态', 2, '已审核');
INSERT INTO `data_dictionary` VALUES (33, 'CASH_IN_STATUS', '提现状态', 3, '未通过');
INSERT INTO `data_dictionary` VALUES (34, 'CASH_IN_STATUS', '提现状态', 4, '等待中');
INSERT INTO `data_dictionary` VALUES (35, 'CASH_IN_STATUS', '提现状态', 5, '已提现');
INSERT INTO `data_dictionary` VALUES (81, 'INFOFILE_SIZE', '上传资讯文件大小', 1, '500000000');
INSERT INTO `data_dictionary` VALUES (80, 'PV_RATE', 'PV转换率', 1, '0.8');
INSERT INTO `data_dictionary` VALUES (89, 'BONUS_PV', '对碰奖励', 1, '200');
INSERT INTO `data_dictionary` VALUES (88, 'EACH_PV', '每碰PV数', 1, '400');
INSERT INTO `data_dictionary` VALUES (87, 'RECOMM_PV', '推荐奖励PV', 1, '400');
INSERT INTO `data_dictionary` VALUES (86, 'BONUS_RATE', '奖金比率', 1, '5%');
INSERT INTO `data_dictionary` VALUES (85, 'CONVER_FORMULA', 'PV换算公式', 1, '重消PV 基本PV');
INSERT INTO `data_dictionary` VALUES (83, 'FEE', '手续费', 1, '5%');
INSERT INTO `data_dictionary` VALUES (84, 'OTHER_FEE', '其他费用', 1, '10');
INSERT INTO `data_dictionary` VALUES (82, 'PERSONALFILE_SIZE', '上传个人资料附件大小', 1, '50000');

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goodsSN` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goodsName` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goodsFormat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '商品规格',
  `marketPrice` double NULL DEFAULT NULL COMMENT '市场价',
  `realPrice` double NULL DEFAULT NULL COMMENT '优惠价格',
  `state` int(0) NULL DEFAULT NULL COMMENT '状态（1、上架、2、下架）',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '商品说明',
  `num` int(0) NULL DEFAULT 0 COMMENT '库存数量',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '单位',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastUpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `createdBy` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES (14, '001', '上衣', '<b><font size=\"5\">明星<span style=\"background-color: rgb(255, 204, 51);\">都教授</span>同款</font></b>', 120, 110, 1, '', 56, '件', '2014-04-10 10:54:40', '2014-04-10 10:54:40', 'admin');
INSERT INTO `goods_info` VALUES (15, '002', '裤子', '', 150, 100, 1, '', 56, '条', '2014-04-10 10:55:20', '2014-04-10 10:55:20', 'admin');
INSERT INTO `goods_info` VALUES (16, '003', '裙子', '', 200, 150, 1, '明星同款', 90, '条', '2014-04-10 10:55:56', '2022-09-08 22:57:10', 'admin');
INSERT INTO `goods_info` VALUES (18, '1011', '格子衫', '', 123, 100, 1, '帅气，时尚，简约', 200, '件', '2022-09-08 22:56:33', '2022-09-08 22:56:33', 'lyx');

-- ----------------------------
-- Table structure for goods_pack
-- ----------------------------
DROP TABLE IF EXISTS `goods_pack`;
CREATE TABLE `goods_pack`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goodsPackName` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '套餐名称',
  `goodsPackCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '套餐编码',
  `typeId` int(0) NULL DEFAULT NULL COMMENT '套餐类型ID',
  `typeName` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '套餐类型NAME',
  `totalPrice` double NULL DEFAULT NULL COMMENT '套餐总价（系统生成，保存时根据相关商品的优惠价*数量计算生成）',
  `state` int(0) NULL DEFAULT NULL COMMENT '状态（1、上架2、下架）',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '备注说明',
  `num` int(0) NULL DEFAULT 0 COMMENT '库存数量',
  `createdBy` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastUpdateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_pack
-- ----------------------------
INSERT INTO `goods_pack` VALUES (20, '星明同款', '001', 1, '报单套餐', 260, 1, '', 100, 'admin', '2014-04-10 10:59:27', '2014-04-10 11:00:59');

-- ----------------------------
-- Table structure for goods_pack_affiliated
-- ----------------------------
DROP TABLE IF EXISTS `goods_pack_affiliated`;
CREATE TABLE `goods_pack_affiliated`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goodsPackId` bigint(0) NULL DEFAULT NULL COMMENT '商品套餐主表ID',
  `goodsInfoId` bigint(0) NULL DEFAULT NULL COMMENT '商品ID',
  `goodsNum` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of goods_pack_affiliated
-- ----------------------------
INSERT INTO `goods_pack_affiliated` VALUES (85, 20, 16, 1);
INSERT INTO `goods_pack_affiliated` VALUES (84, 20, 14, 1);

-- ----------------------------
-- Table structure for info_annexes
-- ----------------------------
DROP TABLE IF EXISTS `info_annexes`;
CREATE TABLE `info_annexes`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'GOODS_ID',
  `INFO_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货品编码',
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `STATE` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `UPLOAD_TIME` date NULL DEFAULT NULL,
  `SIZE` decimal(8, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '资讯附件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_annexes
-- ----------------------------

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '内容',
  `state` int(0) NULL DEFAULT 1 COMMENT '发布状态（0、未发布 1、发布）默认为发布',
  `publisher` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发布人',
  `publishTime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `typeId` int(0) NULL DEFAULT NULL COMMENT '附件类型ID',
  `typeName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '附件类型NAME',
  `fileName` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '附件名称',
  `filePath` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '附件存放路径',
  `fileSize` double NULL DEFAULT NULL COMMENT '附件大小',
  `uploadTime` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (38, '资讯2', '<font face=\"Arial, Verdana\" size=\"2\">资讯2资讯2资讯2资讯2资讯2资讯2资讯2资讯2</font>', 1, 'admin', '2014-04-10 15:02:56', 30, '文本', '', '', NULL, '2014-04-10 15:02:56');
INSERT INTO `information` VALUES (37, '资讯1', '<h3 style=\"margin: 0px; font-family: Karla, sans-serif; color: rgb(49, 126, 172); text-rendering: optimizelegibility; font-size: 18px; line-height: 27px; background-color: rgb(255, 255, 255);\">资讯1<span style=\"font-weight: normal;\">资讯1</span><span style=\"font-weight: normal;\">资讯1</span><span style=\"font-weight: normal;\">资讯1</span><span style=\"font-weight: normal;\">资讯1</span><span style=\"font-weight: normal;\">资讯1</span><span style=\"font-weight: normal;\">资讯1</span></h3>', 1, 'admin', '2014-04-10 15:01:26', 28, '图片', '超容量.bmp', '/statics/infofiles/1397113716035_info.bmp', 3888026, '2014-04-10 15:01:26');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GOODS_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NUM` decimal(8, 0) NULL DEFAULT NULL,
  `STATE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '库存表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------

-- ----------------------------
-- Table structure for leave_message
-- ----------------------------
DROP TABLE IF EXISTS `leave_message`;
CREATE TABLE `leave_message`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `createdBy` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '留言用户code',
  `messageCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '留言编码',
  `messageTitle` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '留言标题',
  `messageContent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '留言内容',
  `state` int(0) NULL DEFAULT NULL COMMENT '状态（1、已回复0、未回复）',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_message
-- ----------------------------
INSERT INTO `leave_message` VALUES (52, 'JBIT', NULL, NULL, '留言第二条测试', 0, '2014-04-10 15:09:58');
INSERT INTO `leave_message` VALUES (51, 'JBIT', NULL, NULL, '上次买的明星款衣服真心的不错，谢谢卖家', 1, '2014-04-10 15:09:22');

-- ----------------------------
-- Table structure for multi_lan
-- ----------------------------
DROP TABLE IF EXISTS `multi_lan`;
CREATE TABLE `multi_lan`  (
  `ELEMENT_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '元素内容ID',
  `PAGE_PATH` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '页面文件路径',
  `SCN` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '简体中文',
  `TCN` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '繁体中文',
  `EN` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '英文',
  `JP` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '日文',
  `KR` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '韩文',
  `FR` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '法文',
  `RA` varchar(3000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '俄文',
  PRIMARY KEY (`ELEMENT_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '多语言内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of multi_lan
-- ----------------------------

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `ORDER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ORDER_ID',
  `LIST_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ORDER_TIME` date NULL DEFAULT NULL COMMENT '订购时间',
  `ORDER_SN` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '订购单号',
  `PICK_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货用户ID',
  `REPEAT_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消PV',
  `BASE_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '基本PV',
  `SERVICE_FEE` decimal(12, 2) NULL DEFAULT NULL COMMENT '服务费',
  `SHIP_FRE` decimal(12, 2) NULL DEFAULT NULL COMMENT '快递费',
  `TAX` decimal(12, 2) NULL DEFAULT NULL COMMENT '税费',
  `COUNTRY` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货国家',
  `TEL` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `MOBILE` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机',
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '电邮',
  `USER_ADDRESS` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `POSTCODE` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `STAT` decimal(6, 0) NULL DEFAULT NULL COMMENT '0新建,1已提交,2已审核,3已发货,4已收货,5审核未通过',
  `SHIP_TYPE` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '快递类型',
  `SHIP_NUM` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '快递单号',
  `SHIP_TIME` date NULL DEFAULT NULL COMMENT '发货时间',
  `RECEIVE_TIME` date NULL DEFAULT NULL COMMENT '收货确认时间',
  `SHIP_NOTE` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '送货说明',
  `buy_user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '付款用户ID',
  PRIMARY KEY (`ORDER_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户订购记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------

-- ----------------------------
-- Table structure for order_list
-- ----------------------------
DROP TABLE IF EXISTS `order_list`;
CREATE TABLE `order_list`  (
  `LIST_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'LIST_ID',
  `GOODS_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `GOODS_SN` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货品编码',
  `GOODS_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货品名称',
  `GOODS_FORMAT` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货品规格',
  `GOODS_NUM` decimal(9, 0) NULL DEFAULT NULL COMMENT '数量',
  `EACH_PRICE` decimal(12, 2) NULL DEFAULT NULL COMMENT '单价',
  `SUM_PRICE` decimal(12, 2) NULL DEFAULT NULL COMMENT '总价',
  `DISCOUNT` decimal(6, 4) NULL DEFAULT NULL COMMENT '折扣',
  `REAL_PRICE` decimal(12, 2) NULL DEFAULT NULL COMMENT '实际价格',
  `CURRENCY` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '货币种类',
  `REAL_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '实际PV',
  `PV_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT 'PV折算率',
  PRIMARY KEY (`LIST_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户订购商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_list
-- ----------------------------

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `messageId` bigint(0) NULL DEFAULT NULL COMMENT '留言ID（主表）',
  `replyContent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '回复内容',
  `createdBy` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '回复人',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (33, 51, '那大家都来买吧，呵呵', 'admin', '2014-04-10 15:11:25');

-- ----------------------------
-- Table structure for uploadtemp
-- ----------------------------
DROP TABLE IF EXISTS `uploadtemp`;
CREATE TABLE `uploadtemp`  (
  `uploader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uploadType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uploadFilePath` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uploadtemp
-- ----------------------------
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1396950789567_info.jpg');
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1396951051763_info.png');
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1396951079132_info.jpg');
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1396951400713_info.jpg');
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1397024384221_info.jpg');
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1397113789074_info.JPG');
INSERT INTO `uploadtemp` VALUES ('admin', 'info', '/statics/infofiles/1397113716035_info.bmp');

-- ----------------------------
-- Table structure for user_account_201312
-- ----------------------------
DROP TABLE IF EXISTS `user_account_201312`;
CREATE TABLE `user_account_201312`  (
  `ACCOUNT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ACCOUNT_ID',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ACCOUNT_DATE` date NULL DEFAULT NULL COMMENT '日期',
  `STAT` decimal(6, 0) NULL DEFAULT NULL COMMENT '0开放,1奖励完成,2积分消费完成',
  `BASE_IN` decimal(12, 2) NULL DEFAULT NULL COMMENT '基本入账',
  `BASE_OUT` decimal(12, 2) NULL DEFAULT NULL COMMENT '基本出账',
  `BASE_BALANCE` decimal(6, 4) NULL DEFAULT NULL COMMENT '基本余额',
  `REPEAT_IN` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消入账',
  `REPEAT_OUT` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消出账',
  `REPEAT_BALANCE` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消余额',
  `FREE_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '还未够750PV，即够750PV后可分红的部分',
  `ALREADY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '积分消费后的分红PV（可领货不可重分红）',
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '当天领货后的PV',
  PRIMARY KEY (`ACCOUNT_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户总账表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account_201312
-- ----------------------------

-- ----------------------------
-- Table structure for user_account_201404
-- ----------------------------
DROP TABLE IF EXISTS `user_account_201404`;
CREATE TABLE `user_account_201404`  (
  `ACCOUNT_ID` int(0) NOT NULL COMMENT '主键ID',
  `USER_ID` int(0) NOT NULL COMMENT '用户主键ID',
  `ACCOUNT_DATE` date NULL DEFAULT NULL COMMENT '日期',
  `STAT` int(0) NULL DEFAULT NULL COMMENT '总账状态',
  `BASE_IN` double NULL DEFAULT NULL COMMENT '基本入账',
  `BASE_OUT` double NULL DEFAULT NULL COMMENT '基本出账',
  `BASE_BALANCE` double NULL DEFAULT NULL COMMENT '基本余额',
  `REPEAT_IN` double NULL DEFAULT NULL COMMENT '重消入账',
  `REPEAT_OUT` double NULL DEFAULT NULL COMMENT '重消出账',
  `REPEAT_BALANCE` double NULL DEFAULT NULL COMMENT '重消余额',
  `FREE_PV` int(0) NULL DEFAULT NULL COMMENT '未分红重消PV',
  `ALREADY_PV` int(0) NULL DEFAULT NULL COMMENT '已分红未领货重消PV',
  `BUY_PV` int(0) NULL DEFAULT NULL COMMENT '已领货重消PV',
  PRIMARY KEY (`ACCOUNT_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_account_201404
-- ----------------------------

-- ----------------------------
-- Table structure for user_account_log_201404
-- ----------------------------
DROP TABLE IF EXISTS `user_account_log_201404`;
CREATE TABLE `user_account_log_201404`  (
  `accountLogId` bigint(0) NOT NULL,
  `userId` bigint(0) NULL DEFAULT NULL,
  `actionTime` date NULL DEFAULT NULL,
  `actionDesc` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '动作摘要',
  `actionType` decimal(6, 0) NULL DEFAULT NULL COMMENT '0辅消,1重消',
  `baseIn` decimal(12, 2) NULL DEFAULT NULL COMMENT '基本入账',
  `baseOut` decimal(12, 2) NULL DEFAULT NULL COMMENT '基本出账',
  `baseBalance` decimal(6, 4) NULL DEFAULT NULL COMMENT '基本余额',
  `repeatIn` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消入账',
  `repeatOut` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消出账',
  `repeatBalance` decimal(12, 2) NULL DEFAULT NULL COMMENT '重消余额',
  PRIMARY KEY (`accountLogId`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户总账明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account_log_201404
-- ----------------------------

-- ----------------------------
-- Table structure for user_buy
-- ----------------------------
DROP TABLE IF EXISTS `user_buy`;
CREATE TABLE `user_buy`  (
  `BUY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'BUY_ID',
  `BUY_TIME` date NULL DEFAULT NULL COMMENT '消费时间',
  `BONUS_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '拿奖金用户ID',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '消费PV',
  `BONUS_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '奖金比率',
  `BONUS_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '奖励PV',
  PRIMARY KEY (`BUY_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户重复消费记录表(个人拿钱再买)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_buy
-- ----------------------------

-- ----------------------------
-- Table structure for user_buy_bonus
-- ----------------------------
DROP TABLE IF EXISTS `user_buy_bonus`;
CREATE TABLE `user_buy_bonus`  (
  `BUY_BONUS_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'BUY_BONUS_ID',
  `BONUS_MONTH` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '月份',
  `CAL_TIME` date NULL DEFAULT NULL COMMENT '计算时间',
  `BONUS_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '下属总消费PV',
  `BONUS_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '奖金比率',
  `BONUS_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '总奖励PV',
  PRIMARY KEY (`BUY_BONUS_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户重复消费月奖励记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_buy_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for user_cash
-- ----------------------------
DROP TABLE IF EXISTS `user_cash`;
CREATE TABLE `user_cash`  (
  `CASH_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'CASH_ID',
  `CASH_TIME` date NULL DEFAULT NULL COMMENT '申请提现时间',
  `CASH_NUM` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '提现单号',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `CASH_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '提现PV',
  `CURRENCY` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '提现货币',
  `PV_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT 'PV转换率',
  `CASH_MONEY` decimal(12, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `NOTE` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '提现备注',
  `FEE` decimal(12, 2) NULL DEFAULT NULL COMMENT '手续费',
  `TAX` decimal(12, 2) NULL DEFAULT NULL COMMENT '税费',
  `OTHER_FEE` decimal(12, 2) NULL DEFAULT NULL COMMENT '其他费用',
  `BANK_NAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '提现银行名',
  `BANK_BRANCE` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '银行开户行名',
  `BANK_ACCOUNT` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '银行账号',
  `ACCOUNT_NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '账号姓名',
  `STAT` decimal(6, 0) NULL DEFAULT NULL COMMENT '0申请提现,1审核通过,2转账完毕',
  `CREDITED_MONEY` decimal(12, 2) NULL DEFAULT NULL COMMENT '到账金额',
  `CREDITED_TIME` date NULL DEFAULT NULL COMMENT '到账时间',
  `OPERATOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`CASH_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户PV提现记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_cash
-- ----------------------------

-- ----------------------------
-- Table structure for user_pair_201312
-- ----------------------------
DROP TABLE IF EXISTS `user_pair_201312`;
CREATE TABLE `user_pair_201312`  (
  `PAIR_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'PAIR_ID',
  `DATE` date NULL DEFAULT NULL COMMENT '前一天的日期',
  `BONUS_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `LEFT_USER` decimal(9, 0) NULL DEFAULT NULL COMMENT '左用户总数',
  `RIGHT_USER` decimal(9, 0) NULL DEFAULT NULL COMMENT '右用户总数',
  `LEFT_KEEP` decimal(9, 0) NULL DEFAULT NULL COMMENT '左保留总数',
  `RIGHT_KEEP` decimal(9, 0) NULL DEFAULT NULL COMMENT '右保留总数',
  `EACH_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '从数据字典表取，目前是1000',
  `SUM_PAIR_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '总碰PV',
  `BONUS_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '奖金比率',
  `BONUS_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '对碰奖励PV',
  PRIMARY KEY (`PAIR_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户对碰记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_pair_201312
-- ----------------------------

-- ----------------------------
-- Table structure for user_place
-- ----------------------------
DROP TABLE IF EXISTS `user_place`;
CREATE TABLE `user_place`  (
  `PLACE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'PLACE_ID',
  `PLACE_TIME` date NULL DEFAULT NULL COMMENT '安置时间',
  `BONUS_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '拿奖金用户ID',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '消费PV',
  `BONUS_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '奖金比率',
  `BONUS_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '安置奖励PV',
  PRIMARY KEY (`PLACE_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户安置记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_place
-- ----------------------------

-- ----------------------------
-- Table structure for user_point
-- ----------------------------
DROP TABLE IF EXISTS `user_point`;
CREATE TABLE `user_point`  (
  `POINT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'POINT_ID',
  `BUY_TIME` date NULL DEFAULT NULL COMMENT '消费时间',
  `BONUS_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '拿奖金用户ID',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '消费PV',
  `BONUS_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '奖金比率',
  `BONUS_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '奖励PV',
  PRIMARY KEY (`POINT_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户积分消费奖励记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_point
-- ----------------------------

-- ----------------------------
-- Table structure for user_point_goods
-- ----------------------------
DROP TABLE IF EXISTS `user_point_goods`;
CREATE TABLE `user_point_goods`  (
  `POINT_GOODS_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'POINT_GOODS_ID',
  `PICK_TIME` date NULL DEFAULT NULL COMMENT '领货时间',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '消费PV',
  `ORDER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  PRIMARY KEY (`POINT_GOODS_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户积分领货记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_point_goods
-- ----------------------------

-- ----------------------------
-- Table structure for user_recharge
-- ----------------------------
DROP TABLE IF EXISTS `user_recharge`;
CREATE TABLE `user_recharge`  (
  `RECHARGE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'RECHARGE_ID',
  `RECHARGE_TIME` date NULL DEFAULT NULL COMMENT '充值时间',
  `RECHARGE_NUM` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值单号',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `CURRENCY` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值货币',
  `RECHARGE_MONEY` decimal(12, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `NOTE` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '摘要备注',
  `CREDITED_MONEY` decimal(12, 2) NULL DEFAULT NULL COMMENT '到账金额',
  `CREDITED_TIME` date NULL DEFAULT NULL COMMENT '到账时间',
  `AUDIT_USER` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '审核人',
  `PV_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT 'PV比率',
  `PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '兑换后PV值',
  `BANK_NAME` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值银行名',
  `BANK_ACCOUNT` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值账号名',
  `PLATFORM` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值平台',
  `PARAM` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '充值接口参数',
  PRIMARY KEY (`RECHARGE_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户汇款充值记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for user_refer
-- ----------------------------
DROP TABLE IF EXISTS `user_refer`;
CREATE TABLE `user_refer`  (
  `REFER_LOG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'REFER_LOG_ID',
  `REFER_TIME` date NULL DEFAULT NULL COMMENT '推荐时间',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `REFER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BUY_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '消费PV',
  `BONUS_RATE` decimal(6, 4) NULL DEFAULT NULL COMMENT '奖金比率',
  `BONUS_PV` decimal(12, 2) NULL DEFAULT NULL COMMENT '推荐奖励PV',
  PRIMARY KEY (`REFER_LOG_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户推荐记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_refer
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
