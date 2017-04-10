/*
Navicat MySQL Data Transfer

Source Server         : 172.16.18.88
Source Server Version : 50712
Source Host           : 172.16.18.88:3306
Source Database       : daily_test

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-03-31 11:09:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(100) DEFAULT NULL COMMENT '系统url',
  `parentId` int(10) DEFAULT NULL COMMENT ' 父id 关联sys_menu.id',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除，1=已删除',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `rank` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `actions` varchar(500) DEFAULT '0' COMMENT '注册Action 按钮|分隔',
  `relevance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '', null, '0', '2012-12-23 17:21:58', '2015-11-03 08:21:25', '0', '', '1');
INSERT INTO `sys_menu` VALUES ('2', '菜单管理', '/sysMenu/menu.do', '1', '0', '2012-12-23 18:18:32', '2015-08-08 15:02:50', '0', 'dataList.do', '1/2');
INSERT INTO `sys_menu` VALUES ('6', '用户管理', '/sysUser/list.do', '1', '0', '2012-12-23 22:15:33', '2015-08-13 10:48:43', '0', 'dataList.do', '1/6');
INSERT INTO `sys_menu` VALUES ('7', '角色管理', '/sysRole/role.do', '1', '0', '2012-12-24 22:17:51', '2015-07-21 14:23:32', '0', 'dataList.do|/sysMenu/getMenuTree.do', '1/7');
INSERT INTO `sys_menu` VALUES ('11', '代码自动生成', '', null, '0', '2015-07-21 16:27:10', null, '-1', '', '');
INSERT INTO `sys_menu` VALUES ('16', 'java代码自动生成', '/sysCreatejava/list.do', '11', '0', '2015-08-12 17:00:01', '2015-08-12 17:57:03', '0', 'dataList.do', null);
INSERT INTO `sys_menu` VALUES ('46', '统计报表', '', null, '1', '2015-10-11 10:58:02', '2015-11-03 08:20:43', '4', '', null);
INSERT INTO `sys_menu` VALUES ('47', '事项管理', null, null, '0', '2016-11-22 08:32:12', null, '8', null, null);
INSERT INTO `sys_menu` VALUES ('49', '请假管理', '/tbLeave/list.do', '47', '0', '2016-11-22 08:37:14', null, '5', null, null);
INSERT INTO `sys_menu` VALUES ('50', '调休管理', '/tbOff/list.do', '47', '1', '2016-11-22 08:38:09', null, '3', null, null);
INSERT INTO `sys_menu` VALUES ('51', '外出管理', '/tbOut/list.do', '47', '0', '2016-11-22 08:38:39', null, '2', null, null);
INSERT INTO `sys_menu` VALUES ('52', '加班管理', '/tbOvertime/list.do', '47', '1', '2016-11-22 08:39:18', null, '4', null, null);
INSERT INTO `sys_menu` VALUES ('58', '信息管理', null, null, '0', '2016-11-25 16:09:25', null, '9', null, null);
INSERT INTO `sys_menu` VALUES ('59', '消息提醒', '/tbMsg/list.do', '58', '0', '2016-11-25 16:10:03', null, '5', null, null);
INSERT INTO `sys_menu` VALUES ('60', '晨报管理', '/tbDay/list.do', '58', '0', '2016-11-25 16:10:44', null, '6', null, null);
INSERT INTO `sys_menu` VALUES ('61', '周计划总结管理', '/tbPlan/list.do', '58', '0', '2016-11-25 16:11:09', null, '3', null, null);
INSERT INTO `sys_menu` VALUES ('62', '月计划总结管理', '/tbPlan/monthlist.do', '58', '0', '2016-12-05 09:19:02', null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('63', '调用单管理', '/tbDispatch/list.do', '58', '0', '2016-12-07 08:18:54', null, '4', null, null);
INSERT INTO `sys_menu` VALUES ('66', '人员管理', null, null, '0', '2016-12-15 16:36:48', null, '7', null, null);
INSERT INTO `sys_menu` VALUES ('68', '分组管理', '/tbGroup/list.do', '66', '0', '2016-12-15 16:37:56', null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('72', '项目管理', '/tbProject/list.do', '66', '0', '2016-12-15 16:38:47', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('75', '统计管理', null, null, '0', '2017-01-10 08:31:05', null, '5', null, null);
INSERT INTO `sys_menu` VALUES ('76', '晨报报表', '/tbDay/reportinglist.do', '75', '0', '2017-01-10 08:31:40', null, '9', null, null);
INSERT INTO `sys_menu` VALUES ('77', '周计划总结报表', '/tbPlan/weeklist.do', '75', '0', '2017-01-10 08:32:19', null, '8', null, null);
INSERT INTO `sys_menu` VALUES ('78', '月计划总结报表', '/tbPlan/monthweeklist.do', '75', '0', '2017-01-10 08:32:44', null, '7', null, null);
INSERT INTO `sys_menu` VALUES ('79', '项目统计', '/tbProject/deptcount.do', '75', '0', '2017-01-10 08:33:21', null, '6', null, null);
INSERT INTO `sys_menu` VALUES ('80', '部门汇总', '/tbLeave/deptlist.do', '75', '0', '2017-01-10 15:51:06', null, '5', null, null);
INSERT INTO `sys_menu` VALUES ('81', '项目考核', '/tbPlan/projectassessment.do', '75', '0', '2017-01-13 08:22:10', null, '4', null, null);
INSERT INTO `sys_menu` VALUES ('82', '字典管理', '/sysDict/list.do', '1', '0', '2017-02-18 09:14:30', null, '0', null, null);
INSERT INTO `sys_menu` VALUES ('83', '会议纪要', '/tbMeeting/list.do', '47', '0', '2017-03-10 16:57:37', null, '6', null, null);
INSERT INTO `sys_menu` VALUES ('84', '平时打分', '/tbScore/list.do', '47', '0', '2017-03-15 08:23:46', null, '10', null, null);
INSERT INTO `sys_menu` VALUES ('85', '审核管理', null, null, '1', '2017-03-18 09:52:38', null, '10', null, null);
INSERT INTO `sys_menu` VALUES ('86', '审核管理', '..', '47', '1', '2017-03-18 09:53:38', null, '11', null, null);
INSERT INTO `sys_menu` VALUES ('87', '审核管理', null, null, '0', '2017-03-18 13:49:08', null, '10', null, null);
INSERT INTO `sys_menu` VALUES ('88', '变更审核', '/tbCheck/list.do', '87', '0', '2017-03-18 13:49:32', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('89', '变更审核', '‘’‘’', '87', '1', '2017-03-18 13:49:37', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('90', '变更审核', '‘’‘’', '87', '1', '2017-03-18 13:49:41', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('91', '月底打分', '/monthScoreRecord/list.do', '47', '0', '2017-03-20 14:02:04', null, '9', null, null);
INSERT INTO `sys_menu` VALUES ('92', '月底打分', '/monthScoreRecord/list.do', '66', '1', '2017-03-22 14:32:45', null, '10', null, null);
INSERT INTO `sys_menu` VALUES ('93', '分数考评', '/tbScoreSum/list.do', '58', '0', '2017-03-23 11:05:58', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('94', '加班申请', '/overtimeRecord/list.do', '47', '0', '2017-03-27 17:08:52', null, '100', null, null);
INSERT INTO `sys_menu` VALUES ('95', '调休申请', '/offtimeRecord/list.do', '47', '0', '2017-03-27 17:09:38', null, '99', null, null);
INSERT INTO `sys_menu` VALUES ('96', '加班审核', '/overtimeCheck/list.do', '47', '0', '2017-03-27 17:20:37', null, '98', null, null);
INSERT INTO `sys_menu` VALUES ('97', '调休审核', '/offtimeCheck/list.do', '47', '0', '2017-03-27 17:21:16', null, '97', null, null);
