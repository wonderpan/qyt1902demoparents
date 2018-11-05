drop table if exists b_order;

/*==============================================================*/
/* Table: b_order                                               */
/*==============================================================*/
create table b_order
(
   id                   bigint(10) not null,
   order_no             varchar(16) comment '四位年+两位月+两位订单销售类型+8位流水号',
   service_state        varchar(1) comment 'S  自已保修
            N  中华农机网保修',
   cardNo               varchar(12),
   rece_mode            varchar(1) comment '送货上门 S
            货站自提 T',
   mailing_time         varchar(1) comment '配送时间(
            工作日节假日均可 1
            节假日 2
            工作日 3
            ',
   rece_area            varchar(10),
   rece_area_name       varchar(40),
   rece_address         varchar(128),
   rece_name            varchar(20),
   rece_phone           varchar(20),
   rece_mobile          varchar(20),
   rece_idCard          varchar(20),
   product_id           bigint(10),
   product_code         varchar(10),
   product_name         varchar(128),
   version              int,
   product_area         varchar(10),
   product_area_name    varchar(40),
   unit                 varchar(20),
   product_type_id      bigint(10),
   product_brand_id     varchar(10),
   product_brand_name   varchar(128),
   img_product          varchar(128),
   totle_fee            bigint,
   pay_way              varchar(1) comment '支付方式(银联，支付宝....)',
   gh_price             bigint,
   price                bigint,
   amount               int,
   carriage_fee         bigint,
   service_fee          bigint,
   pay_fee              bigint,
   gh_cardNo            varchar(12),
   gh_cardName          varchar(128),
   supply_mode          varchar(2) comment '现货供应 S
            预定供应 F',
   make_time            int comment '针对预定 需要的备货小时数',
   gmt_delivery         datetime comment '针对预定，买家付款后计算出的交货时间',
   receipt_type         varchar(2) comment '不要发票 0
            普通发票 1
            增值税票 2',
   receipt_title        varchar(50),
   is_service           varchar(1) comment 'T
            F',
   service_month        int,
   item_properties      varchar(500),
   status               varchar(2) comment '待付订金
            预订待审
            待付款
            待发货
            待收货
            交易撤销
            交易完成
            已退货',
   data_status          int comment '1 锁定订单
            0 正常订单',
   remarks              varchar(512),
   cancel_case          varchar(2),
   cancel_case_text     varchar(50) comment '订单取消原因的描述',
   gmt_timeout          datetime,
   postpone_num         int comment '延期申请通过后累加一次',
   gmt_create           datetime,
   gmt_operate          datetime,
   gmt_rece             datetime,
   gmt_update           datetime,
   gmt_other            datetime,
   comment_status       varchar(2) comment '01：未评论
            02：已评论',
   expressCode          varchar(24),
   expressName          varchar(12),
   expressNum           varchar(24),
   primary key (id)
);
