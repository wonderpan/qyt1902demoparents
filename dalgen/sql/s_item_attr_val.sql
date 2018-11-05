/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-02-07 13:38:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_item_attr_val`
-- ----------------------------
DROP TABLE IF EXISTS `s_item_attr_val`;
CREATE TABLE `s_item_attr_val` (
  `id` bigint(10) NOT NULL,
  `attr_id` bigint(10) NOT NULL COMMENT '创建该属性的分类',
  `value` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `index_attr_id` USING HASH (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_item_attr_val
-- ----------------------------
