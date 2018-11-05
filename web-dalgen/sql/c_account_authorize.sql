/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-10-11 16:49:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_account_authorize`
-- ----------------------------
DROP TABLE IF EXISTS `c_account_authorize`;
CREATE TABLE `c_account_authorize` (
  `id` bigint(10) NOT NULL,
  `account_id`  bigint(50) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `resource_key` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of c_account_authorize
-- ----------------------------
