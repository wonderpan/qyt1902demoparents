/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-02-27 16:13:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_taking_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `s_taking_order_detail`;
CREATE TABLE `s_taking_order_detail` (
  `id` bigint(20) NOT NULL,
  `taking_id` bigint(20) default NULL,
  `cardNo` varchar(12) default NULL,
  `nick_name` varchar(50) default NULL,
  `money` bigint(20) default NULL,
  `source` varchar(2) default NULL,
  `source_text` varchar(50) default NULL,
  `source_people` varchar(50) default NULL,
  `source_bill` varchar(50) default NULL,
  `operator` varchar(50) default NULL,
  `gmt_create` datetime default NULL,
  `gmt_operate` datetime default NULL,
  `sort` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_order_id` USING HASH (`taking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_taking_order_detail
-- ----------------------------
