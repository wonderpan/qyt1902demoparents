CREATE TABLE `s_voucher_member_relation` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序列ID',
  `V_ID` bigint(20) NOT NULL COMMENT '代金卷ID',
  `M_ID` bigint(20) NOT NULL COMMENT '成员ID',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态(1:未使用 2:已使用 3:已过期 4:回收站)',
  `TYPE` varchar(1) DEFAULT NULL COMMENT '来源类型(1:领取 2:推送)',
  `GMT_CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `GMT_UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ID`) COMMENT '主键',
  UNIQUE KEY `ID_UNIQUE` (`ID`) COMMENT '主键唯一标识'
) ENGINE=InnoDB DEFAULT CHARSET=utf8