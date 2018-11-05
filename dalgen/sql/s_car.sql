/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-04-29 16:37:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_car
-- ----------------------------
DROP TABLE IF EXISTS `s_car`;
CREATE TABLE `s_car` (
  `id` bigint(10) NOT NULL DEFAULT '0',
  `cardNo` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `itemId` bigint(10) DEFAULT '0',
  `itemName` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `imgItem` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` double(10,0) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `gmtCreate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
