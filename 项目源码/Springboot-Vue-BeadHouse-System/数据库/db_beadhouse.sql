/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : db_beadhouse

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 16/01/2025 21:22:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accident
-- ----------------------------
DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `staff_id` bigint NOT NULL COMMENT '值班护工编号',
  `occur_date` datetime NOT NULL COMMENT '发生时间',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '事故描述',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '事故图片',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '事故登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of accident
-- ----------------------------
INSERT INTO `accident` VALUES (1, 1, 5, '2024-07-03 00:00:00', '摔倒', 'http://127.0.0.1:9001/upload/img/20250116/1879877889086808064_user.jpg', 'N', 1, '2024-07-03 19:24:16', 1, '2025-01-16 21:06:31');
INSERT INTO `accident` VALUES (2, 2, 6, '2024-07-06 00:00:00', '摔倒', 'http://127.0.0.1:9001/upload/img/20230401/1642190705605500928_屏幕截图_20221211_143319.png', 'Y', 1, '2024-07-03 22:40:27', 1, '2024-07-03 23:46:58');
INSERT INTO `accident` VALUES (3, 4, 1, '2024-07-25 00:00:00', '摔倒', 'http://127.0.0.1:9001/upload/img/20230426/1651132340481650688_56.jpg', 'N', 1, '2024-07-03 15:53:28', 1, '2024-07-03 15:53:28');

-- ----------------------------
-- Table structure for active
-- ----------------------------
DROP TABLE IF EXISTS `active`;
CREATE TABLE `active`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_id` bigint NOT NULL COMMENT '活动类别编号',
  `theme` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动主题',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动内容',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动地点',
  `organizer` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '组织者姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '组织者电话',
  `active_date` datetime NOT NULL COMMENT '活动日期',
  `active_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动图片',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of active
-- ----------------------------
INSERT INTO `active` VALUES (1, 1, '关爱老人', '关爱老人文艺汇演', '内容', '礼堂', '张三', '13546574576', '2024-07-03 09:48:24', 'url', 'N', 1, '2024-07-03 09:48:37', 1, '2024-07-03 13:27:32');
INSERT INTO `active` VALUES (5, 1, '关爱老人', '文艺汇演', '文艺汇演内容', '礼堂', '张三', '13546574657', '2024-07-03 00:00:00', 'url', 'N', 1, '2024-07-03 13:38:53', 1, '2024-07-03 09:09:53');

-- ----------------------------
-- Table structure for active_participant
-- ----------------------------
DROP TABLE IF EXISTS `active_participant`;
CREATE TABLE `active_participant`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `active_id` bigint NOT NULL COMMENT '活动编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动参与者表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of active_participant
-- ----------------------------
INSERT INTO `active_participant` VALUES (1, 1, 1, 1, '2024-07-03 12:57:34', 1, '2024-07-03 12:57:37');
INSERT INTO `active_participant` VALUES (3, 5, 1, 1, '2024-07-03 09:09:53', 1, '2024-07-03 09:09:53');
INSERT INTO `active_participant` VALUES (4, 5, 2, 1, '2024-07-03 09:09:53', 1, '2024-07-03 09:09:53');

-- ----------------------------
-- Table structure for active_type
-- ----------------------------
DROP TABLE IF EXISTS `active_type`;
CREATE TABLE `active_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动类型名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of active_type
-- ----------------------------
INSERT INTO `active_type` VALUES (1, '老年大学', 'N', 1, '2024-07-03 00:44:56', 1, '2024-07-03 00:47:11');
INSERT INTO `active_type` VALUES (2, '文艺演出', 'N', 1, '2024-07-03 00:45:09', 1, '2024-07-03 00:47:13');

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL COMMENT '父级编号',
  `title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限标题',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限名称',
  `path` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限path',
  `icon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限图标',
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限url',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限类别（MENU/BTN）',
  `method` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限请求方式（GET/POST/PUT/DELETE）',
  `create_id` bigint NULL DEFAULT NULL COMMENT '创建人编号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint NULL DEFAULT NULL COMMENT '修改人编号',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES (1, 0, '首页', 'Home', '/home', NULL, '/home', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (2, 0, '营销管理', 'SolesManage', '/soles', NULL, '/soles', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (3, 2, '咨询管理', 'CounselManage', '/counsel', NULL, '/soles/counsel', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (4, 2, '意向客户', 'IntentionClient', '/intention', NULL, '/soles/intention', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (5, 2, '预定管理', 'BookingManage', '/booking', NULL, '/soles/booking', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (6, 0, '入住管理', 'CheckInManage', '/check-in', NULL, '/check-in', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (7, 6, '床位全景', 'BedGlobal', '/bed', NULL, '/check-in/bed', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (8, 6, '入住签约', 'EnterSign', '/enter', NULL, '/check-in/enter', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (9, 6, '外出登记', 'LeaveSign', '/leave', NULL, '/check-in/leave', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (10, 6, '来访登记', 'VisitSign', '/visit', NULL, '/check-in/visit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (11, 6, '事故登记', 'AccidentSign', '/accident', NULL, '/check-in/accident', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (12, 6, '退住申请', 'CheckOut', '/check-out', NULL, '/check-in/check-out', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (13, 0, '人员管理', 'PeopleManage', '/people', NULL, '/people', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (14, 13, '长者档案', 'OldFile', '/old', NULL, '/people/old', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (15, 13, '员工管理', 'StaffManage', '/staff', NULL, '/people/staff', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (16, 13, '活动管理', 'ActivityManage', '/activity', NULL, '/people/activity', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (17, 0, '服务管理', 'ServiceManage', '/service', NULL, '/service', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (18, 17, '服务项目', 'ServiceProject', '/project', NULL, '/service/project', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (19, 17, '护理等级', 'ServiceLevel', '/level', NULL, '/service/level', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (20, 17, '服务预定', 'ServiceBook', '/book', NULL, '/service/book', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (21, 0, '物资管理', 'ResourceManage', '/resource', NULL, '/resource', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (22, 21, '物资信息', 'ResourceInfo', '/info', NULL, '/resource/info', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (23, 21, '仓库设置', 'StorageSet', '/set', NULL, '/resource/set', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (24, 21, '入库管理', 'StorageEnter', '/enter', NULL, '/resource/enter', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (25, 21, '出库管理', 'StorageLeave', '/leave', NULL, '/resource/leave', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (26, 21, '库存查询', 'StorageSearch', '/search', NULL, '/resource/search', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (27, 0, '餐饮管理', 'FoodManage', '/food', NULL, '/food', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (28, 27, '菜品管理', 'DishManage', '/dish', NULL, '/food/dish', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (29, 27, '餐饮套餐', 'FoodList', '/list', NULL, '/food/list', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (30, 27, '点餐', 'FoodOrder', '/order', NULL, '/food/order', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (31, 0, '费用管理', 'FeeManage', '/fee', NULL, '/fee', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (32, 31, '预存充值', 'StoredPay', '/pay', NULL, '/fee/pay', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (33, 31, '消费记录', 'FeeRecord', '/record', NULL, '/fee/record', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (34, 31, '退住费用审核', 'FeeAudit', '/audit', NULL, '/fee/audit', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (35, 0, '基础数据配置', 'BaseDataSet', '/base', NULL, '/base', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (36, 35, '营销', 'Marketing', '/marketing', NULL, '/base/marketing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (37, 36, '来源渠道', 'OriginChannel', '/origin', NULL, '/base/marketing/origin', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (38, 36, '客户标签', 'ClientTag', '/tag', NULL, '/base/marketing/tag', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (39, 35, '入住', 'CheckIn', '/check-in', NULL, '/base/check-in', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (40, 39, '房间类型', 'RoomType', '/room', NULL, '/base/check-in/room', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (41, 39, '楼栋管理', 'BuildingManage', '/building', NULL, '/base/check-in/building', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `auth` VALUES (42, 35, '活动', 'Activity', '/activity', NULL, '/base/activity', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_attachment
-- ----------------------------
DROP TABLE IF EXISTS `base_attachment`;
CREATE TABLE `base_attachment`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '上传后文件名',
  `real_name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件真实名称',
  `path` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件绝对路径',
  `url` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'url相对路径',
  `suff` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件后缀',
  `size` bigint NOT NULL COMMENT '文件大小 B',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态(Y/N)',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1461 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '附件信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_attachment
