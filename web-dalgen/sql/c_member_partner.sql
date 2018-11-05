/*
Navicat MySQL Data Transfer

Source Server         : xx
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-09-28 15:27:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `c_member_partner`
-- ----------------------------
DROP TABLE IF EXISTS `c_member_partner`;
CREATE TABLE `c_member_partner` (
  `id` bigint(10) NOT NULL,
  `cardNo` varchar(12) DEFAULT NULL,
  `partner_auth_type` varchar(2) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_legal_person` varchar(50) DEFAULT NULL,
  `company_principal` bigint(20) DEFAULT NULL,
  `company_business_licence` varchar(50) DEFAULT NULL,
  `company_legal_area` varchar(50) DEFAULT NULL,
  `company_legal_area_name` varchar(50) DEFAULT NULL,
  `company_legal_address` varchar(200) DEFAULT NULL,
  `company_office_tel` varchar(20) DEFAULT NULL,
  `company_office_fax` varchar(20) DEFAULT NULL,
  `img_identity_front` varchar(200) DEFAULT NULL,
  `img_identity_back` varchar(200) DEFAULT NULL,
  `img_business_licence` varchar(200) DEFAULT NULL,
  `img_org_code` varchar(200) DEFAULT NULL,
  `img_tax_cert` varchar(200) DEFAULT NULL,
  `img_org_auth` varchar(200) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `comprise_type` varchar(2) DEFAULT NULL,
  `licence_name` varchar(50) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `nickName` varchar(12) DEFAULT NULL,
  `gmt_modify` datetime DEFAULT NULL,
  `gmt_org_valid` datetime DEFAULT NULL,
  `gmt_licence_valid` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Records of c_member_partner
-- ----------------------------
