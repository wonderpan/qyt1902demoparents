/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-09-11 19:38:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_item_type_copy`
-- ----------------------------
DROP TABLE IF EXISTS `s_item_type_copy`;
CREATE TABLE `s_item_type_copy` (
  `id` bigint(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` bigint(10) DEFAULT NULL,
  `property` varchar(500) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `is_auth` char(1) DEFAULT NULL,
  `is_bx` char(1) DEFAULT 'F',
  `is_licence` char(1) DEFAULT NULL,
  `is_color` char(1) DEFAULT 'F',
  `bx_rate` float(5,2) DEFAULT NULL,
  `bx_rate_max` float(5,2) DEFAULT NULL,
  `is_leaf` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_item_type_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_item_type_copy
-- ----------------------------
