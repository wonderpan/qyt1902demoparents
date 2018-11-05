SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_user_and_role`
-- ----------------------------
DROP TABLE IF EXISTS `s_yd_order`;
CREATE TABLE `s_yd_order` (
  `id` bigint(11) unsigned NOT NULL COMMENT '主键',
  `order_no` varchar(16) DEFAULT NULL COMMENT '订单号',
  `order_source` varchar(2) DEFAULT NULL COMMENT '订单来源',
  `card_no` varchar(16) DEFAULT NULL COMMENT '供应商编号',
  `name` varchar(20) DEFAULT NULL COMMENT '供货商名称',
  `pro_code` varchar(15) DEFAULT NULL COMMENT '商品编号',
  `pro_img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `pro_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `unit` varchar(10) DEFAULT NULL COMMENT '单位',
  `price` bigint(10) DEFAULT NULL COMMENT '价格',
  `status` varchar(2) DEFAULT NULL COMMENT '状态',
  `status_content` varchar(500) DEFAULT NULL COMMENT '状态描述',
  `gmt_status_update` datetime DEFAULT NULL COMMENT '状态更新时间',
  `delivery_cycle` int(11) DEFAULT NULL COMMENT '交货周期(小时)',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_timeout` datetime DEFAULT NULL COMMENT '回复超时时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;