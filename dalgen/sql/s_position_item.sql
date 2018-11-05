SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_position_item`
-- ----------------------------
DROP TABLE IF EXISTS `s_position_item`;
CREATE TABLE `s_position_item` (
  `id` bigint(12) unsigned NOT NULL,
  `position_code` varchar(12) NOT NULL DEFAULT '',
  `title` varchar(128) DEFAULT NULL,
  `item_no` varchar(24) DEFAULT NULL,
  `item_url` varchar(128) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL,
  `status` varchar(2) DEFAULT '00',
  `sort` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wcs_index_positionItem_code_status_sort` (`position_code`,`status`,`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;