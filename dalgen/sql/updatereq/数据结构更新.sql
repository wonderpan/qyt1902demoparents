/*删除物流相关表*/
drop  table b_carriage_invitation;
drop  table b_carriage;

drop  table  b_member_route;
drop  table  b_member_route_area;
drop  table  b_member_route_delivery;
drop  table  b_member_route_station;
drop  table  b_member_route_station_relation;
drop  table  b_without_route_exception;
drop  table c_member_integral_log;
drop  table b_route_register_queue_member;
drop  table b_route_register_queue;
drop  table b_deposit_standard_route;
drop  table b_deposit_standard;
drop table b_waybill;
/*多余表*/
drop  table  s_member_discount_info;
﻿/*2014-8-8 jcb*/
drop table b_tk_seller;
drop table c_resume;
drop table c_graduate_background;
drop table c_presenter;
drop table c_years_working;

/*2014-9-1删除会员表*/
drop table c_member;
drop table c_user;
drop table c_user_log;
/*删除短信表*/
drop table s_sms;
drop table s_sms_back;
/*修改member_partner表结构*/
/*2014-9-26 11:07:22*/
alter table `c_member_partner` add column `nickName`  varchar(50) null;
alter table `c_member_partner` add column `gmt_modify`  datetime null;
/*2014-9-26 16:34:34 添加电话号码字段*/
alter table `c_member_partner` add column `phoneNumber`  varchar(11) null;

/*重构品牌三张表 b_brand_correct.sql b_brand s_brand_store*/
 
/*2014-10-14 09:13:39 字符编码*/
ALTER TABLE `s_brand_store` DEFAULT CHARACTER SET=utf8;
ALTER TABLE `b_brand_correct` DEFAULT CHARACTER SET=utf8;
ALTER TABLE `b_brand` DEFAULT CHARACTER SET=utf8;

/*2014-10-17创建三张表 s_aptitude_level s_aptitude s_item_type_param.sql*/
/*2014-10-21创建一张表 s_delivery_period_effect*/

/*2014-10-24 在资质表中添加一个资质等级字段，同时删除资质等级表*/
alter table `s_aptitude` add column `json_level`  varchar(1000) null;
drop table s_aptitude_level;
/*2014-10-28在s_item表中添加一个冗余字段brand_name*/
alter table `s_item` add column `brand_name`  varchar(30) null after brand_id;
/*2014-11-3在s_item表中添加索引*/
ALTER TABLE s_item ADD INDEX index_code(CODE);
ALTER TABLE s_item ADD INDEX index_name(NAME);
ALTER TABLE s_item ADD INDEX index_keywords(keywords);
ALTER TABLE s_item ADD INDEX index_brand(brand_id);
/*2014-11-4在s_item表中添加索引*/
ALTER TABLE `s_item` ADD COLUMN `nickName`  varchar(20) NULL AFTER `cardNo`;

/*2014-11-14*/
drop table s_item_tactics;
/*执行脚本创建表s_item_type_param.sql*/

/*2014-11-17*/
ALTER TABLE s_item ADD INDEX index_cardNo(cardNo);
/*2014-11-21*/
alter table c_partner_business modify column nickName varchar(50) ;

/*2014-12-04业务认证资料表添加字段*/
alter table `c_member_partner` add column `service_type`  varchar(2) null;
ALTER TABLE c_member_partner ADD INDEX index_cardNo(cardNo);
ALTER TABLE c_member_partner ADD INDEX index_status(status);

/*2014-12-10创建三张表 c_chain_deliver_goods c_chain_item_reg c_chain_item_reg_order.sql*/
/*2014-12-11创建一张表 s_item_queue*/
/*2014-12-29创建一张表order_params*/

/*2014-12-17在s_brand_store表中添加索引*/
ALTER TABLE s_brand_store ADD INDEX index_pingab(pingyin_ab);
ALTER TABLE s_brand_store ADD INDEX index_ping(pingyin);
alter table s_brand_store modify column pingyin_ab varchar(50) ;
alter table s_brand_store modify column pingyin varchar(100) ;