-- ----------------------------
INSERT INTO `base_attachment` VALUES (1344, '1609459836239560704_logo.787fb61a.png', 'logo.787fb61a.png', 'D:\\图片\\testDir\\upload\\img\\20230101\\1609459836239560704_logo.787fb61a.png', 'http://111.231.218.141:9001/upload/img/20230101/1609459836239560704_logo.787fb61a.png', 'png', 46258, 'N', 1, '2024-07-03 16:01:42', 1, '2024-07-03 16:01:42');
INSERT INTO `base_attachment` VALUES (1345, '1609460779576209408_00717pRCly4gs71qfmxq2j30k00b43yu.jpg', '00717pRCly4gs71qfmxq2j30k00b43yu.jpg', 'D:\\图片\\testDir\\upload\\img\\20230101\\1609460779576209408_00717pRCly4gs71qfmxq2j30k00b43yu.jpg', 'http://111.231.218.141:9001/upload/img/20230101/1609460779576209408_00717pRCly4gs71qfmxq2j30k00b43yu.jpg', 'jpg', 22580, 'N', 1, '2024-07-03 16:05:27', 1, '2024-07-03 16:05:27');
INSERT INTO `base_attachment` VALUES (1346, '1609460823654150144_9C0mso5xyxHg9fa86766b2a3a201423493bf199755a3.png', '9C0mso5xyxHg9fa86766b2a3a201423493bf199755a3.png', 'D:\\图片\\testDir\\upload\\img\\20230101\\1609460823654150144_9C0mso5xyxHg9fa86766b2a3a201423493bf199755a3.png', 'http://111.231.218.141:9001/upload/img/20230101/1609460823654150144_9C0mso5xyxHg9fa86766b2a3a201423493bf199755a3.png', 'png', 57975, 'N', 1, '2024-07-03 16:05:37', 1, '2024-07-03 16:05:37');
INSERT INTO `base_attachment` VALUES (1347, '1609460831073873920_00717pRCly4gs71qfmxq2j30k00b43yu.jpg', '00717pRCly4gs71qfmxq2j30k00b43yu.jpg', 'D:\\图片\\testDir\\upload\\img\\20230101\\1609460831073873920_00717pRCly4gs71qfmxq2j30k00b43yu.jpg', 'http://111.231.218.141:9001/upload/img/20230101/1609460831073873920_00717pRCly4gs71qfmxq2j30k00b43yu.jpg', 'jpg', 22580, 'N', 1, '2024-07-03 16:05:39', 1, '2024-07-03 16:05:39');
INSERT INTO `base_attachment` VALUES (1348, '1609460857183416320_1671628788072.jpg', '1671628788072.jpg', 'D:\\图片\\testDir\\upload\\img\\20230101\\1609460857183416320_1671628788072.jpg', 'http://111.231.218.141:9001/upload/img/20230101/1609460857183416320_1671628788072.jpg', 'jpg', 609022, 'N', 1, '2024-07-03 16:05:45', 1, '2024-07-03 16:05:45');
INSERT INTO `base_attachment` VALUES (1349, '1609484689793429504_j3m8y5.jpg', 'j3m8y5.jpg', 'D:\\图片\\testDir\\upload\\img\\20230101\\1609484689793429504_j3m8y5.jpg', 'http://111.231.218.141:9001/upload/img/20230101/1609484689793429504_j3m8y5.jpg', 'jpg', 42421, 'N', 1, '2024-07-03 17:40:28', 1, '2024-07-03 17:40:28');
INSERT INTO `base_attachment` VALUES (1350, '1642094693574533120_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642094693574533120_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642094693574533120_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 17:20:58', 1, '2024-07-03 17:20:58');
INSERT INTO `base_attachment` VALUES (1351, '1642103683448594432_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642103683448594432_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642103683448594432_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 17:56:42', 1, '2024-07-03 17:56:42');
INSERT INTO `base_attachment` VALUES (1352, '1642103836792348672_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642103836792348672_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642103836792348672_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 17:57:18', 1, '2024-07-03 17:57:18');
INSERT INTO `base_attachment` VALUES (1353, '1642104058717167616_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642104058717167616_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642104058717167616_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 17:58:11', 1, '2024-07-03 17:58:11');
INSERT INTO `base_attachment` VALUES (1354, '1642104223133884416_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642104223133884416_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642104223133884416_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 17:58:50', 1, '2024-07-03 17:58:50');
INSERT INTO `base_attachment` VALUES (1355, '1642104241681096704_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642104241681096704_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642104241681096704_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 17:58:55', 1, '2024-07-03 17:58:55');
INSERT INTO `base_attachment` VALUES (1356, '1642104378440572928_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642104378440572928_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642104378440572928_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 17:59:27', 1, '2024-07-03 17:59:27');
INSERT INTO `base_attachment` VALUES (1357, '1642105412160348160_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642105412160348160_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642105412160348160_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 18:03:34', 1, '2024-07-03 18:03:34');
INSERT INTO `base_attachment` VALUES (1358, '1642122455173586944_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642122455173586944_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642122455173586944_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 19:11:17', 1, '2024-07-03 19:11:17');
INSERT INTO `base_attachment` VALUES (1359, '1642122486433734656_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642122486433734656_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642122486433734656_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 19:11:25', 1, '2024-07-03 19:11:25');
INSERT INTO `base_attachment` VALUES (1360, '1642123686482829312_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642123686482829312_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642123686482829312_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 19:16:11', 1, '2024-07-03 19:16:11');
INSERT INTO `base_attachment` VALUES (1361, '1642124355688226816_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642124355688226816_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642124355688226816_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 19:18:50', 1, '2024-07-03 19:18:50');
INSERT INTO `base_attachment` VALUES (1362, '1642124610609635328_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642124610609635328_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642124610609635328_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 19:19:51', 1, '2024-07-03 19:19:51');
INSERT INTO `base_attachment` VALUES (1363, '1642124677416509440_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642124677416509440_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642124677416509440_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 19:20:07', 1, '2024-07-03 19:20:07');
INSERT INTO `base_attachment` VALUES (1364, '1642124805292449792_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642124805292449792_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642124805292449792_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 19:20:37', 1, '2024-07-03 19:20:37');
INSERT INTO `base_attachment` VALUES (1365, '1642124851090055168_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642124851090055168_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642124851090055168_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 19:20:48', 1, '2024-07-03 19:20:48');
INSERT INTO `base_attachment` VALUES (1366, '1642125027045302272_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642125027045302272_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642125027045302272_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 19:21:30', 1, '2024-07-03 19:21:30');
INSERT INTO `base_attachment` VALUES (1367, '1642136417256628224_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642136417256628224_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642136417256628224_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:06:46', 1, '2024-07-03 20:06:46');
INSERT INTO `base_attachment` VALUES (1368, '1642138561145757696_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642138561145757696_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642138561145757696_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:15:17', 1, '2024-07-03 20:15:17');
INSERT INTO `base_attachment` VALUES (1369, '1642139006618591232_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139006618591232_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139006618591232_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:17:03', 1, '2024-07-03 20:17:03');
INSERT INTO `base_attachment` VALUES (1370, '1642139100327731200_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139100327731200_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139100327731200_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:17:26', 1, '2024-07-03 20:17:26');
INSERT INTO `base_attachment` VALUES (1371, '1642139831931789312_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139831931789312_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139831931789312_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:20:20', 1, '2024-07-03 20:20:20');
INSERT INTO `base_attachment` VALUES (1372, '1642139860281090048_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139860281090048_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139860281090048_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:20:27', 1, '2024-07-03 20:20:27');
INSERT INTO `base_attachment` VALUES (1373, '1642139867486904320_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139867486904320_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139867486904320_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:20:29', 1, '2024-07-03 20:20:29');
INSERT INTO `base_attachment` VALUES (1374, '1642139944292999168_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139944292999168_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139944292999168_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:20:47', 1, '2024-07-03 20:20:47');
INSERT INTO `base_attachment` VALUES (1375, '1642139975494426624_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139975494426624_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139975494426624_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:20:54', 1, '2024-07-03 20:20:54');
INSERT INTO `base_attachment` VALUES (1376, '1642139981748133888_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642139981748133888_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642139981748133888_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:20:56', 1, '2024-07-03 20:20:56');
INSERT INTO `base_attachment` VALUES (1377, '1642142554819420160_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642142554819420160_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642142554819420160_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:31:09', 1, '2024-07-03 20:31:09');
INSERT INTO `base_attachment` VALUES (1378, '1642142616249196544_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642142616249196544_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642142616249196544_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:31:24', 1, '2024-07-03 20:31:24');
INSERT INTO `base_attachment` VALUES (1379, '1642142747358945280_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642142747358945280_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642142747358945280_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:31:55', 1, '2024-07-03 20:31:55');
INSERT INTO `base_attachment` VALUES (1380, '1642142821682012160_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642142821682012160_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642142821682012160_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:32:13', 1, '2024-07-03 20:32:13');
INSERT INTO `base_attachment` VALUES (1381, '1642143387682365440_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642143387682365440_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642143387682365440_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:34:28', 1, '2024-07-03 20:34:28');
INSERT INTO `base_attachment` VALUES (1382, '1642143484574982144_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642143484574982144_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642143484574982144_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 20:34:51', 1, '2024-07-03 20:34:51');
INSERT INTO `base_attachment` VALUES (1383, '1642144914513879040_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642144914513879040_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642144914513879040_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:40:32', 1, '2024-07-03 20:40:32');
INSERT INTO `base_attachment` VALUES (1384, '1642145684579704832_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642145684579704832_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642145684579704832_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:43:35', 1, '2024-07-03 20:43:35');
INSERT INTO `base_attachment` VALUES (1385, '1642145743757139968_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642145743757139968_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642145743757139968_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:43:50', 1, '2024-07-03 20:43:50');
INSERT INTO `base_attachment` VALUES (1386, '1642147290364796928_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642147290364796928_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642147290364796928_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:49:58', 1, '2024-07-03 20:49:58');
INSERT INTO `base_attachment` VALUES (1387, '1642147310916886528_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642147310916886528_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642147310916886528_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 20:50:03', 1, '2024-07-03 20:50:03');
INSERT INTO `base_attachment` VALUES (1388, '1642148311417774080_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642148311417774080_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642148311417774080_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 20:54:02', 1, '2024-07-03 20:54:02');
INSERT INTO `base_attachment` VALUES (1389, '1642155063865532416_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642155063865532416_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230401/1642155063865532416_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-03 21:20:52', 1, '2024-07-03 21:20:52');
INSERT INTO `base_attachment` VALUES (1390, '1642155114906017792_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642155114906017792_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642155114906017792_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 21:21:04', 1, '2024-07-03 21:21:04');
INSERT INTO `base_attachment` VALUES (1391, '1642155860556800000_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642155860556800000_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642155860556800000_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 21:24:02', 1, '2024-07-03 21:24:02');
INSERT INTO `base_attachment` VALUES (1392, '1642155869842989056_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642155869842989056_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642155869842989056_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 21:24:04', 1, '2024-07-03 21:24:04');
INSERT INTO `base_attachment` VALUES (1393, '1642155920573095936_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642155920573095936_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642155920573095936_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:24:16', 1, '2024-07-03 21:24:16');
INSERT INTO `base_attachment` VALUES (1394, '1642156602684366848_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642156602684366848_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642156602684366848_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:26:59', 1, '2024-07-03 21:26:59');
INSERT INTO `base_attachment` VALUES (1395, '1642156746188283904_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642156746188283904_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642156746188283904_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:27:33', 1, '2024-07-03 21:27:33');
INSERT INTO `base_attachment` VALUES (1396, '1642157272367915008_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642157272367915008_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642157272367915008_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:29:38', 1, '2024-07-03 21:29:38');
INSERT INTO `base_attachment` VALUES (1397, '1642157281041735680_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642157281041735680_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642157281041735680_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 21:29:40', 1, '2024-07-03 21:29:40');
INSERT INTO `base_attachment` VALUES (1398, '1642157288834752512_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642157288834752512_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642157288834752512_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 21:29:42', 1, '2024-07-03 21:29:42');
INSERT INTO `base_attachment` VALUES (1399, '1642157432485470208_Capture001.png', 'Capture001.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642157432485470208_Capture001.png', 'http://111.231.218.141:9001/upload/img/20230401/1642157432485470208_Capture001.png', 'png', 1803433, 'N', 1, '2024-07-03 21:30:16', 1, '2024-07-03 21:30:16');
INSERT INTO `base_attachment` VALUES (1400, '1642160792039088128_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642160792039088128_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642160792039088128_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:43:37', 1, '2024-07-03 21:43:37');
INSERT INTO `base_attachment` VALUES (1401, '1642160958531985408_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642160958531985408_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642160958531985408_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:44:17', 1, '2024-07-03 21:44:17');
INSERT INTO `base_attachment` VALUES (1402, '1642161078090620928_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642161078090620928_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642161078090620928_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 21:44:46', 1, '2024-07-03 21:44:46');
INSERT INTO `base_attachment` VALUES (1403, '1642161363273932800_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642161363273932800_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642161363273932800_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:45:54', 1, '2024-07-03 21:45:54');
INSERT INTO `base_attachment` VALUES (1404, '1642161516030484480_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642161516030484480_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642161516030484480_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:46:30', 1, '2024-07-03 21:46:30');
INSERT INTO `base_attachment` VALUES (1405, '1642161750961840128_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642161750961840128_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642161750961840128_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:47:26', 1, '2024-07-03 21:47:26');
INSERT INTO `base_attachment` VALUES (1406, '1642163072796745728_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642163072796745728_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642163072796745728_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 21:52:41', 1, '2024-07-03 21:52:41');
INSERT INTO `base_attachment` VALUES (1407, '1642164466605907968_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642164466605907968_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642164466605907968_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 21:58:13', 1, '2024-07-03 21:58:13');
INSERT INTO `base_attachment` VALUES (1408, '1642165463172538368_屏幕截图_20221225_202505.png', '屏幕截图_20221225_202505.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642165463172538368_屏幕截图_20221225_202505.png', 'http://111.231.218.141:9001/upload/img/20230401/1642165463172538368_屏幕截图_20221225_202505.png', 'png', 5242, 'N', 1, '2024-07-03 22:02:11', 1, '2024-07-03 22:02:11');
INSERT INTO `base_attachment` VALUES (1409, '1642166386628255744_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642166386628255744_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642166386628255744_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:05:51', 1, '2024-07-03 22:05:51');
INSERT INTO `base_attachment` VALUES (1410, '1642166991811796992_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642166991811796992_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642166991811796992_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:08:15', 1, '2024-07-03 22:08:15');
INSERT INTO `base_attachment` VALUES (1411, '1642167029912854528_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642167029912854528_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642167029912854528_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:08:25', 1, '2024-07-03 22:08:25');
INSERT INTO `base_attachment` VALUES (1412, '1642167164147359744_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642167164147359744_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642167164147359744_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:08:57', 1, '2024-07-03 22:08:57');
INSERT INTO `base_attachment` VALUES (1413, '1642167403663089664_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642167403663089664_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642167403663089664_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:09:54', 1, '2024-07-03 22:09:54');
INSERT INTO `base_attachment` VALUES (1414, '1642167820291694592_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642167820291694592_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230401/1642167820291694592_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-03 22:11:33', 1, '2024-07-03 22:11:33');
INSERT INTO `base_attachment` VALUES (1415, '1642168144523976704_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642168144523976704_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642168144523976704_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:12:50', 1, '2024-07-03 22:12:50');
INSERT INTO `base_attachment` VALUES (1416, '1642168250019110912_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642168250019110912_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642168250019110912_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:13:15', 1, '2024-07-03 22:13:15');
INSERT INTO `base_attachment` VALUES (1417, '1642168642593382400_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642168642593382400_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642168642593382400_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:14:49', 1, '2024-07-03 22:14:49');
INSERT INTO `base_attachment` VALUES (1418, '1642168866778931200_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642168866778931200_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642168866778931200_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:15:43', 1, '2024-07-03 22:15:43');
INSERT INTO `base_attachment` VALUES (1419, '1642168924551274496_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642168924551274496_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642168924551274496_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:15:56', 1, '2024-07-03 22:15:56');
INSERT INTO `base_attachment` VALUES (1420, '1642169039944966144_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642169039944966144_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642169039944966144_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:16:24', 1, '2024-07-03 22:16:24');
INSERT INTO `base_attachment` VALUES (1421, '1642170915599966208_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642170915599966208_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642170915599966208_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:23:51', 1, '2024-07-03 22:23:51');
INSERT INTO `base_attachment` VALUES (1422, '1642170981786083328_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642170981786083328_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642170981786083328_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:24:07', 1, '2024-07-03 22:24:07');
INSERT INTO `base_attachment` VALUES (1423, '1642170993412694016_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642170993412694016_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230401/1642170993412694016_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-03 22:24:10', 1, '2024-07-03 22:24:10');
INSERT INTO `base_attachment` VALUES (1424, '1642171012081541120_屏幕截图(1).png', '屏幕截图(1).png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642171012081541120_屏幕截图(1).png', 'http://111.231.218.141:9001/upload/img/20230401/1642171012081541120_屏幕截图(1).png', 'png', 685545, 'N', 1, '2024-07-03 22:24:14', 1, '2024-07-03 22:24:14');
INSERT INTO `base_attachment` VALUES (1425, '1642171648072245248_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642171648072245248_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642171648072245248_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:26:46', 1, '2024-07-03 22:26:46');
INSERT INTO `base_attachment` VALUES (1426, '1642171720319131648_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642171720319131648_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642171720319131648_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:27:03', 1, '2024-07-03 22:27:03');
INSERT INTO `base_attachment` VALUES (1427, '1642171886581342208_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642171886581342208_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642171886581342208_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:27:42', 1, '2024-07-03 22:27:42');
INSERT INTO `base_attachment` VALUES (1428, '1642171893560664064_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642171893560664064_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642171893560664064_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:27:44', 1, '2024-07-03 22:27:44');
INSERT INTO `base_attachment` VALUES (1429, '1642172012326576128_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642172012326576128_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230401/1642172012326576128_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-03 22:28:12', 1, '2024-07-03 22:28:12');
INSERT INTO `base_attachment` VALUES (1430, '1642172081289322496_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642172081289322496_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642172081289322496_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 22:28:29', 1, '2024-07-03 22:28:29');
INSERT INTO `base_attachment` VALUES (1431, '1642175009257447424_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642175009257447424_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230401/1642175009257447424_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-03 22:40:07', 1, '2024-07-03 22:40:07');
INSERT INTO `base_attachment` VALUES (1432, '1642175028949704704_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642175028949704704_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230401/1642175028949704704_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-03 22:40:12', 1, '2024-07-03 22:40:12');
INSERT INTO `base_attachment` VALUES (1433, '1642190705605500928_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642190705605500928_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230401/1642190705605500928_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-03 23:42:29', 1, '2024-07-03 23:42:29');
INSERT INTO `base_attachment` VALUES (1434, '1642192054401458176_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230401\\1642192054401458176_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230401/1642192054401458176_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-03 23:47:51', 1, '2024-07-03 23:47:51');
INSERT INTO `base_attachment` VALUES (1435, '1642203499394588672_屏幕截图_20221210_093139.png', '屏幕截图_20221210_093139.png', 'D:\\图片\\testDir\\upload\\img\\20230402\\1642203499394588672_屏幕截图_20221210_093139.png', 'http://111.231.218.141:9001/upload/img/20230402/1642203499394588672_屏幕截图_20221210_093139.png', 'png', 26590, 'N', 1, '2024-07-02 00:33:20', 1, '2024-07-02 00:33:20');
INSERT INTO `base_attachment` VALUES (1436, '1642351453174554624_屏幕截图_20221210_093317.png', '屏幕截图_20221210_093317.png', 'D:\\图片\\testDir\\upload\\img\\20230402\\1642351453174554624_屏幕截图_20221210_093317.png', 'http://111.231.218.141:9001/upload/img/20230402/1642351453174554624_屏幕截图_20221210_093317.png', 'png', 71598, 'N', 1, '2024-07-02 10:21:15', 1, '2024-07-02 10:21:15');
INSERT INTO `base_attachment` VALUES (1437, '1642351466961231872_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230402\\1642351466961231872_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230402/1642351466961231872_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-02 10:21:18', 1, '2024-07-02 10:21:18');
INSERT INTO `base_attachment` VALUES (1438, '1642351477455380480_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230402\\1642351477455380480_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230402/1642351477455380480_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-02 10:21:20', 1, '2024-07-02 10:21:20');
INSERT INTO `base_attachment` VALUES (1439, '1642352088343175168_屏幕截图_20221211_143319.png', '屏幕截图_20221211_143319.png', 'D:\\图片\\testDir\\upload\\img\\20230402\\1642352088343175168_屏幕截图_20221211_143319.png', 'http://111.231.218.141:9001/upload/img/20230402/1642352088343175168_屏幕截图_20221211_143319.png', 'png', 48958, 'N', 1, '2024-07-02 10:23:46', 1, '2024-07-02 10:23:46');
INSERT INTO `base_attachment` VALUES (1440, '1642352470234554368_屏幕截图(2).png', '屏幕截图(2).png', 'D:\\图片\\testDir\\upload\\img\\20230402\\1642352470234554368_屏幕截图(2).png', 'http://111.231.218.141:9001/upload/img/20230402/1642352470234554368_屏幕截图(2).png', 'png', 582420, 'N', 1, '2024-07-02 10:25:17', 1, '2024-07-02 10:25:17');
INSERT INTO `base_attachment` VALUES (1441, '1643600038046306304_logo.png', 'logo.png', 'D:\\图片\\testDir\\upload\\img\\20230405\\1643600038046306304_logo.png', 'http://111.231.218.141:9001/upload/img/20230405/1643600038046306304_logo.png', 'png', 228686, 'N', 1, '2024-07-03 21:02:40', 1, '2024-07-03 21:02:40');
INSERT INTO `base_attachment` VALUES (1442, '1651104776698556416_56.jpg', '56.jpg', 'D:\\图片\\testDir\\upload\\img\\20230426\\1651104776698556416_56.jpg', 'http://111.231.218.141:9001/upload/img/20230426/1651104776698556416_56.jpg', 'jpg', 653154, 'N', 1, '2024-07-03 14:03:49', 1, '2024-07-03 14:03:49');
INSERT INTO `base_attachment` VALUES (1443, '1651104796717969408_56.jpg', '56.jpg', 'D:\\图片\\testDir\\upload\\img\\20230426\\1651104796717969408_56.jpg', 'http://111.231.218.141:9001/upload/img/20230426/1651104796717969408_56.jpg', 'jpg', 653154, 'N', 1, '2024-07-03 14:03:54', 1, '2024-07-03 14:03:54');
INSERT INTO `base_attachment` VALUES (1444, '1651132340481650688_56.jpg', '56.jpg', 'D:\\图片\\testDir\\upload\\img\\20230426\\1651132340481650688_56.jpg', 'http://111.231.218.141:9001/upload/img/20230426/1651132340481650688_56.jpg', 'jpg', 653154, 'N', 1, '2024-07-03 15:53:21', 1, '2024-07-03 15:53:21');
INSERT INTO `base_attachment` VALUES (1445, '1818280895072751616_1.png', '1.png', '/Users/jiawang/temp/upload/upload/img/20240730/1818280895072751616_1.png', 'http://127.0.0.1:9001/upload/img/20240730/1818280895072751616_1.png', 'png', 49057, 'N', 1, '2024-07-30 21:42:02', 1, '2024-07-30 21:42:02');
INSERT INTO `base_attachment` VALUES (1446, '1818283285712785408_1.png', '1.png', '/Users/jiawang/temp/upload/upload/img/20240730/1818283285712785408_1.png', 'http://127.0.0.1:9001/upload/img/20240730/1818283285712785408_1.png', 'png', 49057, 'N', 3, '2024-07-30 21:51:32', 3, '2024-07-30 21:51:32');
INSERT INTO `base_attachment` VALUES (1447, '1818283368453820416_1.png', '1.png', '/Users/jiawang/temp/upload/upload/img/20240730/1818283368453820416_1.png', 'http://127.0.0.1:9001/upload/img/20240730/1818283368453820416_1.png', 'png', 49057, 'N', 3, '2024-07-30 21:51:52', 3, '2024-07-30 21:51:52');
INSERT INTO `base_attachment` VALUES (1448, '1818531686748569600_1.png', '1.png', '/Users/jiawang/temp/upload/upload/img/20240731/1818531686748569600_1.png', 'http://127.0.0.1:9001/upload/img/20240731/1818531686748569600_1.png', 'png', 49057, 'N', 3, '2024-07-31 14:18:35', 3, '2024-07-31 14:18:35');
INSERT INTO `base_attachment` VALUES (1449, '1818600265066008576_1.png', '1.png', '/Users/jiawang/temp/upload/upload/img/20240731/1818600265066008576_1.png', 'http://127.0.0.1:9001/upload/img/20240731/1818600265066008576_1.png', 'png', 49057, 'N', 3, '2024-07-31 18:51:06', 3, '2024-07-31 18:51:06');
INSERT INTO `base_attachment` VALUES (1450, '1828757735260856320_20206142392748559.jpg', '20206142392748559.jpg', 'D:\\exam\\upload\\img\\20240828\\1828757735260856320_20206142392748559.jpg', 'http://127.0.0.1:9001/upload/img/20240828/1828757735260856320_20206142392748559.jpg', 'jpg', 21985, 'N', 1, '2024-08-28 19:33:15', 1, '2024-08-28 19:33:15');
INSERT INTO `base_attachment` VALUES (1451, '1828757982632517632_20204823154758937.jpg', '20204823154758937.jpg', 'D:\\exam\\upload\\img\\20240828\\1828757982632517632_20204823154758937.jpg', 'http://127.0.0.1:9001/upload/img/20240828/1828757982632517632_20204823154758937.jpg', 'jpg', 24820, 'N', 1, '2024-08-28 19:34:14', 1, '2024-08-28 19:34:14');
INSERT INTO `base_attachment` VALUES (1452, '1828758017734647808_20204823154758937.jpg', '20204823154758937.jpg', 'D:\\exam\\upload\\img\\20240828\\1828758017734647808_20204823154758937.jpg', 'http://127.0.0.1:9001/upload/img/20240828/1828758017734647808_20204823154758937.jpg', 'jpg', 24820, 'N', 1, '2024-08-28 19:34:23', 1, '2024-08-28 19:34:23');
INSERT INTO `base_attachment` VALUES (1453, '1851639110053724160_yyy8.jpg', 'yyy8.jpg', 'D:\\exam\\upload\\img\\20241030\\1851639110053724160_yyy8.jpg', 'http://127.0.0.1:9001/upload/img/20241030/1851639110053724160_yyy8.jpg', 'jpg', 16781, 'N', 1, '2024-10-30 22:55:40', 1, '2024-10-30 22:55:40');
INSERT INTO `base_attachment` VALUES (1454, '1851639637407760384_yyy8.jpg', 'yyy8.jpg', 'D:\\exam\\upload\\img\\20241030\\1851639637407760384_yyy8.jpg', 'http://127.0.0.1:9001/upload/img/20241030/1851639637407760384_yyy8.jpg', 'jpg', 16781, 'N', 1, '2024-10-30 22:57:46', 1, '2024-10-30 22:57:46');
INSERT INTO `base_attachment` VALUES (1455, '1851652448703807488_77IP-C.jpg', '77IP-C.jpg', 'D:\\exam\\upload\\img\\20241030\\1851652448703807488_77IP-C.jpg', 'http://127.0.0.1:9001/upload/img/20241030/1851652448703807488_77IP-C.jpg', 'jpg', 23055, 'N', 1, '2024-10-30 23:48:40', 1, '2024-10-30 23:48:40');
INSERT INTO `base_attachment` VALUES (1456, '1851652549430018048_77IP-C.jpg', '77IP-C.jpg', 'D:\\exam\\upload\\img\\20241030\\1851652549430018048_77IP-C.jpg', 'http://127.0.0.1:9001/upload/img/20241030/1851652549430018048_77IP-C.jpg', 'jpg', 23055, 'N', 1, '2024-10-30 23:49:04', 1, '2024-10-30 23:49:04');
INSERT INTO `base_attachment` VALUES (1457, '1851653472097206272_u=1717047642,214834878&fm=253&gp=0.jpg', 'u=1717047642,214834878&fm=253&gp=0.jpg', 'D:\\exam\\upload\\img\\20241030\\1851653472097206272_u=1717047642,214834878&fm=253&gp=0.jpg', 'http://127.0.0.1:9001/upload/img/20241030/1851653472097206272_u=1717047642,214834878&fm=253&gp=0.jpg', 'jpg', 20216, 'N', 1, '2024-10-30 23:52:44', 1, '2024-10-30 23:52:44');
INSERT INTO `base_attachment` VALUES (1458, '1851653534273568768_000223ctxlcapejmuyf6aj.png', '000223ctxlcapejmuyf6aj.png', 'D:\\exam\\upload\\img\\20241030\\1851653534273568768_000223ctxlcapejmuyf6aj.png', 'http://127.0.0.1:9001/upload/img/20241030/1851653534273568768_000223ctxlcapejmuyf6aj.png', 'png', 51441, 'N', 1, '2024-10-30 23:52:59', 1, '2024-10-30 23:52:59');
INSERT INTO `base_attachment` VALUES (1459, '1879376669901373440_user.jpg', 'user.jpg', 'E:\\Source_Code\\49-SpringBoot+Vue养老院管理系统（带文档）\\49-SpringBoot+Vue养老院管理系统\\exam\\upload\\img\\upload\\img\\20250115\\1879376669901373440_user.jpg', 'http://127.0.0.1:9001upload/img/20250115/1879376669901373440_user.jpg', 'jpg', 1846944, 'N', 1, '2025-01-15 11:54:50', 1, '2025-01-15 11:54:50');
INSERT INTO `base_attachment` VALUES (1460, '1879376700284911616_user.jpg', 'user.jpg', 'E:\\Source_Code\\49-SpringBoot+Vue养老院管理系统（带文档）\\49-SpringBoot+Vue养老院管理系统\\exam\\upload\\img\\upload\\img\\20250115\\1879376700284911616_user.jpg', 'http://127.0.0.1:9001upload/img/20250115/1879376700284911616_user.jpg', 'jpg', 1846944, 'N', 1, '2025-01-15 11:54:57', 1, '2025-01-15 11:54:57');
INSERT INTO `base_attachment` VALUES (1461, '1879376961954983936_user.jpg', 'user.jpg', 'E:\\Source_Code\\49-SpringBoot+Vue养老院管理系统（带文档）\\49-SpringBoot+Vue养老院管理系统\\exam\\upload\\img\\20250115\\1879376961954983936_user.jpg', 'http://127.0.0.1:9001/upload/img/20250115/1879376961954983936_user.jpg', 'jpg', 1846944, 'N', 1, '2025-01-15 11:56:00', 1, '2025-01-15 11:56:00');
INSERT INTO `base_attachment` VALUES (1462, '1879834103203807232_user.jpg', 'user.jpg', 'E:\\Source_Code\\49-SpringBoot+Vue养老院管理系统（带文档）\\49-SpringBoot+Vue养老院管理系统\\exam\\upload\\img\\20250116\\1879834103203807232_user.jpg', 'http://127.0.0.1:9001/upload/img/20250116/1879834103203807232_user.jpg', 'jpg', 1846944, 'N', 1, '2025-01-16 18:12:31', 1, '2025-01-16 18:12:31');
INSERT INTO `base_attachment` VALUES (1463, '1879834155771019264_user.jpg', 'user.jpg', 'E:\\Source_Code\\49-SpringBoot+Vue养老院管理系统（带文档）\\49-SpringBoot+Vue养老院管理系统\\exam\\upload\\img\\20250116\\1879834155771019264_user.jpg', 'http://127.0.0.1:9001/upload/img/20250116/1879834155771019264_user.jpg', 'jpg', 1846944, 'N', 1, '2025-01-16 18:12:43', 1, '2025-01-16 18:12:43');
INSERT INTO `base_attachment` VALUES (1464, '1879877889086808064_user.jpg', 'user.jpg', 'E:\\Source_Code\\49-SpringBoot+Vue养老院管理系统（带文档）\\49-SpringBoot+Vue养老院管理系统\\exam\\upload\\img\\20250116\\1879877889086808064_user.jpg', 'http://127.0.0.1:9001/upload/img/20250116/1879877889086808064_user.jpg', 'jpg', 1846944, 'N', 1, '2025-01-16 21:06:30', 1, '2025-01-16 21:06:30');

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `room_id` bigint NOT NULL COMMENT '房间编号',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '床位名称',
  `bed_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '床位状态(空闲/预定/入住/退住审核)',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '床位表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bed
-- ----------------------------
INSERT INTO `bed` VALUES (1, 1, '爱心楼-1层-1房-1床', '空闲', 'N', 1, '2024-07-03 14:28:38', 1, '2024-07-03 18:18:29');
INSERT INTO `bed` VALUES (2, 2, '爱心楼-1层-2房-1床', '空闲', 'N', 1, '2024-07-03 14:28:38', 1, '2024-07-03 18:19:12');
INSERT INTO `bed` VALUES (3, 3, '爱心楼-1层-3房-1床', '空闲', 'N', 1, '2024-07-03 14:28:38', 1, '2024-07-23 14:34:34');
INSERT INTO `bed` VALUES (4, 4, '爱心楼-1层-4房-1床', '入住', 'N', 1, '2024-07-03 14:28:38', 1, '2024-07-01 23:29:43');
INSERT INTO `bed` VALUES (5, 5, '爱心楼-1层-5房-1床', '空闲', 'N', 1, '2024-07-03 14:28:38', 1, '2024-07-19 00:00:00');
INSERT INTO `bed` VALUES (6, 6, '楼栋2-1层-1房-1床', '退住审核', 'N', 1, '2024-07-03 21:39:55', 1, '2024-07-23 19:28:37');
INSERT INTO `bed` VALUES (7, 6, '楼栋2-1层-1房-2床', '退住审核', 'N', 1, '2024-07-03 21:40:01', 1, '2024-07-03 15:53:50');
INSERT INTO `bed` VALUES (8, 8, '测试床位1', '空闲', 'N', 1, '2024-07-03 02:38:17', 1, '2024-07-31 00:43:03');
INSERT INTO `bed` VALUES (9, 8, '测试床位2', '空闲', 'Y', 1, '2024-07-03 02:38:57', 1, '2024-07-03 02:39:54');
INSERT INTO `bed` VALUES (10, 8, '测试床位21', '退住审核', 'N', 1, '2024-07-03 02:40:15', 1, '2024-07-23 19:27:18');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '楼栋名称',
  `floor_num` int NOT NULL COMMENT '楼层数量',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '楼栋表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (1, '楼栋1', 2, 'N', 1, '2024-07-03 14:19:07', 1, '2024-07-03 21:01:15');
INSERT INTO `building` VALUES (2, '楼栋2', 3, 'N', 1, '2024-07-03 20:59:59', 1, '2024-07-03 02:16:01');
INSERT INTO `building` VALUES (3, '楼栋3', 5, 'Y', 1, '2024-07-03 21:00:02', 1, '2024-07-03 02:33:49');
INSERT INTO `building` VALUES (4, '楼栋4', 5, 'Y', 1, '2024-07-03 21:00:05', 1, '2024-07-03 02:33:45');
INSERT INTO `building` VALUES (5, '楼栋5', 5, 'Y', 1, '2024-07-03 21:00:08', 1, '2024-07-03 02:33:38');
INSERT INTO `building` VALUES (6, '楼栋6', 5, 'Y', 1, '2024-07-03 21:00:10', 1, '2024-07-03 02:33:35');
INSERT INTO `building` VALUES (7, '楼栋7', 5, 'Y', 1, '2024-07-03 21:00:13', 1, '2024-07-03 02:33:05');
INSERT INTO `building` VALUES (8, '楼栋8', 5, 'Y', 1, '2024-07-03 21:00:15', 1, '2024-07-03 02:33:02');
INSERT INTO `building` VALUES (9, '楼栋9', 5, 'Y', 1, '2024-07-03 21:00:18', 1, '2024-07-03 02:32:59');
INSERT INTO `building` VALUES (10, '楼栋10', 5, 'Y', 1, '2024-07-03 21:00:23', 1, '2024-07-03 00:56:29');
INSERT INTO `building` VALUES (11, '楼栋11', 10, 'Y', 1, '2024-07-03 01:03:10', 1, '2024-07-03 01:07:42');
INSERT INTO `building` VALUES (12, '楼栋10', 5, 'Y', 1, '2024-07-03 01:08:00', 1, '2024-07-03 02:32:56');
INSERT INTO `building` VALUES (13, '测试楼栋', 2, 'N', 1, '2024-07-03 02:33:25', 1, '2024-07-03 02:35:14');
INSERT INTO `building` VALUES (14, '胡图图', 10, 'N', 1, '2024-07-03 18:24:21', 1, '2024-07-03 18:24:21');

-- ----------------------------
-- Table structure for catering_set
-- ----------------------------
DROP TABLE IF EXISTS `catering_set`;
CREATE TABLE `catering_set`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '餐饮套餐名称',
  `month_price` decimal(10, 2) NOT NULL COMMENT '月套餐费用',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '餐饮套餐表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of catering_set
-- ----------------------------
INSERT INTO `catering_set` VALUES (1, '颐养套餐', 1200.00, 'N', 1, '2024-07-13 16:22:34', 1, '2024-07-13 16:24:34');
INSERT INTO `catering_set` VALUES (2, '黄金套餐', 1200.00, 'N', 1, '2024-07-13 16:23:12', 1, '2024-07-13 16:23:12');
INSERT INTO `catering_set` VALUES (3, '测试', 12.70, 'N', 1, '2024-07-04 11:55:31', 1, '2024-07-04 11:57:24');
INSERT INTO `catering_set` VALUES (4, '测试1', 120.00, 'N', 1, '2024-07-04 14:56:11', 1, '2024-07-04 14:57:28');
INSERT INTO `catering_set` VALUES (5, '胡图图', 100.00, 'N', 1, '2024-07-03 18:12:09', 1, '2024-07-03 18:12:09');

-- ----------------------------
-- Table structure for communication_record
-- ----------------------------
DROP TABLE IF EXISTS `communication_record`;
CREATE TABLE `communication_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `record_date` datetime NOT NULL COMMENT '记录时间',
  `communication_record` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '沟通记录',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '沟通记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of communication_record
