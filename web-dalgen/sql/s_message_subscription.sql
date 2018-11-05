/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : tcri

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2012-11-07 14:18:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `s_message_subscription`
-- ----------------------------
DROP TABLE IF EXISTS `s_message_subscription`;
CREATE TABLE `s_message_subscription` (
  `id` bigint(10) NOT NULL,
  `msg_id` bigint(10) default NULL,
  `title` varchar(100) default NULL,
  `content` varchar(1000) default NULL,
  `sender` varchar(16) default NULL COMMENT '发送者会员编号',
  `receiver` varchar(16) default NULL COMMENT '接收者会员编号',
  `status` varchar(2) default NULL COMMENT '状态：\r\n            W：未读\r\n            R：已读',
  `gmt_send` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `gmt_read` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息阅读信息';

-- ----------------------------
-- Records of s_message_subscription
-- ----------------------------
