/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50620
Source Host           : 192.168.2.244:3308
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-02-05 16:31:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_ls_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `s_ls_inventory`;
CREATE TABLE `s_ls_inventory` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `member_no` varchar(30) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `pro_name` varchar(100) DEFAULT NULL,
  `pro_barnd_name` varchar(100) DEFAULT NULL,
  `pro_type` bigint(20) DEFAULT NULL,
  `pro_no` varchar(12) DEFAULT NULL,
  `img_pro` varchar(125) DEFAULT NULL,
  `pro_status` varchar(2) DEFAULT NULL COMMENT '01   销售中\r\n02   暂停销售\r\n03   锁定',
  `gmt_lock` datetime DEFAULT NULL,
  `lock_cause` varchar(225) DEFAULT NULL,
  `pro_bail` bigint(20) DEFAULT NULL,
  `freight` bigint(20) DEFAULT NULL,
  `warranty_cost` bigint(20) DEFAULT NULL,
  `supply_pro_no` varchar(12) DEFAULT NULL,
  `pro_retail_bail` bigint(20) DEFAULT NULL,
  `pro_amount` bigint(20) DEFAULT NULL,
  `inventory_address_no` varchar(10) DEFAULT NULL,
  `inventory_address` varchar(20) DEFAULT NULL,
  `gmt_shortsell` datetime DEFAULT NULL,
  `gmt_online` datetime DEFAULT NULL,
  `pro_norms` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_ls_inventory
-- ----------------------------
