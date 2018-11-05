/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-15 14:36:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_comment
-- ----------------------------
DROP TABLE IF EXISTS `a_comment`;
CREATE TABLE `a_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(12) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `userIp` varchar(255) DEFAULT NULL,
  `context` text,
  `isLock` varchar(1) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `isReply` varchar(1) DEFAULT NULL,
  `replyContext` text,
  `replyTime` datetime DEFAULT NULL,
  `articalId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_comment
-- ----------------------------
