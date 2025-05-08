/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : gva

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 08/05/2025 22:09:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for actors
-- ----------------------------
DROP TABLE IF EXISTS `actors`;
CREATE TABLE `actors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `avatar` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of actors
-- ----------------------------
BEGIN;
INSERT INTO `actors` VALUES (1, '梁朝伟', NULL);
INSERT INTO `actors` VALUES (2, '王一博', NULL);
INSERT INTO `actors` VALUES (3, '周迅', NULL);
INSERT INTO `actors` VALUES (4, '马修·麦康纳', NULL);
INSERT INTO `actors` VALUES (5, '安妮·海瑟薇', NULL);
INSERT INTO `actors` VALUES (6, '杰西卡·查斯坦', NULL);
INSERT INTO `actors` VALUES (7, '姜栋元', NULL);
INSERT INTO `actors` VALUES (8, '李贞贤', NULL);
INSERT INTO `actors` VALUES (9, '权海骁', NULL);
INSERT INTO `actors` VALUES (10, '莉娅·刘易斯', NULL);
INSERT INTO `actors` VALUES (11, '马莫多·阿西', NULL);
INSERT INTO `actors` VALUES (12, '蒂莫西·柴勒梅德', NULL);
INSERT INTO `actors` VALUES (13, '弗洛伦丝·皮尤', NULL);
INSERT INTO `actors` VALUES (14, '阿米尔·汗', NULL);
INSERT INTO `actors` VALUES (15, '赛伊拉·沃西', NULL);
COMMIT;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` VALUES (270, 'p', '888', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (269, 'p', '888', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (264, 'p', '888', '/api/deleteApisByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (266, 'p', '888', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (265, 'p', '888', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (267, 'p', '888', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (268, 'p', '888', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (263, 'p', '888', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (262, 'p', '888', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (261, 'p', '888', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (259, 'p', '888', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (258, 'p', '888', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (260, 'p', '888', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (194, 'p', '888', '/authorityBtn/canRemoveAuthorityBtn', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (195, 'p', '888', '/authorityBtn/getAuthorityBtn', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (196, 'p', '888', '/authorityBtn/setAuthorityBtn', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (222, 'p', '888', '/autoCode/createPackage', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (225, 'p', '888', '/autoCode/createPlug', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (228, 'p', '888', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (220, 'p', '888', '/autoCode/delPackage', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (216, 'p', '888', '/autoCode/delSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (226, 'p', '888', '/autoCode/getColumn', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (230, 'p', '888', '/autoCode/getDB', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (219, 'p', '888', '/autoCode/getMeta', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (221, 'p', '888', '/autoCode/getPackage', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (217, 'p', '888', '/autoCode/getSysHistory', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (229, 'p', '888', '/autoCode/getTables', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (224, 'p', '888', '/autoCode/installPlugin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (227, 'p', '888', '/autoCode/preview', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (223, 'p', '888', '/autoCode/pubPlug', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (218, 'p', '888', '/autoCode/rollback', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (256, 'p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (257, 'p', '888', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (233, 'p', '888', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (232, 'p', '888', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (234, 'p', '888', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (235, 'p', '888', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (231, 'p', '888', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (197, 'p', '888', '/email/emailTest', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (245, 'p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (244, 'p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (241, 'p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (240, 'p', '888', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (246, 'p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (239, 'p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (243, 'p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (242, 'p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (281, 'p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (255, 'p', '888', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (247, 'p', '888', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (253, 'p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (251, 'p', '888', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (249, 'p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (254, 'p', '888', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (248, 'p', '888', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (250, 'p', '888', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (252, 'p', '888', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (199, 'p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (198, 'p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (200, 'p', '888', '/simpleUploader/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (210, 'p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (209, 'p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (207, 'p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (206, 'p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (208, 'p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (214, 'p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (213, 'p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (212, 'p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (211, 'p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (215, 'p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (193, 'p', '888', '/sysExportTemplate/createSysExportTemplate', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (192, 'p', '888', '/sysExportTemplate/deleteSysExportTemplate', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (191, 'p', '888', '/sysExportTemplate/deleteSysExportTemplateByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (187, 'p', '888', '/sysExportTemplate/exportExcel', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (186, 'p', '888', '/sysExportTemplate/exportTemplate', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (189, 'p', '888', '/sysExportTemplate/findSysExportTemplate', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (188, 'p', '888', '/sysExportTemplate/getSysExportTemplateList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (185, 'p', '888', '/sysExportTemplate/importExcel', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (190, 'p', '888', '/sysExportTemplate/updateSysExportTemplate', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (205, 'p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (202, 'p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (201, 'p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (204, 'p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (203, 'p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (238, 'p', '888', '/system/getServerInfo', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (237, 'p', '888', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (236, 'p', '888', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (279, 'p', '888', '/user/admin_register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (273, 'p', '888', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (280, 'p', '888', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (275, 'p', '888', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (278, 'p', '888', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (271, 'p', '888', '/user/resetPassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (276, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (274, 'p', '888', '/user/setUserAuthorities', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (272, 'p', '888', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (277, 'p', '888', '/user/setUserInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (100, 'p', '8881', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (103, 'p', '8881', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (105, 'p', '8881', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (102, 'p', '8881', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (101, 'p', '8881', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (104, 'p', '8881', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (106, 'p', '8881', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (107, 'p', '8881', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (108, 'p', '8881', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (109, 'p', '8881', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (127, 'p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (126, 'p', '8881', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (133, 'p', '8881', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (134, 'p', '8881', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (131, 'p', '8881', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (132, 'p', '8881', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (135, 'p', '8881', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (124, 'p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (125, 'p', '8881', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (123, 'p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (122, 'p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (128, 'p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (112, 'p', '8881', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (114, 'p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (116, 'p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (118, 'p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (113, 'p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (110, 'p', '8881', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (115, 'p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (111, 'p', '8881', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (117, 'p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (129, 'p', '8881', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (130, 'p', '8881', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (99, 'p', '8881', '/user/admin_register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (119, 'p', '8881', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (136, 'p', '8881', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (120, 'p', '8881', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (121, 'p', '8881', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (138, 'p', '9528', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (141, 'p', '9528', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (143, 'p', '9528', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (140, 'p', '9528', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (139, 'p', '9528', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (142, 'p', '9528', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (144, 'p', '9528', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (145, 'p', '9528', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (146, 'p', '9528', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (147, 'p', '9528', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (174, 'p', '9528', '/autoCode/createTemp', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (165, 'p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (164, 'p', '9528', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (172, 'p', '9528', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES (170, 'p', '9528', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (171, 'p', '9528', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (169, 'p', '9528', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (173, 'p', '9528', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (162, 'p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (163, 'p', '9528', '/fileUploadAndDownload/editFileName', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (161, 'p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (160, 'p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (166, 'p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (150, 'p', '9528', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (152, 'p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (154, 'p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (156, 'p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (151, 'p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (148, 'p', '9528', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (153, 'p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (149, 'p', '9528', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (155, 'p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (167, 'p', '9528', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (168, 'p', '9528', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (137, 'p', '9528', '/user/admin_register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (157, 'p', '9528', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (175, 'p', '9528', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (158, 'p', '9528', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (159, 'p', '9528', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (178, 'p', '9999', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (183, 'p', '9999', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (177, 'p', '9999', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (176, 'p', '9999', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (184, 'p', '9999', '/sysDictionary/findSysDictionary', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (179, 'p', '9999', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES (181, 'p', '9999', '/user/getUserInfo', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES (182, 'p', '9999', '/user/setSelfInfo', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES (180, 'p', '9999', '/user/setUserAuthority', 'POST', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for exa_attachment_category
-- ----------------------------
DROP TABLE IF EXISTS `exa_attachment_category`;
CREATE TABLE `exa_attachment_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分类名称',
  `pid` bigint(20) DEFAULT '0' COMMENT '父节点ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_attachment_category_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_attachment_category
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS `exa_customers`;
CREATE TABLE `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_customers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_chunks`;
CREATE TABLE `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_file_chunks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '编号',
  `class_id` bigint(20) DEFAULT '0' COMMENT '分类id',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
BEGIN;
INSERT INTO `exa_file_upload_and_downloads` VALUES (1, '2025-03-09 12:53:26.381', '2025-03-09 12:53:26.381', NULL, '10.png', 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (2, '2025-03-09 12:53:26.381', '2025-03-09 12:53:26.381', NULL, 'logo.png', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (30, '2025-03-30 21:34:16.722', '2025-03-30 21:34:16.722', NULL, '2015-03-21 121446.jpg', 'uploads/file/d3983e3cd80128b8fbaca8367284581c_20250330213416.jpg', 'jpg', 'd3983e3cd80128b8fbaca8367284581c_20250330213416.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (31, '2025-03-30 21:49:58.494', '2025-03-30 21:49:58.494', NULL, '2015-03-21 150909.jpg', 'uploads/file/cc18910bc8a3175cc1a5b40e789c991d_20250330214958.jpg', 'jpg', 'cc18910bc8a3175cc1a5b40e789c991d_20250330214958.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (32, '2025-03-30 21:56:45.526', '2025-03-30 21:56:45.526', NULL, 'IMG_20150321_105230.jpg', 'uploads/file/e6f06a201a680a82be4d93444b6c9684_20250330215645.jpg', 'jpg', 'e6f06a201a680a82be4d93444b6c9684_20250330215645.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (33, '2025-04-14 21:05:43.450', '2025-04-14 21:05:43.450', NULL, '2015-03-21 230540.jpg', 'uploads/file/6d20301463efa7b5fe950d1ad8b4dff4_20250414210543.jpg', 'jpg', '6d20301463efa7b5fe950d1ad8b4dff4_20250414210543.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (34, '2025-04-29 00:09:07.653', '2025-04-29 00:09:07.653', NULL, '2015-03-21 180819.jpg', 'uploads/file/d9a838b8965ed0f3d04c167e983934f6_20250429000907.jpg', 'jpg', 'd9a838b8965ed0f3d04c167e983934f6_20250429000907.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (35, '2025-04-29 00:09:21.821', '2025-04-29 00:09:21.821', NULL, '2015-03-21 112645.jpg', 'uploads/file/cadb283fa9ac215117639c3b0eef8200_20250429000921.jpg', 'jpg', 'cadb283fa9ac215117639c3b0eef8200_20250429000921.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (36, '2025-04-29 00:10:27.856', '2025-04-29 00:10:27.856', NULL, '2015-03-21 121446.jpg', 'uploads/file/d3983e3cd80128b8fbaca8367284581c_20250429001027.jpg', 'jpg', 'd3983e3cd80128b8fbaca8367284581c_20250429001027.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (37, '2025-04-29 22:33:20.888', '2025-04-29 22:33:20.888', NULL, '2015-03-21 114342.jpg', 'uploads/file/537834bedb79e70cffcfa2584dcbdaf3_20250429223320.jpg', 'jpg', '537834bedb79e70cffcfa2584dcbdaf3_20250429223320.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (38, '2025-04-29 22:34:41.256', '2025-04-29 22:34:41.256', NULL, '2015-03-21 112645.jpg', 'uploads/file/cadb283fa9ac215117639c3b0eef8200_20250429223441.jpg', 'jpg', 'cadb283fa9ac215117639c3b0eef8200_20250429223441.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (39, '2025-04-29 22:37:12.581', '2025-04-29 22:37:12.581', NULL, '2015-03-21 112645.jpg', 'uploads/file/cadb283fa9ac215117639c3b0eef8200_20250429223712.jpg', 'jpg', 'cadb283fa9ac215117639c3b0eef8200_20250429223712.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (40, '2025-04-29 22:38:17.519', '2025-04-29 22:38:17.519', NULL, '2015-03-21 112645.jpg', 'uploads/file/cadb283fa9ac215117639c3b0eef8200_20250429223817.jpg', 'jpg', 'cadb283fa9ac215117639c3b0eef8200_20250429223817.jpg', 0);
INSERT INTO `exa_file_upload_and_downloads` VALUES (41, '2025-04-30 23:39:03.387', '2025-04-30 23:39:03.387', NULL, '2015-03-21 180819.jpg', 'uploads/file/d9a838b8965ed0f3d04c167e983934f6_20250430233903.jpg', 'jpg', 'd9a838b8965ed0f3d04c167e983934f6_20250430233903.jpg', 0);
COMMIT;

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS `exa_files`;
CREATE TABLE `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_md5` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exa_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gva_announcements_info
-- ----------------------------
DROP TABLE IF EXISTS `gva_announcements_info`;
CREATE TABLE `gva_announcements_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '公告标题',
  `content` text COLLATE utf8mb4_general_ci COMMENT '公告内容',
  `user_id` bigint(20) DEFAULT NULL COMMENT '发布者',
  `attachments` json DEFAULT NULL COMMENT '相关附件',
  PRIMARY KEY (`id`),
  KEY `idx_gva_announcements_info_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of gva_announcements_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS `jwt_blacklists`;
CREATE TABLE `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COLLATE utf8mb4_general_ci COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for movie_actors
-- ----------------------------
DROP TABLE IF EXISTS `movie_actors`;
CREATE TABLE `movie_actors` (
  `movie_id` int(10) unsigned NOT NULL,
  `actor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `movie_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `movie_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of movie_actors
-- ----------------------------
BEGIN;
INSERT INTO `movie_actors` VALUES (1, 1);
INSERT INTO `movie_actors` VALUES (15, 1);
INSERT INTO `movie_actors` VALUES (24, 1);
INSERT INTO `movie_actors` VALUES (1, 2);
INSERT INTO `movie_actors` VALUES (1, 3);
INSERT INTO `movie_actors` VALUES (15, 3);
INSERT INTO `movie_actors` VALUES (28, 5);
INSERT INTO `movie_actors` VALUES (28, 7);
COMMIT;

-- ----------------------------
-- Table structure for movie_ratings
-- ----------------------------
DROP TABLE IF EXISTS `movie_ratings`;
CREATE TABLE `movie_ratings` (
  `movie_id` int(10) unsigned NOT NULL,
  `platform_id` tinyint(3) unsigned NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  PRIMARY KEY (`movie_id`,`platform_id`),
  KEY `platform_id` (`platform_id`),
  CONSTRAINT `movie_ratings_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `movie_ratings_ibfk_2` FOREIGN KEY (`platform_id`) REFERENCES `rating_platforms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of movie_ratings
-- ----------------------------
BEGIN;
INSERT INTO `movie_ratings` VALUES (1, 1, 8.5);
INSERT INTO `movie_ratings` VALUES (1, 2, 7.8);
INSERT INTO `movie_ratings` VALUES (1, 3, 7.2);
INSERT INTO `movie_ratings` VALUES (1, 4, 8.0);
INSERT INTO `movie_ratings` VALUES (15, 1, 3.0);
INSERT INTO `movie_ratings` VALUES (15, 2, 4.0);
INSERT INTO `movie_ratings` VALUES (24, 1, 8.0);
INSERT INTO `movie_ratings` VALUES (24, 3, 7.0);
INSERT INTO `movie_ratings` VALUES (28, 2, 5.0);
INSERT INTO `movie_ratings` VALUES (28, 3, 2.0);
INSERT INTO `movie_ratings` VALUES (28, 4, 3.0);
COMMIT;

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `poster` varchar(512) NOT NULL,
  `director` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `genres` varchar(100) DEFAULT NULL COMMENT '影视分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movies
-- ----------------------------
BEGIN;
INSERT INTO `movies` VALUES (1, '日本导演的艺妓梦', '/film/images/znot/haibao01.jpg', '程耳', '日本', 2023, '2025-03-17 22:08:20', '2025-03-19 23:12:22', '1,2,3');
INSERT INTO `movies` VALUES (2, '电影名称', '/film/images/znot/haibao02.jpg', '王小明', '重庆', 2025, '2025-03-24 00:45:15', '2025-03-24 00:45:15', '悬疑');
INSERT INTO `movies` VALUES (15, '333', '', '33', '3', 2023, '2025-04-13 16:07:48', '2025-04-13 16:07:48', '0,1');
INSERT INTO `movies` VALUES (19, '45', '', '5', '5', 2026, '2025-04-13 16:12:20', '2025-04-13 16:12:20', '0');
INSERT INTO `movies` VALUES (24, '7788', '', '7788', '88', 2027, '2025-04-13 16:19:18', '2025-04-13 16:19:18', '0');
INSERT INTO `movies` VALUES (28, 'jjj', '/uploads/file/d9a838b8965ed0f3d04c167e983934f6_20250430233903.jpg', 'aaaa', 'cd', 2024, '2025-04-30 23:39:27', '2025-05-04 10:05:31', '2,3');
COMMIT;

-- ----------------------------
-- Table structure for rating_platforms
-- ----------------------------
DROP TABLE IF EXISTS `rating_platforms`;
CREATE TABLE `rating_platforms` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of rating_platforms
-- ----------------------------
BEGIN;
INSERT INTO `rating_platforms` VALUES (1, 'douban', 'PFIdoudan.svg');
INSERT INTO `rating_platforms` VALUES (2, 'letterboxd', 'letterboxd.png');
INSERT INTO `rating_platforms` VALUES (3, 'imdb', 'PFIIMDb.svg');
INSERT INTO `rating_platforms` VALUES (4, 'eiga', 'PFIeiga.png');
COMMIT;

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
BEGIN;
INSERT INTO `sys_apis` VALUES (1, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST');
INSERT INTO `sys_apis` VALUES (2, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/deleteUser', '删除用户', '系统用户', 'DELETE');
INSERT INTO `sys_apis` VALUES (3, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/admin_register', '用户注册', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (4, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/getUserList', '获取用户列表', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (5, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT');
INSERT INTO `sys_apis` VALUES (6, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT');
INSERT INTO `sys_apis` VALUES (7, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET');
INSERT INTO `sys_apis` VALUES (8, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (9, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/changePassword', '修改密码（建议选择)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (10, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (11, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/user/resetPassword', '重置用户密码', '系统用户', 'POST');
INSERT INTO `sys_apis` VALUES (12, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (13, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (14, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (15, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (16, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (17, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (18, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE');
INSERT INTO `sys_apis` VALUES (19, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authority/copyAuthority', '拷贝角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (20, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authority/createAuthority', '创建角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (21, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authority/deleteAuthority', '删除角色', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (22, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authority/updateAuthority', '更新角色信息', '角色', 'PUT');
INSERT INTO `sys_apis` VALUES (23, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authority/getAuthorityList', '获取角色列表', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (24, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST');
INSERT INTO `sys_apis` VALUES (25, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (26, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (27, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/addBaseMenu', '新增菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (28, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (29, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (30, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (31, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (32, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (33, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (34, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (35, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST');
INSERT INTO `sys_apis` VALUES (36, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'GET');
INSERT INTO `sys_apis` VALUES (37, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (38, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (39, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST');
INSERT INTO `sys_apis` VALUES (40, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/upload', '文件上传示例', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (41, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (42, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/editFileName', '文件名或者备注编辑', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (43, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` VALUES (44, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (45, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (46, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` VALUES (47, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/customer/customer', '更新客户', '客户', 'PUT');
INSERT INTO `sys_apis` VALUES (48, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/customer/customer', '创建客户', '客户', 'POST');
INSERT INTO `sys_apis` VALUES (49, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/customer/customer', '删除客户', '客户', 'DELETE');
INSERT INTO `sys_apis` VALUES (50, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/customer/customer', '获取单一客户', '客户', 'GET');
INSERT INTO `sys_apis` VALUES (51, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/customer/customerList', '获取客户列表', '客户', 'GET');
INSERT INTO `sys_apis` VALUES (52, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (53, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (54, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (55, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (56, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET');
INSERT INTO `sys_apis` VALUES (57, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/createPlug', '自动创建插件包', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (58, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/installPlugin', '安装插件', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (59, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/pubPlug', '打包插件', '代码生成器', 'POST');
INSERT INTO `sys_apis` VALUES (60, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/createPackage', '生成包(package)', '包（pkg）生成器', 'POST');
INSERT INTO `sys_apis` VALUES (61, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/getPackage', '获取所有包(package)', '包（pkg）生成器', 'POST');
INSERT INTO `sys_apis` VALUES (62, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/delPackage', '删除包(package)', '包（pkg）生成器', 'POST');
INSERT INTO `sys_apis` VALUES (63, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (64, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (65, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (66, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` VALUES (67, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT');
INSERT INTO `sys_apis` VALUES (68, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST');
INSERT INTO `sys_apis` VALUES (69, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE');
INSERT INTO `sys_apis` VALUES (70, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET');
INSERT INTO `sys_apis` VALUES (71, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET');
INSERT INTO `sys_apis` VALUES (72, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST');
INSERT INTO `sys_apis` VALUES (73, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE');
INSERT INTO `sys_apis` VALUES (74, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT');
INSERT INTO `sys_apis` VALUES (75, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典', '系统字典', 'GET');
INSERT INTO `sys_apis` VALUES (76, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET');
INSERT INTO `sys_apis` VALUES (77, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST');
INSERT INTO `sys_apis` VALUES (78, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET');
INSERT INTO `sys_apis` VALUES (79, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET');
INSERT INTO `sys_apis` VALUES (80, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE');
INSERT INTO `sys_apis` VALUES (81, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE');
INSERT INTO `sys_apis` VALUES (82, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST');
INSERT INTO `sys_apis` VALUES (83, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` VALUES (84, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` VALUES (85, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (86, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/email/emailSend', '发送邮件示例', 'email', 'POST');
INSERT INTO `sys_apis` VALUES (87, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authorityBtn/setAuthorityBtn', '设置按钮权限', '按钮权限', 'POST');
INSERT INTO `sys_apis` VALUES (88, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authorityBtn/getAuthorityBtn', '获取已有按钮权限', '按钮权限', 'POST');
INSERT INTO `sys_apis` VALUES (89, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/authorityBtn/canRemoveAuthorityBtn', '删除按钮', '按钮权限', 'POST');
INSERT INTO `sys_apis` VALUES (90, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/createSysExportTemplate', '新增导出模板', '表格模板', 'POST');
INSERT INTO `sys_apis` VALUES (91, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/deleteSysExportTemplate', '删除导出模板', '表格模板', 'DELETE');
INSERT INTO `sys_apis` VALUES (92, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/deleteSysExportTemplateByIds', '批量删除导出模板', '表格模板', 'DELETE');
INSERT INTO `sys_apis` VALUES (93, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/updateSysExportTemplate', '更新导出模板', '表格模板', 'PUT');
INSERT INTO `sys_apis` VALUES (94, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/findSysExportTemplate', '根据ID获取导出模板', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (95, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/getSysExportTemplateList', '获取导出模板列表', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (96, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/exportExcel', '导出Excel', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (97, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/exportTemplate', '下载模板', '表格模板', 'GET');
INSERT INTO `sys_apis` VALUES (98, '2025-03-09 12:53:26.173', '2025-03-09 12:53:26.173', NULL, '/sysExportTemplate/importExcel', '导入Excel', '表格模板', 'POST');
INSERT INTO `sys_apis` VALUES (99, '2025-03-11 23:01:20.821', '2025-03-11 23:01:20.821', NULL, '/info/createInfo', '新建公告', '公告', 'POST');
INSERT INTO `sys_apis` VALUES (100, '2025-03-11 23:01:20.821', '2025-03-11 23:01:20.821', NULL, '/info/deleteInfo', '删除公告', '公告', 'DELETE');
INSERT INTO `sys_apis` VALUES (101, '2025-03-11 23:01:20.821', '2025-03-11 23:01:20.821', NULL, '/info/deleteInfoByIds', '批量删除公告', '公告', 'DELETE');
INSERT INTO `sys_apis` VALUES (102, '2025-03-11 23:01:20.821', '2025-03-11 23:01:20.821', NULL, '/info/updateInfo', '更新公告', '公告', 'PUT');
INSERT INTO `sys_apis` VALUES (103, '2025-03-11 23:01:20.821', '2025-03-11 23:01:20.821', NULL, '/info/findInfo', '根据ID获取公告', '公告', 'GET');
INSERT INTO `sys_apis` VALUES (104, '2025-03-11 23:01:20.821', '2025-03-11 23:01:20.821', NULL, '/info/getInfoList', '获取公告列表', '公告', 'GET');
COMMIT;

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint(20) unsigned DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `uni_sys_authorities_authority_id` (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
BEGIN;
INSERT INTO `sys_authorities` VALUES ('2025-03-09 12:53:26.197', '2025-04-18 23:30:43.459', NULL, 888, '普通用户', 0, 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2025-03-09 12:53:26.197', '2025-04-28 22:49:08.218', NULL, 8881, '普通用户子角色', 888, 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2025-03-09 12:53:26.197', '2025-03-09 12:53:26.373', NULL, 9528, '测试角色', 0, 'dashboard');
INSERT INTO `sys_authorities` VALUES ('2025-03-23 22:43:33.689', '2025-04-18 23:30:25.637', NULL, 9999, '系统管理员', 0, 'dashboard');
COMMIT;

-- ----------------------------
-- Table structure for sys_authority_btns
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_btns`;
CREATE TABLE `sys_authority_btns` (
  `authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_authority_btns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_menus`;
CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_authority_menus` VALUES (1, 888);
INSERT INTO `sys_authority_menus` VALUES (1, 8881);
INSERT INTO `sys_authority_menus` VALUES (1, 9528);
INSERT INTO `sys_authority_menus` VALUES (1, 9999);
INSERT INTO `sys_authority_menus` VALUES (2, 888);
INSERT INTO `sys_authority_menus` VALUES (2, 8881);
INSERT INTO `sys_authority_menus` VALUES (2, 9528);
INSERT INTO `sys_authority_menus` VALUES (3, 888);
INSERT INTO `sys_authority_menus` VALUES (3, 8881);
INSERT INTO `sys_authority_menus` VALUES (4, 888);
INSERT INTO `sys_authority_menus` VALUES (4, 8881);
INSERT INTO `sys_authority_menus` VALUES (5, 888);
INSERT INTO `sys_authority_menus` VALUES (5, 8881);
INSERT INTO `sys_authority_menus` VALUES (6, 888);
INSERT INTO `sys_authority_menus` VALUES (6, 8881);
INSERT INTO `sys_authority_menus` VALUES (7, 888);
INSERT INTO `sys_authority_menus` VALUES (7, 8881);
INSERT INTO `sys_authority_menus` VALUES (8, 888);
INSERT INTO `sys_authority_menus` VALUES (8, 8881);
INSERT INTO `sys_authority_menus` VALUES (8, 9528);
INSERT INTO `sys_authority_menus` VALUES (9, 888);
INSERT INTO `sys_authority_menus` VALUES (9, 8881);
INSERT INTO `sys_authority_menus` VALUES (10, 888);
INSERT INTO `sys_authority_menus` VALUES (10, 8881);
INSERT INTO `sys_authority_menus` VALUES (11, 888);
INSERT INTO `sys_authority_menus` VALUES (11, 8881);
INSERT INTO `sys_authority_menus` VALUES (12, 888);
INSERT INTO `sys_authority_menus` VALUES (13, 888);
INSERT INTO `sys_authority_menus` VALUES (13, 8881);
INSERT INTO `sys_authority_menus` VALUES (14, 888);
INSERT INTO `sys_authority_menus` VALUES (14, 8881);
INSERT INTO `sys_authority_menus` VALUES (15, 888);
INSERT INTO `sys_authority_menus` VALUES (15, 8881);
INSERT INTO `sys_authority_menus` VALUES (16, 888);
INSERT INTO `sys_authority_menus` VALUES (16, 8881);
INSERT INTO `sys_authority_menus` VALUES (17, 888);
INSERT INTO `sys_authority_menus` VALUES (17, 8881);
INSERT INTO `sys_authority_menus` VALUES (18, 888);
INSERT INTO `sys_authority_menus` VALUES (19, 888);
INSERT INTO `sys_authority_menus` VALUES (20, 888);
INSERT INTO `sys_authority_menus` VALUES (21, 888);
INSERT INTO `sys_authority_menus` VALUES (22, 888);
INSERT INTO `sys_authority_menus` VALUES (23, 888);
INSERT INTO `sys_authority_menus` VALUES (24, 888);
INSERT INTO `sys_authority_menus` VALUES (25, 888);
INSERT INTO `sys_authority_menus` VALUES (26, 888);
INSERT INTO `sys_authority_menus` VALUES (27, 888);
INSERT INTO `sys_authority_menus` VALUES (28, 888);
INSERT INTO `sys_authority_menus` VALUES (29, 888);
INSERT INTO `sys_authority_menus` VALUES (30, 888);
INSERT INTO `sys_authority_menus` VALUES (32, 888);
INSERT INTO `sys_authority_menus` VALUES (33, 888);
INSERT INTO `sys_authority_menus` VALUES (33, 8881);
INSERT INTO `sys_authority_menus` VALUES (33, 9999);
INSERT INTO `sys_authority_menus` VALUES (35, 888);
INSERT INTO `sys_authority_menus` VALUES (35, 8881);
INSERT INTO `sys_authority_menus` VALUES (35, 9999);
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_code_histories
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_histories`;
CREATE TABLE `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模块名/插件名',
  `business_db` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业务库',
  `table_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表名',
  `menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  `request_meta` text COLLATE utf8mb4_general_ci,
  `auto_code_path` text COLLATE utf8mb4_general_ci,
  `injection_meta` text COLLATE utf8mb4_general_ci,
  `struct_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '结构体名称',
  `struct_cn_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `api_ids` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api表注册内容',
  `flag` bigint(20) DEFAULT NULL COMMENT '[0:创建,1:回滚]',
  `request` text COLLATE utf8mb4_general_ci COMMENT '前端传入的结构化信息',
  `abbreviation` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '结构体名称缩写',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Struct中文名称',
  `templates` text COLLATE utf8mb4_general_ci COMMENT '模板信息',
  `Injections` text COLLATE utf8mb4_general_ci COMMENT '注入路径',
  `export_template_id` bigint(20) unsigned DEFAULT NULL COMMENT '导出模板ID',
  `package_id` bigint(20) unsigned DEFAULT NULL COMMENT '包ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_auto_code_histories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_code_packages
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_packages`;
CREATE TABLE `sys_auto_code_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示名',
  `template` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模版',
  `package_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '包名',
  `module` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_packages_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_auto_code_packages
-- ----------------------------
BEGIN;
INSERT INTO `sys_auto_code_packages` VALUES (1, '2025-03-11 06:55:26.023', '2025-03-11 06:55:26.023', NULL, '系统自动读取example包', 'example包', 'package', 'example', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO `sys_auto_code_packages` VALUES (2, '2025-03-11 06:55:26.023', '2025-03-11 06:55:26.023', NULL, '系统自动读取system包', 'system包', 'package', 'system', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO `sys_auto_code_packages` VALUES (3, '2025-03-11 06:55:26.023', '2025-03-11 06:55:26.023', NULL, '系统自动读取announcement插件，使用前请确认是否为v2版本插件', 'announcement插件', 'plugin', 'announcement', 'github.com/flipped-aurora/gin-vue-admin/server');
INSERT INTO `sys_auto_code_packages` VALUES (4, '2025-03-19 22:30:49.784', '2025-03-19 22:30:49.784', NULL, '系统自动读取film包', 'film包', 'package', 'film', 'github.com/flipped-aurora/gin-vue-admin/server');
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_codes
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_codes`;
CREATE TABLE `sys_auto_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '包名',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示名',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_codes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_auto_codes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menu_btns
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_btns`;
CREATE TABLE `sys_base_menu_btns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_base_menu_btns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menu_parameters
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_parameters`;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_base_menu_parameters
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menus`;
CREATE TABLE `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `active_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_base_menus` VALUES (1, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', 1, '', 0, 0, '仪表盘', 'odometer', 0);
INSERT INTO `sys_base_menus` VALUES (2, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'about', 'about', 0, 'view/about/index.vue', 9, '', 0, 0, '关于我们', 'info-filled', 0);
INSERT INTO `sys_base_menus` VALUES (3, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', 3, '', 0, 0, '超级管理员', 'user', 0);
INSERT INTO `sys_base_menus` VALUES (4, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 3, 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', 1, '', 0, 0, '角色管理', 'avatar', 0);
INSERT INTO `sys_base_menus` VALUES (5, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 3, 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', 2, '', 1, 0, '菜单管理', 'tickets', 0);
INSERT INTO `sys_base_menus` VALUES (6, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 3, 'api', 'api', 0, 'view/superAdmin/api/api.vue', 3, '', 1, 0, 'api管理', 'platform', 0);
INSERT INTO `sys_base_menus` VALUES (7, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 3, 'user', 'user', 0, 'view/superAdmin/user/user.vue', 4, '', 0, 0, '用户管理', 'coordinate', 0);
INSERT INTO `sys_base_menus` VALUES (8, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 3, 'dictionary', 'dictionary', 0, 'view/superAdmin/dictionary/sysDictionary.vue', 5, '', 0, 0, '字典管理', 'notebook', 0);
INSERT INTO `sys_base_menus` VALUES (9, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 3, 'operation', 'operation', 0, 'view/superAdmin/operation/sysOperationRecord.vue', 6, '', 0, 0, '操作历史', 'pie-chart', 0);
INSERT INTO `sys_base_menus` VALUES (10, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'person', 'person', 1, 'view/person/person.vue', 4, '', 0, 0, '个人信息', 'message', 0);
INSERT INTO `sys_base_menus` VALUES (11, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'example', 'example', 0, 'view/example/index.vue', 7, '', 0, 0, '示例文件', 'management', 0);
INSERT INTO `sys_base_menus` VALUES (12, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 11, 'upload', 'upload', 0, 'view/example/upload/upload.vue', 5, '', 0, 0, '媒体库（上传下载）', 'upload', 0);
INSERT INTO `sys_base_menus` VALUES (13, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 11, 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', 6, '', 0, 0, '断点续传', 'upload-filled', 0);
INSERT INTO `sys_base_menus` VALUES (14, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 11, 'customer', 'customer', 0, 'view/example/customer/customer.vue', 7, '', 0, 0, '客户列表（资源示例）', 'avatar', 0);
INSERT INTO `sys_base_menus` VALUES (15, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', 5, '', 0, 0, '系统工具', 'tools', 0);
INSERT INTO `sys_base_menus` VALUES (16, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', 1, '', 1, 0, '代码生成器', 'cpu', 0);
INSERT INTO `sys_base_menus` VALUES (17, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', 2, '', 1, 0, '表单生成器', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (18, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'system', 'system', 0, 'view/systemTools/system/system.vue', 3, '', 0, 0, '系统配置', 'operation', 0);
INSERT INTO `sys_base_menus` VALUES (19, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'autoCodeAdmin', 'autoCodeAdmin', 0, 'view/systemTools/autoCodeAdmin/index.vue', 1, '', 0, 0, '自动化代码管理', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (20, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'autoCodeEdit/:id', 'autoCodeEdit', 1, 'view/systemTools/autoCode/index.vue', 0, '', 0, 0, '自动化代码-${id}', 'magic-stick', 0);
INSERT INTO `sys_base_menus` VALUES (21, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'autoPkg', 'autoPkg', 0, 'view/systemTools/autoPkg/autoPkg.vue', 0, '', 0, 0, '自动化package', 'folder', 0);
INSERT INTO `sys_base_menus` VALUES (22, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 0, '/', 0, '', 0, 0, '官方网站', 'customer-gva', 0);
INSERT INTO `sys_base_menus` VALUES (23, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'state', 'state', 0, 'view/system/state.vue', 8, '', 0, 0, '服务器状态', 'cloudy', 0);
INSERT INTO `sys_base_menus` VALUES (24, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 0, 'plugin', 'plugin', 0, 'view/routerHolder.vue', 6, '', 0, 0, '插件系统', 'cherry', 0);
INSERT INTO `sys_base_menus` VALUES (25, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 24, 'https://plugin.gin-vue-admin.com/', 'https://plugin.gin-vue-admin.com/', 0, 'https://plugin.gin-vue-admin.com/', 0, '', 0, 0, '插件市场', 'shop', 0);
INSERT INTO `sys_base_menus` VALUES (26, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 24, 'installPlugin', 'installPlugin', 0, 'view/systemTools/installPlugin/index.vue', 1, '', 0, 0, '插件安装', 'box', 0);
INSERT INTO `sys_base_menus` VALUES (27, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 24, 'autoPlug', 'autoPlug', 0, 'view/systemTools/autoPlug/autoPlug.vue', 2, '', 0, 0, '插件模板', 'folder', 0);
INSERT INTO `sys_base_menus` VALUES (28, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 24, 'pubPlug', 'pubPlug', 0, 'view/systemTools/pubPlug/pubPlug.vue', 3, '', 0, 0, '打包插件', 'files', 0);
INSERT INTO `sys_base_menus` VALUES (29, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 24, 'plugin-email', 'plugin-email', 0, 'plugin/email/view/index.vue', 4, '', 0, 0, '邮件插件', 'message', 0);
INSERT INTO `sys_base_menus` VALUES (30, '2025-03-09 12:53:26.225', '2025-03-09 12:53:26.225', NULL, 0, 15, 'exportTemplate', 'exportTemplate', 0, 'view/systemTools/exportTemplate/exportTemplate.vue', 10, '', 0, 0, '表格模板', 'reading', 0);
INSERT INTO `sys_base_menus` VALUES (31, '2025-03-09 15:16:16.669', '2025-03-09 20:59:25.827', '2025-03-23 22:38:08.144', 0, 0, 'MovieShow', 'MovieShow', 0, 'view/MovieShow/allfilms.vue', 999, '', 0, 0, '影片', 'camera-filled', 0);
INSERT INTO `sys_base_menus` VALUES (32, '2025-03-11 23:01:20.827', '2025-03-11 23:01:20.827', NULL, 0, 24, 'anInfo', 'anInfo', 0, 'plugin/announcement/view/info.vue', 5, '', 0, 0, '公告管理', 'box', 0);
INSERT INTO `sys_base_menus` VALUES (33, '2025-03-23 22:20:09.572', '2025-04-28 23:19:58.522', NULL, 0, 0, 'film', 'film', 0, 'view/routerHolder.vue', 0, '', 0, 0, '影视管理', 'film', 0);
INSERT INTO `sys_base_menus` VALUES (34, '2025-03-23 23:40:17.415', '2025-04-18 23:26:51.769', '2025-05-01 22:27:35.857', 0, 33, 'create', 'create', 0, 'view/film/create.vue', 0, '', 0, 0, '新增电影信息', '', 0);
INSERT INTO `sys_base_menus` VALUES (35, '2025-04-14 23:33:21.834', '2025-04-14 23:35:56.181', NULL, 0, 33, 'list', 'list', 0, 'view/film/list.vue', 0, '', 0, 0, '影视管理', '', 0);
INSERT INTO `sys_base_menus` VALUES (36, '2025-04-18 23:28:27.418', '2025-04-28 22:44:39.725', '2025-05-01 22:27:39.414', 0, 33, 'edit', 'edit', 0, 'view/film/edit.vue', 0, '', 0, 0, '修改电影信息', 'edit', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_data_authority_id
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_authority_id`;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_data_authority_id
-- ----------------------------
BEGIN;
INSERT INTO `sys_data_authority_id` VALUES (888, 888);
INSERT INTO `sys_data_authority_id` VALUES (888, 8881);
INSERT INTO `sys_data_authority_id` VALUES (888, 9528);
INSERT INTO `sys_data_authority_id` VALUES (888, 9999);
INSERT INTO `sys_data_authority_id` VALUES (9528, 8881);
INSERT INTO `sys_data_authority_id` VALUES (9528, 9528);
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionaries` VALUES (1, '2025-03-09 12:53:26.209', '2025-03-09 12:53:26.211', NULL, '性别', 'gender', 1, '性别字典');
INSERT INTO `sys_dictionaries` VALUES (2, '2025-03-09 12:53:26.209', '2025-03-09 12:53:26.214', NULL, '数据库int类型', 'int', 1, 'int类型对应的数据库类型');
INSERT INTO `sys_dictionaries` VALUES (3, '2025-03-09 12:53:26.209', '2025-03-09 12:53:26.216', NULL, '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型');
INSERT INTO `sys_dictionaries` VALUES (4, '2025-03-09 12:53:26.209', '2025-03-09 12:53:26.218', NULL, '数据库浮点型', 'float64', 1, '数据库浮点型');
INSERT INTO `sys_dictionaries` VALUES (5, '2025-03-09 12:53:26.209', '2025-03-09 12:53:26.220', NULL, '数据库字符串', 'string', 1, '数据库字符串');
INSERT INTO `sys_dictionaries` VALUES (6, '2025-03-09 12:53:26.209', '2025-03-09 12:53:26.222', NULL, '数据库bool类型', 'bool', 1, '数据库bool类型');
INSERT INTO `sys_dictionaries` VALUES (7, '2025-03-19 22:42:51.714', '2025-03-19 22:42:51.714', NULL, '影视分类', 'movie_genres', 1, '影视分类');
INSERT INTO `sys_dictionaries` VALUES (8, '2025-03-21 00:18:04.112', '2025-03-21 00:18:04.112', '2025-03-21 01:07:44.007', '评分平台', 'rating_platform', 1, '评分平台');
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示值',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典值',
  `extend` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '扩展值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionary_details` VALUES (1, '2025-03-09 12:53:26.212', '2025-03-09 12:53:26.212', NULL, '男', '1', '', 1, 1, 1);
INSERT INTO `sys_dictionary_details` VALUES (2, '2025-03-09 12:53:26.212', '2025-03-09 12:53:26.212', NULL, '女', '2', '', 1, 2, 1);
INSERT INTO `sys_dictionary_details` VALUES (3, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'smallint', '1', 'mysql', 1, 1, 2);
INSERT INTO `sys_dictionary_details` VALUES (4, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'mediumint', '2', 'mysql', 1, 2, 2);
INSERT INTO `sys_dictionary_details` VALUES (5, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'int', '3', 'mysql', 1, 3, 2);
INSERT INTO `sys_dictionary_details` VALUES (6, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'bigint', '4', 'mysql', 1, 4, 2);
INSERT INTO `sys_dictionary_details` VALUES (7, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'int2', '5', 'pgsql', 1, 5, 2);
INSERT INTO `sys_dictionary_details` VALUES (8, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'int4', '6', 'pgsql', 1, 6, 2);
INSERT INTO `sys_dictionary_details` VALUES (9, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'int6', '7', 'pgsql', 1, 7, 2);
INSERT INTO `sys_dictionary_details` VALUES (10, '2025-03-09 12:53:26.214', '2025-03-09 12:53:26.214', NULL, 'int8', '8', 'pgsql', 1, 8, 2);
INSERT INTO `sys_dictionary_details` VALUES (11, '2025-03-09 12:53:26.216', '2025-03-09 12:53:26.216', NULL, 'date', '', '', 1, 0, 3);
INSERT INTO `sys_dictionary_details` VALUES (12, '2025-03-09 12:53:26.216', '2025-03-09 12:53:26.216', NULL, 'time', '1', 'mysql', 1, 1, 3);
INSERT INTO `sys_dictionary_details` VALUES (13, '2025-03-09 12:53:26.216', '2025-03-09 12:53:26.216', NULL, 'year', '2', 'mysql', 1, 2, 3);
INSERT INTO `sys_dictionary_details` VALUES (14, '2025-03-09 12:53:26.216', '2025-03-09 12:53:26.216', NULL, 'datetime', '3', 'mysql', 1, 3, 3);
INSERT INTO `sys_dictionary_details` VALUES (15, '2025-03-09 12:53:26.216', '2025-03-09 12:53:26.216', NULL, 'timestamp', '5', 'mysql', 1, 5, 3);
INSERT INTO `sys_dictionary_details` VALUES (16, '2025-03-09 12:53:26.216', '2025-03-09 12:53:26.216', NULL, 'timestamptz', '6', 'pgsql', 1, 5, 3);
INSERT INTO `sys_dictionary_details` VALUES (17, '2025-03-09 12:53:26.218', '2025-03-09 12:53:26.218', NULL, 'float', '', '', 1, 0, 4);
INSERT INTO `sys_dictionary_details` VALUES (18, '2025-03-09 12:53:26.218', '2025-03-09 12:53:26.218', NULL, 'double', '1', 'mysql', 1, 1, 4);
INSERT INTO `sys_dictionary_details` VALUES (19, '2025-03-09 12:53:26.218', '2025-03-09 12:53:26.218', NULL, 'decimal', '2', 'mysql', 1, 2, 4);
INSERT INTO `sys_dictionary_details` VALUES (20, '2025-03-09 12:53:26.218', '2025-03-09 12:53:26.218', NULL, 'numeric', '3', 'pgsql', 1, 3, 4);
INSERT INTO `sys_dictionary_details` VALUES (21, '2025-03-09 12:53:26.218', '2025-03-09 12:53:26.218', NULL, 'smallserial', '4', 'pgsql', 1, 4, 4);
INSERT INTO `sys_dictionary_details` VALUES (22, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'char', '', '', 1, 0, 5);
INSERT INTO `sys_dictionary_details` VALUES (23, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'varchar', '1', 'mysql', 1, 1, 5);
INSERT INTO `sys_dictionary_details` VALUES (24, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'tinyblob', '2', 'mysql', 1, 2, 5);
INSERT INTO `sys_dictionary_details` VALUES (25, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'tinytext', '3', 'mysql', 1, 3, 5);
INSERT INTO `sys_dictionary_details` VALUES (26, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'text', '4', 'mysql', 1, 4, 5);
INSERT INTO `sys_dictionary_details` VALUES (27, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'blob', '5', 'mysql', 1, 5, 5);
INSERT INTO `sys_dictionary_details` VALUES (28, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'mediumblob', '6', 'mysql', 1, 6, 5);
INSERT INTO `sys_dictionary_details` VALUES (29, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'mediumtext', '7', 'mysql', 1, 7, 5);
INSERT INTO `sys_dictionary_details` VALUES (30, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'longblob', '8', 'mysql', 1, 8, 5);
INSERT INTO `sys_dictionary_details` VALUES (31, '2025-03-09 12:53:26.220', '2025-03-09 12:53:26.220', NULL, 'longtext', '9', 'mysql', 1, 9, 5);
INSERT INTO `sys_dictionary_details` VALUES (32, '2025-03-09 12:53:26.222', '2025-03-09 12:53:26.222', NULL, 'tinyint', '1', 'mysql', 1, 0, 6);
INSERT INTO `sys_dictionary_details` VALUES (33, '2025-03-09 12:53:26.222', '2025-03-09 12:53:26.222', NULL, 'bool', '2', 'pgsql', 1, 0, 6);
INSERT INTO `sys_dictionary_details` VALUES (34, '2025-03-19 22:45:01.717', '2025-03-19 22:45:01.717', NULL, '剧情', '0', '', 1, 0, 7);
INSERT INTO `sys_dictionary_details` VALUES (35, '2025-03-19 22:45:21.650', '2025-03-19 22:45:21.650', NULL, '喜剧', '1', '', 1, 1, 7);
INSERT INTO `sys_dictionary_details` VALUES (36, '2025-03-19 22:45:43.453', '2025-03-19 22:45:43.453', NULL, '动作', '2', '', 1, 2, 7);
INSERT INTO `sys_dictionary_details` VALUES (37, '2025-03-19 22:46:04.054', '2025-03-19 22:46:04.054', NULL, '犯罪', '3', '', 1, 3, 7);
INSERT INTO `sys_dictionary_details` VALUES (38, '2025-03-19 22:46:26.172', '2025-03-19 22:46:26.172', NULL, '悬疑', '4', '', 1, 4, 7);
INSERT INTO `sys_dictionary_details` VALUES (39, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '奇幻', '5', '', 1, 5, 7);
INSERT INTO `sys_dictionary_details` VALUES (40, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '古装', '6', NULL, 1, 6, 7);
INSERT INTO `sys_dictionary_details` VALUES (41, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '科幻', '7', NULL, 1, 7, 7);
INSERT INTO `sys_dictionary_details` VALUES (42, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '恐怖', '8', NULL, 1, 8, 7);
INSERT INTO `sys_dictionary_details` VALUES (43, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '爱情', '9', NULL, 1, 9, 7);
INSERT INTO `sys_dictionary_details` VALUES (44, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '冒险', '10', NULL, 1, 10, 7);
INSERT INTO `sys_dictionary_details` VALUES (45, '2025-03-19 22:46:43.810', '2025-03-19 22:46:43.810', NULL, '西部', '11', NULL, 1, 11, 7);
INSERT INTO `sys_dictionary_details` VALUES (46, '2025-03-21 00:33:35.735', '2025-03-21 00:33:35.735', '2025-03-21 01:07:41.088', 'douban', 'PFIdoudan.svg', '', 1, 0, 8);
COMMIT;

-- ----------------------------
-- Table structure for sys_export_template_condition
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_template_condition`;
CREATE TABLE `sys_export_template_condition` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `template_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板标识',
  `from` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '条件取的key',
  `column` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '作为查询条件的字段',
  `operator` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作符',
  PRIMARY KEY (`id`),
  KEY `idx_sys_export_template_condition_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_export_template_condition
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_export_template_join
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_template_join`;
CREATE TABLE `sys_export_template_join` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `template_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板标识',
  `joins` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联',
  `table` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表',
  `on` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联条件',
  PRIMARY KEY (`id`),
  KEY `idx_sys_export_template_join_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_export_template_join
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_export_templates
-- ----------------------------
DROP TABLE IF EXISTS `sys_export_templates`;
CREATE TABLE `sys_export_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `db_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '数据库名称',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板名称',
  `table_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表名称',
  `template_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板标识',
  `template_info` text COLLATE utf8mb4_general_ci,
  `limit` bigint(20) DEFAULT NULL COMMENT '导出限制',
  `order` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `idx_sys_export_templates_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_export_templates
-- ----------------------------
BEGIN;
INSERT INTO `sys_export_templates` VALUES (1, '2025-03-09 12:53:26.367', '2025-03-09 12:53:26.367', NULL, '', 'api', 'sys_apis', 'api', '{\n\"path\":\"路径\",\n\"method\":\"方法（大写）\",\n\"description\":\"方法介绍\",\n\"api_group\":\"方法分组\"\n}', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_ignore_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_ignore_apis`;
CREATE TABLE `sys_ignore_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_ignore_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_ignore_apis
-- ----------------------------
BEGIN;
INSERT INTO `sys_ignore_apis` VALUES (1, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/swagger/*any', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (2, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/api/freshCasbin', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (3, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/uploads/file/*filepath', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (4, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/health', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (5, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/uploads/file/*filepath', 'HEAD');
INSERT INTO `sys_ignore_apis` VALUES (6, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/autoCode/llmAuto', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (7, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/system/reloadSystem', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (8, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/base/login', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (9, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/base/captcha', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (10, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/init/initdb', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (11, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/init/checkdb', 'POST');
INSERT INTO `sys_ignore_apis` VALUES (12, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/info/getInfoDataSource', 'GET');
INSERT INTO `sys_ignore_apis` VALUES (13, '2025-03-11 06:54:43.402', '2025-03-11 06:54:43.402', NULL, '/info/getInfoPublic', 'GET');
COMMIT;

-- ----------------------------
-- Table structure for sys_operation_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_records`;
CREATE TABLE `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` text COLLATE utf8mb4_general_ci COMMENT '代理',
  `error_message` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '错误信息',
  `body` text COLLATE utf8mb4_general_ci COMMENT '请求Body',
  `resp` text COLLATE utf8mb4_general_ci COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_operation_records
-- ----------------------------
BEGIN;
INSERT INTO `sys_operation_records` VALUES (1, '2025-03-09 12:54:34.026', '2025-03-09 12:54:34.026', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 211078234, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.24.1\",\"numGoroutine\":11},\"cpu\":{\"cpus\":[22.22222227971127,0,15.789473787404162,0,19.047619068737472,0,15.789473787404162,0],\"cores\":4},\"ram\":{\"usedMb\":7055,\"totalMb\":8192,\"usedPercent\":86},\"disk\":{\"usedMb\":251602,\"usedGb\":245,\"totalMb\":476802,\"totalGb\":465,\"usedPercent\":52}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (2, '2025-03-09 12:56:09.958', '2025-03-09 12:56:09.958', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 202345154, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.24.1\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[35.00000011641532,4.999999883584678,35.00000011641532,4.761904677431058,33.33333333333333,4.761904677431058,25.000000349245965,0],\"cores\":4},\"ram\":{\"usedMb\":6594,\"totalMb\":8192,\"usedPercent\":80},\"disk\":{\"usedMb\":252634,\"usedGb\":246,\"totalMb\":476802,\"totalGb\":465,\"usedPercent\":52}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (3, '2025-03-09 12:56:28.884', '2025-03-09 12:56:28.884', NULL, '127.0.0.1', 'POST', '/system/getSystemConfig', 200, 6581127, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"config\":{\"jwt\":{\"signing-key\":\"105111ad-0529-480f-a8ba-b4bc1707e394\",\"expires-time\":\"7d\",\"buffer-time\":\"1d\",\"issuer\":\"qmPlus\"},\"zap\":{\"level\":\"info\",\"prefix\":\"[github.com/flipped-aurora/gin-vue-admin/server]\",\"format\":\"console\",\"director\":\"log\",\"encode-level\":\"LowercaseColorLevelEncoder\",\"stacktrace-key\":\"stacktrace\",\"max-age\":0,\"show-line\":true,\"log-in-console\":true},\"redis\":{\"addr\":\"127.0.0.1:6379\",\"password\":\"\",\"db\":0,\"useCluster\":false,\"clusterAddrs\":[\"172.21.0.3:7000\",\"172.21.0.4:7001\",\"172.21.0.2:7002\"]},\"mongo\":{\"coll\":\"\",\"options\":\"\",\"database\":\"\",\"username\":\"\",\"password\":\"\",\"auth-source\":\"\",\"min-pool-size\":0,\"max-pool-size\":100,\"socket-timeout-ms\":0,\"connect-timeout-ms\":0,\"is-zap\":false,\"hosts\":[{\"host\":\"\",\"port\":\"\"}]},\"email\":{\"to\":\"xxx@qq.com\",\"from\":\"xxx@163.com\",\"host\":\"smtp.163.com\",\"secret\":\"xxx\",\"nickname\":\"test\",\"port\":465,\"is-ssl\":true},\"system\":{\"db-type\":\"mysql\",\"oss-type\":\"local\",\"router-prefix\":\"\",\"addr\":8888,\"iplimit-count\":15000,\"iplimit-time\":3600,\"use-multipoint\":false,\"use-redis\":false,\"use-mongo\":false},\"captcha\":{\"key-long\":6,\"img-width\":240,\"img-height\":80,\"open-captcha\":0,\"open-captcha-timeout\":3600},\"autocode\":{\"server-model\":\"/model/%s\",\"server-router\":\"/router/%s\",\"server\":\"/server\",\"server-api\":\"/api/v1/%s\",\"server-plug\":\"/plugin/%s\",\"server-initialize\":\"/initialize\",\"root\":\"/Users/wangmin/Downloads/gin-vue-admin-main -html\",\"web-table\":\"/view\",\"web\":\"/web/src\",\"server-service\":\"/service/%s\",\"server-request\":\"/model/%s/request/\",\"web-api\":\"/api\",\"web-form\":\"/view\",\"transfer-restart\":true},\"mysql\":{\"prefix\":\"\",\"port\":\"3306\",\"config\":\"charset=utf8mb4\\u0026parseTime=True\\u0026loc=Local\",\"db-name\":\"gva\",\"username\":\"root\",\"password\":\"Answer524\",\"path\":\"127.0.0.1\",\"engine\":\"\",\"log-mode\":\"error\",\"max-idle-conns\":10,\"max-open-conns\":100,\"singular\":false,\"log-zap\":false},\"mssql\":{\"prefix\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"path\":\"\",\"engine\":\"\",\"log-mode\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"singular\":false,\"log-zap\":false},\"pgsql\":{\"prefix\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"path\":\"\",\"engine\":\"\",\"log-mode\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"singular\":false,\"log-zap\":false},\"oracle\":{\"prefix\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"path\":\"\",\"engine\":\"\",\"log-mode\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"singular\":false,\"log-zap\":false},\"sqlite\":{\"prefix\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"path\":\"\",\"engine\":\"\",\"log-mode\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"singular\":false,\"log-zap\":false},\"db-list\":[{\"type\":\"\",\"alias-name\":\"\",\"prefix\":\"\",\"port\":\"\",\"config\":\"\",\"db-name\":\"\",\"username\":\"\",\"password\":\"\",\"path\":\"\",\"engine\":\"\",\"log-mode\":\"\",\"max-idle-conns\":10,\"max-open-conns\":100,\"singular\":false,\"log-zap\":false,\"disable\":true}],\"local\":{\"path\":\"uploads/file\",\"store-path\":\"uploads/file\"},\"qiniu\":{\"zone\":\"ZoneHuaDong\",\"bucket\":\"\",\"img-path\":\"\",\"access-key\":\"\",\"secret-key\":\"\",\"use-https\":false,\"use-cdn-domains\":false},\"aliyun-oss\":{\"endpoint\":\"yourEndpoint\",\"access-key-id\":\"yourAccessKeyId\",\"access-key-secret\":\"yourAccessKeySecret\",\"bucket-name\":\"yourBucketName\",\"bucket-url\":\"yourBucketUrl\",\"base-path\":\"yourBasePath\"},\"hua-wei-obs\":{\"path\":\"you-path\",\"bucket\":\"you-bucket\",\"endpoint\":\"you-endpoint\",\"access-key\":\"you-access-key\",\"secret-key\":\"you-secret-key\"},\"tencent-cos\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"secret-id\":\"your-secret-id\",\"secret-key\":\"your-secret-key\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"github.com/flipped-aurora/gin-vue-admin/server\"},\"aws-s3\":{\"bucket\":\"xxxxx-10005608\",\"region\":\"ap-shanghai\",\"endpoint\":\"\",\"secret-id\":\"your-secret-id\",\"secret-key\":\"your-secret-key\",\"base-url\":\"https://gin.vue.admin\",\"path-prefix\":\"github.com/flipped-aurora/gin-vue-admin/server\",\"s3-force-path-style\":false,\"disable-ssl\":false},\"excel\":{\"dir\":\"./resource/excel/\"},\"cors\":{\"mode\":\"strict-whitelist\",\"whitelist\":[{\"allow-origin\":\"example1.com\",\"allow-methods\":\"POST, GET\",\"allow-headers\":\"Content-Type,AccessToken,X-CSRF-Token, Authorization, Token,X-Token,X-User-Id\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true},{\"allow-origin\":\"example2.com\",\"allow-methods\":\"GET, POST\",\"allow-headers\":\"content-type\",\"expose-headers\":\"Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Type\",\"allow-credentials\":true}]}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (4, '2025-03-09 14:55:05.675', '2025-03-09 14:55:05.675', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 210361761, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '', '{\"code\":0,\"data\":{\"server\":{\"os\":{\"goos\":\"darwin\",\"numCpu\":8,\"compiler\":\"gc\",\"goVersion\":\"go1.24.1\",\"numGoroutine\":12},\"cpu\":{\"cpus\":[42.857142983853414,9.523809713875355,35.00000011641532,4.761904656312634,36.84210534055312,0,30.000000232830644,0],\"cores\":4},\"ram\":{\"usedMb\":7278,\"totalMb\":8192,\"usedPercent\":88},\"disk\":{\"usedMb\":251636,\"usedGb\":245,\"totalMb\":476802,\"totalGb\":465,\"usedPercent\":52}}},\"msg\":\"获取成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (5, '2025-03-09 15:16:16.729', '2025-03-09 15:16:16.729', NULL, '127.0.0.1', 'POST', '/menu/addBaseMenu', 200, 151246487, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '{\"ID\":0,\"path\":\"MovieShow\",\"name\":\"MovieShow\",\"hidden\":false,\"parentId\":\"0\",\"component\":\"view/MovieShow/index.vue\",\"meta\":{\"title\":\"影片\",\"icon\":\"camera-filled\",\"defaultMenu\":false,\"closeTab\":false,\"keepAlive\":false},\"sort\":999}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (6, '2025-03-09 15:17:01.751', '2025-03-09 15:17:01.751', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 49734132, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (7, '2025-03-09 15:17:03.008', '2025-03-09 15:17:03.008', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 62719913, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (8, '2025-03-09 15:19:08.478', '2025-03-09 15:19:08.478', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 20376341, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '{\"ID\":31,\"CreatedAt\":\"2025-03-09T15:16:16.669+08:00\",\"UpdatedAt\":\"2025-03-09T15:16:16.669+08:00\",\"parentId\":\"0\",\"path\":\"MovieShow\",\"name\":\"MovieShow\",\"hidden\":false,\"component\":\"view/MovieShow/movieinfo.vue\",\"sort\":999,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影片\",\"icon\":\"camera-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (9, '2025-03-09 15:19:16.809', '2025-03-09 15:19:16.809', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 24806984, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (10, '2025-03-09 20:59:25.897', '2025-03-09 20:59:25.897', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 161666791, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '', '{\"ID\":31,\"CreatedAt\":\"2025-03-09T15:16:16.669+08:00\",\"UpdatedAt\":\"2025-03-09T15:19:08.466+08:00\",\"parentId\":\"0\",\"path\":\"MovieShow\",\"name\":\"MovieShow\",\"hidden\":false,\"component\":\"view/MovieShow/allfilms.vue\",\"sort\":999,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影片\",\"icon\":\"camera-filled\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (11, '2025-03-19 22:42:51.750', '2025-03-19 22:42:51.750', NULL, '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 67742229, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"name\":\"影视分类\",\"type\":\"movie_genres\",\"status\":true,\"desc\":\"影视分类\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (12, '2025-03-19 22:45:01.730', '2025-03-19 22:45:01.730', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 14079542, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"剧情\",\"value\":\"0\",\"status\":true,\"sort\":0,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (13, '2025-03-19 22:45:21.655', '2025-03-19 22:45:21.655', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 5973220, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"喜剧\",\"value\":\"1\",\"status\":true,\"sort\":1,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (14, '2025-03-19 22:45:43.459', '2025-03-19 22:45:43.459', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 6736697, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"动作\",\"value\":\"2\",\"status\":true,\"sort\":2,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (15, '2025-03-19 22:46:04.058', '2025-03-19 22:46:04.058', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3574799, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"犯罪\",\"value\":\"3\",\"status\":true,\"sort\":3,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (16, '2025-03-19 22:46:26.176', '2025-03-19 22:46:26.176', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 3788578, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"悬疑\",\"value\":\"4\",\"status\":true,\"sort\":4,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (17, '2025-03-19 22:46:43.813', '2025-03-19 22:46:43.813', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 2713619, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"奇幻\",\"value\":\"5\",\"status\":true,\"sort\":5,\"sysDictionaryID\":7}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (18, '2025-03-21 00:18:04.126', '2025-03-21 00:18:04.126', NULL, '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 29243371, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"name\":\"评分平台\",\"type\":\"rating_platform\",\"status\":true,\"desc\":\"评分平台\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (19, '2025-03-21 00:33:35.746', '2025-03-21 00:33:35.746', NULL, '127.0.0.1', 'POST', '/sysDictionaryDetail/createSysDictionaryDetail', 200, 10994028, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"label\":\"douban\",\"value\":\"PFIdoudan.svg\",\"status\":true,\"sort\":0,\"sysDictionaryID\":8}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (20, '2025-03-21 01:07:41.098', '2025-03-21 01:07:41.098', NULL, '127.0.0.1', 'DELETE', '/sysDictionaryDetail/deleteSysDictionaryDetail', 200, 9819066, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":46}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (21, '2025-03-21 01:07:44.013', '2025-03-21 01:07:44.013', NULL, '127.0.0.1', 'DELETE', '/sysDictionary/deleteSysDictionary', 200, 7889488, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":8}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (22, '2025-03-23 22:20:09.610', '2025-03-23 22:20:09.610', NULL, '127.0.0.1', 'POST', '/menu/addBaseMenu', 200, 50697945, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":0,\"path\":\"FilmManage\",\"name\":\"FilmManage\",\"hidden\":false,\"parentId\":0,\"component\":\"view/routerHolder.vue\",\"meta\":{\"activeName\":\"\",\"title\":\"影视管理\",\"icon\":\"film\",\"defaultMenu\":false,\"closeTab\":false,\"keepAlive\":false},\"parameters\":[],\"menuBtn\":[],\"sort\":0}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (23, '2025-03-23 22:21:17.626', '2025-03-23 22:21:17.626', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 25724151, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"FilmManage\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"FilmManage\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (24, '2025-03-23 22:21:24.187', '2025-03-23 22:21:24.187', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 20969902, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (25, '2025-03-23 22:22:23.493', '2025-03-23 22:22:23.493', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 6764234, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (26, '2025-03-23 22:22:27.777', '2025-03-23 22:22:27.777', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 18535325, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (27, '2025-03-23 22:22:41.535', '2025-03-23 22:22:41.535', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 16270327, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (28, '2025-03-23 22:26:10.007', '2025-03-23 22:26:10.007', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 8401969, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (29, '2025-03-23 22:26:12.855', '2025-03-23 22:26:12.855', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 3924009, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (30, '2025-03-23 22:26:38.634', '2025-03-23 22:26:38.634', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 4507720, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (31, '2025-03-23 22:26:46.105', '2025-03-23 22:26:46.105', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 20398800, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (32, '2025-03-23 22:38:08.169', '2025-03-23 22:38:08.169', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 31461569, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":31}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (33, '2025-03-23 22:38:35.820', '2025-03-23 22:38:35.820', NULL, '127.0.0.1', 'POST', '/user/setUserAuthorities', 200, 9037939, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":1,\"authorityIds\":[888,8881,9528]}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (34, '2025-03-23 22:39:45.812', '2025-03-23 22:39:45.812', NULL, '127.0.0.1', 'PUT', '/user/setUserInfo', 200, 10578722, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (35, '2025-03-23 22:39:54.329', '2025-03-23 22:39:54.329', NULL, '127.0.0.1', 'POST', '/user/setUserAuthorities', 200, 7099625, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":2,\"authorityIds\":[888]}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (36, '2025-03-23 22:40:01.029', '2025-03-23 22:40:01.029', NULL, '127.0.0.1', 'DELETE', '/user/deleteUser', 200, 6255515, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"id\":2}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (37, '2025-03-23 22:40:38.719', '2025-03-23 22:40:38.719', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 8840484, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (38, '2025-03-23 22:40:40.311', '2025-03-23 22:40:40.311', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 16532342, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (39, '2025-03-23 22:41:45.308', '2025-03-23 22:41:45.308', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 12692167, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"FilmManage\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"FilmManage\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (40, '2025-03-23 22:41:47.854', '2025-03-23 22:41:47.854', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 17280789, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (41, '2025-03-23 22:42:04.838', '2025-03-23 22:42:04.838', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 7996588, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (42, '2025-03-23 22:42:07.497', '2025-03-23 22:42:07.497', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 10246422, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (43, '2025-03-23 22:43:33.720', '2025-03-23 22:43:33.720', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 32396047, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":9999,\"authorityName\":\"系统管理员\",\"parentId\":0}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2025-03-23T22:43:33.689+08:00\",\"UpdatedAt\":\"2025-03-23T22:43:33.695+08:00\",\"DeletedAt\":null,\"authorityId\":9999,\"authorityName\":\"系统管理员\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":[{\"ID\":1,\"CreatedAt\":\"2025-03-23T22:43:33.698+08:00\",\"UpdatedAt\":\"2025-03-23T22:43:33.698+08:00\",\"parentId\":0,\"path\":\"dashboard\",\"name\":\"dashboard\",\"hidden\":false,\"component\":\"view/dashboard/index.vue\",\"sort\":1,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"仪表盘\",\"icon\":\"setting\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":null,\"menuBtn\":null}],\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (44, '2025-03-23 22:44:57.322', '2025-03-23 22:44:57.322', NULL, '127.0.0.1', 'POST', '/authority/setDataAuthority', 200, 12131865, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"CreatedAt\":\"2025-03-09T12:53:26.197+08:00\",\"UpdatedAt\":\"2025-03-23T22:42:07.489+08:00\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":[{\"authorityId\":888,\"authorityName\":\"普通用户\"},{\"authorityId\":8881,\"authorityName\":\"普通用户子角色\"},{\"authorityId\":9999,\"authorityName\":\"系统管理员\"},{\"authorityId\":9528,\"authorityName\":\"测试角色\"}],\"children\":[{\"CreatedAt\":\"2025-03-09T12:53:26.197+08:00\",\"UpdatedAt\":\"2025-03-09T12:53:26.379+08:00\",\"DeletedAt\":null,\"authorityId\":8881,\"authorityName\":\"普通用户子角色\",\"parentId\":888,\"dataAuthorityId\":[],\"children\":[],\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (45, '2025-03-23 22:44:59.741', '2025-03-23 22:44:59.741', NULL, '127.0.0.1', 'POST', '/authority/setDataAuthority', 200, 13134958, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"CreatedAt\":\"2025-03-09T12:53:26.197+08:00\",\"UpdatedAt\":\"2025-03-23T22:42:07.489+08:00\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":[{\"authorityId\":888,\"authorityName\":\"普通用户\"},{\"authorityId\":8881,\"authorityName\":\"普通用户子角色\"},{\"authorityId\":9999,\"authorityName\":\"系统管理员\"},{\"authorityId\":9528,\"authorityName\":\"测试角色\"}],\"children\":[{\"CreatedAt\":\"2025-03-09T12:53:26.197+08:00\",\"UpdatedAt\":\"2025-03-09T12:53:26.379+08:00\",\"DeletedAt\":null,\"authorityId\":8881,\"authorityName\":\"普通用户子角色\",\"parentId\":888,\"dataAuthorityId\":[],\"children\":[],\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (46, '2025-03-23 22:45:37.577', '2025-03-23 22:45:37.577', NULL, '127.0.0.1', 'POST', '/casbin/updateCasbin', 200, 33655591, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (47, '2025-03-23 22:46:03.528', '2025-03-23 22:46:03.528', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 4108143, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (48, '2025-03-23 22:46:22.860', '2025-03-23 22:46:22.860', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 15228681, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (49, '2025-03-23 22:46:33.441', '2025-03-23 22:46:33.441', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 9365634, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (50, '2025-03-23 22:46:45.401', '2025-03-23 22:46:45.401', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 4739910, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (51, '2025-03-23 22:46:47.244', '2025-03-23 22:46:47.244', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 4820590, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (52, '2025-03-23 22:46:53.136', '2025-03-23 22:46:53.136', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 5784647, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"https://www.gin-vue-admin.com\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (53, '2025-03-23 22:46:56.833', '2025-03-23 22:46:56.833', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 10715538, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (54, '2025-03-23 22:51:45.785', '2025-03-23 22:51:45.785', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 9518379, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (55, '2025-03-23 22:51:48.352', '2025-03-23 22:51:48.352', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 16393488, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (56, '2025-03-23 22:53:31.715', '2025-03-23 22:53:31.715', NULL, '127.0.0.1', 'PUT', '/authority/updateAuthority', 200, 7899433, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888,\"AuthorityName\":\"普通用户\",\"parentId\":0,\"defaultRouter\":\"dashboard\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"普通用户\",\"parentId\":0,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (57, '2025-03-23 23:40:17.430', '2025-03-23 23:40:17.430', NULL, '127.0.0.1', 'POST', '/menu/addBaseMenu', 200, 22104478, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":0,\"path\":\"CreateMovie\",\"name\":\"CreateMovie\",\"hidden\":false,\"parentId\":33,\"component\":\"view/home/create.vue\",\"meta\":{\"activeName\":\"\",\"title\":\"新增电影信息\",\"icon\":\"\",\"defaultMenu\":false,\"closeTab\":false,\"keepAlive\":false},\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (58, '2025-03-23 23:40:38.922', '2025-03-23 23:40:38.922', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 23577701, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (59, '2025-03-23 23:40:45.136', '2025-03-23 23:40:45.136', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 10540881, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (60, '2025-03-23 23:44:20.748', '2025-03-23 23:44:20.748', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 17758373, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":34,\"CreatedAt\":\"2025-03-23T23:40:17.415+08:00\",\"UpdatedAt\":\"2025-03-23T23:40:17.415+08:00\",\"parentId\":33,\"path\":\"create\",\"name\":\"create\",\"hidden\":false,\"component\":\"view/film/create.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"新增电影信息\",\"icon\":\"\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (61, '2025-04-14 23:33:21.887', '2025-04-14 23:33:21.887', NULL, '127.0.0.1', 'POST', '/menu/addBaseMenu', 200, 65969933, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":0,\"path\":\"list\",\"name\":\"list\",\"hidden\":false,\"parentId\":33,\"component\":\"view/film/list.vue\",\"meta\":{\"title\":\"影视管理\",\"icon\":\"\",\"defaultMenu\":false,\"closeTab\":false,\"keepAlive\":false}}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (62, '2025-04-14 23:35:56.202', '2025-04-14 23:35:56.202', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 34633114, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":35,\"CreatedAt\":\"2025-04-14T23:33:21.834+08:00\",\"UpdatedAt\":\"2025-04-14T23:33:21.834+08:00\",\"parentId\":33,\"path\":\"list\",\"name\":\"list\",\"hidden\":false,\"component\":\"view/film/list.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影视管理\",\"icon\":\"\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (63, '2025-04-14 23:36:47.541', '2025-04-14 23:36:47.541', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 17913939, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (64, '2025-04-14 23:37:11.224', '2025-04-14 23:37:11.224', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 25868371, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (65, '2025-04-14 23:37:25.371', '2025-04-14 23:37:25.371', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 6503595, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (66, '2025-04-14 23:41:27.090', '2025-04-14 23:41:27.090', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 22176669, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":33,\"CreatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"UpdatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"parentId\":0,\"path\":\"list\",\"name\":\"list\",\"hidden\":false,\"component\":\"view/film/list.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影视管理\",\"icon\":\"film\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":7,\"data\":{},\"msg\":\"更新失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (67, '2025-04-14 23:41:56.780', '2025-04-14 23:41:56.780', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 6100314, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":33,\"CreatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"UpdatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"parentId\":0,\"path\":\"list\",\"name\":\"list\",\"hidden\":false,\"component\":\"view/film/list.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影视管理\",\"icon\":\"film\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":7,\"data\":{},\"msg\":\"更新失败\"}', 1);
INSERT INTO `sys_operation_records` VALUES (68, '2025-04-18 23:26:01.293', '2025-04-18 23:26:01.293', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 39060639, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":34,\"CreatedAt\":\"2025-03-23T23:40:17.415+08:00\",\"UpdatedAt\":\"2025-03-23T23:44:20.738+08:00\",\"parentId\":33,\"path\":\"create\",\"name\":\"create\",\"hidden\":true,\"component\":\"view/film/create.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"新增电影信息\",\"icon\":\"\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (69, '2025-04-18 23:26:51.776', '2025-04-18 23:26:51.776', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 12472749, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":34,\"CreatedAt\":\"2025-03-23T23:40:17.415+08:00\",\"UpdatedAt\":\"2025-04-18T23:26:01.27+08:00\",\"parentId\":33,\"path\":\"create\",\"name\":\"create\",\"hidden\":false,\"component\":\"view/film/create.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"新增电影信息\",\"icon\":\"\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (70, '2025-04-18 23:28:27.423', '2025-04-18 23:28:27.423', NULL, '127.0.0.1', 'POST', '/menu/addBaseMenu', 200, 27250586, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":0,\"path\":\"edit\",\"name\":\"edit\",\"hidden\":false,\"parentId\":35,\"component\":\"view/film/edit.vue\",\"meta\":{\"title\":\"修改电影信息\",\"icon\":\"edit\",\"defaultMenu\":false,\"closeTab\":false,\"keepAlive\":false}}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (71, '2025-04-18 23:29:07.470', '2025-04-18 23:29:07.470', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 37647078, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (72, '2025-04-18 23:30:25.649', '2025-04-18 23:30:25.649', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 14762504, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (73, '2025-04-18 23:30:43.473', '2025-04-18 23:30:43.473', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 21397235, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (74, '2025-04-28 22:44:39.785', '2025-04-28 22:44:39.785', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 158949781, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":36,\"CreatedAt\":\"2025-04-18T23:28:27.418+08:00\",\"UpdatedAt\":\"2025-04-18T23:28:27.418+08:00\",\"parentId\":33,\"path\":\"edit\",\"name\":\"edit\",\"hidden\":false,\"component\":\"view/film/edit.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"修改电影信息\",\"icon\":\"edit\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (75, '2025-04-28 22:48:19.087', '2025-04-28 22:48:19.087', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 71736142, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (76, '2025-04-28 22:48:21.822', '2025-04-28 22:48:21.822', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 30297631, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (77, '2025-04-28 22:49:08.233', '2025-04-28 22:49:08.233', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 26124867, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '[超出记录长度]', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (78, '2025-04-28 22:50:01.914', '2025-04-28 22:50:01.914', NULL, '127.0.0.1', 'POST', '/user/setUserAuthority', 200, 28465341, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":8881}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (79, '2025-04-28 22:50:14.389', '2025-04-28 22:50:14.389', NULL, '127.0.0.1', 'POST', '/user/setUserAuthority', 200, 20202835, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":9528}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (80, '2025-04-28 22:50:36.523', '2025-04-28 22:50:36.523', NULL, '127.0.0.1', 'POST', '/user/setUserAuthority', 200, 11150351, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":8881}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (81, '2025-04-28 22:51:10.859', '2025-04-28 22:51:10.859', NULL, '127.0.0.1', 'POST', '/user/setUserAuthority', 200, 9367839, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"authorityId\":888}', '{\"code\":0,\"data\":{},\"msg\":\"修改成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (82, '2025-04-28 23:18:57.245', '2025-04-28 23:18:57.245', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 89127855, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":33,\"CreatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"UpdatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"parentId\":0,\"path\":\"filmmanage\",\"name\":\"filmmanage\",\"hidden\":false,\"component\":\"view/routerHolder.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影视管理\",\"icon\":\"film\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (83, '2025-04-28 23:19:58.535', '2025-04-28 23:19:58.535', NULL, '127.0.0.1', 'POST', '/menu/updateBaseMenu', 200, 17255428, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":33,\"CreatedAt\":\"2025-03-23T22:20:09.572+08:00\",\"UpdatedAt\":\"2025-04-28T23:18:57.199+08:00\",\"parentId\":0,\"path\":\"film\",\"name\":\"film\",\"hidden\":false,\"component\":\"view/routerHolder.vue\",\"sort\":0,\"meta\":{\"activeName\":\"\",\"keepAlive\":false,\"defaultMenu\":false,\"title\":\"影视管理\",\"icon\":\"film\",\"closeTab\":false},\"authoritys\":null,\"children\":null,\"parameters\":[],\"menuBtn\":[]}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (84, '2025-04-30 23:43:07.247', '2025-04-30 23:43:07.247', NULL, '127.0.0.1', 'POST', '/user/admin_register', 200, 176325639, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"userName\":\"xiaoming\",\"password\":\"xiaoming\",\"nickName\":\"xiaoming\",\"headerImg\":\"uploads/file/537834bedb79e70cffcfa2584dcbdaf3_20250429223320.jpg\",\"authorityId\":888,\"authorityIds\":[888,8881],\"enable\":1,\"phone\":\"18883286328\",\"email\":\"wangmin2@gmail.com\"}', '{\"code\":0,\"data\":{\"user\":{\"ID\":3,\"CreatedAt\":\"2025-04-30T23:43:07.195+08:00\",\"UpdatedAt\":\"2025-04-30T23:43:07.195+08:00\",\"uuid\":\"4be83f5f-f1b5-40f7-b30c-6826451f52ea\",\"userName\":\"xiaoming\",\"nickName\":\"xiaoming\",\"headerImg\":\"uploads/file/537834bedb79e70cffcfa2584dcbdaf3_20250429223320.jpg\",\"authorityId\":888,\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":0,\"authorityName\":\"\",\"parentId\":null,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":[{\"CreatedAt\":\"2025-04-30T23:43:07.22+08:00\",\"UpdatedAt\":\"2025-04-30T23:43:07.22+08:00\",\"DeletedAt\":null,\"authorityId\":888,\"authorityName\":\"\",\"parentId\":null,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"},{\"CreatedAt\":\"2025-04-30T23:43:07.22+08:00\",\"UpdatedAt\":\"2025-04-30T23:43:07.22+08:00\",\"DeletedAt\":null,\"authorityId\":8881,\"authorityName\":\"\",\"parentId\":null,\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}],\"phone\":\"18883286328\",\"email\":\"wangmin2@gmail.com\",\"enable\":1,\"originSetting\":null}},\"msg\":\"注册成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (85, '2025-05-01 22:27:36.034', '2025-05-01 22:27:36.034', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 313391483, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":34}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` VALUES (86, '2025-05-01 22:27:39.419', '2025-05-01 22:27:39.419', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 11985664, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', '', '{\"ID\":36}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_params
-- ----------------------------
DROP TABLE IF EXISTS `sys_params`;
CREATE TABLE `sys_params` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数名称',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数键',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数值',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数说明',
  PRIMARY KEY (`id`),
  KEY `idx_sys_params_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_params
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_authority`;
CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_authority` VALUES (1, 888);
INSERT INTO `sys_user_authority` VALUES (1, 8881);
INSERT INTO `sys_user_authority` VALUES (1, 9528);
INSERT INTO `sys_user_authority` VALUES (3, 888);
INSERT INTO `sys_user_authority` VALUES (3, 8881);
COMMIT;

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` bigint(20) unsigned DEFAULT '888' COMMENT '用户角色ID',
  `phone` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint(20) DEFAULT '1' COMMENT '用户是否被冻结 1正常 2冻结',
  `origin_setting` text COLLATE utf8mb4_general_ci COMMENT '配置',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`),
  KEY `idx_sys_users_uuid` (`uuid`),
  KEY `idx_sys_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
BEGIN;
INSERT INTO `sys_users` VALUES (1, '2025-03-09 12:53:26.359', '2025-04-28 22:51:10.855', NULL, 'b84ac952-5d6e-4385-925c-ee5d01f22098', 'admin', '$2a$10$qRLqd5DU0K5/mOQpeTpyFO3sSzSD0yDWMOX/MV3jbFkq36NeGOZta', '系统管理员', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', '#1890ff', 888, '18888888888', '333333333@qq.com', 1, NULL);
INSERT INTO `sys_users` VALUES (2, '2025-03-09 12:53:26.359', '2025-03-23 22:39:54.327', '2025-03-23 22:40:01.023', 'ddb94bf2-47ad-45a6-b310-481c8c9e5269', 'a303176530', '$2a$10$r6pv8o7o3SKanJLJybhXm.QRrGCt.U8P0OB1PJ.uH2F387hA8Q1k6', '用户1', 'dark', 'https:///qmplusimg.henrongyi.top/1572075907logo.png', '#fff', '#1890ff', 888, '17611111111', '333333333@qq.com', 1, NULL);
INSERT INTO `sys_users` VALUES (3, '2025-04-30 23:43:07.195', '2025-04-30 23:43:07.195', NULL, '4be83f5f-f1b5-40f7-b30c-6826451f52ea', 'xiaoming', '$2a$10$muTxxru8/n5BbYlbVthfm.AP.GhlgafILp.PwGCX.z4QRv2uERz8a', 'xiaoming', 'dark', 'uploads/file/537834bedb79e70cffcfa2584dcbdaf3_20250429223320.jpg', '#fff', '#1890ff', 888, '18883286328', 'wangmin2@gmail.com', 1, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
