/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-01-05 14:24:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_rece_address`
-- ----------------------------
DROP TABLE IF EXISTS `b_rece_address`;
CREATE TABLE `b_rece_address` (
  `id` bigint(20) NOT NULL,
  `cardNo` varchar(30) default NULL,
  `name` varchar(10) default NULL,
  `area_code` varchar(10) default NULL,
  `area_name` varchar(50) default NULL,
  `addres` varchar(200) default NULL,
  `tel` varchar(15) default NULL,
  `mobile` varchar(15) default NULL,
  `postalcode` varchar(10) default NULL,
  `id_card` varchar(20) default NULL,
  `is_def` char(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_cardNo` USING HASH (`cardNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_rece_address
-- ----------------------------
