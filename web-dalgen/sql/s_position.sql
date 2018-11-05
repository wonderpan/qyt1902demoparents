SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_position`
-- ----------------------------
DROP TABLE IF EXISTS `s_position`;
CREATE TABLE `s_position` (
  `id` bigint(12) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `code` varchar(12) NOT NULL,
  `sort` int(2) NOT NULL DEFAULT '0',
  `item_img_width` varchar(6) DEFAULT NULL,
  `item_img_height` varchar(6) DEFAULT NULL,
  `gmt_create` date DEFAULT NULL,
  `gmt_update` date DEFAULT NULL,
  `gmt_publish` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;