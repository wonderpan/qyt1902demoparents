/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 192.168.0.13:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-19 10:34:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_item
-- ----------------------------
DROP TABLE IF EXISTS `s_item`;
CREATE TABLE `s_item` (
  `id` bigint(10) NOT NULL DEFAULT '0',
  `cardNo` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `nickName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `type_id` bigint(10) DEFAULT NULL,
  `sale_type_id` bigint(10) DEFAULT NULL,
  `brand_id` bigint(10) DEFAULT NULL,
  `brand_name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `model` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `keywords` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `img_item` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `price` bigint(10) DEFAULT NULL,
  `tax_sign` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT 'Y 应税\n            N 免税',
  `bound` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT 'UNRE("F","无产品识别码"),\n            UNIQ("T","有产品识别码");',
  `delivery_way` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '原包装交货（01）\n            指导试机交货（02）\n            现场试机交货（03）',
  `is_supply` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'T 支持\n            F 不支持',
  `is_express` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否支持快递：\n            F：不支持快递；\n            T：支持快递；',
  `is_logistics` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'F：不支持；\n            T：支持；',
  `is_chain` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'T 支持\n            F 不支持',
  `is_install` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT 'T 支持\n            F 不支持',
  `is_service` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `jc_status` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '01 待审核\n            02 一审通过\n            03 二审核通过\n            00 审核没过',
  `gh_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `bz_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `wl_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `bx_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ls_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ts_status` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `status` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '商品状态\n            01 草稿\n            02 待审核\n            \n            04 销售中\n            05 下架\n            00 不通过\n            \n            \n            \n            \n            ',
  `batch` bigint(10) DEFAULT NULL,
  `sale_count` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `produceAddress` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生产厂家',
  `approveNum` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '批准文号',
  `normal` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`id`),
  KEY `index_code` (`code`),
  KEY `index_name` (`name`),
  KEY `index_cardNo` (`cardNo`),
  KEY `index_brand` (`brand_id`) USING HASH,
  KEY `index_type_id` (`type_id`) USING HASH,
  KEY `index_status` (`status`) USING HASH,
  KEY `index_batch` (`batch`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品表';

-- ----------------------------
-- Records of s_item
-- ----------------------------
INSERT INTO `s_item` VALUES ('328', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1427', '阿卡波糖片', null, '浙江', '阿卡波糖片', null, 'http://192.168.0.240/item/M00/00/02/wKgA8FU6DlyACRwAAACsKv5A2Jw034.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '10', '0', '2015-04-24 09:39:06', '2015-05-12 09:15:04', null, null, null);
INSERT INTO `s_item` VALUES ('329', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1428', '枸橼酸西地那非片', null, '浙江', '枸橼酸西地那非片', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6D-2Af4baAACgVcsT_78546.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '4', '0', '2015-04-24 09:40:59', '2015-05-12 09:15:04', null, null, null);
INSERT INTO `s_item` VALUES ('330', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1429', '匹多莫德分散片', null, '浙江', '匹多莫德分散片', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6EEqAcmaAAABcFNwTPOs311.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '1', '0', '2015-04-24 09:42:53', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('331', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1430', '苯磺酸左旋氨氯地平片', null, '浙江', '苯磺酸左旋氨氯地平片', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6EUWARUaRAABcKiVVZFo250.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '8', '0', '2015-04-24 09:44:14', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('332', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1431', '甲巯咪唑片', null, '浙江', '甲巯咪唑片', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6EX-APEPgAABznibuN_g449.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '6', '0', '2015-04-24 09:48:14', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('333', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1432', '硫酸氢氯吡格雷片', null, '浙江', '硫酸氢氯吡格雷片', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6EbmACcfDAACSiHE1Ugc964.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '9', '0', '2015-04-24 09:49:11', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('334', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1433', '缬沙坦胶囊', null, '浙江', '缬沙坦胶囊', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6EgCARQ5WAABXBBb3eYI136.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:50:11', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('335', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1434', '恩替卡韦胶囊', null, '浙江', '恩替卡韦胶囊', null, 'http://192.168.0.240/item/M00/00/03/wKgA8FU6EjqAW415AACrGbAlQzA423.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:51:19', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('336', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1435', '金水宝胶囊', null, '浙江', '金水宝胶囊', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6EnyAI-ghAABy6vY94Og313.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:52:21', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('337', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1436', '复方丹参滴丸', null, '浙江', '复方丹参滴丸', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6ErSAKst7AAB3hUpoZ1s168.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:53:30', '2015-04-24 11:45:25', null, null, null);
INSERT INTO `s_item` VALUES ('338', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1437', '稳心颗粒', null, '浙江', '稳心颗粒', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6EyCALYr1AADIl-XEpMQ787.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:54:18', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('340', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1439', '肾宝片', null, '浙江', '肾宝片', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6E3uAXl3dAAC-SgIiRls830.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:56:58', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('341', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1440', '六味地黄丸', null, '浙江', '六味地黄丸', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6E6yAX60LAAB8Aszq4Bk933.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:57:38', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('342', 'LS0000000120', '龙玉兰', '9824', '0', '305', '11', 'L1441', '脑心通胶囊', null, '浙江', '脑心通胶囊', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6E9uAehKpAACl-ORgRSo708.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:58:26', '2015-05-12 09:15:05', null, null, null);
INSERT INTO `s_item` VALUES ('343', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1442', '通心络胶囊', null, '浙江', '通心络胶囊', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6FBWAez5NAACFrGzoATg716.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '0', '04', '0', '0', '0', '2015-04-24 09:59:28', '2015-05-12 09:15:06', null, null, null);
INSERT INTO `s_item` VALUES ('346', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1443', '复方丹参滴丸2', null, '浙江', '复方丹参滴丸2', null, 'http://192.168.0.240/item/M00/00/04/wKgA8FU6ErSAKst7AAB3hUpoZ1s168.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '2', '04', '0', '20', '0', '2015-04-24 11:46:52', '2015-05-12 09:15:06', null, null, null);
INSERT INTO `s_item` VALUES ('347', 'LS0000000120', '龙玉兰', '9791', '0', '305', '11', 'L1438', '黄葵胶囊', null, '浙江', '黄葵胶囊', null, 'http://192.168.0.240/item/M00/00/05/wKgA8FU6RnuAAOpEAACgoed6qSY259.jpg', '5367', null, null, '01', 'T', 'T', 'F', 'T', 'F', 'F', '05', '05', '05', '05', '05', '05', '05', '1', '04', '0', '0', '0', '2015-04-24 09:56:12', '2015-05-12 09:15:06', null, null, null);
INSERT INTO `s_item` VALUES ('349', 'LS0000000120', '龙玉兰', '10034', '0', '146', 'Polo Ralph Lauren', 'L1445', 'ssss', null, '辽宁', 'ssssssssss', null, 'http://192.168.0.240/item/M00/00/05/wKgA8FVaDU-AMCtPAAAxaUHOeMI328.jpg', '0', null, null, '01', 'F', 'F', 'F', 'F', 'F', 'F', null, null, null, null, null, null, null, '0', '01', '0', '0', '0', '2015-05-18 16:03:55', '2015-05-18 16:03:55', null, null, null);
