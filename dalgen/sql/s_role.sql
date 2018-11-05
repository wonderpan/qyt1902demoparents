/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-08-18 16:03:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_role`
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` bigint(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_role
-- ----------------------------
