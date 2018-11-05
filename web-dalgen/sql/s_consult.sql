SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_consult`
-- ----------------------------
DROP TABLE IF EXISTS `s_consult`;
CREATE TABLE `s_consult` (
  `id` bigint(20) NOT NULL,
  `reply_content` varchar(500) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `cardNo` varchar(30) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `manage` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `answer_person` varchar(30) DEFAULT NULL,
  `gmt_operate` datetime DEFAULT NULL,
  `item_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;