/*2014-12-24*/
alter table c_account_authorize modify column resource_key varchar(3000) ;
/*2014-12-29*/
INSERT INTO `s_sequence` VALUES ('21', 'seq_c_itemreg_id', '0', '10', '1', null);
INSERT INTO `s_sequence` VALUES ('22', 'seq_c_itemreg_orde_no', '100000', '10', '1', null);
INSERT INTO `s_sequence` VALUES ('23', 'seq_c_itemreg_order_id', '0', '10', '1', NULL);
/*2014-12-29创建一张表b_order*/

/*2015-1-5添加字段*/
alter table `c_chain_item_reg_order` add column `item_brand`  varchar(50) null;
alter table `c_chain_item_reg` add column `item_brand`  varchar(50) null;
/*2015-1-5添加收货地址表b_rece_address*/
/*2015-01-06 更新字段类型*/
ALTER TABLE `b_order` CHANGE `rece_mode` `rece_mode` VARCHAR(2)  CHARACTER SET utf8  COLLATE utf8_general_ci  NULL  DEFAULT NULL;
ALTER TABLE `b_order` CHANGE `data_status` `data_status` VARCHAR(2)  NULL  DEFAULT NULL;
INSERT INTO `s_sequence` VALUES ('24', 'seq_b_order_id', '0', '10', '1', null);
INSERT INTO `s_sequence` VALUES ('25', 'seq_b_order_no', '0', '12', '1', null);
/*2015-1-7创建c_chain_item_reg表order_id字段索引*/
ALTER TABLE c_chain_item_reg ADD INDEX index_orderid (order_id);
/*2015-1-9添加c_chain_item_reg表添加状态操作日志字段*/
alter table `c_chain_item_reg` add column `operation_log`  varchar(50) null;
INSERT INTO `s_sequence` VALUES ('26', 'seq_b_recharge_order_no', '0', '12', '1', null);
/*2015-01-14*/
INSERT INTO `s_sequence` VALUES ('27', 'seq_c_item_collect_id', '0', '12', '1', null);
INSERT INTO `s_sequence` VALUES ('28', 'seq_c_item_comment_id', '0', '12', '1', null);
INSERT INTO `s_sequence` VALUES ('29', 'seq_c_item_consult_id', '0', '12', '1', null);
INSERT INTO `s_sequence` VALUES ('30', 'seq_c_member_address_id', '0', '12', '1', null);
/*2015-01-15 创建表 s_item_comment*/
/*2015-01-15 创建表 s_consult*/
/*2015-01-19 新增字段*/
ALTER TABLE `b_order` ADD `comment_status` VARCHAR(2)  NULL  DEFAULT '01';


/*2015-01-19 创建表 b_yd_order*/

/*2015-01-19创建一个新数据库，名称：wcs_history*/
/*wcs_history 库创建表s_item,s_item_ext*/
/*2015-01-21更新表字段*/
ALTER TABLE `s_item_queue` CHANGE `cardNo` `productNo` VARCHAR(12)  CHARACTER SET utf8  BINARY  NOT NULL  DEFAULT '0';

/*2015-01-22 新增字段*/
ALTER TABLE `c_partner_business` ADD `bail` BIGINT;
/*2015-01-23 新增数据*/
INSERT INTO `s_sequence` (`id`, `name`, `max`, `length`, `next`, `rules`) VALUES (31, 'seq_s_feedback_id', 1, 12, 1, NULL);
/*2015-01-26 修改送货时间表字段长度*/
alter table s_delivery_period_effect modify column from_time varchar(6);
alter table s_delivery_period_effect modify column to_time varchar(6);
/*2015-01-26 创建供货单表*/
drop table if exists b_gh_order;

