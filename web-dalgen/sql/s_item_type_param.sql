/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-11-14 10:45:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_item_type_param`
-- ----------------------------
DROP TABLE IF EXISTS `s_item_type_param`;
CREATE TABLE `s_item_type_param` (
  `id` bigint(20) NOT NULL,
  `top_type` bigint(20) default NULL,
  `type_id` varchar(500) default NULL,
  `type_name` varchar(2000) default NULL,
  `tactics` varchar(3000) default NULL,
  `param_type` varchar(1) default NULL COMMENT 'P 批零折扣最小差人价参数\r\n            L 零售供货折扣参数\r\n            T 综合税率',
  PRIMARY KEY  (`id`),
  KEY `index_type` (`param_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于保存与商品分类相关的参数设置';

-- ----------------------------
-- Records of s_item_type_param
-- ----------------------------
