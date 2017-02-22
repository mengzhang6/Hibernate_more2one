/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : hibernate_one2more

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-02-22 21:44:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `gid` int(11) NOT NULL,
  `gname` varchar(20) NOT NULL,
  `gdesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '物联网12', '**学院2012级物联网工程');
INSERT INTO `grade` VALUES ('2', '软件12', '**学院2012级软件工程');
INSERT INTO `grade` VALUES ('3', '物联网13', '**学院2013级物联网工程');
INSERT INTO `grade` VALUES ('4', '软件13', '**学院2013级软件工程');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sex` char(2) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `fk_student_id` (`gid`),
  CONSTRAINT `fk_student_id` FOREIGN KEY (`gid`) REFERENCES `grade` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张明', '男', '4');
INSERT INTO `student` VALUES ('2', '张花', '女', '1');
INSERT INTO `student` VALUES ('3', '张萌', '女', '3');
INSERT INTO `student` VALUES ('4', '张三', '男', '3');
