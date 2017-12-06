/*
Navicat MySQL Data Transfer

Source Server         : shgx
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : booksystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-01 17:37:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `BNO` int(8) NOT NULL AUTO_INCREMENT,
  `BNAME` char(15) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR` char(15) COLLATE utf8_bin DEFAULT NULL,
  `PUBLISH` char(15) COLLATE utf8_bin DEFAULT NULL,
  `PRICES` double DEFAULT NULL,
  PRIMARY KEY (`BNO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '数据库导论', '王强', '科学出版社', '17.9');
INSERT INTO `book` VALUES ('2', '数据库导论', '王强', '科学出版社', '17.9');
INSERT INTO `book` VALUES ('3', '计算机基础', '李伟', '高等教育出版社', '18');
INSERT INTO `book` VALUES ('4', 'FoxBASE', '张三', '电子工业出版社', '23.6');
INSERT INTO `book` VALUES ('5', '高等数学', '刘明', '高等教育出版社', '20');
INSERT INTO `book` VALUES ('6', '线性代数', '孙业', '北京大学出版社', '20.8');
INSERT INTO `book` VALUES ('7', '数据库基础', '马凌云', '人民邮电出版社', '22.5');
INSERT INTO `book` VALUES ('8', 'FoxPro大全', '周虹', '科学出版社', '32.7');
INSERT INTO `book` VALUES ('9', 'FoxPro大全', '周虹', '科学出版社', '32.7');
INSERT INTO `book` VALUES ('10', '计算机网络', '黄力钧', '高等教育出版社', '21.8');

-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `BNO` int(8) NOT NULL,
  `RNO` int(4) NOT NULL,
  `CDATE` date DEFAULT NULL,
  PRIMARY KEY (`BNO`,`RNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of checkout
-- ----------------------------
INSERT INTO `checkout` VALUES ('1', '2', '2012-08-21');
INSERT INTO `checkout` VALUES ('2', '1', '2012-03-19');
INSERT INTO `checkout` VALUES ('2', '4', '2012-03-14');
INSERT INTO `checkout` VALUES ('2', '8', '2012-10-11');
INSERT INTO `checkout` VALUES ('4', '5', '2012-10-08');
INSERT INTO `checkout` VALUES ('5', '9', '2012-08-21');

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `RNO` int(8) NOT NULL AUTO_INCREMENT,
  `RDEPT` char(15) COLLATE utf8_bin DEFAULT NULL,
  `RNAME` char(10) COLLATE utf8_bin DEFAULT NULL,
  `RSEX` char(2) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS` char(15) COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS` char(35) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RNO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of reader
-- ----------------------------
INSERT INTO `reader` VALUES ('1', '信息系', '王维利', '女', '教授', '同济大学');
INSERT INTO `reader` VALUES ('2', '财会系', '李 立', '男', '副教授', '同济大学');
INSERT INTO `reader` VALUES ('3', '经济系', '张 三', '男', '讲师', '同济大学');
INSERT INTO `reader` VALUES ('4', '信息系', '周华发', '男', '讲师', '同济大学');
INSERT INTO `reader` VALUES ('5', '信息系', '赵正义', '男', '工程师', '同济大学');
INSERT INTO `reader` VALUES ('6', '信息系', '李 明', '男', '副教授', '同济大学');
SET FOREIGN_KEY_CHECKS=1;
