/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-10-13 11:25:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_brand_store`
-- ----------------------------
DROP TABLE IF EXISTS `s_brand_store`;
CREATE TABLE `s_brand_store` (
  `id` bigint(10) NOT NULL,
  `name` varchar(20) default NULL,
  `logo` varchar(200) default NULL,
  `detail` varchar(5000) default NULL,
  `owner` varchar(50) default NULL,
  `pingyin` varchar(50) default NULL,
  `pingyin_ab` varchar(20) default NULL,
  `gmt_reg` datetime default NULL,
  `gmt_modify` datetime default NULL,
  `modify_num` int(11) default NULL,
  `modify_content` varchar(20) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_brand_store
-- ----------------------------
