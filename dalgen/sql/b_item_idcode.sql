drop table if exists b_item_idcode;

/*==============================================================*/
/* Table: b_item_idcode                                         */
/*==============================================================*/
create table b_item_idcode
(
   id                   bigint(10) not null,
   gh_order_no          varchar(12),
   ls_sh_order_no       varchar(12),
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
