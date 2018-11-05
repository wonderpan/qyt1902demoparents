drop table if exists c_chain_sh_order;

/*==============================================================*/
/* Table: c_chain_sh_order                                      */
/*==============================================================*/
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
