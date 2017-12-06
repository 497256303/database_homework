/*
Navicat MySQL Data Transfer

Source Server         : shgx
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : school

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-01 17:47:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Cno` char(4) NOT NULL,
  `Cname` varchar(20) DEFAULT NULL,
  `Cpno` char(2) DEFAULT NULL,
  `Ccredit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数据库', '5', '4');
INSERT INTO `course` VALUES ('2', '数学', null, '2');
INSERT INTO `course` VALUES ('3', '信息系统', '1', '4');
INSERT INTO `course` VALUES ('4', '操作系统', '6', '3');
INSERT INTO `course` VALUES ('5', '数据结构', '7', '4');
INSERT INTO `course` VALUES ('6', '数据处理', null, '2');
INSERT INTO `course` VALUES ('7', 'PASCAL语言', '6', '4');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `Sno` char(9) NOT NULL,
  `Cno` char(4) NOT NULL,
  `Grade` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`Sno`,`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('201215121', '1', '92.00');
INSERT INTO `sc` VALUES ('201215121', '2', '85.00');
INSERT INTO `sc` VALUES ('201215121', '3', '88.00');
INSERT INTO `sc` VALUES ('201215122', '2', '90.00');
INSERT INTO `sc` VALUES ('201215122', '3', '80.00');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Sno` char(9) NOT NULL,
  `Sname` varchar(8) DEFAULT NULL,
  `Ssex` char(2) DEFAULT NULL,
  `Sage` int(11) DEFAULT NULL,
  `Sdept` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201215121', '李勇', '男', '20', 'CS');
INSERT INTO `student` VALUES ('201215122', '刘晨', '女', '19', 'CS');
INSERT INTO `student` VALUES ('201215123', '王敏', '女', '18', 'MA');
INSERT INTO `student` VALUES ('201215125', '张立', '男', '19', 'CS');
SET FOREIGN_KEY_CHECKS=1;