-- ----------------------------
INSERT INTO `communication_record` VALUES (1, 1, '2022-12-14 00:00:00', '测试记录', 'N', 1, '2024-07-03 23:12:59', 1, '2024-07-03 23:13:57');

-- ----------------------------
-- Table structure for consult
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `source_id` bigint NOT NULL COMMENT '来源渠道编号',
  `staff_id` bigint NOT NULL COMMENT '接待人编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '咨询人姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '咨询人电话',
  `relation` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '与老人关系',
  `consult_date` datetime NOT NULL COMMENT '咨询日期',
  `consult_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '咨询内容',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '咨询人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of consult
-- ----------------------------
INSERT INTO `consult` VALUES (1, 1, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 2, '2024-07-03 18:51:16', 2, '2024-07-03 20:22:07');
INSERT INTO `consult` VALUES (2, 2, 1, 1, '张三', '13546564658', '父子', '2022-10-11 00:00:00', '养老院环境', 2, '2024-07-03 18:53:42', 2, '2024-07-03 18:53:42');
INSERT INTO `consult` VALUES (4, 3, 1, 1, '张三', '13546564658', '父子', '2022-10-11 00:00:00', '养老院环境', 2, '2024-07-03 20:04:05', 2, '2024-07-03 20:04:05');
INSERT INTO `consult` VALUES (5, 4, 1, 1, '张三', '13546564658', '父子', '2022-10-11 00:00:00', '养老院环境', 2, '2024-07-03 20:04:37', 2, '2024-07-03 20:04:37');
INSERT INTO `consult` VALUES (6, 8, 1, 1, '张三', '13546564658', '父子', '2022-10-11 00:00:00', '养老院环境', 2, '2024-07-03 20:05:18', 2, '2024-07-03 20:05:18');
INSERT INTO `consult` VALUES (7, 7, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 1, '2024-07-03 10:23:15', 1, '2024-07-03 10:28:34');
INSERT INTO `consult` VALUES (8, 18, 1, 1, '管志鑫', '18428167777', '兄弟', '2024-07-09 00:00:00', '你好呀', 4, '2024-07-09 17:02:54', 4, '2024-07-09 17:02:54');
INSERT INTO `consult` VALUES (9, 19, 1, 1, '管志鑫', '18428167777', '兄弟', '2024-07-09 00:00:00', '你好呀', 4, '2024-07-09 17:03:13', 4, '2024-07-20 14:56:15');
INSERT INTO `consult` VALUES (10, 20, 1, 1, '管志鑫', '18428167777', '兄弟', '2024-07-09 00:00:00', '你好呀', 4, '2024-07-09 17:03:19', 4, '2024-07-09 17:03:19');
INSERT INTO `consult` VALUES (11, 21, 1, 1, '管志鑫', '18428167777', '兄弟', '2024-07-09 00:00:00', '你好呀', 4, '2024-07-09 17:03:30', 4, '2024-07-09 17:03:30');
INSERT INTO `consult` VALUES (12, 22, 1, 1, '管志鑫', '18428167777', '兄弟', '2024-07-09 00:00:00', '你好呀', 4, '2024-07-09 17:03:34', 4, '2024-07-09 17:03:34');
INSERT INTO `consult` VALUES (13, 23, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:25', 4, '2024-07-09 17:05:25');
INSERT INTO `consult` VALUES (14, 24, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:32', 4, '2024-07-09 17:05:32');
INSERT INTO `consult` VALUES (15, 25, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:34', 4, '2024-07-09 17:05:34');
INSERT INTO `consult` VALUES (16, 26, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:36', 4, '2024-07-09 17:05:36');
INSERT INTO `consult` VALUES (17, 27, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:37', 4, '2024-07-09 17:05:37');
INSERT INTO `consult` VALUES (18, 28, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:38', 4, '2024-07-09 17:05:38');
INSERT INTO `consult` VALUES (19, 29, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:40', 4, '2024-07-09 17:05:40');
INSERT INTO `consult` VALUES (20, 30, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:43', 4, '2024-07-09 17:05:43');
INSERT INTO `consult` VALUES (21, 31, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:45', 4, '2024-07-09 17:05:45');
INSERT INTO `consult` VALUES (22, 32, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:47', 4, '2024-07-09 17:05:47');
INSERT INTO `consult` VALUES (23, 33, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:49', 4, '2024-07-09 17:05:49');
INSERT INTO `consult` VALUES (24, 34, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:54', 4, '2024-07-09 17:05:54');
INSERT INTO `consult` VALUES (25, 35, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:55', 4, '2024-07-09 17:05:55');
INSERT INTO `consult` VALUES (26, 36, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:56', 4, '2024-07-09 17:05:56');
INSERT INTO `consult` VALUES (27, 37, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:58', 4, '2024-07-09 17:05:58');
INSERT INTO `consult` VALUES (28, 38, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:05:59', 4, '2024-07-09 17:05:59');
INSERT INTO `consult` VALUES (29, 39, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:01', 4, '2024-07-09 17:06:01');
INSERT INTO `consult` VALUES (30, 40, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:02', 4, '2024-07-09 17:06:02');
INSERT INTO `consult` VALUES (31, 41, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:04', 4, '2024-07-09 17:06:04');
INSERT INTO `consult` VALUES (32, 42, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:11', 4, '2024-07-09 17:06:11');
INSERT INTO `consult` VALUES (33, 43, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:13', 4, '2024-07-09 17:06:13');
INSERT INTO `consult` VALUES (34, 44, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:14', 4, '2024-07-09 17:06:14');
INSERT INTO `consult` VALUES (35, 45, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:06:16', 4, '2024-07-09 17:06:16');
INSERT INTO `consult` VALUES (36, 46, 1, 1, '张三', '13546564657', '父子', '2022-10-10 00:00:00', '无', 4, '2024-07-09 17:07:35', 4, '2024-07-09 17:07:35');
INSERT INTO `consult` VALUES (37, 47, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:09:41', 4, '2024-07-10 15:09:41');
INSERT INTO `consult` VALUES (38, 48, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:15:52', 4, '2024-07-10 15:15:52');
INSERT INTO `consult` VALUES (39, 49, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:15:55', 4, '2024-07-10 15:15:55');
INSERT INTO `consult` VALUES (40, 50, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:00', 4, '2024-07-10 15:16:00');
INSERT INTO `consult` VALUES (41, 51, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:07', 4, '2024-07-10 15:16:07');
INSERT INTO `consult` VALUES (42, 52, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:09', 4, '2024-07-10 15:16:09');
INSERT INTO `consult` VALUES (43, 53, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:10', 4, '2024-07-10 15:16:10');
INSERT INTO `consult` VALUES (44, 54, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:12', 4, '2024-07-10 15:16:12');
INSERT INTO `consult` VALUES (45, 55, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:14', 4, '2024-07-10 15:16:14');
INSERT INTO `consult` VALUES (46, 56, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:16:17', 4, '2024-07-10 15:16:17');
INSERT INTO `consult` VALUES (47, 57, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:17:05', 4, '2024-07-10 15:17:05');
INSERT INTO `consult` VALUES (48, 58, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:19:04', 4, '2024-07-10 15:19:04');
INSERT INTO `consult` VALUES (49, 59, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-10 15:19:09', 4, '2024-07-10 15:19:09');
INSERT INTO `consult` VALUES (50, 60, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 14:10:56', 4, '2024-07-12 14:10:56');
INSERT INTO `consult` VALUES (51, 61, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 14:12:33', 4, '2024-07-12 14:12:33');
INSERT INTO `consult` VALUES (52, 62, 1, 1, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 14:12:56', 4, '2024-07-12 14:12:56');
INSERT INTO `consult` VALUES (53, 63, 4, 2, '李四', '18469652132', '父子', '2002-02-12 00:00:00', '你好', 4, '2024-07-12 14:43:22', 4, '2024-07-12 14:43:22');
INSERT INTO `consult` VALUES (54, 64, 4, 2, '李四', '18469652132', '父子', '2002-02-12 00:00:00', '你好', 4, '2024-07-12 14:57:20', 4, '2024-07-12 14:57:20');
INSERT INTO `consult` VALUES (55, 65, 3, 2, '李四', '18469652132', '父子', '2002-02-12 00:00:00', '你好', 4, '2024-07-12 14:57:31', 4, '2024-07-12 14:57:31');
INSERT INTO `consult` VALUES (56, 66, 3, 2, '李四', '18469652132', '父子', '2002-02-12 00:00:00', '你好', 4, '2024-07-12 14:57:51', 4, '2024-07-12 14:57:51');
INSERT INTO `consult` VALUES (57, 67, 3, 2, '刘心', '18469652132', '父子', '2002-02-28 00:00:00', '你好', 4, '2024-07-12 15:00:24', 4, '2024-07-12 15:00:24');
INSERT INTO `consult` VALUES (58, 68, 3, 2, '刘心', '18469652132', '父子', '2002-02-28 00:00:00', '你好', 4, '2024-07-12 15:01:14', 4, '2024-07-12 15:01:14');
INSERT INTO `consult` VALUES (59, 69, 3, 2, '刘楼', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 15:03:00', 4, '2024-07-12 15:03:00');
INSERT INTO `consult` VALUES (60, 70, 3, 2, '刘楼', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 15:03:16', 4, '2024-07-12 15:03:16');
INSERT INTO `consult` VALUES (61, 71, 1, 2, '刘楼', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 15:03:29', 4, '2024-07-12 15:03:29');
INSERT INTO `consult` VALUES (62, 72, 1, 2, '刘楼', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 15:03:50', 4, '2024-07-12 15:03:50');
INSERT INTO `consult` VALUES (63, 73, 3, 2, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 15:05:20', 4, '2024-07-12 15:05:20');
INSERT INTO `consult` VALUES (64, 74, 3, 2, '李四', '18469652132', '父子', '2002-02-03 00:00:00', '你好', 4, '2024-07-12 15:07:52', 4, '2024-07-12 15:07:52');
INSERT INTO `consult` VALUES (65, 75, 4, 2, 'qqqqq', '18888888888', '兄弟', '2024-07-25 00:00:00', 'wwwwwwwwwwwwww', 4, '2024-07-12 15:55:29', 4, '2024-07-20 16:22:42');
INSERT INTO `consult` VALUES (66, 76, 1, 2, 'fefef', '13443334456', 'dsd', '2024-07-23 00:00:00', 'fefefefe', 4, '2024-07-12 15:59:16', 4, '2024-07-12 15:59:16');
INSERT INTO `consult` VALUES (67, 77, 3, 2, '龙哥', '18888998989', '大武当', '2024-07-24 00:00:00', 'dvvvv', 4, '2024-07-20 14:45:31', 4, '2024-07-20 14:45:31');
INSERT INTO `consult` VALUES (68, 78, 4, 2, '测试', '13547584560', '父子', '2024-07-30 00:00:00', '测试', 1, '2024-07-30 17:40:25', 1, '2024-07-30 17:40:52');
INSERT INTO `consult` VALUES (69, 82, 3, 2, '蔡徐坤', '13267879999', '123', '2024-07-07 16:24:15', '123', 1, '2024-07-03 19:28:45', 1, '2024-07-22 23:08:55');
INSERT INTO `consult` VALUES (70, 83, 3, 2, '全二涛', '17666666666', '本人', '2027-03-10 00:00:00', '好', 1, '2024-07-03 19:29:00', 1, '2024-07-03 19:30:13');
INSERT INTO `consult` VALUES (71, 84, 4, 2, '2323', '13541990238', '123', '2024-07-08 00:00:00', '13213', 1, '2024-07-10 14:19:47', 1, '2024-07-03 10:35:54');
INSERT INTO `consult` VALUES (72, 85, 4, 1, 'asuka', '18228011369', '无关系', '2025-01-15 09:00:00', 'EVA', 1, '2024-07-03 15:43:00', 1, '2025-01-16 20:24:44');
INSERT INTO `consult` VALUES (73, 86, 4, 1, '张晓莉', '18228011369', '无关系', '2024-07-12 00:00:00', '大飒飒', 1, '2024-07-03 15:45:31', 1, '2024-07-03 15:51:56');

-- ----------------------------
-- Table structure for consume
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `consume_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消费类别',
  `consume_amount` decimal(10, 2) NOT NULL COMMENT '消费金额',
  `consume_date` datetime NOT NULL COMMENT '消费日期',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '消费记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of consume
