/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-11 15:54:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for b_order_details
-- ----------------------------
DROP TABLE IF EXISTS `b_order_details`;
CREATE TABLE `b_order_details` (
  `id` bigint(11) NOT NULL,
  `product_id` bigint(11) DEFAULT NULL,
  `product_name` varchar(128) DEFAULT NULL,
  `product_img` varchar(128) DEFAULT NULL,
  `price` double(10,0) DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `allPrice` double(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_order_details
-- ----------------------------