/*==============================================================*/
/* Table: b_gh_order                                            */
/*==============================================================*/
create  table b_gh_order
(
   id                   bigint not null,
   bill_type            varchar(2) comment '01：直送单
            02：发货单',
   gh_order_no          varchar(15),
   order_no             varchar(15),
   order_source         varchar(2) comment '01：商城
            02：连锁',
   cardId               varchar(15),
   cardNo               varchar(18),
   nickName             varchar(50),
   rece_mode            varchar(2) comment 'SH：送货上门
            ZT：货站自提
            KD：快递
            PS：商家直送',
   supply_mode          varchar(2) comment '01：现货
            02：预订',
   product_id           varchar(15),
   product_code         varchar(20),
   product_name         varchar(50),
   img_item             varchar(225),
   json_model           text,
   typeId               bigint(15),
   brandId              bigint(15),
   brandName            varchar(50),
   price                bigint(10),
   amount               int,
   carriage_fee         bigint(10),
   service_fee          bigint(10),
   bail_fee             bigint(10),
   settle_fee           bigint(10),
   has_settle_fee       bigint(10),
   gmt_bail_unfreeze    datetime,
   gmt_create           datetime,
   gmt_shipments        datetime,
   gmt_timeout          datetime,
   gmt_receipt          datetime,
   gmt_test             datetime,
   gmt_balance          datetime,
   timeout_minute       int,
   gmt_update           datetime,
   biz_status           varchar(2) comment '01：待发货
            02：待收货
            03：待调试
            04：待结算
            05：已结算
            06：已终止',
   status               varchar(2) comment '01：正常
            02：已锁定',
   status_content       varchar(225),
   express_no           varchar(20),
   express_name         varchar(50),
   qh_name              varchar(20),
   qh_mobile            varchar(20),
   qh_region_code       varchar(10),
   qh_region_name       varchar(200),
   qh_address           varchar(200),
   id_number 			 varchar(20) DEFAULT NULL,
   primary key (id)
);
/*2015-01-27更新数据库字段及索引*/
ALTER TABLE `s_item_comment` ADD `level` VARCHAR(1)  NULL  DEFAULT NULL;
ALTER TABLE `s_item_comment` ADD INDEX `wcs_index_comment_itemCode_state_level` (`item_code`, `state`, `level`);
/*2015-01-28更新数据库字段及索引*/
ALTER TABLE `b_order` CHANGE `postpone_num` `postpone_num` INT(12)  NULL  DEFAULT NULL;
ALTER TABLE `b_order` ADD INDEX `caozoo_index_order_cardNo_status_other` (`cardNo`, `status`, `supply_mode`, `rece_mode`, `data_status`, `order_no`, `comment_status`, `gmt_create`);
/*2015-02-01更新数据库字段*/
ALTER TABLE `s_consult` ADD `title` VARCHAR(50)  NULL  DEFAULT NULL  AFTER `item_code`;
ALTER TABLE `s_item_comment` CHANGE `level` `level` VARCHAR(1)  NULL  DEFAULT NULL;
/*2015-02-02 新增数据库字段*/
ALTER TABLE `c_partner_business` ADD `lowerLimit_bail` BIGINT(20)  NULL  DEFAULT NULL  AFTER `bail`;
/*2015-02-03 业务开通表新增索引*/
ALTER TABLE `c_partner_business` ADD INDEX `caozoo_index_partnerBusiness_cardNo_serviceType_status` (`cardNo`, `service_type`, `status`);
/*2015-02-04*/
alter table s_item_type change is_color is_spec char(1) default 'F';
alter table s_item_type MODIFY property varchar(20000) default NULL;
/*2015-02-05创建连锁店商品库存表*/
-- ----------------------------
-- Table structure for `s_ls_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `s_ls_inventory`;
CREATE TABLE `s_ls_inventory` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `member_no` varchar(30) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `pro_name` varchar(100) DEFAULT NULL,
  `pro_barnd_name` varchar(100) DEFAULT NULL,
  `pro_type` bigint(20) DEFAULT NULL,
  `pro_no` varchar(12) DEFAULT NULL,
  `img_pro` varchar(125) DEFAULT NULL,
  `pro_status` varchar(2) DEFAULT NULL COMMENT '01   销售中\r\n02   暂停销售\r\n03   锁定',
  `gmt_lock` datetime DEFAULT NULL,
  `lock_cause` datetime DEFAULT NULL,
  `pro_bail` bigint(20) DEFAULT NULL,
  `freight` bigint(20) DEFAULT NULL,
  `warranty_cost` bigint(20) DEFAULT NULL,
  `supply_pro_no` varchar(12) DEFAULT NULL,
  `pro_retail_bail` bigint(20) DEFAULT NULL,
  `pro_amount` bigint(20) DEFAULT NULL,
  `inventory_address_no` varchar(10) DEFAULT NULL,
  `inventory_address` varchar(20) DEFAULT NULL,
  `gmt_shortsell` datetime DEFAULT NULL,
  `gmt_online` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_ls_inventory
-- ----------------------------
/*2015-02-05创建连锁店商品库存表索引*/
ALTER TABLE `s_ls_inventory` ADD INDEX `inventory_index_proNo_proStatus_proName_proBrandNo_proType` (`pro_no`, `pro_status`, `pro_name`, `pro_barnd_name`, `pro_type`);
ALTER TABLE `b_order` ADD `expressCode` VARCHAR(24)  NULL  DEFAULT NULL;
ALTER TABLE `b_order` ADD `expressName` VARCHAR(12)  NULL  DEFAULT NULL;
ALTER TABLE `b_order` ADD `expressNum` VARCHAR(24)  NULL  DEFAULT NULL;
/*2015-02-06修改连锁店商品库存表锁定原因字段类型*/
ALTER TABLE `s_ls_inventory` CHANGE `lock_cause` `lock_cause` VARCHAR(225)  NULL  DEFAULT NULL;

/*2015-02-09 商品分类调整*/
drop table s_item_type_pro;
INSERT INTO `s_sequence` VALUES ('34', 'seq_s_item_type_pro_value_id', '0', '12', '1', null);
delete from s_item_type_param;
/*2015-02-09删除连锁店商品库存表索引*/
ALTER TABLE s_ls_inventory DROP INDEX inventory_index_proNo_proStatus_proName_proBrandNo_proType
/*2015-02-09创建连锁店商品库存表索引*/
ALTER TABLE `s_ls_inventory` ADD INDEX `inventory_index_memberNo_proStatus` (`member_no`, `pro_status`);
/*2015-02-10 订单表新增商品规格*/
/* 下午4:14:47 cz */ 
ALTER TABLE `b_order` ADD `item_properties` VARCHAR(500)  NULL  DEFAULT NULL;
/*2015-02-11连锁注册、预定单库存添加商品规格字段、供货单表结构更新*/
ALTER TABLE `s_ls_inventory` ADD `pro_norms` VARCHAR(500)  NULL  DEFAULT NULL;
ALTER TABLE `b_yd_order` ADD `ydorder_pro_norms` VARCHAR(500)  NULL  DEFAULT NULL;
drop table if exists b_gh_order;

/*==============================================================*/
/* Table: b_gh_order                                            */
/*==============================================================*/
create table b_gh_order
(
   id                   varchar(12) not null,
   bill_type            varchar(2) comment '01：直送单
            02：发货单',
   gh_order_no          varchar(12),
   order_no             varchar(12),
   order_source         varchar(2) comment '01：商城
            02：连锁',
   ghCardNo             varchar(12),
   ghName               varchar(12),
   rece_mode            varchar(2) comment 'SH：送货上门
            ZT：货站自提
            KD：快递
            PS：商家直送',
   supply_mode          varchar(2) comment '现货、预订',
   product_id           varchar(12),
   product_code         varchar(12),
   product_name         varchar(12),
   img_item             varchar(225),
   json_model           varchar(500),
   typeId               varchar(12),
   brandId              varchar(12),
   brandName            varchar(12),
   price                bigint,
   carriage_fee         bigint,
   amount               int,
   service_fee          bigint,
   bail_fee             bigint,
   settle_fee           bigint,
   has_settle_fee       bigint,
   gmt_bail_unfreeze    datetime,
   gmt_create           datetime,
   gmt_shipments        datetime,
   gmt_timeout          datetime,
   gmt_receipt          datetime,
   gmt_test             datetime,
   gmt_balance          datetime,
   timeout_minute       varchar(12),
   gmt_update           datetime,
   biz_status           varchar(12) comment '01：待发货
            02：待收货
            03：待调试
            04：待结算
            05：已结算
            06：已终止',
   status               varchar(12) comment '01：正常
            02：已锁定',
   status_content       varchar(500),
   express_no           varchar(24),
   express_name         varchar(24),
   qh_name              varchar(12),
   qh_mobile            varchar(12),
   qh_region_code       varchar(12),
   qh_region_name       varchar(12),
   qh_address           varchar(200),
   id_number            varchar(12),
   shop_name            varchar(12),
   primary key (id)
);

/*2015-02-11创建供货单表索引*/
ALTER TABLE `b_gh_order` ADD INDEX `ghorder_index_status_ghCardNo` (`status`, `ghCardNo`);
ALTER TABLE `b_order` CHANGE `service_state` `service_state` VARCHAR(2);

/*2015-02-12修正数据及清除老数据*/
update s_sequence set max=9790 where name='seq_s_item_type_id';
update s_sequence set max=6709 where name='seq_s_item_type_pro_id';
update s_sequence set max=53659	where name='seq_s_item_type_pro_value_id';
/*

清除商品信息
*/
DELETE FROM s_item;
DELETE FROM s_item_ext;

/*
说明：清除连锁注册运营中项目数据
*/
DELETE FROM c_chain_deliver_goods;
DELETE FROM c_chain_item_reg;
DELETE FROM c_chain_item_reg_order;
/*2015-02-12供货单添加快递公司编号字段*/
ALTER TABLE `b_gh_order` ADD `express_code` VARCHAR(24)  NULL  DEFAULT NULL;
/*2015-02-15调整商品属性字段类型为TEXT 请注意，历史库也要调整*/
ALTER TABLE s_item_ext MODIFY COLUMN json_price_policy text;
/*2015-02-16*/
ALTER TABLE `b_order` CHANGE `rece_phone` `rece_phone` VARCHAR(15)  NULL  DEFAULT NULL;
/*2015-03-04 新增数据库表*/
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
CREATE TABLE `s_position` (
  `id` int(12) unsigned NOT NULL,
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
INSERT INTO `s_sequence` (`id`, `name`, `max`, `length`, `next`, `rules`) VALUES ('35', 'seq_s_position_id', '1', '1', '1', NULL);
INSERT INTO `s_sequence` (`id`, `name`, `max`, `length`, `next`, `rules`) VALUES ('36', 'seq_s_position_item_id', '1', '1', '1', NULL);
ALTER TABLE `s_position_item` add `detail` VARCHAR(24)  CHARACTER SET utf8  COLLATE utf8_general_ci  NULL  DEFAULT NULL;
/*2015-03-10*/
INSERT INTO `s_sequence` (`id`, `name`, `max`, `length`, `next`, `rules`) VALUES ('37', 'seq_b_gh_order_no', '1', '1', '1', NULL);
INSERT INTO `s_sequence` (`id`, `name`, `max`, `length`, `next`, `rules`) VALUES ('38', 'seq_b_gh_order_id', '1', '1', '1', NULL);
ALTER TABLE `b_gh_order` CHANGE `id_number` `id_number` VARCHAR(24)  NULL  DEFAULT NULL;
/*2015-03-11*/
ALTER TABLE `b_gh_order` CHANGE `product_name` `product_name` VARCHAR(50) NULL  DEFAULT NULL;

/*2015-3-12*/
ALTER TABLE `b_gh_order` CHANGE `qh_address` `qh_address` VARCHAR(200) NULL  DEFAULT NULL;
CREATE TABLE b_item_idcode
(
   id                   bigint(10) not null,
   gh_order_no          varchar(12),
   order_no             varchar(12),
   ghCardNo             varchar(12),
   product_id           varchar(12),
   product_code         varchar(12),
   product_idcode       varchar(50),
   gmt_shipments        datetime,
   gmt_receipt          datetime,
   gmt_test             datetime,
   gmt_stopservice      datetime,
   primary key (id)
);
/*2015-3-17*/
INSERT INTO `s_sequence` (`id`, `name`, `max`, `length`, `next`, `rules`) VALUES ('39', 'seq_s_item_idcode_id', '1', '1', '1', NULL);
/*2015-3-18*/
ALTER TABLE `b_order` ADD INDEX `wcs_index_order_schedule` (`status`, `data_status`, `gmt_timeout`, `supply_mode`);

/*2015-03-18更新商品扩展表字段类型*/
ALTER TABLE s_item_ext MODIFY COLUMN json_supply_model text;

/*2015-03-20更新预定单表，增加订单总价*/
alter table `b_yd_order` add column `total_price`  bigint(20);

/*2015-03-23更新供货单表，增加订单总价*/
alter table `b_gh_order` add column `total_price`  bigint(20);
ALTER TABLE `b_gh_order` CHANGE `id` `id` BIGINT(12)  NOT NULL;
alter table `b_gh_order` CHANGE  `typeId`  `typeId`   bigint(12);
alter table `b_gh_order` CHANGE  `brandId` `brandId`  bigint(12);
/*2015-03-24 订单表增加供货单价 */
alter table `b_order` add  column `gh_price`  bigint ;
/*2015-03-24 更新索引 */
ALTER TABLE `c_chain_item_reg` DROP INDEX `index_orderid`;
ALTER TABLE `c_chain_item_reg` ADD INDEX `wcs_index_chainItemReg_member_status_time` (`member_id`, `status`, `reg_area`, `gmt_create`);
ALTER TABLE `s_ls_inventory` DROP INDEX `inventory_index_memberNo_proStatus`;
ALTER TABLE `s_ls_inventory` ADD INDEX `wcs_index_inventory_member_proStatus_proNo_proType_gmtOnline` (`member_no`, `pro_status`, `pro_no`, `pro_type`, `gmt_online`);
ALTER TABLE `s_param` DROP INDEX `path_index`;
ALTER TABLE `s_param` ADD INDEX `wcs_index_param_path` (`path`);
ALTER TABLE `s_operator` DROP INDEX `uk_s_operator`;
ALTER TABLE `s_operator` ADD UNIQUE INDEX `wcs_index_operator_loginId` (`login_id`);
ALTER TABLE `s_consult` ADD INDEX `wcs_index_consult_cardNo_create_operateTime` (`cardNo`, `gmt_create`, `gmt_operate`);
ALTER TABLE `c_member_partner` ADD INDEX `wcs_index_partner_serviceType_status_authType_createTime` (`service_type`, `status`, `partner_auth_type`, `gmt_create`);
ALTER TABLE `c_member_partner` DROP INDEX `index_status`;
ALTER TABLE `c_chain_item_reg_order` ADD INDEX `wcs_index_regOrder_member_createTime` (`member_id`, `gmt_create`);
ALTER TABLE `b_yd_order` ADD INDEX `wcs_index_ydOrder_cardNo_status_ydOrderNo_createTime` (`cardNo`, `status`, `yd_order_no`, `gmt_create`);
ALTER TABLE `b_rece_address` DROP INDEX `index_cardNo`;
ALTER TABLE `b_rece_address` ADD INDEX `wcs_index_receAddress_cardNo` (`cardNo`);
ALTER TABLE `b_item_idcode` ADD INDEX `wcs_index_itemIdCode_ghOrderNo` (`gh_order_no`);
ALTER TABLE `b_item_idcode` ADD INDEX `wcs_index_itemIdCode_orderNo` (`order_no`);
ALTER TABLE `b_gh_order` ADD INDEX `wcs_index_ghOrder_portal` (`ghCardNo`, `status`, `gmt_create`, `gh_order_no`, `supply_mode`, `rece_mode`);
ALTER TABLE `b_brand` ADD INDEX `wcs_index_brand_portal` (`cardNo`, `auth_type`, `status`, `gmt_auth`);
/* 2015-03-25 订单表增加 供货商名称、 品牌ID、品牌名称*/
alter table `b_order` add column `gh_cardName` varchar(128);
alter table `b_order` add column `product_brand_id` bigint(10);
alter table `b_order` add column `product_brand_name` varchar(128);

/*2015-03-26修改资源ID字段类型*/
ALTER TABLE s_authorize MODIFY COLUMN resoure_id VARCHAR(20);

/*2016-03-26增加连锁送货单表*/
create temporary table c_chain_sh_order
(
   id                   bigint(12) not null,
   sh_order_no          varchar(12),
   order_no             varchar(12),
   shCardNo             varchar(12),
   shName               varchar(12),
   supply_mode          varchar(2) comment '现货、预订',
   delivery_mode        varchar(2) comment '01：出厂包装交货
            02：指导调试交货
            03：现场调试交货',
   product_id           varchar(12),
   product_code         varchar(12),
   product_name         varchar(50),
   img_item             varchar(225),
   json_model           varchar(500),
   typeId               bigint(12),
   ls_price             bigint,
   wx_price             bigint,
   carriage_fee         bigint,
   amount               int,
   service_fee          bigint,
   total_price          bigint,
   bail_fee             bigint,
   settle_fee           bigint,
   has_settle_fee       bigint,
   gmt_bail_unfreeze    datetime,
   gmt_create           datetime,
   gmt_shipments        datetime,
   gmt_timeout          datetime,
   gmt_receipt          datetime,
   gmt_test             datetime,
   gmt_balance          datetime,
   timeout_minute       varchar(12),
   gmt_update           datetime,
   biz_status           varchar(2) comment '01：待送货
            02：待收货
            03：待调试
            04：待结算
            05：已结算
            06：已终止',
   status               varchar(2) comment '01：正常
            02：已锁定',
   status_content       varchar(500),
   qh_name              varchar(12),
   qh_mobile            varchar(12),
   qh_region_code       varchar(12),
   qh_region_name       varchar(12),
   qh_address           varchar(12),
   primary key (id)
);
INSERT INTO `s_sequence` VALUES ('41', 'seq_c_chain_sh_order_id', '1', '1', '1', NULL);
INSERT INTO `s_sequence` VALUES ('42', 'seq_c_chain_sh_order_no', '1', '1', '1', NULL);
/*2016-03-27商品识别码增加连锁送货单编号*/
alter table `b_item_idcode` add column `ls_order_no`  varchar(12);
alter table `c_chain_sh_order` drop  column `total_price`;
alter table `b_gh_order` drop  column `total_price`;
/*2016-03-30 将供货单表中shop_name改为shop_code(数据库存的是code值)-杨庆聪*/
ALTER TABLE  `b_gh_order` CHANGE `shop_name` `shop_cardNo` VARCHAR(12)    DEFAULT NULL;
/*2016-03-30 商品识别码表ls_order_no改为ls_sh_order_no(ls_order_no容易产生歧义)-杨庆聪*/
ALTER TABLE  `b_item_idcode` CHANGE `ls_order_no` `ls_sh_order_no` VARCHAR(12)   DEFAULT NULL;

/*用户类型表*/
CREATE TABLE `c_member_type` (
`id`  int(10) NOT NULL AUTO_INCREMENT ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员类型名' ,
PRIMARY KEY (`id`)
)
;
/*资质类型表*/
CREATE TABLE `c_aptitude_type` (
`id`  int(10) NOT NULL AUTO_INCREMENT COMMENT '主键' ,
`name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '资质名称' ,
`is_required`  int(1) NULL DEFAULT 0 COMMENT '是否必填：0：不必填；1：必填' ,
PRIMARY KEY (`id`)
)
;

