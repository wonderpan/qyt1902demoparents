/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-01-05 14:35:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_chain_item_reg_order`
-- ----------------------------
DROP TABLE IF EXISTS `c_chain_item_reg_order`;
CREATE TABLE `c_chain_item_reg_order` (
  `id` bigint(10) NOT NULL,
  `order_no` varchar(12) DEFAULT NULL,
  `member_id` bigint(10) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `img_item` varchar(125) DEFAULT NULL,
  `item_code` varchar(12) DEFAULT NULL,
  `reg_type` varchar(10) DEFAULT NULL COMMENT 'STREET 街道\r\n            AREA 地区',
  `reg_num` int(11) DEFAULT NULL,
  `bail_total` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_pay_end` datetime DEFAULT NULL,
  `bail_status` varchar(2) DEFAULT NULL COMMENT '01 未支付\r\n            02 已支付',
  `item_brand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_chain_item_reg_order
-- ----------------------------
