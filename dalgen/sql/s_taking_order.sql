/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-02-27 17:09:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_taking_order`
-- ----------------------------
DROP TABLE IF EXISTS `s_taking_order`;
CREATE TABLE `s_taking_order` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(16) default NULL,
  `num` int(11) default NULL,
  `money` bigint(20) default NULL,
  `operate` varchar(50) default NULL,
  `gmt_create` datetime default NULL,
  `gmt_operate` datetime default NULL,
  `remark` varchar(500) default NULL,
  `status` varchar(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_taking_order
-- ----------------------------