/*会员类型和资质类型关系表*/
CREATE TABLE `c_member_type_aptitude_type` (
  `member_type_id` int(10) NOT NULL DEFAULT '0' COMMENT '会员类型ID',
  `aptitude_type_id` int(10) NOT NULL DEFAULT '0' COMMENT '资质类型ID',
  PRIMARY KEY (`member_type_id`,`aptitude_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `c_member_partner`
MODIFY COLUMN `member_type`  int(10) NULL DEFAULT NULL;


ALTER TABLE `c_aptitude`
MODIFY COLUMN `aptitudeName`  int(10) NULL DEFAULT NULL;

ALTER TABLE `s_item`
ADD COLUMN `is_index_show`  int(1) NULL DEFAULT 0 COMMENT '是否首页展示';
/*2016-7-4 周江 s_item表添加生产商助记码*/
alter table `s_item` add column `produceAddressAlias`  varchar(30) null after produceAddress;

CREATE TABLE `s_advertisement` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `img_url` varchar(255) DEFAULT '' COMMENT '图片URL',
  `detail_url` varchar(255) DEFAULT '' COMMENT '详细页面URL',
  `priority` int(10) DEFAULT '1' COMMENT '优先级',
  `floor` int(2) DEFAULT '0' COMMENT '楼层',
  `type` int(2) DEFAULT '1' COMMENT '广告类型：1：banner广告；2：楼层广告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `c_member`
ADD COLUMN `erpName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'ERP单位名称';

/*2016-7-19 周江 创建表*/
create table b_fast_order_import(
	id	                 bigint(11) not null AUTO_INCREMENT COMMENT '主键',
	productid           bigint(11)  COMMENT '药品ID',
    product_name         varchar(200) COMMENT '药品名称',
    product_normal       varchar(50)  COMMENT '药品规格',
    product_address      varchar(200) COMMENT '生产厂家',
    product_approveNum   varchar(50)  COMMENT '批准文号',
    product_gys_cardNo   varchar(50)  COMMENT '商品供应商CardNo',
	counts				 int          COMMENT '购买数量' ,
	price                bigint(20)   COMMENT '价格',
	randomNum			varchar(50)  COMMENT	'随机数，用于标识导入',
	submitterCardNo		varchar(50)   COMMENT  '提交人卡号',
	createDateTime		datetime,
	matchedProductSaasId  bigint(11)   COMMENT  '已匹配的商品SaasId',
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*2016-7-21 唐勇 增加字段*/
ALTER TABLE `a_type`
ADD COLUMN `is_lower_classification`  int(1) NULL DEFAULT 0 COMMENT '是否允许添加下级分类';
/*2016-8-3 周江 添加*/
ALTER TABLE c_member_integralstream ADD COLUMN orderNo varchar(20) COMMENT '订单No';
ALTER TABLE b_order ADD COLUMN integralMoney bigint(10) default '0' COMMENT '积分抵扣金额';
ALTER TABLE b_order ADD COLUMN integral int(10) default '0' COMMENT '积分抵扣';
/*2016-8-8 周江 添加 秒杀活动表*/
CREATE TABLE `s_seckill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitemid` int(11) DEFAULT NULL COMMENT '商品Id',
  `name` varchar(100) DEFAULT NULL COMMENT '秒杀活动名称',
  `normal` varchar(100) DEFAULT NULL COMMENT '商品规格',
  `productaddress` varchar(100) DEFAULT NULL COMMENT '商品生产商',
  `approvenum` varchar(100) DEFAULT NULL COMMENT '商品批准文号',
  `itemimg` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `price` double(10,0) DEFAULT NULL COMMENT '商品价格',
  `special_price` double(10,0) DEFAULT NULL COMMENT '秒杀价格',
  `isPurchase` int(11) NOT NULL COMMENT '是否限购',
  `Purchase_num` int(11) DEFAULT '0' COMMENT '限购数量',
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `gysid` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_adminid` int(11) DEFAULT NULL,
  `examine_time` datetime DEFAULT NULL,
  `examine_adminid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*2-16-8-9*/
ALTER TABLE s_seckill ADD COLUMN pici varchar(30) COMMENT 'pici';
ALTER TABLE s_seckill ADD COLUMN sitemsaasid varchar(30) COMMENT 'SaasId';
ALTER TABLE s_seckill ADD COLUMN stock2 int(11) COMMENT '库存';
ALTER TABLE s_car ADD COLUMN activity_id int(11) COMMENT '活动id';
ALTER TABLE b_order_details ADD COLUMN activity_id int(11) COMMENT '活动id';
CREATE TABLE `s_activity_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL COMMENT '活动Id',
  `user_cardno` varchar(20) DEFAULT NULL COMMENT '人员carNo',
  `counts` int(11) DEFAULT NULL COMMENT '数量',
  `order_no` int(11) DEFAULT NULL COMMENT '订单No',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;