-- ----------------------------
INSERT INTO `consume` VALUES (1, 1, '护理', 100.00, '2024-07-07 18:47:51', 1, '2024-07-07 18:47:57', 1, '2024-07-07 18:48:01');
INSERT INTO `consume` VALUES (2, 2, '点餐', 100.00, '2024-07-07 18:47:51', 1, '2024-07-07 18:47:57', 1, '2024-07-07 18:48:01');
INSERT INTO `consume` VALUES (3, 2, '护理', 240.00, '2024-07-03 00:00:00', 1, '2024-07-03 23:44:33', 1, '2024-07-03 23:44:33');
INSERT INTO `consume` VALUES (4, 2, '点餐', 6.00, '2022-12-14 00:00:00', 1, '2024-07-14 21:09:05', 1, '2024-07-14 21:09:05');
INSERT INTO `consume` VALUES (5, 1, '护理', 12.00, '2024-07-04 00:00:00', 1, '2024-07-04 10:14:06', 1, '2024-07-04 10:14:06');
INSERT INTO `consume` VALUES (6, 1, '点餐', 3.00, '2024-07-04 00:00:00', 1, '2024-07-04 16:35:29', 1, '2024-07-04 16:35:29');
INSERT INTO `consume` VALUES (7, 1, '点餐', 2.00, '2024-07-13 00:00:00', 1, '2024-07-03 19:34:28', 1, '2024-07-03 19:34:28');
INSERT INTO `consume` VALUES (8, 1, '护理', 12.00, '2024-07-24 00:00:00', 1, '2024-07-24 19:36:54', 1, '2024-07-24 19:36:54');
INSERT INTO `consume` VALUES (9, 1, '护理', 12.00, '2025-01-16 20:25:27', 1, '2025-01-16 20:25:28', 1, '2025-01-16 20:25:28');

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `staff_id` bigint NOT NULL COMMENT '销售人员编号',
  `sign_date` datetime NOT NULL COMMENT '合同签订日期',
  `start_date` datetime NOT NULL COMMENT '合同开始日期',
  `end_date` datetime NOT NULL COMMENT '合同结束日期',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '合同表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contract
-- ----------------------------
INSERT INTO `contract` VALUES (8, 4, 1, '2022-12-23 00:00:00', '2022-12-23 00:00:00', '2024-07-02 00:00:00', 1, '2024-07-01 23:28:46', 1, '2024-07-01 23:28:46');
INSERT INTO `contract` VALUES (13, 2, 2, '2024-07-03 00:00:00', '2024-07-31 00:00:00', '2024-07-29 00:00:00', 1, '2024-07-31 20:32:03', 1, '2024-07-31 20:32:03');
INSERT INTO `contract` VALUES (14, 17, 1, '2022-12-23 12:00:00', '2024-07-31 12:00:00', '2024-07-30 12:00:00', 1, '2024-07-03 09:10:38', 1, '2024-07-03 09:10:38');
INSERT INTO `contract` VALUES (59, 1, 2, '2024-07-03 12:00:00', '2024-07-01 12:00:00', '2024-07-28 12:00:00', 1, '2024-07-03 16:58:32', 1, '2024-07-03 16:58:32');
INSERT INTO `contract` VALUES (60, 88, 1, '2024-07-08 12:00:00', '2024-07-30 12:00:00', '2027-04-29 12:00:00', 1, '2024-07-24 14:00:57', 1, '2024-07-24 14:00:57');
INSERT INTO `contract` VALUES (61, 8, 2, '2024-07-12 12:00:00', '2024-07-12 12:00:00', '2024-07-17 12:00:00', 1, '2024-07-24 17:13:59', 1, '2024-07-24 17:13:59');

-- ----------------------------
-- Table structure for deposit_info
-- ----------------------------
DROP TABLE IF EXISTS `deposit_info`;
CREATE TABLE `deposit_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `deposit_id` bigint NOT NULL COMMENT '药品缴存编号',
  `medicine_id` bigint NOT NULL COMMENT '药品编号',
  `deposit_num` int NOT NULL COMMENT '缴存数量',
  `surplus_num` int NOT NULL COMMENT '剩余数量',
  `warn_num` int NOT NULL COMMENT '预警数量',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '缴存药品信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deposit_info
-- ----------------------------

-- ----------------------------
-- Table structure for dishes
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_id` bigint NOT NULL COMMENT '菜品类别编号',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜品名称',
  `price` decimal(10, 2) NOT NULL COMMENT '菜品价格',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES (1, 1, '粥', 2.00, 'N', 1, '2024-07-13 13:03:21', 1, '2024-07-13 13:06:54');
INSERT INTO `dishes` VALUES (2, 2, '粥', 2.00, 'N', 1, '2024-07-13 13:03:29', 1, '2024-07-13 13:03:29');
INSERT INTO `dishes` VALUES (3, 2, '包子', 1.00, 'N', 1, '2024-07-13 13:06:37', 1, '2024-07-03 18:10:01');
INSERT INTO `dishes` VALUES (4, 2, '烧麦', 2.00, 'Y', 1, '2024-07-04 10:58:26', 1, '2024-07-04 10:58:42');
INSERT INTO `dishes` VALUES (5, 1, '牛爷爷', 10.00, 'N', 1, '2024-07-03 18:09:22', 1, '2024-07-03 18:09:22');

