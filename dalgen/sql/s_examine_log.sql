/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : csc

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-09-11 10:49:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_examine_log`
-- ----------------------------
DROP TABLE IF EXISTS `s_examine_log`;
CREATE TABLE `s_examine_log` (
  `id` bigint(10) NOT NULL,
  `table_name` varchar(30) default NULL,
  `table_id` bigint(10) default NULL,
  `action` varchar(20) default NULL,
  `content` varchar(500) default NULL,
  `before_status` varchar(20) default NULL,
  `operator` varchar(30) default NULL,
  `gmt_create` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_examine_log
-- ----------------------------
