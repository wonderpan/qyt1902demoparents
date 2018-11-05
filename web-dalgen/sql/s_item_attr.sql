/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-02-05 14:00:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_item_attr`
-- ----------------------------
DROP TABLE IF EXISTS `s_item_attr`;
CREATE TABLE `s_item_attr` (
  `id` bigint(10) NOT NULL,
  `type_id` bigint(10) NOT NULL COMMENT '创建该属性的分类',
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `un_name_index` USING HASH (`name`),
  KEY `type_id_index` USING HASH (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_item_attr
-- ----------------------------
