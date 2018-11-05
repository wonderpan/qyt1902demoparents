/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-20 10:42:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for c_aptitude
-- ----------------------------
DROP TABLE IF EXISTS `c_aptitude`;
CREATE TABLE `c_aptitude` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(20) DEFAULT NULL,
  `aptitudeName` varchar(100) DEFAULT NULL,
  `imgAptitude` varchar(200) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `gmtCreate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_aptitude
-- ----------------------------
