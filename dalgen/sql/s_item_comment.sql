SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `s_item_comment`;
CREATE TABLE `s_item_comment` (
  `id` bigint(20) NOT NULL,
  `product_sort` int(11) DEFAULT NULL,
  `website_sort` int(11) DEFAULT NULL,
  `logistics_sort` int(11) DEFAULT NULL,
  `orderNo` varchar(40) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `item_code` varchar(30) DEFAULT NULL,
  `img_item` varchar(100) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `cardNo` varchar(30) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `item_comment` varchar(500) DEFAULT NULL,
  `item_addComment` varchar(500) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `gmt_operate` datetime DEFAULT NULL,
  `is_top` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;