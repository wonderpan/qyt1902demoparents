/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-01-09 14:05:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_chain_item_reg`
-- ----------------------------
DROP TABLE IF EXISTS `c_chain_item_reg`;
CREATE TABLE `c_chain_item_reg` (
  `id` bigint(10) NOT NULL,
  `order_id` bigint(10) DEFAULT NULL,
  `member_id` bigint(10) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_code` varchar(12) DEFAULT NULL,
  `img_item` varchar(125) DEFAULT NULL,
  `reg_type` varchar(10) DEFAULT NULL COMMENT 'STREET 街道\r\n            AREA 地区',
  `reg_area` varchar(10) DEFAULT NULL,
  `reg_area_name` varchar(20) DEFAULT NULL,
  `street` varchar(60) DEFAULT NULL,
  `bail` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_end` datetime DEFAULT NULL,
  `bail_status` varchar(2) DEFAULT NULL COMMENT '01 未支付\r\n            02 已支付\r\n     

       03 已退',
  `status` varchar(2) DEFAULT NULL COMMENT '01 未缴费\r\n            02 运营中\r\n          

  03 已锁定\r\n            04 已注销',
  `item_brand` varchar(50) DEFAULT NULL,
  `operation_log` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orderid` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_chain_item_reg
-- ----------------------------
