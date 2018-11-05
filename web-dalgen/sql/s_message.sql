/*
Navicat MySQL Data Transfer

Source Server         : localhost.trci
Source Server Version : 50132
Source Host           : localhost:3306
Source Database       : tcri

Target Server Type    : MYSQL
Target Server Version : 50132
File Encoding         : 65001

Date: 2012-04-22 21:47:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_message`
-- ----------------------------
DROP TABLE IF EXISTS `s_message`;
CREATE TABLE `s_message` (
  `id` bigint(10) NOT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT '消息类型：\r\n            P：公告\r\n            S：促销\r\n            ',
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL COMMENT '状态：\r\n            C：未发布\r\n            P：已发布',
  `sender` varchar(30) DEFAULT NULL,
  `bound` varchar(4) DEFAULT NULL COMMENT '阅读者类型:\r\n            A：所有\r\n            M：会员类型\r\n            P：指定群体（1～N个人）',
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gmt_availability` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `gmt_operate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息中心';

-- ----------------------------
-- Records of s_message
-- ----------------------------