-- ----------------------------
-- Table structure for dishes_type
-- ----------------------------
DROP TABLE IF EXISTS `dishes_type`;
CREATE TABLE `dishes_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜品类别名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜品分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dishes_type
-- ----------------------------
INSERT INTO `dishes_type` VALUES (1, '早餐', 'N', 1, '2024-07-13 13:01:25', 1, '2024-07-13 13:02:57');
INSERT INTO `dishes_type` VALUES (2, '午餐', 'N', 1, '2024-07-13 13:01:35', 1, '2024-07-13 13:01:35');
INSERT INTO `dishes_type` VALUES (3, '晚餐', 'N', 1, '2024-07-13 13:01:41', 1, '2024-07-13 13:01:41');
INSERT INTO `dishes_type` VALUES (4, '曹氏0', 'Y', 1, '2024-07-04 11:05:33', 1, '2024-07-04 11:07:19');
INSERT INTO `dishes_type` VALUES (5, '蔡徐坤', 'Y', 1, '2024-07-03 19:33:10', 1, '2024-07-03 19:33:33');
INSERT INTO `dishes_type` VALUES (6, '胡图图', 'N', 1, '2024-07-03 18:08:54', 1, '2024-07-03 18:08:54');

-- ----------------------------
-- Table structure for drug_deposit
-- ----------------------------
DROP TABLE IF EXISTS `drug_deposit`;
CREATE TABLE `drug_deposit`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `mode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缴存药品方式',
  `deposit_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缴存状态',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药品缴存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drug_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for elder
-- ----------------------------
DROP TABLE IF EXISTS `elder`;
CREATE TABLE `elder`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `nursing_grade_id` bigint NULL DEFAULT NULL COMMENT '护理等级编号',
  `catering_set_id` bigint NULL DEFAULT NULL COMMENT '餐饮套餐编号',
  `bed_id` bigint NULL DEFAULT NULL COMMENT '床位编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '老人姓名',
  `id_num` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号',
  `age` int NOT NULL COMMENT '年龄',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别(男/女)',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '老人电话',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `balance` decimal(10, 2) NOT NULL COMMENT '余额',
  `check_flag` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '入住状态',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of elder
-- ----------------------------
INSERT INTO `elder` VALUES (1, NULL, NULL, NULL, '张三', '511901198309133448', 70, '男', '13546457890', '四川南充仪陇', 1975.00, '已退住', 1, '2024-07-03 10:23:15', 1, '2025-01-16 20:25:28');
INSERT INTO `elder` VALUES (2, NULL, NULL, NULL, '李四', '511901198309133447', 70, '男', '13546457890', '四川绵阳', 4.00, '已退住', 2, '2024-07-03 18:53:42', 1, '2024-07-03 17:35:41');
INSERT INTO `elder` VALUES (3, NULL, NULL, NULL, '王五', '511901198309133448', 78, '女', '13546457890', '四川成都', 0.00, '已失效', 2, '2024-07-03 20:04:05', 2, '2024-07-03 20:04:05');
INSERT INTO `elder` VALUES (4, 1, 1, 6, '张三', '511901198309133449', 67, '男', '13546574657', '四川南充', 3111.00, '退住审核', 2, '2024-07-03 20:04:37', 1, '2024-07-24 15:14:41');
INSERT INTO `elder` VALUES (6, NULL, NULL, NULL, '李四', '511901198309133490', 80, '女', '13546457890', '四川泸州泸县', 0.00, '意向跟进', 2, '2024-07-03 20:05:18', 1, '2024-07-04 08:52:13');
INSERT INTO `elder` VALUES (7, NULL, NULL, NULL, '张三', '511901198309133451', 67, '男', '13546574657', '四川南充营山', 56.00, '意向跟进', 1, '2024-07-03 10:23:15', 1, '2024-07-03 19:34:11');
INSERT INTO `elder` VALUES (8, 1, 1, 7, '王五', '511901198309133452', 67, '男', '13546574657', '四川凉山冕宁', 200.00, '退住审核', 1, '2024-07-03 18:48:04', 1, '2024-07-03 15:53:50');
INSERT INTO `elder` VALUES (9, NULL, NULL, NULL, '张三', '511901198309133453', 78, '男', '13546574657', '四川南充仪陇', 0.00, '意向跟进', 1, '2024-07-06 19:41:38', 1, '2024-07-03 20:38:35');
INSERT INTO `elder` VALUES (16, NULL, NULL, NULL, '张三', '511901198309133454', 78, '男', '13546574657', '四川南充', 0.00, '咨询中', 1, '2024-07-06 19:51:48', 1, '2024-07-03 22:43:07');
INSERT INTO `elder` VALUES (17, 1, 1, 4, '张三', '511901198309133455', 67, '男', '13546574657', '四川南充营山', 0.00, '入住', 1, '2024-07-01 23:29:43', 1, '2024-07-03 09:10:37');
INSERT INTO `elder` VALUES (18, NULL, NULL, NULL, '管志淼', '51021252200523', 120, '男', '18428888888', '中国某处', 0.00, '已失效', 4, '2024-07-09 17:02:54', 4, '2024-07-12 15:24:36');
INSERT INTO `elder` VALUES (19, NULL, NULL, NULL, '管志淼', '51021252200526', 120, '男', '18428888888', '中国某处', 0.00, '咨询中', 4, '2024-07-09 17:03:13', 4, '2024-07-20 14:56:15');
INSERT INTO `elder` VALUES (20, NULL, NULL, NULL, '管志淼', '51021252200529', 120, '男', '18428888888', '中国某处', 0.00, '已失效', 4, '2024-07-09 17:03:19', 4, '2024-07-12 15:20:53');
INSERT INTO `elder` VALUES (21, NULL, NULL, NULL, '管志淼', '51021252200529999', 120, '男', '18428888888', '中国某处', 0.00, '已失效', 4, '2024-07-09 17:03:30', 4, '2024-07-12 15:24:51');
INSERT INTO `elder` VALUES (22, NULL, NULL, NULL, '管志淼', '510212522005299998', 120, '男', '18428888888', '中国某处', 0.00, '已失效', 4, '2024-07-09 17:03:34', 4, '2024-07-12 15:26:17');
INSERT INTO `elder` VALUES (23, NULL, NULL, NULL, '李四', 'null', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:25', 4, '2024-07-12 15:26:32');
INSERT INTO `elder` VALUES (24, NULL, NULL, NULL, '李四', '1', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:32', 4, '2024-07-09 17:05:32');
INSERT INTO `elder` VALUES (25, NULL, NULL, NULL, '李四', '12', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:34', 4, '2024-07-09 17:05:34');
INSERT INTO `elder` VALUES (26, NULL, NULL, NULL, '李四', '123', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:36', 4, '2024-07-09 17:05:36');
INSERT INTO `elder` VALUES (27, NULL, NULL, NULL, '李四', '1234', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:37', 1, '2024-07-30 00:42:49');
INSERT INTO `elder` VALUES (28, NULL, NULL, NULL, '李四', '12345', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:38', 1, '2024-07-30 00:39:50');
INSERT INTO `elder` VALUES (29, NULL, NULL, NULL, '李四', '123456', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:40', 4, '2024-07-09 17:05:40');
INSERT INTO `elder` VALUES (30, NULL, NULL, NULL, '李四', '1234567', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:43', 4, '2024-07-12 15:30:33');
INSERT INTO `elder` VALUES (31, NULL, NULL, NULL, '李四', '12345678', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:45', 4, '2024-07-12 15:36:11');
INSERT INTO `elder` VALUES (32, NULL, NULL, NULL, '李四', '123456789', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:47', 4, '2024-07-12 15:36:14');
INSERT INTO `elder` VALUES (33, NULL, NULL, NULL, '李四', '1234567890', 67, '男', '13546457878', '四川南充', 0.00, '已失效', 4, '2024-07-09 17:05:49', 4, '2024-07-12 15:36:17');
INSERT INTO `elder` VALUES (34, NULL, NULL, NULL, '李四', '12345678907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:54', 4, '2024-07-09 17:05:54');
INSERT INTO `elder` VALUES (35, NULL, NULL, NULL, '李四', '123456786907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:55', 4, '2024-07-09 17:05:55');
INSERT INTO `elder` VALUES (36, NULL, NULL, NULL, '李四', '1234567686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:56', 4, '2024-07-09 17:05:56');
INSERT INTO `elder` VALUES (37, NULL, NULL, NULL, '李四', '12345676686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:58', 4, '2024-07-09 17:05:58');
INSERT INTO `elder` VALUES (38, NULL, NULL, NULL, '李四', '123456676686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:05:59', 4, '2024-07-09 17:05:59');
INSERT INTO `elder` VALUES (39, NULL, NULL, NULL, '李四', '1234566766686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:01', 4, '2024-07-09 17:06:01');
INSERT INTO `elder` VALUES (40, NULL, NULL, NULL, '李四', '12345667666686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:02', 4, '2024-07-09 17:06:02');
INSERT INTO `elder` VALUES (41, NULL, NULL, NULL, '李四', '123456676666686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:04', 4, '2024-07-09 17:06:04');
INSERT INTO `elder` VALUES (42, NULL, NULL, NULL, '李四', '123456664686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:11', 4, '2024-07-09 17:06:11');
INSERT INTO `elder` VALUES (43, NULL, NULL, NULL, '李四', '12345664686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:13', 4, '2024-07-09 17:06:13');
INSERT INTO `elder` VALUES (44, NULL, NULL, NULL, '李四', '1234564686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:14', 4, '2024-07-09 17:06:14');
INSERT INTO `elder` VALUES (45, NULL, NULL, NULL, '李四', '123454686907', 67, '男', '13546457878', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:06:16', 4, '2024-07-09 17:06:16');
INSERT INTO `elder` VALUES (46, NULL, NULL, NULL, '李四', '1234546868907', 67, '男', '18428197749', '四川南充', 0.00, '咨询中', 4, '2024-07-09 17:07:35', 4, '2024-07-09 17:07:35');
INSERT INTO `elder` VALUES (47, NULL, NULL, NULL, '李武', '2386539', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:09:41', 4, '2024-07-10 15:09:41');
INSERT INTO `elder` VALUES (48, NULL, NULL, NULL, '李武', '1375720', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:15:52', 4, '2024-07-10 15:15:52');
INSERT INTO `elder` VALUES (49, NULL, NULL, NULL, '李武', '274536', 156, '男', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-10 15:15:55', 1, '2024-07-10 14:20:35');
INSERT INTO `elder` VALUES (50, NULL, NULL, NULL, '李武', '800', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:16:00', 4, '2024-07-10 15:16:00');
INSERT INTO `elder` VALUES (51, NULL, NULL, NULL, '李武', '1558848', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:16:07', 4, '2024-07-10 15:16:07');
INSERT INTO `elder` VALUES (52, NULL, NULL, NULL, '李武', '2609280', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:16:09', 4, '2024-07-10 15:16:09');
INSERT INTO `elder` VALUES (53, NULL, NULL, NULL, '李武', '31152', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:16:10', 4, '2024-07-10 15:16:10');
INSERT INTO `elder` VALUES (54, NULL, NULL, NULL, '李武', '3221800', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:16:12', 4, '2024-07-10 15:16:12');
INSERT INTO `elder` VALUES (55, NULL, NULL, NULL, '李武', '2265666', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:16:14', 4, '2024-07-10 15:16:14');
INSERT INTO `elder` VALUES (56, NULL, NULL, NULL, '李武', '167580', 156, '男', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-10 15:16:17', 4, '2024-07-12 15:37:04');
INSERT INTO `elder` VALUES (57, NULL, NULL, NULL, '李武', '50400', 156, '男', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-10 15:17:05', 4, '2024-07-12 15:37:03');
INSERT INTO `elder` VALUES (58, NULL, NULL, NULL, '李武', '0', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:19:04', 4, '2024-07-10 15:19:04');
INSERT INTO `elder` VALUES (59, NULL, NULL, NULL, '李武', '331500', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-10 15:19:09', 4, '2024-07-10 15:19:09');
INSERT INTO `elder` VALUES (60, NULL, NULL, NULL, '李武', '27966', 156, '0', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 14:10:56', 4, '2024-07-12 15:19:06');
INSERT INTO `elder` VALUES (61, NULL, NULL, NULL, '李武', '1024850', 156, '女', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 14:12:33', 4, '2024-07-12 14:12:33');
INSERT INTO `elder` VALUES (62, NULL, NULL, NULL, '李武', '33824', 156, '女', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 14:12:56', 4, '2024-07-12 15:37:06');
INSERT INTO `elder` VALUES (63, NULL, NULL, NULL, '李武', '373230', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 14:43:22', 4, '2024-07-12 14:43:22');
INSERT INTO `elder` VALUES (64, NULL, NULL, NULL, '李武', '486963', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 14:57:20', 4, '2024-07-12 14:57:20');
INSERT INTO `elder` VALUES (65, NULL, NULL, NULL, '李武', '3337928', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 14:57:31', 4, '2024-07-12 14:57:31');
INSERT INTO `elder` VALUES (66, NULL, NULL, NULL, '李武', '1056951', 156, '男', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 14:57:51', 4, '2024-07-12 14:57:51');
INSERT INTO `elder` VALUES (67, NULL, NULL, NULL, '李红', '396676', 123, '女', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 15:00:24', 4, '2024-07-12 15:00:24');
INSERT INTO `elder` VALUES (68, NULL, NULL, NULL, '李红', '500472', 123, '女', '13266669885', '成都', 0.00, '咨询中', 4, '2024-07-12 15:01:14', 4, '2024-07-12 15:01:14');
INSERT INTO `elder` VALUES (69, NULL, NULL, NULL, '刘ii', '1931524', 156, '女', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 15:03:00', 4, '2024-07-12 15:37:01');
INSERT INTO `elder` VALUES (70, NULL, NULL, NULL, '刘ii', '5030688', 156, '女', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 15:03:16', 4, '2024-07-12 15:36:58');
INSERT INTO `elder` VALUES (71, NULL, NULL, NULL, '刘ii', '0xx', 156, '男', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 15:03:29', 4, '2024-07-12 15:36:49');
INSERT INTO `elder` VALUES (72, NULL, NULL, NULL, '刘ii', '3085936', 156, '男', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 15:03:50', 4, '2024-07-12 15:36:47');
INSERT INTO `elder` VALUES (73, NULL, NULL, NULL, '李武', '146466', 156, '女', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 15:05:20', 4, '2024-07-12 15:20:35');
INSERT INTO `elder` VALUES (74, NULL, NULL, NULL, '李武', '257424', 156, '男', '13266669885', '成都', 0.00, '已失效', 4, '2024-07-12 15:07:52', 4, '2024-07-12 15:20:26');
INSERT INTO `elder` VALUES (75, NULL, NULL, NULL, 'xccccx', '31232141421421421', 99, '女', '18888882222', '打完的无多无多无多', 0.00, '已失效', 4, '2024-07-12 15:55:29', 1, '2024-07-30 17:41:02');
INSERT INTO `elder` VALUES (76, NULL, NULL, NULL, 'ndwd', '21232323', 111, '男', '12344567889', 'defef', 0.00, '咨询中', 4, '2024-07-12 15:59:16', 4, '2024-07-12 15:59:16');
INSERT INTO `elder` VALUES (77, NULL, NULL, NULL, '龙爷', '4242424243', 123, '男', '19203300444', '的味道无多', 0.00, '咨询中', 4, '2024-07-20 14:45:31', 4, '2024-07-20 14:45:31');
INSERT INTO `elder` VALUES (78, NULL, NULL, NULL, '曹氏', '512324220503276119', 56, '男', '13547584390', '四川省南充市', 0.00, '已失效', 1, '2024-07-30 17:40:25', 1, '2024-07-30 17:40:52');
INSERT INTO `elder` VALUES (81, NULL, NULL, NULL, '管志淼', '511320208912303776', 120, '男', '18428888888', '四川成都高新', 0.00, '已失效', 1, '2024-07-31 20:32:03', 1, '2024-07-31 20:32:03');
INSERT INTO `elder` VALUES (82, NULL, NULL, NULL, '坤哥', '510509200708092221', 59, '女', '13267879999', '123456', 0.00, '咨询中', 1, '2024-07-03 19:28:45', 1, '2024-07-22 23:08:55');
INSERT INTO `elder` VALUES (83, NULL, NULL, NULL, '全大涛', '511820199512230002', 131, '男', '17666666667', '地址地址地址', 0.00, '已失效', 1, '2024-07-03 19:29:00', 1, '2024-07-03 19:30:26');
INSERT INTO `elder` VALUES (84, NULL, NULL, NULL, '1234', '511724200202156027', 51, '男', '13541990238', '121312121', 0.00, '咨询中', 1, '2024-07-10 14:19:47', 1, '2024-07-03 10:35:54');
INSERT INTO `elder` VALUES (85, NULL, NULL, NULL, 'asuka', '510182233210186329', 63, '男', '18228011369', '翻斗花园3619', 0.00, '咨询中', 1, '2024-07-03 15:43:00', 1, '2025-01-16 20:24:44');
INSERT INTO `elder` VALUES (86, NULL, NULL, NULL, '打到', '510182233210186293', 63, '男', '18228011369', '翻斗花园宋大', 0.00, '咨询中', 1, '2024-07-03 15:45:31', 1, '2024-07-03 15:51:56');
INSERT INTO `elder` VALUES (87, NULL, NULL, NULL, '胡图图', '510182199003041847', 96, '男', '19126322173', '翻斗花园3692', 0.00, '意向跟进', 1, '2024-07-03 16:24:32', 1, '2024-07-03 16:24:32');
INSERT INTO `elder` VALUES (88, 1, 1, 10, '胡图图', '510182200112186491', 96, '女', '19126322368', '翻斗大街翻斗花园', 0.00, '退住审核', 1, '2024-07-03 16:54:01', 1, '2024-07-24 14:00:56');
INSERT INTO `elder` VALUES (89, NULL, NULL, NULL, '王五', '513433200412172725', 55, '男', '13881569055', '成都市桂溪街道天益街', 0.00, '意向跟进', 1, '2024-07-24 14:50:51', 1, '2024-07-24 14:50:51');

-- ----------------------------
-- Table structure for elder_label
-- ----------------------------
DROP TABLE IF EXISTS `elder_label`;
CREATE TABLE `elder_label`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `label_id` bigint NOT NULL COMMENT '标签编号',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老人标签表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of elder_label
-- ----------------------------
INSERT INTO `elder_label` VALUES (1, 6, 1, 1, '2024-07-03 13:15:25', 1, '2024-07-03 13:15:29');
INSERT INTO `elder_label` VALUES (2, 6, 2, 1, '2024-07-03 13:15:25', 1, '2024-07-03 13:15:29');
INSERT INTO `elder_label` VALUES (4, 7, 1, 1, '2024-07-03 21:27:42', 1, '2024-07-03 21:27:42');
INSERT INTO `elder_label` VALUES (5, 7, 2, 1, '2024-07-03 21:27:42', 1, '2024-07-03 21:27:42');

-- ----------------------------
-- Table structure for emergency_contact
-- ----------------------------
DROP TABLE IF EXISTS `emergency_contact`;
CREATE TABLE `emergency_contact`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '紧急联系人姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '紧急联系人电话',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '紧急联系人邮箱',
  `relation` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '与老人关系',
  `receive_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接收消息（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '紧急联系人表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of emergency_contact
-- ----------------------------
INSERT INTO `emergency_contact` VALUES (5, 4, '张三', '13547564867', '3363937530@qq.com', '父子', 'Y', 1, '2024-07-01 23:28:46', 1, '2024-07-01 23:28:46');
INSERT INTO `emergency_contact` VALUES (10, 81, '王氏', '13546547364', '94659846@qq.com', '父子', 'Y', 1, '2024-07-31 20:32:03', 1, '2024-07-31 20:32:03');
INSERT INTO `emergency_contact` VALUES (11, 17, '王五', '13547564867', '3363937530@qq.com', '父子', 'N', 1, '2024-07-03 09:10:38', 1, '2024-07-03 09:10:38');
INSERT INTO `emergency_contact` VALUES (99, 1, '王五', '13547564867', '3363937530@qq.com', '父子', 'Y', 1, '2024-07-03 16:58:32', 1, '2024-07-03 16:58:32');
INSERT INTO `emergency_contact` VALUES (100, 1, '王氏', '13547584400', '38274823@qq.com', '父子', 'N', 1, '2024-07-03 16:58:32', 1, '2024-07-03 16:58:32');
INSERT INTO `emergency_contact` VALUES (101, 88, '牛爷爷', '19120322017', 'm46kf2n@136.cnm', '五个关系', 'Y', 1, '2024-07-24 14:00:56', 1, '2024-07-24 14:00:56');
INSERT INTO `emergency_contact` VALUES (102, 8, '二涛', '18740671234', '2487283726@qq.com', 'fa', 'Y', 1, '2024-07-24 17:13:59', 1, '2024-07-24 17:13:59');

-- ----------------------------
-- Table structure for family_member
-- ----------------------------
DROP TABLE IF EXISTS `family_member`;
CREATE TABLE `family_member`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '家属姓名',
  `id_num` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '家属电话',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '家属邮箱',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `relation` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '与老人关系',
  `receive_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接收消息（Y/N）',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老人家属表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of family_member
-- ----------------------------

-- ----------------------------
-- Table structure for floor
-- ----------------------------
DROP TABLE IF EXISTS `floor`;
CREATE TABLE `floor`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `building_id` bigint NOT NULL COMMENT '楼栋编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '楼层名称',
  `room_num` int NOT NULL COMMENT '房间数量',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '楼层表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of floor
-- ----------------------------
INSERT INTO `floor` VALUES (1, 1, '楼栋1-1层', 10, 'N', 1, '2024-07-03 14:22:54', 1, '2024-07-03 14:22:57');
INSERT INTO `floor` VALUES (2, 1, '楼栋1-2层', 10, 'N', 1, '2024-07-03 14:22:54', 1, '2024-07-03 22:23:22');
INSERT INTO `floor` VALUES (3, 1, '楼栋1-3层', 10, 'N', 1, '2024-07-03 14:22:54', 1, '2024-07-03 14:22:57');
INSERT INTO `floor` VALUES (4, 1, '楼栋1-4层', 10, 'N', 1, '2024-07-03 14:22:54', 1, '2024-07-03 14:22:57');
INSERT INTO `floor` VALUES (5, 1, '楼栋1-5层', 10, 'N', 1, '2024-07-03 14:22:54', 1, '2024-07-03 14:22:57');
INSERT INTO `floor` VALUES (6, 2, '楼栋2-1层', 2, 'N', 1, '2024-07-03 21:22:36', 1, '2024-07-03 22:23:49');
INSERT INTO `floor` VALUES (7, 2, '楼栋2-2层', 1, 'N', 1, '2024-07-03 21:22:47', 1, '2024-07-03 22:22:40');
INSERT INTO `floor` VALUES (8, 2, '楼栋2-3层', 12, 'Y', 1, '2024-07-03 02:16:26', 1, '2024-07-03 02:18:48');
INSERT INTO `floor` VALUES (9, 2, '楼栋2-3层', 12, 'N', 1, '2024-07-03 02:19:05', 1, '2024-07-03 02:19:05');
INSERT INTO `floor` VALUES (10, 13, '测试楼层1', 2, 'N', 1, '2024-07-03 02:34:54', 1, '2024-07-03 02:37:33');
INSERT INTO `floor` VALUES (11, 13, '测试楼层2', 1, 'N', 1, '2024-07-03 02:35:26', 1, '2024-07-03 02:35:26');

-- ----------------------------
-- Table structure for health_data
-- ----------------------------
DROP TABLE IF EXISTS `health_data`;
CREATE TABLE `health_data`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `height` int NOT NULL COMMENT '身高',
  `weight` double NOT NULL COMMENT '体重',
  `temperature` double NOT NULL COMMENT '体温',
  `heart_rate` int NOT NULL COMMENT '心率',
  `systolic_blood_pressure` int NOT NULL COMMENT '收缩血压',
  `diastolic_blood_pressure` int NOT NULL COMMENT '舒张血压',
  `fasting_blood_glucose` int NOT NULL COMMENT '空腹血糖',
  `postprandial_blood_glucose` int NOT NULL COMMENT '餐后血糖',
  `blood_oxygen_saturation` int NOT NULL COMMENT '血氧饱和度',
  `cholesterol` int NOT NULL COMMENT '总胆固醇',
  `uric_acid` int NOT NULL COMMENT '尿酸',
  `left_eye` double NOT NULL COMMENT '左眼',
  `right_eye` double NOT NULL COMMENT '右眼',
  `left_ear` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '左耳',
  `right_ear` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '右耳',
  `muscle_percentage` int NOT NULL COMMENT '肌肉率',
  `body_fat_percentage` int NOT NULL COMMENT '体脂率',
  `waist_circumference` int NOT NULL COMMENT '腰围',
  `hip_circumference` int NOT NULL COMMENT '臀围',
  `moisture_content` int NOT NULL COMMENT '水分率',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老人健康数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of health_data
-- ----------------------------

-- ----------------------------
-- Table structure for health_info
-- ----------------------------
DROP TABLE IF EXISTS `health_info`;
CREATE TABLE `health_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `self_care` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '自理情况',
  `vision` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视力',
  `hearing` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '听力',
  `hospital` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主治医院',
  `doctor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主治医师',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医院电话',
  `allergy_drug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏药物',
  `medical_history` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病史',
  `major_disease` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主要疾病',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老人健康信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of health_info
