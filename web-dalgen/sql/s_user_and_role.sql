/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-08-18 16:03:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_user_and_role`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_and_role`;
CREATE TABLE `s_user_and_role` (
  `role_id` bigint(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  UNIQUE KEY `unique_role_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_user_and_role
-- ----------------------------
