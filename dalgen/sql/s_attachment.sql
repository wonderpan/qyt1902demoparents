/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2013-07-05 14:29:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `s_attachment`;
CREATE TABLE `s_attachment` (
  `id` bigint(10) NOT NULL,
  `b_table` varchar(50) NOT NULL,
  `b_id` bigint(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `biz_type` varchar(50) NOT NULL,
  `gmt_create` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='�ñ����ڴ洢ҵ�����Ҫ�ĵ��Ӹ���\r\n�磨ͼƬ���ĵ�����Ƶ�ȣ�';

-- ----------------------------
-- Records of s_attachment
-- ----------------------------