-- ----------------------------

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_id` bigint NOT NULL COMMENT '类别编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签名称',
  `color` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签颜色',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '标签表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES (1, 1, '跑步', 'rgb', 'N', 1, '2024-07-03 21:14:18', 1, '2024-07-03 22:53:35');
INSERT INTO `label` VALUES (2, 1, '看书', 'rgb', 'N', 1, '2024-07-03 21:14:18', 1, '2024-07-03 21:14:22');
INSERT INTO `label` VALUES (3, 2, '标签1', 'rgb', 'Y', 1, '2024-07-03 21:14:18', 1, '2024-07-03 22:52:41');
INSERT INTO `label` VALUES (4, 2, '标签2', 'rgb', 'N', 1, '2024-07-03 21:14:18', 1, '2024-07-03 21:14:22');
INSERT INTO `label` VALUES (5, 2, '标签3', 'rgb', 'N', 1, '2024-07-03 21:14:18', 1, '2024-07-03 21:14:22');
INSERT INTO `label` VALUES (6, 2, '标签4', 'rgb', 'N', 1, '2024-07-03 22:50:38', 1, '2024-07-03 22:50:38');
INSERT INTO `label` VALUES (7, 2, '标签5', 'rgb', 'N', 1, '2024-07-03 22:50:45', 1, '2024-07-03 22:50:45');
INSERT INTO `label` VALUES (8, 2, '标签6', 'rgb', 'N', 1, '2024-07-03 22:50:47', 1, '2024-07-03 22:50:47');
INSERT INTO `label` VALUES (9, 2, '标签7', 'rgb', 'N', 1, '2024-07-03 22:50:50', 1, '2024-07-03 22:50:50');
INSERT INTO `label` VALUES (10, 2, '标签8', 'rgb', 'N', 1, '2024-07-03 22:50:53', 1, '2024-07-03 22:50:53');
INSERT INTO `label` VALUES (11, 2, '标签9', 'rgb', 'N', 1, '2024-07-03 22:50:55', 1, '2024-07-03 22:50:55');
INSERT INTO `label` VALUES (12, 2, '标签10', 'rgb', 'N', 1, '2024-07-03 22:51:00', 1, '2024-07-03 22:51:00');
INSERT INTO `label` VALUES (13, 1, '运动', 'rgb', 'N', 1, '2024-07-03 22:52:02', 1, '2024-07-03 22:52:02');
INSERT INTO `label` VALUES (14, 2, '标签11', 'rgb', 'N', 1, '2024-07-03 22:52:57', 1, '2024-07-03 22:52:57');

-- ----------------------------
-- Table structure for label_type
-- ----------------------------
DROP TABLE IF EXISTS `label_type`;
CREATE TABLE `label_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '标签类别表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of label_type
-- ----------------------------
INSERT INTO `label_type` VALUES (1, '分类1', 'N', 1, '2024-07-03 21:13:23', 1, '2024-07-03 22:48:39');
INSERT INTO `label_type` VALUES (2, '分类2', 'N', 1, '2024-07-03 21:13:23', 1, '2024-07-03 21:13:26');
INSERT INTO `label_type` VALUES (3, '分类3', 'N', 1, '2024-07-03 22:22:00', 1, '2024-07-03 22:22:00');
INSERT INTO `label_type` VALUES (4, '分类4', 'N', 1, '2024-07-03 22:47:10', 1, '2024-07-03 22:47:10');
INSERT INTO `label_type` VALUES (5, '分类5', 'N', 1, '2024-07-03 22:47:13', 1, '2024-07-03 22:47:13');
INSERT INTO `label_type` VALUES (6, '分类6', 'N', 1, '2024-07-03 22:47:17', 1, '2024-07-03 22:47:17');
INSERT INTO `label_type` VALUES (7, '分类7', 'N', 1, '2024-07-03 22:47:20', 1, '2024-07-03 22:47:20');
INSERT INTO `label_type` VALUES (8, '分类8', 'N', 1, '2024-07-03 22:47:23', 1, '2024-07-03 22:47:23');
INSERT INTO `label_type` VALUES (9, '分类9', 'N', 1, '2024-07-03 22:47:27', 1, '2024-07-03 22:47:27');
INSERT INTO `label_type` VALUES (10, '分类10', 'N', 1, '2024-07-03 22:47:31', 1, '2024-07-03 22:47:31');
INSERT INTO `label_type` VALUES (11, '分类11', 'N', 1, '2024-07-03 22:48:46', 1, '2024-07-03 22:48:46');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_id` bigint NOT NULL COMMENT '物资类别编号',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物资名称',
  `price` decimal(10, 2) NOT NULL COMMENT '物资单价',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物资表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES (1, 1, '勺子', 10.00, 'N', 1, '2024-07-15 11:06:24', 1, '2024-07-15 11:08:58');
INSERT INTO `material` VALUES (2, 2, '当归', 100.00, 'N', 1, '2024-07-15 11:06:36', 1, '2024-07-15 11:07:51');
INSERT INTO `material` VALUES (3, 1, '盘子', 10.00, 'N', 1, '2024-07-15 11:07:03', 1, '2024-07-15 11:09:29');

-- ----------------------------
-- Table structure for material_type
-- ----------------------------
DROP TABLE IF EXISTS `material_type`;
CREATE TABLE `material_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物资类别名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物资类别表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of material_type
-- ----------------------------
INSERT INTO `material_type` VALUES (1, '餐具', 'N', 1, '2024-07-15 11:03:17', 1, '2024-07-15 11:05:31');
INSERT INTO `material_type` VALUES (2, '药品', 'N', 1, '2024-07-15 11:03:57', 1, '2024-07-15 11:05:24');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药品名称',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药品类别',
  `specification` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药品规格',
  `dosage_form` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '药品剂型',
  `manufacturer` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '生产厂家',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '药品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicine
-- ----------------------------

-- ----------------------------
-- Table structure for medicine_record
-- ----------------------------
DROP TABLE IF EXISTS `medicine_record`;
CREATE TABLE `medicine_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `deposit_info_id` bigint NOT NULL COMMENT '药品缴存信息编号',
  `medicine_time` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用药时间（早/中/晚）',
  `medicine_date` datetime NOT NULL COMMENT '用药日期',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用药登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicine_record
-- ----------------------------

-- ----------------------------
-- Table structure for medicine_set
-- ----------------------------
DROP TABLE IF EXISTS `medicine_set`;
CREATE TABLE `medicine_set`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `deposit_info_id` bigint NOT NULL COMMENT '药品缴存信息编号',
  `medicine_time` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用药时间（餐前/餐后）',
  `day_frequency` int NOT NULL COMMENT '天频率',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用药设置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicine_set
-- ----------------------------

-- ----------------------------
-- Table structure for nurse
-- ----------------------------
DROP TABLE IF EXISTS `nurse`;
CREATE TABLE `nurse`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `staff_id` bigint NOT NULL COMMENT '护理人员编号',
  `nurse_date` datetime NOT NULL COMMENT '护理时间',
  `complete_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '护理完成情况',
  `dine_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '进餐情况',
  `rest` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '休息',
  `take_medicine` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服药',
  `active` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '护理记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurse
-- ----------------------------

-- ----------------------------
-- Table structure for nurse_grade
-- ----------------------------
DROP TABLE IF EXISTS `nurse_grade`;
CREATE TABLE `nurse_grade`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '级别名称',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '护理类型',
  `month_price` decimal(10, 2) NOT NULL COMMENT '月护理费用',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '护理等级表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurse_grade
-- ----------------------------
INSERT INTO `nurse_grade` VALUES (1, '一级护理', '自理', 1000.00, 'N', 1, '2024-07-03 09:13:25', 1, '2024-07-04 00:25:17');
INSERT INTO `nurse_grade` VALUES (2, '二级护理', '自理', 1000.00, 'N', 1, '2024-07-03 09:14:16', 1, '2024-07-03 09:15:01');
INSERT INTO `nurse_grade` VALUES (3, '三级护理', '自理', 1000.00, 'N', 1, '2024-07-01 12:15:12', 1, '2024-07-01 12:15:12');
INSERT INTO `nurse_grade` VALUES (4, '四级护理', '自理', 1200.00, 'Y', 1, '2024-07-04 00:17:10', 1, '2024-07-04 00:17:27');
INSERT INTO `nurse_grade` VALUES (5, '测试', '介护', 1200.00, 'N', 1, '2024-07-04 15:12:40', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_grade` VALUES (6, '胡图图', '自理', 1000.00, 'N', 1, '2024-07-03 17:53:27', 1, '2024-07-03 17:53:27');

-- ----------------------------
-- Table structure for nurse_group
-- ----------------------------
DROP TABLE IF EXISTS `nurse_group`;
CREATE TABLE `nurse_group`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `staff_id` bigint NOT NULL COMMENT '护工小组组长编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '护工小组名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '护工小组表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurse_group
-- ----------------------------

-- ----------------------------
-- Table structure for nurse_group_member
-- ----------------------------
DROP TABLE IF EXISTS `nurse_group_member`;
CREATE TABLE `nurse_group_member`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `group_id` bigint NOT NULL COMMENT '护工小组编号',
  `staff_id` bigint NOT NULL COMMENT '护工编号',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '护工小组成员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurse_group_member
-- ----------------------------

-- ----------------------------
-- Table structure for nurse_item
-- ----------------------------
DROP TABLE IF EXISTS `nurse_item`;
CREATE TABLE `nurse_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `grade_id` bigint NOT NULL COMMENT '护理等级编号',
  `service_id` bigint NOT NULL COMMENT '服务项目编号',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '护理项目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurse_item
-- ----------------------------
INSERT INTO `nurse_item` VALUES (3, 2, 1, 1, '2024-07-03 09:14:16', 1, '2024-07-03 09:14:16');
INSERT INTO `nurse_item` VALUES (6, 3, 1, 1, '2024-07-01 12:15:12', 1, '2024-07-01 12:15:12');
INSERT INTO `nurse_item` VALUES (7, 3, 2, 1, '2024-07-01 12:15:12', 1, '2024-07-01 12:15:12');
INSERT INTO `nurse_item` VALUES (22, 4, 16, 1, '2024-07-04 00:17:10', 1, '2024-07-04 00:17:10');
INSERT INTO `nurse_item` VALUES (28, 1, 16, 1, '2024-07-04 00:25:17', 1, '2024-07-04 00:25:17');
INSERT INTO `nurse_item` VALUES (29, 1, 14, 1, '2024-07-04 00:25:17', 1, '2024-07-04 00:25:17');
INSERT INTO `nurse_item` VALUES (30, 1, 11, 1, '2024-07-04 00:25:17', 1, '2024-07-04 00:25:17');
INSERT INTO `nurse_item` VALUES (31, 1, 9, 1, '2024-07-04 00:25:17', 1, '2024-07-04 00:25:17');
INSERT INTO `nurse_item` VALUES (32, 1, 8, 1, '2024-07-04 00:25:17', 1, '2024-07-04 00:25:17');
INSERT INTO `nurse_item` VALUES (43, 5, 11, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (44, 5, 9, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (45, 5, 8, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (46, 5, 7, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (47, 5, 6, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (48, 5, 5, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (49, 5, 4, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (50, 5, 3, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (51, 5, 16, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (52, 5, 14, 1, '2024-07-04 15:12:54', 1, '2024-07-04 15:12:54');
INSERT INTO `nurse_item` VALUES (53, 6, 16, 1, '2024-07-03 17:53:27', 1, '2024-07-03 17:53:27');

-- ----------------------------
-- Table structure for nurse_reserve
-- ----------------------------
DROP TABLE IF EXISTS `nurse_reserve`;
CREATE TABLE `nurse_reserve`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '服务人编号',
  `service_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项目名称',
  `need_date` int NOT NULL COMMENT '所需时间',
  `service_price` decimal(10, 2) NOT NULL COMMENT '服务费用',
  `charge_method` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收费方式',
  `frequency` int NOT NULL COMMENT '服务次数',
  `pay_amount` decimal(10, 2) NOT NULL COMMENT '支付总额',
  `order_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单状态',
  `nurse_date` datetime NULL DEFAULT NULL COMMENT '护理时间',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '护理预定表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nurse_reserve
-- ----------------------------
INSERT INTO `nurse_reserve` VALUES (1, 2, 5, '血糖监测', 30, 120.00, '按次', 2, 240.00, 'Y', '2024-07-03 00:00:00', 1, '2024-07-03 23:30:13', 1, '2024-07-03 23:44:33');
INSERT INTO `nurse_reserve` VALUES (4, 1, 6, '视力检测', 12, 12.00, '按次', 1, 12.00, 'Y', '2024-07-04 00:00:00', 1, '2024-07-04 10:11:12', 1, '2024-07-04 10:14:06');
INSERT INTO `nurse_reserve` VALUES (5, 1, 4, '视力检测', 12, 12.00, '按次', 1, 12.00, 'Y', '2025-01-16 20:25:27', 1, '2024-07-07 17:18:18', 1, '2025-01-16 20:25:28');
INSERT INTO `nurse_reserve` VALUES (6, 1, 1, '视力检测', 12, 12.00, '按次', 1, 12.00, 'Y', '2024-07-24 00:00:00', 1, '2024-07-03 17:55:10', 1, '2024-07-24 19:36:54');
INSERT INTO `nurse_reserve` VALUES (7, 1, NULL, '视力检测', 12, 12.00, '按次', 4, 48.00, 'N', NULL, 1, '2024-07-03 17:55:24', 1, '2024-07-03 17:55:24');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `staff_id` bigint NULL DEFAULT NULL COMMENT '送餐人编号',
  `deliver_dishes_date` datetime NULL DEFAULT NULL COMMENT '送餐时间',
  `dine_date` datetime NOT NULL COMMENT '就餐时间',
  `dine_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '就餐方式',
  `pay_amount` decimal(10, 2) NOT NULL COMMENT '支付总额',
  `order_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单状态',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订餐表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 2, 5, '2024-07-03 00:00:00', '2022-12-14 00:00:00', '送餐', 6.00, 'Y', 1, '2024-07-14 20:51:41', 1, '2024-07-14 21:09:05');
INSERT INTO `order` VALUES (2, 1, 6, '2024-07-03 00:00:00', '2024-07-04 00:00:00', '送餐', 3.00, 'Y', 1, '2024-07-04 16:34:45', 1, '2024-07-04 16:35:29');
INSERT INTO `order` VALUES (3, 1, 6, '2024-07-12 00:00:00', '2024-07-13 00:00:00', '堂食', 2.00, 'Y', 1, '2024-07-03 19:34:09', 1, '2024-07-03 19:34:28');
INSERT INTO `order` VALUES (4, 1, NULL, NULL, '2024-07-07 17:23:55', '送餐', 0.00, 'N', 1, '2024-07-07 17:24:16', 1, '2024-07-07 17:24:16');
INSERT INTO `order` VALUES (5, 1, NULL, NULL, '2024-07-22 00:00:00', '送餐', 10.00, 'N', 1, '2024-07-03 18:14:39', 1, '2024-07-03 18:14:39');

-- ----------------------------
-- Table structure for order_dishes
-- ----------------------------
DROP TABLE IF EXISTS `order_dishes`;
CREATE TABLE `order_dishes`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `order_id` bigint NOT NULL COMMENT '订餐编号',
  `dishes_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜品名称',
  `dishes_price` decimal(10, 2) NOT NULL COMMENT '菜品价格',
  `order_num` int NOT NULL COMMENT '菜品份数',
  `set_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '套餐标记',
  `total_amount` decimal(10, 2) NOT NULL COMMENT '菜品总额',
  `really_amount` decimal(10, 2) NOT NULL COMMENT '实际总额',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订餐食物表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_dishes
-- ----------------------------
INSERT INTO `order_dishes` VALUES (1, 1, '粥', 2.00, 4, 'Y', 8.00, 6.00, 1, '2024-07-14 20:51:41', 1, '2024-07-14 20:51:41');
INSERT INTO `order_dishes` VALUES (2, 2, '粥', 2.00, 1, 'Y', 2.00, 0.00, 1, '2024-07-04 16:34:45', 1, '2024-07-04 16:34:45');
INSERT INTO `order_dishes` VALUES (3, 2, '粥', 2.00, 1, 'N', 2.00, 2.00, 1, '2024-07-04 16:34:45', 1, '2024-07-04 16:34:45');
INSERT INTO `order_dishes` VALUES (4, 2, '包子', 1.00, 2, 'Y', 2.00, 1.00, 1, '2024-07-04 16:34:45', 1, '2024-07-04 16:34:45');
INSERT INTO `order_dishes` VALUES (5, 3, '粥', 2.00, 1, 'N', 2.00, 2.00, 1, '2024-07-03 19:34:09', 1, '2024-07-03 19:34:09');
INSERT INTO `order_dishes` VALUES (6, 4, '包子', 1.00, 1, 'Y', 1.00, 0.00, 1, '2024-07-07 17:24:16', 1, '2024-07-07 17:24:16');
INSERT INTO `order_dishes` VALUES (7, 5, '牛爷爷', 10.00, 1, 'N', 10.00, 10.00, 1, '2024-07-03 18:14:39', 1, '2024-07-03 18:14:39');

-- ----------------------------
-- Table structure for outbound_material
-- ----------------------------
DROP TABLE IF EXISTS `outbound_material`;
CREATE TABLE `outbound_material`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `outbound_record_id` bigint NOT NULL COMMENT '出库登记编号',
  `warehouse_material_id` bigint NOT NULL COMMENT '入库物资编号',
  `material_id` bigint NOT NULL COMMENT '物资编号',
  `outbound_num` int NOT NULL COMMENT '出库数量',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '出库物资表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outbound_material
-- ----------------------------
INSERT INTO `outbound_material` VALUES (4, 7, 1, 1, 2, 1, '2024-07-31 21:32:29', 1, '2024-07-31 21:32:29');
INSERT INTO `outbound_material` VALUES (5, 7, 2, 2, 1, 1, '2024-07-31 21:32:30', 1, '2024-07-31 21:32:30');
INSERT INTO `outbound_material` VALUES (6, 9, 3, 1, 1, 1, '2024-07-31 21:34:36', 1, '2024-07-31 21:34:36');
INSERT INTO `outbound_material` VALUES (7, 9, 4, 2, 1, 1, '2024-07-31 21:34:36', 1, '2024-07-31 21:34:36');
INSERT INTO `outbound_material` VALUES (8, 10, 3, 1, 1, 1, '2024-07-31 22:18:00', 1, '2024-07-31 22:18:00');

-- ----------------------------
-- Table structure for outbound_record
-- ----------------------------
DROP TABLE IF EXISTS `outbound_record`;
CREATE TABLE `outbound_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `warehouse_id` bigint NOT NULL COMMENT '仓库编号',
  `staff_id` bigint NOT NULL COMMENT '经办人编号',
  `recipient_id` bigint NOT NULL COMMENT '领用人编号',
  `recipient_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '领用人类型',
  `material_use` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物资去向',
  `outbound_date` datetime NOT NULL COMMENT '出库时间',
  `outbound_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出库状态',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '出库登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outbound_record
