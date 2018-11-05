/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-08-18 16:03:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_operator_usb_key`
-- ----------------------------
DROP TABLE IF EXISTS `s_operator_usb_key`;
CREATE TABLE `s_operator_usb_key` (
  `id` bigint(10) NOT NULL,
  `usb_id` varchar(32) DEFAULT NULL,
  `sha1` varchar(32) DEFAULT NULL,
  `key_3des` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_operator_usb_key
-- ----------------------------
