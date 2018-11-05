/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-12-10 09:22:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_chain_deliver_goods`
-- ----------------------------
DROP TABLE IF EXISTS `c_chain_deliver_goods`;
CREATE TABLE `c_chain_deliver_goods` (
  `id` bigint(10) NOT NULL,
  `order_id` bigint(10) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL COMMENT '与商品直送数据结构一致',
  `json_fee` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_chain_deliver_goods
-- ----------------------------