-- ----------------------------
INSERT INTO `outbound_record` VALUES (7, 1, 6, 2, '老人', '使用', '2022-12-14 00:00:00', '已通过', 'N', 1, '2024-07-31 21:32:29', 1, '2024-07-31 21:44:09');
INSERT INTO `outbound_record` VALUES (9, 1, 6, 2, '员工', '使用', '2022-12-14 00:00:00', '待审核', 'Y', 1, '2024-07-31 21:34:36', 1, '2024-07-31 21:43:15');
INSERT INTO `outbound_record` VALUES (10, 1, 6, 2, '员工', '使用', '2022-12-14 00:00:00', '未通过', 'N', 1, '2024-07-31 22:18:00', 1, '2024-07-31 22:18:44');

-- ----------------------------
-- Table structure for outward
-- ----------------------------
DROP TABLE IF EXISTS `outward`;
CREATE TABLE `outward`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `chaperone_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '陪同人姓名',
  `chaperone_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '陪同人电话',
  `chaperone_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '陪同人类型（家属/护工）',
  `outward_date` datetime NOT NULL COMMENT '外出时间',
  `plan_return_date` datetime NOT NULL COMMENT '计划返回时间',
  `real_return_date` datetime NULL DEFAULT NULL COMMENT '实际返回时间',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '外出登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of outward
-- ----------------------------
INSERT INTO `outward` VALUES (1, 1, '张三', '13546473658', '家属', '2022-12-12 00:00:00', '2022-12-14 00:00:00', '2024-07-03 00:00:00', 'Y', 1, '2024-07-03 15:02:36', 1, '2024-07-03 21:32:02');
INSERT INTO `outward` VALUES (2, 17, '张三', '13547584403', '护工', '2024-07-03 00:00:00', '2024-07-03 00:00:00', '2024-07-03 00:00:00', 'N', 1, '2024-07-03 10:00:08', 1, '2024-07-03 15:52:03');
INSERT INTO `outward` VALUES (3, 2, '张三', '13547584403', '护工', '2024-07-03 00:00:00', '2024-07-04 00:00:00', NULL, 'Y', 1, '2024-07-03 10:25:20', 1, '2024-07-03 11:29:20');
INSERT INTO `outward` VALUES (4, 4, '张三', '13547584403', '护工', '2024-07-03 00:00:00', '2024-07-02 00:00:00', '2024-07-03 00:00:00', 'N', 1, '2024-07-03 10:28:40', 1, '2024-07-03 10:57:56');
INSERT INTO `outward` VALUES (5, 1, '文帝', '13547584400', '护工', '2024-07-03 00:00:00', '2024-07-27 00:00:00', '2024-07-25 00:00:00', 'N', 1, '2024-07-03 17:04:19', 1, '2024-07-25 09:28:24');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `staff_id` bigint NOT NULL COMMENT '销售人员编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交款人姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交款人电话',
  `due_date` datetime NOT NULL COMMENT '预定到期时间',
  `deposit` decimal(10, 2) NOT NULL COMMENT '定金',
  `reserve_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退款状态（N/Y）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '预定表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES (25, 6, 2, '曹氏', '13547584480', '2024-07-29 00:00:00', 1000.00, 'Y', 1, '2024-07-04 08:52:13', 1, '2024-07-23 14:34:34');
INSERT INTO `reserve` VALUES (26, 7, 2, '张三', '17666666666', '2028-04-21 00:00:00', 1.00, 'Y', 1, '2024-07-03 19:34:11', 1, '2024-07-03 10:43:56');

