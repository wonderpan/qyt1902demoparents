/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-15 14:36:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_content
-- ----------------------------
DROP TABLE IF EXISTS `a_content`;
CREATE TABLE `a_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `links` varchar(255) DEFAULT NULL,
  `seoTitle` varchar(255) DEFAULT NULL,
  `seoKeyWord` varchar(255) DEFAULT NULL,
  `seoDescription` varchar(255) DEFAULT NULL,
  `remarks` text,
  `sort` int(11) DEFAULT NULL,
  `browsingCount` int(11) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `isComment` varchar(1) DEFAULT NULL,
  `isTop` varchar(1) DEFAULT NULL,
  `isRecommend` varchar(1) DEFAULT NULL,
  `isHot` varchar(1) DEFAULT NULL,
  `isPPT` varchar(1) DEFAULT NULL,
  `isManagePublish` varchar(1) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `articalType` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_content
-- ----------------------------
