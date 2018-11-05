drop table if exists b_yd_order;

/*==============================================================*/
/* Table: b_yd_order                                            */
/*==============================================================*/
create table b_yd_order
(
   id                   bigint(10) not null,
   yd_order_no          varchar(15),
   order_no             varchar(15),
   order_source         varchar(2) comment '01：商城
            02：连锁',
   cardNo               varchar(15),
   member_name          varchar(50),
   pro_id               bigint,
   pro_code             varchar(15),
   pro_img              varchar(255),
   pro_name             varchar(255),
   amount               int,
   unit                 varchar(20),
   price                bigint(10),
   total_price          bigint(20),
   status               varchar(2) comment '01：待回复
            02：已拒绝
            03：已接受
            04：已锁定
            05：已终止',
   status_content       varchar(500),
   gmt_update           datetime comment '用于记录状态更新日期.',
   delivery_cycle       int,
   gmt_create           datetime,
   gmt_timeout          datetime,
   ydorder_pro_norms    varbinary(500),
   primary key (id)
);
