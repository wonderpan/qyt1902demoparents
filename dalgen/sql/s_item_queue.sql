SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_brand_correct`
-- ----------------------------
DROP TABLE IF EXISTS `s_item_queue`;
CREATE TABLE `s_item_queue` (
  `cardNo` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品队列表';