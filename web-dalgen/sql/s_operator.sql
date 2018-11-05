/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-08-18 16:03:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_operator`
-- ----------------------------
DROP TABLE IF EXISTS `s_operator`;
CREATE TABLE `s_operator` (
  `id` bigint(10) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` char(1) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `gmt_create` timestamp NULL DEFAULT NULL,
  `gmt_modify` timestamp NULL DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_s_operator` (`login_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_operator
-- ----------------------------
