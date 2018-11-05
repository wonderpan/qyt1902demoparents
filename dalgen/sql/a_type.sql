/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-15 14:36:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_type
-- ----------------------------
DROP TABLE IF EXISTS `a_type`;
CREATE TABLE `a_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `typeIdList` varchar(500) DEFAULT NULL,
  `depth` bigint(10) DEFAULT NULL,
  `numSort` int(11) DEFAULT NULL,
  `urlAddress` varchar(255) DEFAULT NULL,
  `picAddress` varchar(255) DEFAULT NULL,
  `remarks` text,
  `seoTitle` varchar(255) DEFAULT NULL,
  `seoKeyWord` varchar(255) DEFAULT NULL,
  `seoDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_type
-- ----------------------------
