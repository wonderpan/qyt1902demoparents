/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-10-13 14:01:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_brand`
-- ----------------------------
DROP TABLE IF EXISTS `b_brand`;
CREATE TABLE `b_brand` (
  `id` bigint(10) NOT NULL,
  `brand_id` bigint(10) default NULL,
  `cardNo` varchar(12) default NULL,
  `nick_name` varchar(50) default NULL,
  `auth_type` varchar(10) default NULL,
  `img_brand` varchar(200) default NULL,
  `img_auth` varchar(2000) default NULL,
  `status` varchar(2) default NULL,
  `auth_status` varchar(2) default NULL,
  `gmt_auth` date default NULL,
  `gmt_reg` datetime default NULL,
  `gmt_submit` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_brand
-- ----------------------------
