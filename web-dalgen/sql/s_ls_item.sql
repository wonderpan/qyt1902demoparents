/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.244_3308
Source Server Version : 50620
Source Host           : 192.168.2.244:3308
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-01-14 16:16:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_ls_item`
-- ----------------------------
DROP TABLE IF EXISTS `s_ls_item`;
CREATE TABLE `s_ls_item` (
  `id` bigint(10) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `cardNo` varchar(32) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `brand_id` bigint(10) DEFAULT NULL,
  `norms` varchar(20) DEFAULT NULL,
  `type_id` bigint(10) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `ranges` varchar(30) DEFAULT NULL,
  `style` varchar(30) DEFAULT NULL,
  `material` varchar(30) DEFAULT NULL,
  `describtion` varchar(120) DEFAULT NULL,
  `is_supply` varchar(1) DEFAULT NULL,
  `is_express` varchar(1) DEFAULT NULL,
  `is_logistics` varchar(1) DEFAULT NULL,
  `is_chain` varchar(1) DEFAULT NULL,
  `is_install` varchar(1) DEFAULT NULL,
  `is_service` varchar(1) DEFAULT NULL,
  `purchase` bigint(12) DEFAULT NULL,
  `netsale` varchar(800) DEFAULT NULL,
  `store` bigint(20) DEFAULT NULL,
  `keywords` varchar(50) DEFAULT NULL,
  `img_item` varchar(120) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='连锁商品表';

-- ----------------------------
-- Records of s_ls_item
-- ----------------------------
INSERT INTO `s_ls_item` VALUES ('88', '1114', 'WL0000000033', '加工中心', '304', null, '8136', null, null, '04', null, null, null, null, null, 'T', 'T', 'T', 'T', 'T', 'T', '73421', '77777', '120', null, 'http://img.czls88.com/item/M00/00/03/dnvJvFSbsfqAalQxAACEPwSe44c758.jpg', null);
INSERT INTO `s_ls_item` VALUES ('114', '1119', 'WL0000000033', '竹笛', '304', null, '8136', null, '四川', '04', null, null, null, null, null, 'F', 'T', 'F', 'T', 'F', 'F', '120', '140', '200', null, 'http://img.czls88.com/item/M00/00/09/dnvJvFShIyeAWyPZAAC-tOikLto457.jpg', null);
