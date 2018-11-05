drop table if exists s_delivery_period_effect;

/*==============================================================*/
/* Table: s_delivery_period_effect                              */
/*==============================================================*/
create table s_delivery_period_effect
(
   id                   bigint(10) not null,
   cardNo               varchar(20),
   deliver_effect       int,
   from_week            varchar(2),
   to_week              varchar(2),
   from_time            varchar(2),
   to_time              varchar(2),
   is_valid             boolean,
   primary key (id)
);