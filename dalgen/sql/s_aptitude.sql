/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-10-16 15:42:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_aptitude`
-- ----------------------------
DROP TABLE IF EXISTS `s_aptitude`;
CREATE TABLE `s_aptitude` (
  `id` bigint(10) NOT NULL,
  `name` varchar(40) default NULL,
  `state` int(11) default NULL,
  `json_level`  varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_aptitude
-- ----------------------------
