/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-10-13 14:18:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_brand_correct`
-- ----------------------------
DROP TABLE IF EXISTS `b_brand_correct`;
CREATE TABLE `b_brand_correct` (
  `id` bigint(10) NOT NULL,
  `brand_id` bigint(10) default NULL,
  `name` varchar(20) default NULL,
  `logo` varchar(200) default NULL,
  `detail` varchar(1000) default NULL,
  `cardNo` varchar(12) default NULL,
  `gmt_submit` datetime default NULL,
  `item` varchar(15) default NULL,
  `status` varchar(15) default NULL,
  `remark` varchar(200) default NULL,
  `operate` varchar(20) default NULL,
  `nick_name` varchar(50) default NULL,
  `auth_type` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_brand_correct
-- ----------------------------
