/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-09-11 19:37:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_param`
-- ----------------------------
DROP TABLE IF EXISTS `s_param`;
CREATE TABLE `s_param` (
  `id` bigint(10) NOT NULL,
  `path` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(20000) default NULL,
  `parent_id` bigint(10) default NULL,
  `remark` varchar(400) default NULL,
  `sort` int(11) default '0',
  `tactics` varchar(100) default NULL,
  `state` int(11) default '1',
  PRIMARY KEY  (`id`),
  KEY `path_index` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

