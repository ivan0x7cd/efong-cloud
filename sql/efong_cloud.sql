/*
 Navicat Premium Data Transfer

 Source Server         : localMysql
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost:3306
 Source Schema         : focus_cloud

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 27/05/2020 14:41:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_authority
-- ----------------------------
DROP TABLE IF EXISTS `base_authority`;
CREATE TABLE `base_authority`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro某权限标志',
  `URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `METHOD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `CONTROLLER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'controller',
  `DES` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_authority
-- ----------------------------
INSERT INTO `base_authority` VALUES ('06ac587d-fd07-1037-86f1-f54783bc2480', '删除用户', 'baseUser_deleteUser', 'base/baseUser/user/{userIds}', 'delete', 'BaseUserController', '', 'melo', '2019-07-21 20:55:40', 'melo', '2019-07-21 20:55:40');
INSERT INTO `base_authority` VALUES ('161331bd-fd07-1037-86f1-f54783bc2480', '用户列表', 'baseUser_userList', 'base/baseUser/user/list', 'get', 'BaseUserController', '', 'melo', '2019-07-21 20:56:06', 'melo', '2019-07-21 20:56:06');
INSERT INTO `base_authority` VALUES ('1a72eb4c-fd05-1037-86f1-f54783bc2480', '新增角色', 'baseRole_saveRole', 'base/baseRole/role', 'post', 'BaseRoleController', '', 'melo', '2019-07-21 20:41:55', 'melo', '2019-07-21 20:41:55');
INSERT INTO `base_authority` VALUES ('258a92eb-fd05-1037-86f1-f54783bc2480', '修改角色', 'baseRole_updateRole', 'base/baseRole/role', 'put', 'BaseRoleController', '', 'melo', '2019-07-21 20:42:13', 'melo', '2019-07-21 20:42:13');
INSERT INTO `base_authority` VALUES ('346dc499-fd05-1037-86f1-f54783bc2480', '删除角色', 'baseRole_deleteRole', 'base/baseRole/role', 'delete', 'BaseRoleController', '', 'melo', '2019-07-21 20:42:38', 'melo', '2019-07-21 20:42:38');
INSERT INTO `base_authority` VALUES ('4bbb0c86-fd06-1037-86f1-f54783bc2480', '首页资源', 'baseResource_indexResource', 'base/baseResource/indexResource', 'get', 'BaseRresourceController', '', 'melo', '2019-07-21 20:50:27', 'melo', '2019-07-21 20:50:27');
INSERT INTO `base_authority` VALUES ('53872bd0-fd05-1037-86f1-f54783bc2480', '给角色授权资源', 'baseRoleResource_authorize', 'base/baseRoleResource/authorize', 'post', 'BaseRoleResourceController', '', 'melo', '2019-07-21 20:43:30', 'melo', '2019-07-21 20:43:30');
INSERT INTO `base_authority` VALUES ('5b8d8848-fd07-1037-86f1-f54783bc2480', '用户详情', 'baseUser_detail', 'base/baseUser/detail', 'get', 'BaseUserController', '', 'melo', '2019-07-21 20:58:03', 'melo', '2019-07-21 20:58:03');
INSERT INTO `base_authority` VALUES ('7de33051-fd06-1037-86f1-f54783bc2480', '某模块资源', 'baseResource_resourcesInModule', 'base/baseResource/indexResource', 'get', 'BaseRresourceController', '', 'melo', '2019-07-21 20:51:51', 'melo', '2019-07-21 20:51:51');
INSERT INTO `base_authority` VALUES ('afecda90-fd07-1037-86f1-f54783bc2480', '给用户授权角色', 'baseUserRole_authorize', 'base/baseUserRole/authoiize', 'post', 'BaseUserRoleController', '', 'melo', '2019-07-21 21:00:24', 'melo', '2019-07-21 21:00:24');
INSERT INTO `base_authority` VALUES ('b4c0c384-fd06-1037-86f1-f54783bc2480', '所有资源树', 'baseResource_resourceTree', 'base/baseResource/resourceTree', 'get', 'BaseRresourceController', '', 'melo', '2019-07-21 20:53:23', 'melo', '2019-07-21 20:53:23');
INSERT INTO `base_authority` VALUES ('c6e57652-fd07-1037-86f1-f54783bc2480', '某用户的角色', 'baseUserRole_roleOfUser', 'base/baseUserRole/roleOfUser', 'get', 'BaseUserRoleController', '', 'melo', '2019-07-21 21:01:03', 'melo', '2019-07-21 21:01:03');
INSERT INTO `base_authority` VALUES ('dd48bf2a-fd06-1037-86f1-f54783bc2480', '创建用户', 'baseUser_createUser', 'base/baseUser/user', 'post', 'BaseUserController', '', 'melo', '2019-07-21 20:54:31', 'melo', '2019-07-21 20:54:31');
INSERT INTO `base_authority` VALUES ('e7891b3e-fd07-1037-86f1-f54783bc2480', '角色列表及此用户拥有的角色', 'baseUserRole_roleAuthorizeList', 'base/baseUserRole/roleList', 'get', 'BaseUserRoleController', '', 'melo', '2019-07-21 21:01:58', 'melo', '2019-07-21 21:01:58');
INSERT INTO `base_authority` VALUES ('ec20e176-fd06-1037-86f1-f54783bc2480', '修改用户', 'baseUser_updateUser', 'base/baseUser/user', 'put', 'BaseUserController', '', 'melo', '2019-07-21 20:54:56', 'melo', '2019-07-21 20:54:56');
INSERT INTO `base_authority` VALUES ('ff3a2aa7-fd04-1037-86f1-f54783bc2480', '角色列表', 'baseRole_roleList', 'base/baseRole/roleList', 'get', 'BaseRoleController', '', 'melo', '2019-07-21 20:41:09', 'melo', '2019-07-21 20:41:09');

-- ----------------------------
-- Table structure for base_image
-- ----------------------------
DROP TABLE IF EXISTS `base_image`;
CREATE TABLE `base_image`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_resource
-- ----------------------------
DROP TABLE IF EXISTS `base_resource`;
CREATE TABLE `base_resource`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TYPE` tinyint(2) NULL DEFAULT NULL COMMENT '1模块module,2菜单，3按钮',
  `CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标志,module开头模块，menu开头菜单,btn开头按钮',
  `PID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父资源id',
  `PATH` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '从根菜单到此菜单的路径,由code组成',
  `SORT` tinyint(2) NULL DEFAULT NULL COMMENT '序号是同级的排列',
  `PICTURE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DES` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `MENU_ROUTE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '如果是菜单资源会有此属性,标志跳转的页面url',
  `CREAT_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_resource
-- ----------------------------
INSERT INTO `base_resource` VALUES ('11881cc6-ee0c-1037-941f-2ba9d11d1d3a', '部门管理', 1, 'module_department _manage', '-1', 'module_department _manage', 3, NULL, '部门管理模块', 'departmentManage.html', 'admin', '2019-07-02 19:23:59', 'admin', '2019-07-02 19:23:59');
INSERT INTO `base_resource` VALUES ('1422c479-f9da-1037-87fb-f895045088b8', '资源管理', 2, 'menu_resource_list', '26fb1fd0-ee0b-1037-941f-2ba9d11d1d3a', 'module_authority_manage/menu_resource_list', 2, NULL, '资源管理列表', 'resourceList.html', 'admin', '2019-07-17 19:56:22', 'admin', '2019-07-17 19:56:22');
INSERT INTO `base_resource` VALUES ('15834162-f2d7-1037-9a77-451bb43a0465', '修改用户', 3, 'btn_user_update', 'a59c887d-f2d6-1037-9a77-451bb43a0465', 'module_user_manage/menu_user_list/btn_user_update', 2, NULL, '修改用户', NULL, 'admin', '2019-07-08 21:47:08', 'admin', '2019-07-08 21:47:10');
INSERT INTO `base_resource` VALUES ('26fb1fd0-ee0b-1037-941f-2ba9d11d1d3a', '权限管理', 1, 'module_authority_manage', '-1', 'module_authority_manage', 2, NULL, '权限管理模块', 'authorityManage.html', 'admin', '2019-07-02 19:17:25', 'admin', '2019-07-02 19:17:25');
INSERT INTO `base_resource` VALUES ('3c9a3cee-f2d8-1037-9a77-451bb43a0465', '删除用户', 3, 'btn_user_delete', 'a59c887d-f2d6-1037-9a77-451bb43a0465', 'module_user_manage/menu_user_list/btn_user_delete', 4, NULL, '删除用户', NULL, 'admin', '2019-07-08 21:47:08', 'admin', '2019-07-08 21:47:08');
INSERT INTO `base_resource` VALUES ('4a9565e6-ee0c-1037-941f-2ba9d11d1213', '通知', 1, 'module_notice_manage', '-1', 'module_notice_manage', 4, NULL, '通知', 'noticeManage.html', 'admin', '2019-07-07 09:14:54', 'admin', '2019-07-07 09:15:00');
INSERT INTO `base_resource` VALUES ('63778271-f2d8-1037-9a77-451bb43a0465', '用户授权', 3, 'btn_user_authorize', 'a59c887d-f2d6-1037-9a77-451bb43a0465', 'module_user_manage/menu_user_list/btn_user_authorize', 5, NULL, '给用户授权', NULL, 'admin', '2019-07-08 21:47:08', 'admin', '2019-07-08 21:47:08');
INSERT INTO `base_resource` VALUES ('64b31eed-f9da-1037-87fb-f895045088b8', '新增角色', 3, 'btn_role_add', 'cb39f08b-f9d9-1037-87fb-f895045088b8', 'module_authority_manage/menu_role_list/btn_role_add', 1, NULL, '新增角色按钮', NULL, 'admin', '2019-07-17 19:58:37', 'admin', '2019-07-17 19:58:37');
INSERT INTO `base_resource` VALUES ('721d1b3c-f9da-1037-87fb-f895045088b8', '修改角色', 3, 'btn_role_update', 'cb39f08b-f9d9-1037-87fb-f895045088b8', 'module_authority_manage/menu_role_list/btn_role_update', 2, NULL, '修改角色按钮', NULL, 'admin', '2019-07-17 19:59:00', 'admin', '2019-07-17 19:59:00');
INSERT INTO `base_resource` VALUES ('7db94c7c-ee0a-1037-941f-2ba9d11d1d3a', '用户管理', 1, 'module_user_manage', '-1', 'module_user_manage', 1, NULL, '用户管理模块', 'userManage.html', 'admin', '2019-07-02 19:12:41', 'admin', '2019-07-02 19:12:41');
INSERT INTO `base_resource` VALUES ('81d1908e-f9da-1037-87fb-f895045088b8', '删除角色', 3, 'btn_role_delete', 'cb39f08b-f9d9-1037-87fb-f895045088b8', 'module_authority_manage/menu_role_list/btn_role_delete', 3, NULL, '删除角色按钮', NULL, 'admin', '2019-07-17 19:59:26', 'admin', '2019-07-17 19:59:26');
INSERT INTO `base_resource` VALUES ('95f53f07-f9da-1037-87fb-f895045088b8', '角色授权', 3, 'btn_role_authorize', 'cb39f08b-f9d9-1037-87fb-f895045088b8', 'module_authority_manage/menu_role_list/btn_role_authorize', 4, NULL, '授权角色按钮', NULL, 'admin', '2019-07-17 20:00:00', 'admin', '2019-07-17 20:00:00');
INSERT INTO `base_resource` VALUES ('a59c887d-f2d6-1037-9a77-451bb43a0465', '用户列表', 2, 'menu_user_list', '7db94c7c-ee0a-1037-941f-2ba9d11d1d3a', 'module_user_manage/menu_user_list', 1, NULL, '用户列表', 'userList.html', 'admin', '2019-07-08 21:45:48', 'admin', '2019-07-08 21:45:53');
INSERT INTO `base_resource` VALUES ('cb39f08b-f9d9-1037-87fb-f895045088b8', '角色管理', 2, 'menu_role_list', '26fb1fd0-ee0b-1037-941f-2ba9d11d1d3a', 'module_authority_manage/menu_role_list', 1, NULL, '角色管理', 'roleList.html', 'admin', '2019-07-17 19:54:20', 'admin', '2019-07-17 19:54:20');
INSERT INTO `base_resource` VALUES ('e6b66c83-f2d6-1037-9a77-451bb43a0465', '新增用户', 3, 'btn_user_add', 'a59c887d-f2d6-1037-9a77-451bb43a0465', 'module_user_manage/menu_user_list/btn_user_add', 1, NULL, '新增用户', NULL, 'admin', '2019-07-08 21:47:08', 'admin', '2019-07-08 21:47:10');
INSERT INTO `base_resource` VALUES ('fd2da964-f2d7-1037-9a77-451bb43a0465', '查看用户', 3, 'btn_user_detail', 'a59c887d-f2d6-1037-9a77-451bb43a0465', 'module_user_manage/menu_user_list/btn_user_detail', 3, NULL, '用户详情', NULL, 'admin', '2019-07-08 21:47:08', 'admin', '2019-07-08 21:47:08');
INSERT INTO `base_resource` VALUES ('fsdfewfwefewfwefsdaf324234234234234', '首页页面', 4, 'page_index', '-1', 'page_index', 1, NULL, '首页页面', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for base_resource_authority_r
-- ----------------------------
DROP TABLE IF EXISTS `base_resource_authority_r`;
CREATE TABLE `base_resource_authority_r`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RESOURCE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AUTHORITY_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_Reference_7`(`RESOURCE_ID`) USING BTREE,
  INDEX `Fk_Authority`(`AUTHORITY_ID`) USING BTREE,
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `base_resource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_Authority` FOREIGN KEY (`AUTHORITY_ID`) REFERENCES `base_authority` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源权限关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_resource_authority_r
-- ----------------------------
INSERT INTO `base_resource_authority_r` VALUES ('01162888-fe9b-1037-8555-ed25f14ba24d', '7db94c7c-ee0a-1037-941f-2ba9d11d1d3a', '161331bd-fd07-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('10ee19ab-fe9b-1037-8555-ed25f14ba24d', '81d1908e-f9da-1037-87fb-f895045088b8', '346dc499-fd05-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('13400306-fe99-1037-8555-ed25f14ba24d', '15834162-f2d7-1037-9a77-451bb43a0465', 'ec20e176-fd06-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('3241056f-fe9b-1037-8555-ed25f14ba24d', '95f53f07-f9da-1037-87fb-f895045088b8', '53872bd0-fd05-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('35cbf620-fe99-1037-8555-ed25f14ba24d', '15834162-f2d7-1037-9a77-451bb43a0465', '5b8d8848-fd07-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('364b4909-fe9a-1037-8555-ed25f14ba24d', 'fsdfewfwefewfwefsdaf324234234234234', '4bbb0c86-fd06-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('42f54fbe-fe9b-1037-8555-ed25f14ba24d', 'a59c887d-f2d6-1037-9a77-451bb43a0465', '161331bd-fd07-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('49df49ad-fe9a-1037-8555-ed25f14ba24d', 'fsdfewfwefewfwefsdaf324234234234234', '7de33051-fd06-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('58d7b3c7-fe9b-1037-8555-ed25f14ba24d', 'cb39f08b-f9d9-1037-87fb-f895045088b8', 'ff3a2aa7-fd04-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('69c39a50-fe9b-1037-8555-ed25f14ba24d', 'e6b66c83-f2d6-1037-9a77-451bb43a0465', 'dd48bf2a-fd06-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('7f569210-fe9b-1037-8555-ed25f14ba24d', 'fd2da964-f2d7-1037-9a77-451bb43a0465', '5b8d8848-fd07-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('a8e8aecf-fe9a-1037-8555-ed25f14ba24d', '3c9a3cee-f2d8-1037-9a77-451bb43a0465', '06ac587d-fd07-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('b63e8e96-fe9a-1037-8555-ed25f14ba24d', '63778271-f2d8-1037-9a77-451bb43a0465', 'afecda90-fd07-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('c8642a87-fe9a-1037-8555-ed25f14ba24d', '64b31eed-f9da-1037-87fb-f895045088b8', '1a72eb4c-fd05-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('de88dd48-fe9a-1037-8555-ed25f14ba24d', '721d1b3c-f9da-1037-87fb-f895045088b8', '258a92eb-fd05-1037-86f1-f54783bc2480');
INSERT INTO `base_resource_authority_r` VALUES ('ee9b341e-fe98-1037-8555-ed25f14ba24d', '1422c479-f9da-1037-87fb-f895045088b8', 'b4c0c384-fd06-1037-86f1-f54783bc2480');

-- ----------------------------
-- Table structure for base_role
-- ----------------------------
DROP TABLE IF EXISTS `base_role`;
CREATE TABLE `base_role`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标志，用在程序中判断角色',
  `TYPE` tinyint(2) NULL DEFAULT NULL COMMENT '内置角色1，自定义角色2',
  `SORT` tinyint(3) NULL DEFAULT NULL COMMENT '序号',
  `STATUS` tinyint(2) NULL DEFAULT NULL COMMENT '状态,0是删除，1是正常',
  `DES` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `CREAT_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_role
-- ----------------------------
INSERT INTO `base_role` VALUES ('1', '管理员', 'administrator', 1, 1, 1, NULL, 'melo', NULL, 'melo', NULL);
INSERT INTO `base_role` VALUES ('77fe5872-5e2d-40c3-a42b-db1768f51ef0', '单位管理员', 'unit', 2, 3, 1, 'sdff单位管理员', '123', '2019-07-17 21:18:43', '1', '2019-07-17 21:51:04');
INSERT INTO `base_role` VALUES ('d705ad81-98dd-4550-a985-860a36bd1e02', '部门管理', 'department', 2, 4, 2, '21e', '123', '2019-07-17 21:50:40', '1', '2019-07-17 21:50:40');
INSERT INTO `base_role` VALUES ('sdfefwertfe3br1234124412312', '普通用户', 'number', 1, 2, 1, '普通用户', 'melo', '2019-07-23 20:50:54', 'melo', '2019-07-23 20:50:58');

-- ----------------------------
-- Table structure for base_role_business_r
-- ----------------------------
DROP TABLE IF EXISTS `base_role_business_r`;
CREATE TABLE `base_role_business_r`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色表主键',
  `CLASS_PK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务表主键，比如通知某个发布类型主键',
  `CLASS_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务名称,比如通知某个发布类型名称',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_Reference_8`(`ROLE_ID`) USING BTREE,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`ROLE_ID`) REFERENCES `base_role` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色业务关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_role_resource_r
-- ----------------------------
DROP TABLE IF EXISTS `base_role_resource_r`;
CREATE TABLE `base_role_resource_r`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RESOURCE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_Reference_4`(`ROLE_ID`) USING BTREE,
  INDEX `FK_Reference_5`(`RESOURCE_ID`) USING BTREE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`ROLE_ID`) REFERENCES `base_role` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `base_resource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色资源关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_role_resource_r
-- ----------------------------
INSERT INTO `base_role_resource_r` VALUES ('1170bacd-fe9a-1037-8555-ed25f14ba24d', 'sdfefwertfe3br1234124412312', 'fsdfewfwefewfwefsdaf324234234234234');
INSERT INTO `base_role_resource_r` VALUES ('a93868de-a866-4f07-bae8-f71925625f54', '1', '11881cc6-ee0c-1037-941f-2ba9d11d1d3a');

-- ----------------------------
-- Table structure for base_user
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USER_TYPE` tinyint(2) NULL DEFAULT NULL COMMENT '预留给明确不同用户的场景，比如学生、老师,工作人员和客户，肯定不会有重复角色',
  `LOGIN_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `REAL_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `NICK_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `PASSWORD` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `SEX` bit(1) NULL DEFAULT NULL,
  `IMAGE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像图片id',
  `SUPERMAN` bit(1) NULL DEFAULT NULL COMMENT '超级管理员',
  `PHONE_NUMBER` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `SIGNATURE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `EMAIL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREAT_DATE` datetime(0) NULL DEFAULT NULL,
  `UPDATE_USER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UPDATE_DATE` datetime(0) NULL DEFAULT NULL,
  `STATUS` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_user
-- ----------------------------
INSERT INTO `base_user` VALUES ('1', 1, 'admin', 'administrator', 'admin', '5d5b6cd779e22ab3c194c6f6933a7465', b'1', NULL, b'1', NULL, 'www.efong.com', '983435687@qq.com', NULL, '2019-07-10 11:42:42', NULL, NULL, 1);

-- ----------------------------
-- Table structure for base_user_role_r
-- ----------------------------
DROP TABLE IF EXISTS `base_user_role_r`;
CREATE TABLE `base_user_role_r`  (
  `ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USER_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `YW_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务角色表id,业务角色才写',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_Reference_2`(`USER_ID`) USING BTREE,
  INDEX `FK_Reference_3`(`ROLE_ID`) USING BTREE,
  INDEX `FK_Reference_9`(`YW_ID`) USING BTREE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`USER_ID`) REFERENCES `base_user` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`ROLE_ID`) REFERENCES `base_role` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`YW_ID`) REFERENCES `base_role_business_r` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_user_role_r
-- ----------------------------
INSERT INTO `base_user_role_r` VALUES ('48b541e3-9f3a-46a4-9b89-ef7d0399662b', '1', '1', NULL);

SET FOREIGN_KEY_CHECKS = 1;
