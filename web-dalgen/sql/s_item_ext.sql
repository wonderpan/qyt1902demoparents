/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : wcs

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2014-10-13 14:18:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_brand_correct`
-- ----------------------------
DROP TABLE IF EXISTS `s_item_ext`;
create table s_item_ext
(
   id                   bigint(1) not null,
   title                varchar(200),
   description          varchar(500),
   detail               text,
   json_properties      text comment 'JSON',
   json_img_static      varchar(800) comment '
            ',
   json_videos          varchar(500) comment '商品视频',
   json_docs            varchar(500),
   json_supply_model    varchar(2000),
   json_pack_model      varchar(4000),
   json_wl_zs_model     varchar(4000),
   json_wl_kd_model     varchar(4000),
   json_wl_model        text,
   json_chain_model     varchar(4000),
   json_install_model   text,
   json_bx_model        text,
   json_price_policy    VARCHAR(800) COMMENT '价格政策',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='商品附加属性'


