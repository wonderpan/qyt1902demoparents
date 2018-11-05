/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.244_3308
Source Server Version : 50620
Source Host           : 192.168.2.244:3308
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2015-01-08 12:35:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_ls_item_ext`
-- ----------------------------
DROP TABLE IF EXISTS `s_ls_item_ext`;
CREATE TABLE `s_ls_item_ext` (
  `id` bigint(10) NOT NULL,
  `detail` text,
  `json_properties` text COMMENT 'JSON',
  `json_img_static` varchar(800) DEFAULT NULL COMMENT '\r\n            ',
  `json_videos` varchar(500) DEFAULT NULL COMMENT '商品视频',
  `json_docs` varchar(500) DEFAULT NULL,
  `json_supply_model` varchar(2000) DEFAULT NULL,
  `json_pack_model` varchar(4000) DEFAULT NULL,
  `json_wl_zs_model` varchar(4000) DEFAULT NULL,
  `json_wl_kd_model` varchar(4000) DEFAULT NULL,
  `json_wl_model` text,
  `json_chain_model` varchar(4000) DEFAULT NULL,
  `json_install_model` text,
  `json_bx_model` text,
  `json_price_policy` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该表用于存储复杂结构数据（比如1对多关系，多对多关系，按单列json格式进行保存）';

-- ----------------------------
-- Records of s_ls_item_ext
-- ----------------------------
