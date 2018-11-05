drop table if exists b_gh_order;

/*==============================================================*/
/* Table: b_gh_order                                            */
/*==============================================================*/
create temporary table b_gh_order
(
   id                   bigint(12) not null,
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
   typeId               bigint(12),
   brandId              bigint(12),
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
   express_code         varchar(24),
   express_name         varchar(24),
   express_no           varchar(24),
   qh_name              varchar(12),
   qh_mobile            varchar(12),
   qh_region_code       varchar(12),
   qh_region_name       varchar(12),
   qh_address           varchar(12),
   id_number            varchar(24),
   shop_cardNo            varchar(12),
   primary key (id)
);