-- ----------------------------
-- Table structure for retreat
-- ----------------------------
DROP TABLE IF EXISTS `retreat`;
CREATE TABLE `retreat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `retreat_form` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退住形式',
  `evaluate` int NOT NULL COMMENT '对老人评价',
  `retreat_cause` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '退住原因',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '退住登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of retreat
-- ----------------------------

-- ----------------------------
-- Table structure for retreat_apply
-- ----------------------------
DROP TABLE IF EXISTS `retreat_apply`;
CREATE TABLE `retreat_apply`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `apply_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '申请状态',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '退住申请表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of retreat_apply
-- ----------------------------
INSERT INTO `retreat_apply` VALUES (3, 1, '未通过', 1, '2024-07-03 22:46:29', 1, '2024-07-03 22:46:29');
INSERT INTO `retreat_apply` VALUES (4, 1, '未通过', 1, '2024-07-13 17:42:29', 1, '2024-07-13 17:42:45');
INSERT INTO `retreat_apply` VALUES (5, 1, '未通过', 1, '2024-07-13 17:42:57', 1, '2024-07-13 17:43:23');
INSERT INTO `retreat_apply` VALUES (6, 1, '已通过', 1, '2024-07-02 01:03:34', 1, '2024-07-03 18:18:29');
INSERT INTO `retreat_apply` VALUES (7, 2, '未通过', 1, '2024-07-04 19:31:00', 1, '2024-07-04 19:37:08');
INSERT INTO `retreat_apply` VALUES (8, 2, '未通过', 1, '2024-07-03 16:58:31', 1, '2024-07-03 17:10:25');
INSERT INTO `retreat_apply` VALUES (9, 2, '已通过', 1, '2024-07-03 17:35:41', 1, '2024-07-03 18:19:12');
INSERT INTO `retreat_apply` VALUES (10, 88, '待审核', 1, '2024-07-23 19:27:18', 1, '2024-07-23 19:27:18');
INSERT INTO `retreat_apply` VALUES (11, 4, '待审核', 1, '2024-07-23 19:28:37', 1, '2024-07-23 19:28:37');
INSERT INTO `retreat_apply` VALUES (12, 8, '待审核', 1, '2024-07-03 15:53:50', 1, '2024-07-03 15:53:50');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 1, '2022-12-31 22:40:22', 1, '2022-12-31 22:40:29');
INSERT INTO `role` VALUES (2, '销售管理员', 1, '2024-07-03 18:23:58', 1, '2024-07-03 18:24:01');
INSERT INTO `role` VALUES (4, '人事管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role` VALUES (5, '服务管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role` VALUES (7, '餐饮管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role` VALUES (8, '财务管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');

-- ----------------------------
-- Table structure for role_auth
-- ----------------------------
DROP TABLE IF EXISTS `role_auth`;
CREATE TABLE `role_auth`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint NOT NULL COMMENT '角色编号',
  `auth_id` bigint NOT NULL COMMENT '权限编号',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_auth
-- ----------------------------
INSERT INTO `role_auth` VALUES (1, 1, 1, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (2, 1, 2, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (3, 1, 3, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (4, 1, 4, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (5, 1, 5, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (6, 1, 6, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (7, 1, 7, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (8, 1, 8, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (9, 1, 9, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (10, 1, 10, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (11, 1, 11, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (12, 1, 12, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (13, 1, 13, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (14, 1, 14, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (15, 1, 15, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (16, 1, 16, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (17, 1, 17, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (18, 1, 18, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (19, 1, 19, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (20, 1, 20, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (21, 1, 21, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (22, 1, 22, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (23, 1, 23, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (24, 1, 24, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (25, 1, 25, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (26, 1, 26, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (27, 1, 27, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (28, 1, 28, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (29, 1, 29, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (30, 1, 30, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (31, 1, 31, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (32, 1, 32, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (33, 1, 33, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (34, 1, 34, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (35, 1, 35, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (36, 1, 36, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (37, 1, 37, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (38, 1, 38, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (39, 1, 39, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (40, 1, 40, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (41, 1, 41, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (42, 1, 42, 1, '2024-07-03 14:07:52', 1, '2024-07-03 14:07:52');
INSERT INTO `role_auth` VALUES (43, 2, 1, 1, '2024-07-03 14:10:09', 1, '2024-07-03 14:10:09');
INSERT INTO `role_auth` VALUES (44, 2, 2, 1, '2024-07-03 14:10:09', 1, '2024-07-03 14:10:09');
INSERT INTO `role_auth` VALUES (45, 2, 3, 1, '2024-07-03 14:10:09', 1, '2024-07-03 14:10:09');
INSERT INTO `role_auth` VALUES (46, 2, 4, 1, '2024-07-03 14:10:09', 1, '2024-07-03 14:10:09');
INSERT INTO `role_auth` VALUES (47, 2, 5, 1, '2024-07-03 14:10:43', 1, '2024-07-03 14:10:43');
INSERT INTO `role_auth` VALUES (48, 3, 1, 1, '2024-07-03 14:11:34', 1, '2024-07-03 14:11:34');
INSERT INTO `role_auth` VALUES (49, 3, 6, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (50, 3, 7, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (51, 3, 8, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (52, 3, 9, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (53, 3, 10, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (54, 3, 11, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (55, 3, 12, 1, '2024-07-03 14:12:05', 1, '2024-07-03 14:12:05');
INSERT INTO `role_auth` VALUES (56, 4, 1, 1, '2024-07-03 14:12:52', 1, '2024-07-03 14:12:52');
INSERT INTO `role_auth` VALUES (57, 4, 13, 1, '2024-07-03 14:13:27', 1, '2024-07-03 14:13:27');
INSERT INTO `role_auth` VALUES (58, 4, 14, 1, '2024-07-03 14:13:27', 1, '2024-07-03 14:13:27');
INSERT INTO `role_auth` VALUES (59, 4, 15, 1, '2024-07-03 14:13:27', 1, '2024-07-03 14:13:27');
INSERT INTO `role_auth` VALUES (60, 4, 16, 1, '2024-07-03 14:13:27', 1, '2024-07-03 14:13:27');
INSERT INTO `role_auth` VALUES (61, 5, 1, 1, '2024-07-03 14:13:51', 1, '2024-07-03 14:13:51');
INSERT INTO `role_auth` VALUES (62, 5, 17, 1, '2024-07-03 14:14:09', 1, '2024-07-03 14:14:09');
INSERT INTO `role_auth` VALUES (63, 5, 18, 1, '2024-07-03 14:14:09', 1, '2024-07-03 14:14:09');
INSERT INTO `role_auth` VALUES (64, 5, 19, 1, '2024-07-03 14:14:09', 1, '2024-07-03 14:14:09');
INSERT INTO `role_auth` VALUES (65, 5, 20, 1, '2024-07-03 14:14:09', 1, '2024-07-03 14:14:09');
INSERT INTO `role_auth` VALUES (66, 6, 1, 1, '2024-07-03 14:14:52', 1, '2024-07-03 14:14:52');
INSERT INTO `role_auth` VALUES (67, 6, 21, 1, '2024-07-03 14:15:17', 1, '2024-07-03 14:15:17');
INSERT INTO `role_auth` VALUES (68, 6, 22, 1, '2024-07-03 14:15:17', 1, '2024-07-03 14:15:17');
INSERT INTO `role_auth` VALUES (69, 6, 23, 1, '2024-07-03 14:15:17', 1, '2024-07-03 14:15:17');
INSERT INTO `role_auth` VALUES (70, 6, 24, 1, '2024-07-03 14:15:17', 1, '2024-07-03 14:15:17');
INSERT INTO `role_auth` VALUES (71, 6, 25, 1, '2024-07-03 14:15:17', 1, '2024-07-03 14:15:17');
INSERT INTO `role_auth` VALUES (72, 6, 26, 1, '2024-07-03 14:15:17', 1, '2024-07-03 14:15:17');
INSERT INTO `role_auth` VALUES (73, 7, 1, 1, '2024-07-03 14:15:42', 1, '2024-07-03 14:15:42');
INSERT INTO `role_auth` VALUES (74, 7, 27, 1, '2024-07-03 14:16:08', 1, '2024-07-03 14:16:08');
INSERT INTO `role_auth` VALUES (75, 7, 28, 1, '2024-07-03 14:16:08', 1, '2024-07-03 14:16:08');
INSERT INTO `role_auth` VALUES (76, 7, 29, 1, '2024-07-03 14:16:08', 1, '2024-07-03 14:16:08');
INSERT INTO `role_auth` VALUES (77, 7, 30, 1, '2024-07-03 14:16:08', 1, '2024-07-03 14:16:08');
INSERT INTO `role_auth` VALUES (78, 8, 1, 1, '2024-07-03 14:17:14', 1, '2024-07-03 14:17:14');
INSERT INTO `role_auth` VALUES (79, 8, 31, 1, '2024-07-03 14:17:32', 1, '2024-07-03 14:17:32');
INSERT INTO `role_auth` VALUES (80, 8, 32, 1, '2024-07-03 14:17:32', 1, '2024-07-03 14:17:32');
INSERT INTO `role_auth` VALUES (81, 8, 33, 1, '2024-07-03 14:17:32', 1, '2024-07-03 14:17:32');
INSERT INTO `role_auth` VALUES (82, 8, 34, 1, '2024-07-03 14:17:32', 1, '2024-07-03 14:17:32');

-- ----------------------------
-- Table structure for role_copy1
-- ----------------------------
DROP TABLE IF EXISTS `role_copy1`;
CREATE TABLE `role_copy1`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_copy1
-- ----------------------------
INSERT INTO `role_copy1` VALUES (1, '超级管理员', 1, '2022-12-31 22:40:22', 1, '2022-12-31 22:40:29');
INSERT INTO `role_copy1` VALUES (2, '销售管理员', 1, '2024-07-03 18:23:58', 1, '2024-07-03 18:24:01');
INSERT INTO `role_copy1` VALUES (3, '入住管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role_copy1` VALUES (4, '人事管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role_copy1` VALUES (5, '服务管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role_copy1` VALUES (6, '仓库管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role_copy1` VALUES (7, '餐饮管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');
INSERT INTO `role_copy1` VALUES (8, '财务管理员', 1, '2024-07-03 18:26:12', 1, '2024-07-03 18:26:15');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_id` bigint NOT NULL COMMENT '房间类型编号',
  `floor_id` bigint NOT NULL COMMENT '楼层编号',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '房间名称',
  `bed_num` int NOT NULL COMMENT '床位数量',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '房间表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 1, 1, '爱心楼-1层-1房', 1, 'N', 1, '2024-07-03 14:25:33', 1, '2024-07-03 14:25:38');
INSERT INTO `room` VALUES (2, 1, 1, '爱心楼-1层-2房', 1, 'N', 1, '2024-07-03 14:25:33', 1, '2024-07-03 14:25:38');
INSERT INTO `room` VALUES (3, 1, 1, '爱心楼-1层-3房', 1, 'N', 1, '2024-07-03 14:25:33', 1, '2024-07-03 14:25:38');
INSERT INTO `room` VALUES (4, 1, 1, '爱心楼-1层-4房', 1, 'N', 1, '2024-07-03 14:25:33', 1, '2024-07-03 14:25:38');
INSERT INTO `room` VALUES (5, 1, 1, '爱心楼-1层-5房', 1, 'N', 1, '2024-07-03 14:25:33', 1, '2024-07-03 00:33:40');
INSERT INTO `room` VALUES (6, 1, 6, '楼栋2-1层-1房', 2, 'N', 1, '2024-07-03 21:37:02', 1, '2024-07-03 22:24:35');
INSERT INTO `room` VALUES (7, 1, 6, '楼栋2-1层-2房', 1, 'N', 1, '2024-07-03 21:38:22', 1, '2024-07-03 22:23:49');
INSERT INTO `room` VALUES (8, 2, 10, '测试房间1', 2, 'N', 1, '2024-07-03 02:37:04', 1, '2024-07-03 02:38:47');
INSERT INTO `room` VALUES (9, 1, 10, '测试房间2', 1, 'N', 1, '2024-07-03 02:37:47', 1, '2024-07-03 02:37:47');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '房间类型名称',
  `month_price` decimal(10, 2) NOT NULL COMMENT '月房间费用',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '房间类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES (1, '单人间', 600.00, 'N', 1, '2024-07-03 14:20:09', 1, '2024-07-03 11:47:33');
INSERT INTO `room_type` VALUES (2, '双人间', 500.00, 'N', 1, '2024-07-03 11:46:31', 1, '2024-07-03 11:46:31');
INSERT INTO `room_type` VALUES (3, '四人间', 120.00, 'Y', 1, '2024-07-04 20:07:36', 1, '2024-07-04 20:08:08');
INSERT INTO `room_type` VALUES (4, '胡图图', 1000.00, 'N', 1, '2024-07-03 18:22:33', 1, '2024-07-03 18:22:33');
INSERT INTO `room_type` VALUES (5, '打答复', 100.00, 'N', 1, '2024-07-03 18:24:51', 1, '2024-07-03 18:24:51');

-- ----------------------------
-- Table structure for service_item
-- ----------------------------
DROP TABLE IF EXISTS `service_item`;
CREATE TABLE `service_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_id` bigint NOT NULL COMMENT '服务项目类别编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务名称',
  `charge_method` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收费方式',
  `price` decimal(10, 2) NOT NULL COMMENT '服务费用',
  `need_date` int NOT NULL COMMENT '所需时间(分)',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务项目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of service_item
-- ----------------------------
INSERT INTO `service_item` VALUES (1, 1, '服务1', '按月', 50.00, 5, 'Y', 1, '2024-07-03 16:32:27', 1, '2024-07-03 17:04:04');
INSERT INTO `service_item` VALUES (2, 2, '心电检测', '按次', 120.00, 30, 'N', 1, '2024-07-03 16:32:36', 1, '2024-07-03 16:32:36');
INSERT INTO `service_item` VALUES (3, 1, '服务2', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:33:13', 1, '2024-07-03 16:33:13');
INSERT INTO `service_item` VALUES (4, 1, '服务3', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:46:18', 1, '2024-07-03 16:46:18');
INSERT INTO `service_item` VALUES (5, 1, '服务4', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:46:22', 1, '2024-07-03 16:46:22');
INSERT INTO `service_item` VALUES (6, 1, '服务5', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:46:24', 1, '2024-07-03 16:46:24');
INSERT INTO `service_item` VALUES (7, 1, '服务6', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:46:30', 1, '2024-07-03 16:46:30');
INSERT INTO `service_item` VALUES (8, 1, '服务7', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:46:34', 1, '2024-07-03 16:46:34');
INSERT INTO `service_item` VALUES (9, 1, '服务8', '按月', 120.00, 30, 'N', 1, '2024-07-03 16:46:36', 1, '2024-07-03 16:46:36');
INSERT INTO `service_item` VALUES (10, 1, '服务9', '按月', 120.00, 30, 'Y', 1, '2024-07-03 16:46:39', 1, '2024-07-03 17:00:52');
INSERT INTO `service_item` VALUES (11, 1, '服务10', '按月', 120.00, 30, 'Y', 1, '2024-07-03 16:46:43', 1, '2024-07-03 17:52:08');
INSERT INTO `service_item` VALUES (12, 1, '服务11', '按月', 120.00, 30, 'Y', 1, '2024-07-03 16:46:56', 1, '2024-07-03 15:58:06');
INSERT INTO `service_item` VALUES (13, 1, '血糖监测', '按次', 120.00, 30, 'N', 1, '2024-07-03 16:47:23', 1, '2024-07-03 17:16:23');
INSERT INTO `service_item` VALUES (14, 2, '翻身', '按月', 120.00, 30, 'N', 1, '2024-07-03 13:13:47', 1, '2024-07-03 13:14:37');
INSERT INTO `service_item` VALUES (15, 2, '血脂检测', '按次', 12.00, 24, 'N', 1, '2024-07-03 17:20:49', 1, '2024-07-03 17:20:49');
INSERT INTO `service_item` VALUES (16, 1, '血压监测', '按月', 12.00, 12, 'N', 1, '2024-07-03 17:21:32', 1, '2024-07-03 17:51:31');
INSERT INTO `service_item` VALUES (17, 1, '视力检测', '按次', 12.00, 12, 'N', 1, '2024-07-03 17:24:09', 1, '2024-07-03 17:24:59');
INSERT INTO `service_item` VALUES (18, 2, '胡图图1', '按月', 244.00, 1, 'N', 1, '2024-07-03 17:50:43', 1, '2024-07-03 17:51:22');

-- ----------------------------
-- Table structure for service_type
-- ----------------------------
DROP TABLE IF EXISTS `service_type`;
CREATE TABLE `service_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项目名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '服务项目分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of service_type
-- ----------------------------
INSERT INTO `service_type` VALUES (1, '饮食服务', 'N', 1, '2024-07-03 16:27:58', 1, '2024-07-03 13:23:43');
INSERT INTO `service_type` VALUES (2, '生活起居服务', 'N', 1, '2024-07-03 16:30:36', 1, '2024-07-03 13:23:54');
INSERT INTO `service_type` VALUES (3, '医疗护理服务', 'N', 1, '2024-07-03 16:43:04', 1, '2024-07-03 13:24:05');
INSERT INTO `service_type` VALUES (4, '康复训练服务', 'N', 1, '2024-07-03 16:43:06', 1, '2024-07-03 13:24:16');
INSERT INTO `service_type` VALUES (5, '休闲娱乐服务', 'N', 1, '2024-07-03 16:43:09', 1, '2024-07-03 13:24:29');
INSERT INTO `service_type` VALUES (6, '心理疏导服务', 'N', 1, '2024-07-03 16:43:17', 1, '2024-07-03 13:24:38');
INSERT INTO `service_type` VALUES (7, '社交与交流服务', 'N', 1, '2024-07-03 16:43:19', 1, '2024-07-03 13:24:48');
INSERT INTO `service_type` VALUES (8, '服务类型8', 'Y', 1, '2024-07-03 16:43:22', 1, '2024-07-03 15:56:06');
INSERT INTO `service_type` VALUES (9, '服务类型9', 'Y', 1, '2024-07-03 16:43:25', 1, '2024-07-03 15:56:01');
INSERT INTO `service_type` VALUES (10, '服务类型10', 'Y', 1, '2024-07-03 16:43:28', 1, '2024-07-03 17:04:24');
INSERT INTO `service_type` VALUES (11, '服务类型11', 'Y', 1, '2024-07-03 16:43:55', 1, '2024-07-03 15:53:36');
INSERT INTO `service_type` VALUES (12, '管理服务', 'N', 1, '2024-07-03 16:34:33', 1, '2024-07-03 13:24:57');
INSERT INTO `service_type` VALUES (13, '安全服务', 'N', 1, '2024-07-03 17:49:45', 1, '2024-07-03 13:25:05');

-- ----------------------------
-- Table structure for set_dishes
-- ----------------------------
DROP TABLE IF EXISTS `set_dishes`;
CREATE TABLE `set_dishes`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `set_id` bigint NOT NULL COMMENT '餐饮套餐编号',
  `dishes_id` bigint NOT NULL COMMENT '菜品食物编号',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '套餐食物表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of set_dishes
-- ----------------------------
INSERT INTO `set_dishes` VALUES (3, 2, 2, 1, '2024-07-13 16:23:12', 1, '2024-07-13 16:23:12');
INSERT INTO `set_dishes` VALUES (5, 1, 1, 1, '2024-07-13 16:24:22', 1, '2024-07-13 16:24:22');
INSERT INTO `set_dishes` VALUES (6, 1, 3, 1, '2024-07-13 16:24:22', 1, '2024-07-13 16:24:22');
INSERT INTO `set_dishes` VALUES (9, 3, 3, 1, '2024-07-04 11:57:24', 1, '2024-07-04 11:57:24');
INSERT INTO `set_dishes` VALUES (10, 3, 2, 1, '2024-07-04 11:57:24', 1, '2024-07-04 11:57:24');
INSERT INTO `set_dishes` VALUES (11, 3, 1, 1, '2024-07-04 11:57:24', 1, '2024-07-04 11:57:24');
INSERT INTO `set_dishes` VALUES (17, 4, 2, 1, '2024-07-04 14:57:28', 1, '2024-07-04 14:57:28');
INSERT INTO `set_dishes` VALUES (18, 4, 1, 1, '2024-07-04 14:57:28', 1, '2024-07-04 14:57:28');
INSERT INTO `set_dishes` VALUES (19, 4, 3, 1, '2024-07-04 14:57:28', 1, '2024-07-04 14:57:28');
INSERT INTO `set_dishes` VALUES (20, 5, 5, 1, '2024-07-03 18:12:09', 1, '2024-07-03 18:12:09');

-- ----------------------------
-- Table structure for source
-- ----------------------------
DROP TABLE IF EXISTS `source`;
CREATE TABLE `source`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来源渠道名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '来源渠道表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO `source` VALUES (1, '传单海报', 'N', 1, '2024-07-03 00:18:44', 1, '2024-07-03 00:08:57');
INSERT INTO `source` VALUES (3, '老客户', 'N', 1, '2024-07-03 00:07:19', 1, '2024-07-03 00:07:19');
INSERT INTO `source` VALUES (4, '电视广播', 'N', 1, '2024-07-03 00:07:46', 1, '2024-07-03 00:07:46');
INSERT INTO `source` VALUES (5, '测试', 'Y', 1, '2024-07-04 19:54:50', 1, '2024-07-04 19:55:24');
INSERT INTO `source` VALUES (6, '胡图图', 'N', 1, '2024-07-03 18:20:59', 1, '2024-07-03 18:20:59');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` bigint NOT NULL COMMENT '角色编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `id_num` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号',
  `age` int NOT NULL COMMENT '年龄',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别(男/女)',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `avator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地址',
  `leave_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '离职状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '员工表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 1, '超管', '1', 29, '男', '13547584400', '756932656@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20250116/1879834155771019264_user.jpg', '1', 'N', 0, '2022-12-31 12:34:43', 1, '2024-07-03 15:48:02');
INSERT INTO `staff` VALUES (2, 2, '小管', '230182198012251659', 31, '女', '13547584401', '2175728501@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20250116/1879834155771019264_user.jpg', '黑龙江哈尔滨', 'N', 0, '2022-12-31 12:34:43', 1, '2025-01-16 18:12:44');
INSERT INTO `staff` VALUES (3, 4, '小妹', '352225199408188888', 30, '女', '13547584402', '2927803979@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20240828/1828757735260856320_20206142392748559.jpg', '111111', 'N', 0, '2022-12-31 12:34:43', 1, '2024-08-28 19:34:15');
INSERT INTO `staff` VALUES (4, 5, '小轩', '1', 30, '女', '18428167423', '2710123337@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20240828/1828757735260856320_20206142392748559.jpg', '1', 'N', 0, '2022-12-31 12:34:43', 0, '2022-12-31 12:34:48');
INSERT INTO `staff` VALUES (5, 3, '张三', '1', 34, '男', '13547584403', 'emperorwen@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20240828/1828757735260856320_20206142392748559.jpg', '四川南充', 'Y', 1, '2024-07-09 11:02:55', 1, '2024-07-09 11:02:55');
INSERT INTO `staff` VALUES (6, 7, '张三', '352225199408177888', 34, '男', '13547584403', '6745756876@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20241030/1851653534273568768_000223ctxlcapejmuyf6aj.png', '四川南充777', 'N', 1, '2024-07-09 11:08:45', 1, '2024-10-30 23:53:01');
INSERT INTO `staff` VALUES (7, 8, '王五', '230182198012251659', 34, '男', '13547584404', '6745756877@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20241030/1851639637407760384_yyy8.jpg', '四川南充aaa', 'N', 1, '2024-07-09 11:08:45', 1, '2024-10-30 22:58:05');
INSERT INTO `staff` VALUES (8, 4, '曹氏', '230182198012251659', 23, '男', '13547584407', '376598236@qq.com', '7217ac017b4fb2352ec9e65576c5c0b1', 'http://127.0.0.1:9001/upload/img/20240828/1828757735260856320_20206142392748559.jpg', '湖北省武汉市', 'Y', 1, '2024-07-02 10:25:19', 1, '2024-07-02 10:25:56');

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来访者姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来访者电话',
  `relation` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '与老人关系',
  `visit_date` datetime NOT NULL COMMENT '来访时间',
  `leave_date` datetime NULL DEFAULT NULL COMMENT '离开时间',
  `visit_num` int NOT NULL COMMENT '来访者人数',
  `visit_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '来访状态',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '来访登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of visit
-- ----------------------------
INSERT INTO `visit` VALUES (1, 1, '王伍', '13647563648', '侄子', '2024-07-03 00:00:00', '2022-12-14 00:00:00', 4, '已离开', 'N', 1, '2024-07-03 15:42:16', 1, '2024-07-03 15:54:38');
INSERT INTO `visit` VALUES (2, 2, '王氏0', '13547584491', '侄子', '2024-07-31 00:00:00', '2024-07-03 00:00:00', 11, '已离开', 'Y', 1, '2024-07-03 14:19:44', 1, '2024-07-03 14:33:13');
INSERT INTO `visit` VALUES (3, 1, '测试', '13547563980', '父子', '2024-07-07 00:00:00', NULL, 8, '待离开', 'N', 1, '2024-07-07 17:09:02', 1, '2024-07-07 17:09:02');
INSERT INTO `visit` VALUES (4, 1, '胡图图', '19120362147', '无关系', '2024-07-10 00:00:00', NULL, 6, '待离开', 'N', 1, '2024-07-03 17:19:26', 1, '2024-07-03 17:19:26');

-- ----------------------------
-- Table structure for visit_plan
-- ----------------------------
DROP TABLE IF EXISTS `visit_plan`;
CREATE TABLE `visit_plan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `elder_id` bigint NOT NULL COMMENT '老人编号',
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回访计划标题',
  `plan_date` datetime NOT NULL COMMENT '计划回访时间',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回访计划内容',
  `complete_date` datetime NULL DEFAULT NULL COMMENT '计划完成时间',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '回访计划表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of visit_plan
-- ----------------------------
INSERT INTO `visit_plan` VALUES (1, 1, '测试', '2024-07-03 15:40:41', NULL, NULL, 'N', 1, '2024-07-03 15:40:54', 1, '2024-07-03 22:35:05');
INSERT INTO `visit_plan` VALUES (2, 1, '测试标题', '2024-07-03 00:00:00', NULL, NULL, 'N', 1, '2024-07-03 22:29:36', 1, '2024-07-03 22:29:36');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `staff_id` bigint NOT NULL COMMENT '仓库管理员编号',
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '仓库名称',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '仓库表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES (1, 6, '仓库1', 'N', 1, '2024-07-15 22:31:36', 1, '2024-07-15 22:32:59');
INSERT INTO `warehouse` VALUES (2, 6, '仓库2', 'N', 1, '2024-07-15 22:31:42', 1, '2024-07-15 22:33:51');

-- ----------------------------
-- Table structure for warehouse_material
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_material`;
CREATE TABLE `warehouse_material`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `warehouse_record_id` bigint NOT NULL COMMENT '入库登记编号',
  `material_id` bigint NOT NULL COMMENT '物资编号',
  `warehouse_num` int NOT NULL COMMENT '入库数量',
  `inventory` int NOT NULL COMMENT '库存量',
  `product_date` datetime NOT NULL COMMENT '生产日期',
  `expire_date` datetime NOT NULL COMMENT '有效期',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '入库物资表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_material
-- ----------------------------
INSERT INTO `warehouse_material` VALUES (1, 1, 1, 2, 0, '2022-12-12 00:00:00', '2024-07-03 00:00:00', 1, '2024-07-30 11:06:01', 1, '2024-07-31 21:32:30');
INSERT INTO `warehouse_material` VALUES (2, 1, 2, 1, 0, '2022-12-12 00:00:00', '2024-07-03 00:00:00', 1, '2024-07-30 11:06:01', 1, '2024-07-31 21:32:30');
INSERT INTO `warehouse_material` VALUES (3, 2, 1, 2, 2, '2022-12-12 00:00:00', '2024-07-03 00:00:00', 1, '2024-07-30 11:08:22', 1, '2024-07-31 22:18:44');
INSERT INTO `warehouse_material` VALUES (4, 2, 2, 1, 1, '2022-12-12 00:00:00', '2024-07-03 00:00:00', 1, '2024-07-30 11:08:22', 1, '2024-07-31 21:43:15');

-- ----------------------------
-- Table structure for warehouse_record
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_record`;
CREATE TABLE `warehouse_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `warehouse_id` bigint NOT NULL COMMENT '仓库编号',
  `staff_id` bigint NOT NULL COMMENT '经办人编号',
  `source` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '物资来源',
  `warehouse_date` datetime NOT NULL COMMENT '入库时间',
  `warehouse_flag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '入库状态',
  `del_flag` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '删除状态（Y/N）',
  `create_id` bigint NOT NULL COMMENT '创建人编号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_id` bigint NOT NULL COMMENT '修改人编号',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '入库登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_record
-- ----------------------------
INSERT INTO `warehouse_record` VALUES (1, 1, 6, '购买', '2024-07-03 00:00:00', '已通过', 'N', 1, '2024-07-30 11:06:01', 1, '2024-07-30 11:33:27');
INSERT INTO `warehouse_record` VALUES (2, 2, 6, '购买', '2024-07-03 00:00:00', '已通过', 'N', 1, '2024-07-30 11:08:22', 1, '2024-07-30 11:08:22');

SET FOREIGN_KEY_CHECKS = 1;
