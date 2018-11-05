/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-01-22 13:10:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_partner_business`
-- ----------------------------
DROP TABLE IF EXISTS `c_partner_business`;
CREATE TABLE `c_partner_business` (
  `id` bigint(10) NOT NULL,
  `partner_id` bigint(10) NOT NULL,
  `cardNo` varchar(12) DEFAULT NULL,
  `service_type` varchar(2) DEFAULT NULL,
  `partner_auth_type` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `gmt_open` datetime DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_lock` datetime DEFAULT NULL,
  `bail` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_partner_business
-- ----------------------------
