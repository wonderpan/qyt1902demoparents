/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2013-11-20 16:52:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `s_sequence`;
CREATE TABLE `s_sequence` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'sequence名称',
  `max` bigint(11) NOT NULL DEFAULT '1' COMMENT '最大id',
  `length` int(11) NOT NULL DEFAULT '1' COMMENT '生成序列后的长度,以0补全',
  `next` int(11) NOT NULL DEFAULT '1' COMMENT '增长的长度',
  `rules` varchar(255) DEFAULT NULL COMMENT '规则以###max_id###做为替换',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='整个系统表的序号';

