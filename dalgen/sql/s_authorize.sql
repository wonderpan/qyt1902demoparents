/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-08-18 16:03:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_authorize`
-- ----------------------------
DROP TABLE IF EXISTS `s_authorize`;
CREATE TABLE `s_authorize` (
  `id` bigint(10) NOT NULL,
  `role_id` bigint(10) DEFAULT NULL,
  `resoure_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_authorize
-- ----------------------------
