/*
Navicat MySQL Data Transfer

Source Server         : local_kpi
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : ywxt

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-12-22 17:13:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `os_approval`
-- ----------------------------
DROP TABLE IF EXISTS `os_approval`;
CREATE TABLE `os_approval` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `approvel` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `step` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a4rvtn47dvppyaafm1vfnqryl` (`step`),
  CONSTRAINT `FK_a4rvtn47dvppyaafm1vfnqryl` FOREIGN KEY (`step`) REFERENCES `os_historystep` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_approval
-- ----------------------------
INSERT INTO `os_approval` VALUES ('1', null, '提交运行单', '2015-12-22 10:37:10', '26');
INSERT INTO `os_approval` VALUES ('2', null, '提交运行单', '2015-12-22 11:03:09', null);
INSERT INTO `os_approval` VALUES ('3', null, '提交运行单', '2015-12-22 11:07:09', null);
INSERT INTO `os_approval` VALUES ('4', '发送', '提交运行单', '2015-12-22 11:09:07', '32');
INSERT INTO `os_approval` VALUES ('5', '发送', '提交运行单', '2015-12-22 11:09:30', '34');
INSERT INTO `os_approval` VALUES ('6', '发送', '提交运行单', '2015-12-22 11:18:00', '36');
INSERT INTO `os_approval` VALUES ('7', '发送', 'sdfds', '2015-12-22 11:51:58', '37');
INSERT INTO `os_approval` VALUES ('8', '发送', '123213', '2015-12-22 11:53:49', '35');
INSERT INTO `os_approval` VALUES ('9', '发送', 'sdfsd', '2015-12-22 11:54:32', '33');
INSERT INTO `os_approval` VALUES ('10', '发送', '提交运行单', '2015-12-22 11:58:45', '41');
INSERT INTO `os_approval` VALUES ('11', '发送', '提交维护单', '2015-12-22 12:12:06', '43');
INSERT INTO `os_approval` VALUES ('12', '退回', '神鼎飞丹砂', '2015-12-22 12:25:02', '44');
INSERT INTO `os_approval` VALUES ('13', '发送', '1232', '2015-12-22 12:25:06', '45');
INSERT INTO `os_approval` VALUES ('14', '提交', '提交缺陷单', '2015-12-22 14:05:59', '51');
INSERT INTO `os_approval` VALUES ('15', '确认', '苏定方苏定方', '2015-12-22 14:24:21', null);
INSERT INTO `os_approval` VALUES ('16', '提交', '提交缺陷单', '2015-12-22 14:25:10', '54');
INSERT INTO `os_approval` VALUES ('17', '确认', '撒旦法', '2015-12-22 14:25:45', null);
INSERT INTO `os_approval` VALUES ('18', '提交', '提交缺陷单', '2015-12-22 14:28:00', '57');
INSERT INTO `os_approval` VALUES ('19', '确认', '撒旦法', '2015-12-22 14:28:30', null);
INSERT INTO `os_approval` VALUES ('20', '提交', '提交缺陷单', '2015-12-22 14:30:18', '60');
INSERT INTO `os_approval` VALUES ('21', '确认', '水电费是否', '2015-12-22 14:30:48', null);
INSERT INTO `os_approval` VALUES ('22', '提交', '提交缺陷单', '2015-12-22 14:32:08', '63');
INSERT INTO `os_approval` VALUES ('23', '确认', '是 ', '2015-12-22 14:36:32', '64');
INSERT INTO `os_approval` VALUES ('24', '提交', '提交缺陷单', '2015-12-22 14:37:11', '66');
INSERT INTO `os_approval` VALUES ('25', '确认', '撒旦法', '2015-12-22 14:37:28', '67');
INSERT INTO `os_approval` VALUES ('26', '提交', '提交缺陷单', '2015-12-22 14:47:40', '69');
INSERT INTO `os_approval` VALUES ('27', '确认', '撒旦法撒旦法', '2015-12-22 14:47:50', '70');
INSERT INTO `os_approval` VALUES ('28', '提交', '提交缺陷单', '2015-12-22 14:50:02', '72');
INSERT INTO `os_approval` VALUES ('29', '确认', '撒旦法撒旦法', '2015-12-22 14:50:08', '73');
INSERT INTO `os_approval` VALUES ('30', '确认分配', '2323123', '2015-12-22 14:50:14', '74');
INSERT INTO `os_approval` VALUES ('31', '处理完成', '123213', '2015-12-22 14:50:26', '75');
INSERT INTO `os_approval` VALUES ('32', '验收不通过', '312323', '2015-12-22 14:50:32', '76');
INSERT INTO `os_approval` VALUES ('33', '处理完成', '123', '2015-12-22 14:50:34', '77');
INSERT INTO `os_approval` VALUES ('34', '验收完成', '', '2015-12-22 14:50:36', '78');
INSERT INTO `os_approval` VALUES ('35', '工单提交', '提交缺陷单', '2015-12-22 15:52:32', '80');
INSERT INTO `os_approval` VALUES ('36', '审批通过', '12321', '2015-12-22 16:00:18', '81');
INSERT INTO `os_approval` VALUES ('37', '工单确认分配', '123123', '2015-12-22 16:00:24', '82');
INSERT INTO `os_approval` VALUES ('38', '工单处理完成', '12323', '2015-12-22 16:00:30', '83');
INSERT INTO `os_approval` VALUES ('39', '验收不通过', '12312', '2015-12-22 16:00:35', '84');
INSERT INTO `os_approval` VALUES ('40', '工单处理完成', '12312', '2015-12-22 16:00:38', '85');
INSERT INTO `os_approval` VALUES ('41', '工单验收完成', '123', '2015-12-22 16:00:41', '86');
INSERT INTO `os_approval` VALUES ('42', '工单提交', '提交工作单', '2015-12-22 16:02:59', '88');
INSERT INTO `os_approval` VALUES ('43', '审批通过', '1', '2015-12-22 16:05:00', '89');
INSERT INTO `os_approval` VALUES ('44', '工单确认分配', '1232', '2015-12-22 16:05:04', '90');
INSERT INTO `os_approval` VALUES ('45', '工单处理完成', '12323', '2015-12-22 16:05:09', '91');
INSERT INTO `os_approval` VALUES ('46', '工单验收完成', '23212', '2015-12-22 16:05:19', '92');
INSERT INTO `os_approval` VALUES ('47', '确认分配', '收费', '2015-12-22 16:08:55', '68');
INSERT INTO `os_approval` VALUES ('48', '处理完成', '的f', '2015-12-22 16:09:00', '94');
INSERT INTO `os_approval` VALUES ('49', '验收完成', '', '2015-12-22 16:09:01', '95');
INSERT INTO `os_approval` VALUES ('50', '提交', '提交缺陷单', '2015-12-22 16:24:32', '97');
INSERT INTO `os_approval` VALUES ('51', '提交', '提交缺陷单', '2015-12-22 16:27:43', '99');
INSERT INTO `os_approval` VALUES ('52', '确认', '11', '2015-12-22 16:31:10', '100');
INSERT INTO `os_approval` VALUES ('53', '确认分配', '123123', '2015-12-22 16:31:13', '101');
INSERT INTO `os_approval` VALUES ('54', '处理完成', '1231', '2015-12-22 16:31:16', '102');
INSERT INTO `os_approval` VALUES ('55', '验收完成', '12323', '2015-12-22 16:31:24', '103');
INSERT INTO `os_approval` VALUES ('56', '工单提交', '提交工作单', '2015-12-22 16:35:53', '105');
INSERT INTO `os_approval` VALUES ('57', '审批通过', '123123', '2015-12-22 16:36:10', '106');
INSERT INTO `os_approval` VALUES ('58', '工单确认分配', '123', '2015-12-22 16:36:14', '107');
INSERT INTO `os_approval` VALUES ('59', '工单处理完成', '132131', '2015-12-22 16:36:21', '108');
INSERT INTO `os_approval` VALUES ('60', '工单验收完成', '12312312', '2015-12-22 16:36:26', '109');
INSERT INTO `os_approval` VALUES ('61', '发送', '提交维护单', '2015-12-22 16:38:16', '111');
INSERT INTO `os_approval` VALUES ('62', '工单提交', '提交工作单', '2015-12-22 16:38:20', '113');
INSERT INTO `os_approval` VALUES ('63', '审批通过', '1', '2015-12-22 16:38:27', '114');
INSERT INTO `os_approval` VALUES ('64', '确认', '12321', '2015-12-22 16:48:42', '98');

-- ----------------------------
-- Table structure for `os_currentstep`
-- ----------------------------
DROP TABLE IF EXISTS `os_currentstep`;
CREATE TABLE `os_currentstep` (
  `ID` bigint(20) NOT NULL,
  `ENTRY_ID` bigint(20) DEFAULT NULL,
  `STEP_ID` int(11) DEFAULT NULL,
  `ACTION_ID` int(11) DEFAULT NULL,
  `OWNER` varchar(35) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(40) DEFAULT NULL,
  `CALLER` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENTRY_ID` (`ENTRY_ID`),
  KEY `OWNER` (`OWNER`),
  KEY `CALLER` (`CALLER`),
  CONSTRAINT `os_currentstep_ibfk_1` FOREIGN KEY (`ENTRY_ID`) REFERENCES `os_wfentry` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_currentstep
-- ----------------------------
INSERT INTO `os_currentstep` VALUES ('2', '2', '1', null, '1', '2015-12-21 15:38:44', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('3', '8', '1', null, '1', '2015-12-22 09:18:08', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('4', '9', '1', null, '1', '2015-12-22 09:50:56', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('5', '10', '1', '11', '1', '2015-12-22 10:13:43', '2015-12-22 10:13:43', null, 'Finished', '1');
INSERT INTO `os_currentstep` VALUES ('6', '11', '1', '11', '1', '2015-12-22 10:14:32', '2015-12-22 10:14:32', null, 'Finished', '1');
INSERT INTO `os_currentstep` VALUES ('8', '12', '2', null, '1', '2015-12-22 10:14:53', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('10', '13', '2', null, '1', '2015-12-22 10:15:46', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('12', '14', '2', null, '1', '2015-12-22 10:17:37', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('14', '15', '2', null, '1', '2015-12-22 10:29:13', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('16', '16', '2', null, '1', '2015-12-22 10:30:49', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('27', '20', '2', null, '1', '2015-12-22 10:36:59', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('29', '21', '2', null, '1', '2015-12-22 11:03:01', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('31', '22', '2', null, '1', '2015-12-22 11:03:40', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('42', '26', '2', null, '1', '2015-12-22 11:58:45', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('46', '27', '2', null, '1', '2015-12-22 12:25:06', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('47', '28', '1', null, '1', '2015-12-22 14:02:32', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('48', '29', '1', null, '1', '2015-12-22 14:02:56', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('49', '30', '1', null, '1', '2015-12-22 14:03:40', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('50', '31', '1', null, '1', '2015-12-22 14:04:39', null, null, 'Underway', null);
INSERT INTO `os_currentstep` VALUES ('53', '32', '3', null, '1', '2015-12-22 14:24:21', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('56', '33', '3', null, '1', '2015-12-22 14:25:41', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('59', '34', '3', null, '1', '2015-12-22 14:28:29', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('62', '35', '3', null, '1', '2015-12-22 14:30:39', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('65', '36', '3', null, '1', '2015-12-22 14:32:29', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('71', '38', '3', null, '1', '2015-12-22 14:47:50', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('112', '45', '2', null, '1', '2015-12-22 16:38:16', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('115', '46', '3', null, '1', '2015-12-22 16:38:27', null, null, 'Queued', null);
INSERT INTO `os_currentstep` VALUES ('116', '42', '3', null, '1', '2015-12-22 16:48:42', null, null, 'Queued', null);

-- ----------------------------
-- Table structure for `os_currentstep_prev`
-- ----------------------------
DROP TABLE IF EXISTS `os_currentstep_prev`;
CREATE TABLE `os_currentstep_prev` (
  `ID` bigint(20) NOT NULL,
  `PREVIOUS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`),
  KEY `ID` (`ID`),
  KEY `PREVIOUS_ID` (`PREVIOUS_ID`),
  CONSTRAINT `os_currentstep_prev_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `os_currentstep` (`ID`),
  CONSTRAINT `os_currentstep_prev_ibfk_2` FOREIGN KEY (`PREVIOUS_ID`) REFERENCES `os_historystep` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_currentstep_prev
-- ----------------------------
INSERT INTO `os_currentstep_prev` VALUES ('8', '7');
INSERT INTO `os_currentstep_prev` VALUES ('10', '9');
INSERT INTO `os_currentstep_prev` VALUES ('12', '11');
INSERT INTO `os_currentstep_prev` VALUES ('14', '13');
INSERT INTO `os_currentstep_prev` VALUES ('16', '15');
INSERT INTO `os_currentstep_prev` VALUES ('27', '26');
INSERT INTO `os_currentstep_prev` VALUES ('29', '28');
INSERT INTO `os_currentstep_prev` VALUES ('31', '30');
INSERT INTO `os_currentstep_prev` VALUES ('42', '41');
INSERT INTO `os_currentstep_prev` VALUES ('46', '45');
INSERT INTO `os_currentstep_prev` VALUES ('53', '52');
INSERT INTO `os_currentstep_prev` VALUES ('56', '55');
INSERT INTO `os_currentstep_prev` VALUES ('59', '58');
INSERT INTO `os_currentstep_prev` VALUES ('62', '61');
INSERT INTO `os_currentstep_prev` VALUES ('65', '64');
INSERT INTO `os_currentstep_prev` VALUES ('71', '70');
INSERT INTO `os_currentstep_prev` VALUES ('112', '111');
INSERT INTO `os_currentstep_prev` VALUES ('115', '114');
INSERT INTO `os_currentstep_prev` VALUES ('116', '98');

-- ----------------------------
-- Table structure for `os_entryids`
-- ----------------------------
DROP TABLE IF EXISTS `os_entryids`;
CREATE TABLE `os_entryids` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_entryids
-- ----------------------------
INSERT INTO `os_entryids` VALUES ('1');
INSERT INTO `os_entryids` VALUES ('2');
INSERT INTO `os_entryids` VALUES ('8');
INSERT INTO `os_entryids` VALUES ('9');
INSERT INTO `os_entryids` VALUES ('10');
INSERT INTO `os_entryids` VALUES ('11');
INSERT INTO `os_entryids` VALUES ('12');
INSERT INTO `os_entryids` VALUES ('13');
INSERT INTO `os_entryids` VALUES ('14');
INSERT INTO `os_entryids` VALUES ('15');
INSERT INTO `os_entryids` VALUES ('16');
INSERT INTO `os_entryids` VALUES ('17');
INSERT INTO `os_entryids` VALUES ('18');
INSERT INTO `os_entryids` VALUES ('19');
INSERT INTO `os_entryids` VALUES ('20');
INSERT INTO `os_entryids` VALUES ('21');
INSERT INTO `os_entryids` VALUES ('22');
INSERT INTO `os_entryids` VALUES ('23');
INSERT INTO `os_entryids` VALUES ('24');
INSERT INTO `os_entryids` VALUES ('25');
INSERT INTO `os_entryids` VALUES ('26');
INSERT INTO `os_entryids` VALUES ('27');
INSERT INTO `os_entryids` VALUES ('28');
INSERT INTO `os_entryids` VALUES ('29');
INSERT INTO `os_entryids` VALUES ('30');
INSERT INTO `os_entryids` VALUES ('31');
INSERT INTO `os_entryids` VALUES ('32');
INSERT INTO `os_entryids` VALUES ('33');
INSERT INTO `os_entryids` VALUES ('34');
INSERT INTO `os_entryids` VALUES ('35');
INSERT INTO `os_entryids` VALUES ('36');
INSERT INTO `os_entryids` VALUES ('37');
INSERT INTO `os_entryids` VALUES ('38');
INSERT INTO `os_entryids` VALUES ('39');
INSERT INTO `os_entryids` VALUES ('40');
INSERT INTO `os_entryids` VALUES ('41');
INSERT INTO `os_entryids` VALUES ('42');
INSERT INTO `os_entryids` VALUES ('43');
INSERT INTO `os_entryids` VALUES ('44');
INSERT INTO `os_entryids` VALUES ('45');
INSERT INTO `os_entryids` VALUES ('46');

-- ----------------------------
-- Table structure for `os_group`
-- ----------------------------
DROP TABLE IF EXISTS `os_group`;
CREATE TABLE `os_group` (
  `GROUPNAME` varchar(20) NOT NULL,
  PRIMARY KEY (`GROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_group
-- ----------------------------

-- ----------------------------
-- Table structure for `os_historystep`
-- ----------------------------
DROP TABLE IF EXISTS `os_historystep`;
CREATE TABLE `os_historystep` (
  `ID` bigint(20) NOT NULL,
  `ENTRY_ID` bigint(20) DEFAULT NULL,
  `STEP_ID` int(11) DEFAULT NULL,
  `ACTION_ID` int(11) DEFAULT NULL,
  `OWNER` varchar(35) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(40) DEFAULT NULL,
  `CALLER` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENTRY_ID` (`ENTRY_ID`),
  KEY `OWNER` (`OWNER`),
  KEY `CALLER` (`CALLER`),
  CONSTRAINT `os_historystep_ibfk_1` FOREIGN KEY (`ENTRY_ID`) REFERENCES `os_wfentry` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_historystep
-- ----------------------------
INSERT INTO `os_historystep` VALUES ('7', '12', '1', '11', '1', '2015-12-22 10:14:53', '2015-12-22 10:14:53', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('9', '13', '1', '11', '1', '2015-12-22 10:15:46', '2015-12-22 10:15:46', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('11', '14', '1', '11', '1', '2015-12-22 10:17:36', '2015-12-22 10:17:37', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('13', '15', '1', '11', '1', '2015-12-22 10:29:12', '2015-12-22 10:29:13', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('15', '16', '1', '11', '1', '2015-12-22 10:30:49', '2015-12-22 10:30:49', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('17', '17', '1', '11', '1', '2015-12-22 10:31:20', '2015-12-22 10:31:20', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('18', '17', '2', '21', '1', '2015-12-22 10:31:20', '2015-12-22 10:31:23', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('19', '17', '5', '21', '1', '2015-12-22 10:31:23', '2015-12-22 10:31:23', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('20', '18', '1', '11', '1', '2015-12-22 10:32:57', '2015-12-22 10:32:57', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('21', '18', '2', '21', '1', '2015-12-22 10:32:57', '2015-12-22 10:33:03', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('22', '18', '5', '21', '1', '2015-12-22 10:33:03', '2015-12-22 10:33:03', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('23', '19', '1', '11', '1', '2015-12-22 10:34:48', '2015-12-22 10:34:48', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('24', '19', '2', '21', '1', '2015-12-22 10:34:48', '2015-12-22 10:34:50', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('25', '19', '5', '21', '1', '2015-12-22 10:34:50', '2015-12-22 10:34:50', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('26', '20', '1', '11', '1', '2015-12-22 10:36:59', '2015-12-22 10:36:59', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('28', '21', '1', '11', '1', '2015-12-22 11:03:01', '2015-12-22 11:03:01', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('30', '22', '1', '11', '1', '2015-12-22 11:03:40', '2015-12-22 11:03:40', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('32', '23', '1', '11', '1', '2015-12-22 11:09:06', '2015-12-22 11:09:06', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('33', '23', '2', '21', '1', '2015-12-22 11:09:06', '2015-12-22 11:54:32', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('34', '24', '1', '11', '1', '2015-12-22 11:09:13', '2015-12-22 11:09:14', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('35', '24', '2', '21', '1', '2015-12-22 11:09:14', '2015-12-22 11:53:49', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('36', '25', '1', '11', '1', '2015-12-22 11:18:00', '2015-12-22 11:18:00', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('37', '25', '2', '21', '1', '2015-12-22 11:18:00', '2015-12-22 11:51:58', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('38', '25', '5', '21', '1', '2015-12-22 11:51:58', '2015-12-22 11:51:58', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('39', '24', '5', '21', '1', '2015-12-22 11:53:49', '2015-12-22 11:53:49', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('40', '23', '5', '21', '1', '2015-12-22 11:54:32', '2015-12-22 11:54:32', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('41', '26', '1', '11', '1', '2015-12-22 11:58:45', '2015-12-22 11:58:45', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('43', '27', '1', '11', '1', '2015-12-22 12:12:05', '2015-12-22 12:12:05', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('44', '27', '2', '22', '1', '2015-12-22 12:12:05', '2015-12-22 12:25:01', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('45', '27', '1', '11', '1', '2015-12-22 12:25:01', '2015-12-22 12:25:06', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('51', '32', '1', '11', '1', '2015-12-22 14:05:53', '2015-12-22 14:05:53', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('52', '32', '2', '21', '1', '2015-12-22 14:05:53', '2015-12-22 14:24:21', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('54', '33', '1', '11', '1', '2015-12-22 14:25:10', '2015-12-22 14:25:10', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('55', '33', '2', '21', '1', '2015-12-22 14:25:10', '2015-12-22 14:25:41', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('57', '34', '1', '11', '1', '2015-12-22 14:28:00', '2015-12-22 14:28:00', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('58', '34', '2', '21', '1', '2015-12-22 14:28:00', '2015-12-22 14:28:29', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('60', '35', '1', '11', '1', '2015-12-22 14:30:16', '2015-12-22 14:30:16', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('61', '35', '2', '21', '1', '2015-12-22 14:30:16', '2015-12-22 14:30:39', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('63', '36', '1', '11', '1', '2015-12-22 14:32:06', '2015-12-22 14:32:06', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('64', '36', '2', '21', '1', '2015-12-22 14:32:06', '2015-12-22 14:32:29', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('66', '37', '1', '11', '1', '2015-12-22 14:37:10', '2015-12-22 14:37:10', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('67', '37', '2', '21', '1', '2015-12-22 14:37:10', '2015-12-22 14:37:26', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('68', '37', '3', '31', '1', '2015-12-22 14:37:26', '2015-12-22 16:08:55', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('69', '38', '1', '11', '1', '2015-12-22 14:47:40', '2015-12-22 14:47:40', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('70', '38', '2', '21', '1', '2015-12-22 14:47:40', '2015-12-22 14:47:50', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('72', '39', '1', '11', '1', '2015-12-22 14:50:02', '2015-12-22 14:50:02', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('73', '39', '2', '21', '1', '2015-12-22 14:50:02', '2015-12-22 14:50:08', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('74', '39', '3', '31', '1', '2015-12-22 14:50:08', '2015-12-22 14:50:14', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('75', '39', '4', '41', '1', '2015-12-22 14:50:14', '2015-12-22 14:50:26', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('76', '39', '5', '52', '1', '2015-12-22 14:50:26', '2015-12-22 14:50:32', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('77', '39', '4', '41', '1', '2015-12-22 14:50:32', '2015-12-22 14:50:34', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('78', '39', '5', '51', '1', '2015-12-22 14:50:34', '2015-12-22 14:50:36', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('79', '39', '6', '51', '1', '2015-12-22 14:50:36', '2015-12-22 14:50:36', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('80', '40', '1', '11', '1', '2015-12-22 15:52:32', '2015-12-22 15:52:32', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('81', '40', '2', '21', '1', '2015-12-22 15:52:32', '2015-12-22 16:00:18', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('82', '40', '3', '31', '1', '2015-12-22 16:00:18', '2015-12-22 16:00:24', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('83', '40', '4', '41', '1', '2015-12-22 16:00:24', '2015-12-22 16:00:30', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('84', '40', '5', '52', '1', '2015-12-22 16:00:30', '2015-12-22 16:00:35', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('85', '40', '4', '41', '1', '2015-12-22 16:00:35', '2015-12-22 16:00:38', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('86', '40', '5', '51', '1', '2015-12-22 16:00:38', '2015-12-22 16:00:41', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('87', '40', '6', '51', '', '2015-12-22 16:00:41', '2015-12-22 16:00:41', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('88', '41', '1', '11', '1', '2015-12-22 16:02:59', '2015-12-22 16:02:59', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('89', '41', '2', '21', '1', '2015-12-22 16:02:59', '2015-12-22 16:05:00', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('90', '41', '3', '31', '1', '2015-12-22 16:05:00', '2015-12-22 16:05:04', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('91', '41', '4', '41', '1', '2015-12-22 16:05:04', '2015-12-22 16:05:09', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('92', '41', '5', '51', '1', '2015-12-22 16:05:09', '2015-12-22 16:05:19', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('93', '41', '6', '51', '', '2015-12-22 16:05:19', '2015-12-22 16:05:19', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('94', '37', '4', '41', '1', '2015-12-22 16:08:55', '2015-12-22 16:09:00', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('95', '37', '5', '51', '1', '2015-12-22 16:09:00', '2015-12-22 16:09:01', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('96', '37', '6', '51', '', '2015-12-22 16:09:01', '2015-12-22 16:09:01', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('97', '42', '1', '11', '1', '2015-12-22 16:24:32', '2015-12-22 16:24:32', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('98', '42', '2', '21', '1', '2015-12-22 16:24:32', '2015-12-22 16:48:42', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('99', '43', '1', '11', '1', '2015-12-22 16:27:43', '2015-12-22 16:27:43', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('100', '43', '2', '21', '1', '2015-12-22 16:27:43', '2015-12-22 16:31:10', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('101', '43', '3', '31', '1', '2015-12-22 16:31:10', '2015-12-22 16:31:13', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('102', '43', '4', '41', '1', '2015-12-22 16:31:13', '2015-12-22 16:31:16', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('103', '43', '5', '51', '1', '2015-12-22 16:31:16', '2015-12-22 16:31:24', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('104', '43', '6', '51', '', '2015-12-22 16:31:24', '2015-12-22 16:31:24', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('105', '44', '1', '11', '1', '2015-12-22 16:35:53', '2015-12-22 16:35:53', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('106', '44', '2', '21', '1', '2015-12-22 16:35:53', '2015-12-22 16:36:10', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('107', '44', '3', '31', '1', '2015-12-22 16:36:10', '2015-12-22 16:36:14', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('108', '44', '4', '41', '1', '2015-12-22 16:36:14', '2015-12-22 16:36:21', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('109', '44', '5', '51', '1', '2015-12-22 16:36:21', '2015-12-22 16:36:26', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('110', '44', '6', '51', '', '2015-12-22 16:36:26', '2015-12-22 16:36:26', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('111', '45', '1', '11', '1', '2015-12-22 16:38:16', '2015-12-22 16:38:16', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('113', '46', '1', '11', '1', '2015-12-22 16:38:20', '2015-12-22 16:38:20', null, 'Finished', '1');
INSERT INTO `os_historystep` VALUES ('114', '46', '2', '21', '1', '2015-12-22 16:38:20', '2015-12-22 16:38:27', null, 'Finished', '1');

-- ----------------------------
-- Table structure for `os_historystep_prev`
-- ----------------------------
DROP TABLE IF EXISTS `os_historystep_prev`;
CREATE TABLE `os_historystep_prev` (
  `ID` bigint(20) NOT NULL,
  `PREVIOUS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`),
  KEY `ID` (`ID`),
  KEY `PREVIOUS_ID` (`PREVIOUS_ID`),
  CONSTRAINT `os_historystep_prev_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `os_historystep` (`ID`),
  CONSTRAINT `os_historystep_prev_ibfk_2` FOREIGN KEY (`PREVIOUS_ID`) REFERENCES `os_historystep` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_historystep_prev
-- ----------------------------
INSERT INTO `os_historystep_prev` VALUES ('18', '17');
INSERT INTO `os_historystep_prev` VALUES ('19', '18');
INSERT INTO `os_historystep_prev` VALUES ('21', '20');
INSERT INTO `os_historystep_prev` VALUES ('22', '21');
INSERT INTO `os_historystep_prev` VALUES ('24', '23');
INSERT INTO `os_historystep_prev` VALUES ('25', '24');
INSERT INTO `os_historystep_prev` VALUES ('33', '32');
INSERT INTO `os_historystep_prev` VALUES ('35', '34');
INSERT INTO `os_historystep_prev` VALUES ('37', '36');
INSERT INTO `os_historystep_prev` VALUES ('38', '37');
INSERT INTO `os_historystep_prev` VALUES ('39', '35');
INSERT INTO `os_historystep_prev` VALUES ('40', '33');
INSERT INTO `os_historystep_prev` VALUES ('44', '43');
INSERT INTO `os_historystep_prev` VALUES ('45', '44');
INSERT INTO `os_historystep_prev` VALUES ('52', '51');
INSERT INTO `os_historystep_prev` VALUES ('55', '54');
INSERT INTO `os_historystep_prev` VALUES ('58', '57');
INSERT INTO `os_historystep_prev` VALUES ('61', '60');
INSERT INTO `os_historystep_prev` VALUES ('64', '63');
INSERT INTO `os_historystep_prev` VALUES ('67', '66');
INSERT INTO `os_historystep_prev` VALUES ('68', '67');
INSERT INTO `os_historystep_prev` VALUES ('70', '69');
INSERT INTO `os_historystep_prev` VALUES ('73', '72');
INSERT INTO `os_historystep_prev` VALUES ('74', '73');
INSERT INTO `os_historystep_prev` VALUES ('75', '74');
INSERT INTO `os_historystep_prev` VALUES ('76', '75');
INSERT INTO `os_historystep_prev` VALUES ('77', '76');
INSERT INTO `os_historystep_prev` VALUES ('78', '77');
INSERT INTO `os_historystep_prev` VALUES ('79', '78');
INSERT INTO `os_historystep_prev` VALUES ('81', '80');
INSERT INTO `os_historystep_prev` VALUES ('82', '81');
INSERT INTO `os_historystep_prev` VALUES ('83', '82');
INSERT INTO `os_historystep_prev` VALUES ('84', '83');
INSERT INTO `os_historystep_prev` VALUES ('85', '84');
INSERT INTO `os_historystep_prev` VALUES ('86', '85');
INSERT INTO `os_historystep_prev` VALUES ('87', '86');
INSERT INTO `os_historystep_prev` VALUES ('89', '88');
INSERT INTO `os_historystep_prev` VALUES ('90', '89');
INSERT INTO `os_historystep_prev` VALUES ('91', '90');
INSERT INTO `os_historystep_prev` VALUES ('92', '91');
INSERT INTO `os_historystep_prev` VALUES ('93', '92');
INSERT INTO `os_historystep_prev` VALUES ('94', '68');
INSERT INTO `os_historystep_prev` VALUES ('95', '94');
INSERT INTO `os_historystep_prev` VALUES ('96', '95');
INSERT INTO `os_historystep_prev` VALUES ('98', '97');
INSERT INTO `os_historystep_prev` VALUES ('100', '99');
INSERT INTO `os_historystep_prev` VALUES ('101', '100');
INSERT INTO `os_historystep_prev` VALUES ('102', '101');
INSERT INTO `os_historystep_prev` VALUES ('103', '102');
INSERT INTO `os_historystep_prev` VALUES ('104', '103');
INSERT INTO `os_historystep_prev` VALUES ('106', '105');
INSERT INTO `os_historystep_prev` VALUES ('107', '106');
INSERT INTO `os_historystep_prev` VALUES ('108', '107');
INSERT INTO `os_historystep_prev` VALUES ('109', '108');
INSERT INTO `os_historystep_prev` VALUES ('110', '109');
INSERT INTO `os_historystep_prev` VALUES ('114', '113');

-- ----------------------------
-- Table structure for `os_membership`
-- ----------------------------
DROP TABLE IF EXISTS `os_membership`;
CREATE TABLE `os_membership` (
  `USERNAME` varchar(20) NOT NULL,
  `GROUPNAME` varchar(20) NOT NULL,
  PRIMARY KEY (`USERNAME`,`GROUPNAME`),
  KEY `USERNAME` (`USERNAME`),
  KEY `GROUPNAME` (`GROUPNAME`),
  CONSTRAINT `os_membership_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `os_user` (`USERNAME`),
  CONSTRAINT `os_membership_ibfk_2` FOREIGN KEY (`GROUPNAME`) REFERENCES `os_group` (`GROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_membership
-- ----------------------------

-- ----------------------------
-- Table structure for `os_propertyentry`
-- ----------------------------
DROP TABLE IF EXISTS `os_propertyentry`;
CREATE TABLE `os_propertyentry` (
  `GLOBAL_KEY` varchar(100) NOT NULL,
  `ITEM_KEY` varchar(20) NOT NULL,
  `ITEM_TYPE` tinyint(4) DEFAULT NULL,
  `STRING_VALUE` varchar(255) DEFAULT NULL,
  `DATE_VALUE` datetime DEFAULT NULL,
  `DATA_VALUE` blob,
  `FLOAT_VALUE` float DEFAULT NULL,
  `NUMBER_VALUE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`GLOBAL_KEY`,`ITEM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_propertyentry
-- ----------------------------

-- ----------------------------
-- Table structure for `os_stepids`
-- ----------------------------
DROP TABLE IF EXISTS `os_stepids`;
CREATE TABLE `os_stepids` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_stepids
-- ----------------------------
INSERT INTO `os_stepids` VALUES ('1');
INSERT INTO `os_stepids` VALUES ('2');
INSERT INTO `os_stepids` VALUES ('3');
INSERT INTO `os_stepids` VALUES ('4');
INSERT INTO `os_stepids` VALUES ('5');
INSERT INTO `os_stepids` VALUES ('6');
INSERT INTO `os_stepids` VALUES ('7');
INSERT INTO `os_stepids` VALUES ('8');
INSERT INTO `os_stepids` VALUES ('9');
INSERT INTO `os_stepids` VALUES ('10');
INSERT INTO `os_stepids` VALUES ('11');
INSERT INTO `os_stepids` VALUES ('12');
INSERT INTO `os_stepids` VALUES ('13');
INSERT INTO `os_stepids` VALUES ('14');
INSERT INTO `os_stepids` VALUES ('15');
INSERT INTO `os_stepids` VALUES ('16');
INSERT INTO `os_stepids` VALUES ('17');
INSERT INTO `os_stepids` VALUES ('18');
INSERT INTO `os_stepids` VALUES ('19');
INSERT INTO `os_stepids` VALUES ('20');
INSERT INTO `os_stepids` VALUES ('21');
INSERT INTO `os_stepids` VALUES ('22');
INSERT INTO `os_stepids` VALUES ('23');
INSERT INTO `os_stepids` VALUES ('24');
INSERT INTO `os_stepids` VALUES ('25');
INSERT INTO `os_stepids` VALUES ('26');
INSERT INTO `os_stepids` VALUES ('27');
INSERT INTO `os_stepids` VALUES ('28');
INSERT INTO `os_stepids` VALUES ('29');
INSERT INTO `os_stepids` VALUES ('30');
INSERT INTO `os_stepids` VALUES ('31');
INSERT INTO `os_stepids` VALUES ('32');
INSERT INTO `os_stepids` VALUES ('33');
INSERT INTO `os_stepids` VALUES ('34');
INSERT INTO `os_stepids` VALUES ('35');
INSERT INTO `os_stepids` VALUES ('36');
INSERT INTO `os_stepids` VALUES ('37');
INSERT INTO `os_stepids` VALUES ('38');
INSERT INTO `os_stepids` VALUES ('39');
INSERT INTO `os_stepids` VALUES ('40');
INSERT INTO `os_stepids` VALUES ('41');
INSERT INTO `os_stepids` VALUES ('42');
INSERT INTO `os_stepids` VALUES ('43');
INSERT INTO `os_stepids` VALUES ('44');
INSERT INTO `os_stepids` VALUES ('45');
INSERT INTO `os_stepids` VALUES ('46');
INSERT INTO `os_stepids` VALUES ('47');
INSERT INTO `os_stepids` VALUES ('48');
INSERT INTO `os_stepids` VALUES ('49');
INSERT INTO `os_stepids` VALUES ('50');
INSERT INTO `os_stepids` VALUES ('51');
INSERT INTO `os_stepids` VALUES ('52');
INSERT INTO `os_stepids` VALUES ('53');
INSERT INTO `os_stepids` VALUES ('54');
INSERT INTO `os_stepids` VALUES ('55');
INSERT INTO `os_stepids` VALUES ('56');
INSERT INTO `os_stepids` VALUES ('57');
INSERT INTO `os_stepids` VALUES ('58');
INSERT INTO `os_stepids` VALUES ('59');
INSERT INTO `os_stepids` VALUES ('60');
INSERT INTO `os_stepids` VALUES ('61');
INSERT INTO `os_stepids` VALUES ('62');
INSERT INTO `os_stepids` VALUES ('63');
INSERT INTO `os_stepids` VALUES ('64');
INSERT INTO `os_stepids` VALUES ('65');
INSERT INTO `os_stepids` VALUES ('66');
INSERT INTO `os_stepids` VALUES ('67');
INSERT INTO `os_stepids` VALUES ('68');
INSERT INTO `os_stepids` VALUES ('69');
INSERT INTO `os_stepids` VALUES ('70');
INSERT INTO `os_stepids` VALUES ('71');
INSERT INTO `os_stepids` VALUES ('72');
INSERT INTO `os_stepids` VALUES ('73');
INSERT INTO `os_stepids` VALUES ('74');
INSERT INTO `os_stepids` VALUES ('75');
INSERT INTO `os_stepids` VALUES ('76');
INSERT INTO `os_stepids` VALUES ('77');
INSERT INTO `os_stepids` VALUES ('78');
INSERT INTO `os_stepids` VALUES ('79');
INSERT INTO `os_stepids` VALUES ('80');
INSERT INTO `os_stepids` VALUES ('81');
INSERT INTO `os_stepids` VALUES ('82');
INSERT INTO `os_stepids` VALUES ('83');
INSERT INTO `os_stepids` VALUES ('84');
INSERT INTO `os_stepids` VALUES ('85');
INSERT INTO `os_stepids` VALUES ('86');
INSERT INTO `os_stepids` VALUES ('87');
INSERT INTO `os_stepids` VALUES ('88');
INSERT INTO `os_stepids` VALUES ('89');
INSERT INTO `os_stepids` VALUES ('90');
INSERT INTO `os_stepids` VALUES ('91');
INSERT INTO `os_stepids` VALUES ('92');
INSERT INTO `os_stepids` VALUES ('93');
INSERT INTO `os_stepids` VALUES ('94');
INSERT INTO `os_stepids` VALUES ('95');
INSERT INTO `os_stepids` VALUES ('96');
INSERT INTO `os_stepids` VALUES ('97');
INSERT INTO `os_stepids` VALUES ('98');
INSERT INTO `os_stepids` VALUES ('99');
INSERT INTO `os_stepids` VALUES ('100');
INSERT INTO `os_stepids` VALUES ('101');
INSERT INTO `os_stepids` VALUES ('102');
INSERT INTO `os_stepids` VALUES ('103');
INSERT INTO `os_stepids` VALUES ('104');
INSERT INTO `os_stepids` VALUES ('105');
INSERT INTO `os_stepids` VALUES ('106');
INSERT INTO `os_stepids` VALUES ('107');
INSERT INTO `os_stepids` VALUES ('108');
INSERT INTO `os_stepids` VALUES ('109');
INSERT INTO `os_stepids` VALUES ('110');
INSERT INTO `os_stepids` VALUES ('111');
INSERT INTO `os_stepids` VALUES ('112');
INSERT INTO `os_stepids` VALUES ('113');
INSERT INTO `os_stepids` VALUES ('114');
INSERT INTO `os_stepids` VALUES ('115');
INSERT INTO `os_stepids` VALUES ('116');

-- ----------------------------
-- Table structure for `os_user`
-- ----------------------------
DROP TABLE IF EXISTS `os_user`;
CREATE TABLE `os_user` (
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORDHASH` mediumtext,
  PRIMARY KEY (`USERNAME`),
  KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_user
-- ----------------------------

-- ----------------------------
-- Table structure for `os_wfentry`
-- ----------------------------
DROP TABLE IF EXISTS `os_wfentry`;
CREATE TABLE `os_wfentry` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(60) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_wfentry
-- ----------------------------
INSERT INTO `os_wfentry` VALUES ('1', 'runlog', '0');
INSERT INTO `os_wfentry` VALUES ('2', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('8', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('9', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('10', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('11', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('12', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('13', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('14', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('15', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('16', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('17', 'runlog', '4');
INSERT INTO `os_wfentry` VALUES ('18', 'runlog', '4');
INSERT INTO `os_wfentry` VALUES ('19', 'runlog', '4');
INSERT INTO `os_wfentry` VALUES ('20', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('21', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('22', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('23', 'runlog', '4');
INSERT INTO `os_wfentry` VALUES ('24', 'runlog', '4');
INSERT INTO `os_wfentry` VALUES ('25', 'runlog', '4');
INSERT INTO `os_wfentry` VALUES ('26', 'runlog', '1');
INSERT INTO `os_wfentry` VALUES ('27', 'fixlog', '1');
INSERT INTO `os_wfentry` VALUES ('28', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('29', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('30', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('31', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('32', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('33', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('34', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('35', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('36', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('37', 'bug', '4');
INSERT INTO `os_wfentry` VALUES ('38', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('39', 'bug', '4');
INSERT INTO `os_wfentry` VALUES ('40', 'work', '4');
INSERT INTO `os_wfentry` VALUES ('41', 'work', '4');
INSERT INTO `os_wfentry` VALUES ('42', 'bug', '1');
INSERT INTO `os_wfentry` VALUES ('43', 'bug', '4');
INSERT INTO `os_wfentry` VALUES ('44', 'work', '4');
INSERT INTO `os_wfentry` VALUES ('45', 'fixlog', '1');
INSERT INTO `os_wfentry` VALUES ('46', 'work', '1');

-- ----------------------------
-- Table structure for `os_wfentry_extend`
-- ----------------------------
DROP TABLE IF EXISTS `os_wfentry_extend`;
CREATE TABLE `os_wfentry_extend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `degree` int(11) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `creater` bigint(20) DEFAULT NULL,
  `entry_id` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `wfentry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5kkqu2dlksr57g43ffy5fn2x` (`creater`),
  KEY `FK_36jm5arknwxwqiq9dtntwxdi3` (`entry_id`),
  KEY `FK_chimscttnt3arfeaomkygjuad` (`wfentry`),
  CONSTRAINT `FK_chimscttnt3arfeaomkygjuad` FOREIGN KEY (`wfentry`) REFERENCES `os_wfentry` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of os_wfentry_extend
-- ----------------------------
INSERT INTO `os_wfentry_extend` VALUES ('1', null, null, 'admin的 [运行日志单]', '1', null, null, null);
INSERT INTO `os_wfentry_extend` VALUES ('2', null, null, 'admin的 [运行日志单]', '1', null, null, '18');
INSERT INTO `os_wfentry_extend` VALUES ('3', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 10:34:49', '19');
INSERT INTO `os_wfentry_extend` VALUES ('4', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 10:36:59', '20');
INSERT INTO `os_wfentry_extend` VALUES ('5', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 11:03:02', '21');
INSERT INTO `os_wfentry_extend` VALUES ('6', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 11:03:41', '22');
INSERT INTO `os_wfentry_extend` VALUES ('7', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 11:09:06', '23');
INSERT INTO `os_wfentry_extend` VALUES ('8', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 11:09:16', '24');
INSERT INTO `os_wfentry_extend` VALUES ('9', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 11:18:00', '25');
INSERT INTO `os_wfentry_extend` VALUES ('10', null, null, 'admin的 [运行日志单]', '1', null, '2015-12-22 11:58:45', '26');
INSERT INTO `os_wfentry_extend` VALUES ('11', null, null, 'admin的 [维护记录单]', '1', null, '2015-12-22 12:12:05', '27');
INSERT INTO `os_wfentry_extend` VALUES ('12', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:05:55', '32');
INSERT INTO `os_wfentry_extend` VALUES ('13', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:25:10', '33');
INSERT INTO `os_wfentry_extend` VALUES ('14', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:28:00', '34');
INSERT INTO `os_wfentry_extend` VALUES ('15', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:30:18', '35');
INSERT INTO `os_wfentry_extend` VALUES ('16', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:32:07', '36');
INSERT INTO `os_wfentry_extend` VALUES ('17', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:37:10', '37');
INSERT INTO `os_wfentry_extend` VALUES ('18', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:47:40', '38');
INSERT INTO `os_wfentry_extend` VALUES ('19', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 14:50:02', '39');
INSERT INTO `os_wfentry_extend` VALUES ('20', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 15:52:32', '40');
INSERT INTO `os_wfentry_extend` VALUES ('21', null, null, 'admin的 [工作单]', '1', null, '2015-12-22 16:02:59', '41');
INSERT INTO `os_wfentry_extend` VALUES ('22', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 16:24:32', '42');
INSERT INTO `os_wfentry_extend` VALUES ('23', null, null, 'admin的 [缺陷单]', '1', null, '2015-12-22 16:27:43', '43');
INSERT INTO `os_wfentry_extend` VALUES ('24', null, null, 'admin的 [工作单]', '1', null, '2015-12-22 16:35:53', '44');
INSERT INTO `os_wfentry_extend` VALUES ('25', null, null, 'admin的 [维护记录单]', '1', null, '2015-12-22 16:38:16', '45');
INSERT INTO `os_wfentry_extend` VALUES ('26', null, null, 'admin的 [工作单]', '1', null, '2015-12-22 16:38:20', '46');

-- ----------------------------
-- Table structure for `t_adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `t_adminuser`;
CREATE TABLE `t_adminuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `role1` varchar(255) DEFAULT NULL,
  `role2` varchar(255) DEFAULT NULL,
  `role3` varchar(255) DEFAULT NULL,
  `role4` varchar(255) DEFAULT NULL,
  `role5` varchar(255) DEFAULT NULL,
  `role6` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `puser` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f4y76ry7vgbb7syjcnah062q2` (`puser`),
  CONSTRAINT `FK_f4y76ry7vgbb7syjcnah062q2` FOREIGN KEY (`puser`) REFERENCES `t_adminuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adminuser
-- ----------------------------
INSERT INTO `t_adminuser` VALUES ('1', null, 'admin', null, '123456', 'admin1', '', null, null, null, null, null, null, '', null, null, '1');

-- ----------------------------
-- Table structure for `t_bug`
-- ----------------------------
DROP TABLE IF EXISTS `t_bug`;
CREATE TABLE `t_bug` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bugstate` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `creater` bigint(20) DEFAULT NULL,
  `wfentry` bigint(20) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `checkresult` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_q6jwcbnsesaptbr39nky0hngu` (`category`),
  KEY `FK_iuaa99pvwdspnhklk6viyfdii` (`creater`),
  KEY `FK_o4tn66dogkojn8inmoc6v2c7f` (`wfentry`),
  CONSTRAINT `FK_iuaa99pvwdspnhklk6viyfdii` FOREIGN KEY (`creater`) REFERENCES `t_adminuser` (`id`),
  CONSTRAINT `FK_o4tn66dogkojn8inmoc6v2c7f` FOREIGN KEY (`wfentry`) REFERENCES `os_wfentry` (`ID`),
  CONSTRAINT `FK_q6jwcbnsesaptbr39nky0hngu` FOREIGN KEY (`category`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bug
-- ----------------------------
INSERT INTO `t_bug` VALUES ('1', '新建', null, null, '苏定方苏定方', '防守打法说的', '高', '运行缺陷', null, '1', '38', null, null);
INSERT INTO `t_bug` VALUES ('2', '新建', null, null, '撒旦法说的发送端', '', '高', '运行缺陷', null, '1', '39', null, null);
INSERT INTO `t_bug` VALUES ('3', '新建', '2015-12-07 00:00:00', null, '123123', '123123', '高', '运行缺陷', null, '1', '42', null, null);
INSERT INTO `t_bug` VALUES ('4', '新建', null, null, '', '', '高', '运行缺陷', null, '1', '43', '1231', '12323');

-- ----------------------------
-- Table structure for `t_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `jxxx` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `pzxx` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sbgg` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fixlog`
-- ----------------------------
DROP TABLE IF EXISTS `t_fixlog`;
CREATE TABLE `t_fixlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categorystate` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `logstate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `creater` bigint(20) DEFAULT NULL,
  `bugstate` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `wfentry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5nlfd0bb4t8vv8jilat6rnv1v` (`category`),
  KEY `FK_apesr3jw4wwmtdey13tkf7bsy` (`creater`),
  KEY `FK_f7007mj28wthiv66okx667f20` (`wfentry`),
  CONSTRAINT `FK_f7007mj28wthiv66okx667f20` FOREIGN KEY (`wfentry`) REFERENCES `os_wfentry` (`ID`),
  CONSTRAINT `FK_5nlfd0bb4t8vv8jilat6rnv1v` FOREIGN KEY (`category`) REFERENCES `t_category` (`id`),
  CONSTRAINT `FK_apesr3jw4wwmtdey13tkf7bsy` FOREIGN KEY (`creater`) REFERENCES `t_adminuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_fixlog
-- ----------------------------
INSERT INTO `t_fixlog` VALUES ('1', '正常', '2015-12-08 00:00:00', '新建', 'sdf', '苏定方苏定方', null, '1', null, null, null, null, '27');
INSERT INTO `t_fixlog` VALUES ('2', null, '2015-11-30 00:00:00', null, '123213', '123', null, '1', '新建', null, '高', '运行缺陷', null);
INSERT INTO `t_fixlog` VALUES ('3', null, '2015-11-30 00:00:00', null, '123213', '123', null, '1', '新建', null, '高', '运行缺陷', null);
INSERT INTO `t_fixlog` VALUES ('4', null, null, null, '12321', '123', null, '1', '新建', null, '高', '运行缺陷', null);
INSERT INTO `t_fixlog` VALUES ('5', null, null, null, '12321', '123', null, '1', '新建', null, '高', '运行缺陷', null);
INSERT INTO `t_fixlog` VALUES ('6', null, null, null, '12321', '123', null, '1', '新建', null, '高', '运行缺陷', '32');
INSERT INTO `t_fixlog` VALUES ('7', null, null, null, '神鼎飞丹砂f', '撒旦法是地方', null, '1', '新建', null, '高', '运行缺陷', '33');
INSERT INTO `t_fixlog` VALUES ('8', null, null, null, '地方改单费个电饭锅d', '', null, '1', '新建', null, '高', '运行缺陷', '34');
INSERT INTO `t_fixlog` VALUES ('9', null, null, null, '', '水电费是否阿斯顿发', null, '1', '新建', null, '高', '运行缺陷', '35');
INSERT INTO `t_fixlog` VALUES ('10', null, null, null, '', '是顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', null, '1', '新建', null, '高', '运行缺陷', '36');
INSERT INTO `t_fixlog` VALUES ('11', null, null, null, '', '撒旦法第三方说的佛挡杀佛撒旦法', null, '1', '新建', null, '高', '运行缺陷', '37');
INSERT INTO `t_fixlog` VALUES ('12', '正常', null, '新建', '', '', null, '1', null, null, null, null, '45');

-- ----------------------------
-- Table structure for `t_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `carid` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `crate_date` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `need_date` varchar(255) DEFAULT NULL,
  `noticeremark` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `workremark` varchar(255) DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `creater` bigint(20) DEFAULT NULL,
  `worker` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r6xjwkq1ksnr9kabgcjeuuj3g` (`category`),
  KEY `FK_e4cw62qylpe4w6eh6ifu1vycm` (`creater`),
  KEY `FK_4a7tb10g7v94yj84ny9yhc0km` (`worker`),
  CONSTRAINT `FK_4a7tb10g7v94yj84ny9yhc0km` FOREIGN KEY (`worker`) REFERENCES `t_adminuser` (`id`),
  CONSTRAINT `FK_e4cw62qylpe4w6eh6ifu1vycm` FOREIGN KEY (`creater`) REFERENCES `t_adminuser` (`id`),
  CONSTRAINT `FK_r6xjwkq1ksnr9kabgcjeuuj3g` FOREIGN KEY (`category`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item
-- ----------------------------

-- ----------------------------
-- Table structure for `t_runlog`
-- ----------------------------
DROP TABLE IF EXISTS `t_runlog`;
CREATE TABLE `t_runlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `logstate` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `creater` bigint(20) DEFAULT NULL,
  `wfentry` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cwuwop54yv7ol3g9e6n6txmmk` (`creater`),
  KEY `FK_iq61ueuyne5sscjvc9wqkcbtx` (`wfentry`),
  CONSTRAINT `FK_iq61ueuyne5sscjvc9wqkcbtx` FOREIGN KEY (`wfentry`) REFERENCES `os_wfentry` (`ID`),
  CONSTRAINT `FK_cwuwop54yv7ol3g9e6n6txmmk` FOREIGN KEY (`creater`) REFERENCES `t_adminuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_runlog
-- ----------------------------
INSERT INTO `t_runlog` VALUES ('1', '2015-12-08 00:00:00', '123123', '新建', '123', '123', '异常', '1', null);
INSERT INTO `t_runlog` VALUES ('2', '2015-12-08 00:00:00', '123123', '新建', '123', '123', '异常', '1', null);
INSERT INTO `t_runlog` VALUES ('3', null, '111111111111', '新建', '1111111', '11111', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('4', null, '111111111111', '新建', '1111111', '11111', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('5', null, '111111111', '新建', '11111111111', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('6', null, '', '新建', '111111', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('7', '2015-12-22 00:00:00', '11111', '新建', '111111111', '1', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('8', null, '', '新建', '2323', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('9', null, '213', '新建', '', '1123', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('10', null, '12321', '新建', '12321', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('11', null, '12321', '新建', '12321', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('12', null, '12321', '新建', '12321', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('13', null, '21321', '新建', '321321', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('14', null, '21321', '新建', '321321', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('15', null, '', '新建', '1', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('16', null, '', '新建', '11', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('17', null, '', '新建', '11', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('18', null, '213', '新建', '1232123123', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('19', null, '213', '新建', '1232123123', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('20', null, '213', '新建', '1232123123', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('21', null, '', '新建', '123121', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('22', null, '', '新建', '', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('23', null, '', '新建', '123121', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('24', null, '', '新建', '', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('25', null, '123', '新建', '23', '', '正常', '1', null);
INSERT INTO `t_runlog` VALUES ('26', null, '撒旦法', '新建', '撒旦法', 'sdf', '正常', '1', '26');
INSERT INTO `t_runlog` VALUES ('27', null, '撒旦法', '新建', '撒旦法', 'sdf', '正常', null, null);

-- ----------------------------
-- Table structure for `t_wiki`
-- ----------------------------
DROP TABLE IF EXISTS `t_wiki`;
CREATE TABLE `t_wiki` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creater` varchar(255) DEFAULT NULL,
  `crete_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wiki
-- ----------------------------

-- ----------------------------
-- Table structure for `t_work`
-- ----------------------------
DROP TABLE IF EXISTS `t_work`;
CREATE TABLE `t_work` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `workstate` varchar(255) DEFAULT NULL,
  `category` bigint(20) DEFAULT NULL,
  `creater` bigint(20) DEFAULT NULL,
  `wfentry` bigint(20) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `checkresult` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_810iifijsojjw11qg7hrnm3ii` (`category`),
  KEY `FK_kth6u4ytroduujsqpo310ec6d` (`creater`),
  KEY `FK_9odxbvu09a8qpxg8fmx2wav6a` (`wfentry`),
  CONSTRAINT `FK_810iifijsojjw11qg7hrnm3ii` FOREIGN KEY (`category`) REFERENCES `t_category` (`id`),
  CONSTRAINT `FK_9odxbvu09a8qpxg8fmx2wav6a` FOREIGN KEY (`wfentry`) REFERENCES `os_wfentry` (`ID`),
  CONSTRAINT `FK_kth6u4ytroduujsqpo310ec6d` FOREIGN KEY (`creater`) REFERENCES `t_adminuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_work
-- ----------------------------
INSERT INTO `t_work` VALUES ('1', '2015-12-08 00:00:00', '管理部门', null, '123123', '123213', '高', null, '新建', null, '1', '40', null, null);
INSERT INTO `t_work` VALUES ('2', null, '管理部门', null, '', '', '高', null, '新建', null, '1', '41', null, null);
INSERT INTO `t_work` VALUES ('3', '2015-12-09 00:00:00', '管理部门', null, '123', '123', '高', null, '新建', null, '1', '44', '132131', '12312312');
INSERT INTO `t_work` VALUES ('4', null, '管理部门', null, '', '', '高', null, '新建', null, '1', '46', null, null);
