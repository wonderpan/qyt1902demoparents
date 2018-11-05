/*
Navicat MySQL Data Transfer

Source Server         : 182.138.102.188
Source Server Version : 50621
Source Host           : 182.138.102.188:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-07-27 14:59:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_gysadmin
-- ----------------------------
DROP TABLE IF EXISTS `s_gysadmin`;
CREATE TABLE `s_gysadmin` (
  `id` bigint(11) NOT NULL,
  `loginName` varchar(50) NOT NULL,
  `gydName` varchar(50) NOT NULL,
  `gysPwd` varchar(50) NOT NULL,
  `linkman` varchar(100) DEFAULT NULL,
  `linkaddress` varchar(100) DEFAULT NULL,
  `linkphone` varchar(11) DEFAULT NULL,
  `saasId` bigint(11) DEFAULT NULL,
  `domainName` varchar(100) NOT NULL COMMENT '域名',
  `companyName` varchar(100) NOT NULL,
  `sortName` varchar(20) NOT NULL,
  `companyLogo` varchar(100) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `serviceMobile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_gysadmin
-- ----------------------------
INSERT INTO `s_gysadmin` VALUES ('111111', 'ydsyd', '成都与梦同行', 'e10adc3949ba59abbe56e057f20f883e', '梅医生', '四川成都', '14781098648', null, 'http://www.ydsyd.com', '医药采购平台', '医药平台', 'http://cdn.nxyiyao.com:8088/wcs/images/logo.png', '医药采购平台', '医药采购平台', '00000000');
INSERT INTO `s_gysadmin` VALUES ('116327', 'mssdyy', '四川眉山圣丹医药有限公司', 'e10adc3949ba59abbe56e057f20f883e', '梅医生', '四川眉山丹棱', '13778812453', null, 'http://scsdyy.com', '圣丹医药', '圣丹', 'http://cdn.nxyiyao.com:8088/cz88b/imgs/logo_MSSD.png', '圣丹药业', '圣丹药业', '11111111');
INSERT INTO `s_gysadmin` VALUES ('132455', 'kmjyy', '云南康美佳医药', 'e10adc3949ba59abbe56e057f20f883e', '梅医生', '云南', '18381098648', null, '123456', '云南康美佳医药', '康美佳', '152525', '康美佳医药', '康美佳医药', '33333333');
INSERT INTO `s_gysadmin` VALUES ('151015', 'scgsyy', '四川国森医药有限公司\r\n', 'e10adc3949ba59abbe56e057f20f883e', '梅医生', '四川成都', '13569874215', null, 'http://www.ypmyw.com', '国森医药', '国森', 'http://cdn.nxyiyao.com:8088/cz88b/imgs/logo_SCGS.png', '国森医药', '国森医药', '22222222');
