-- ----------------------------
-- sequence function create
-- ----------------------------

drop function if exists bj;
delimiter $
create function bj (seq_name varchar(50))
returns varchar(20)
contains sql
begin
	declare seq_rules varchar(255);
	declare seq_length int(2);
	declare seq_max bigint(20);

	declare max_id_length int(20);
	declare max_id varchar(20);

	select rules,s_sequence.`length`,`max` into seq_rules, seq_length,seq_max from s_sequence where name =  seq_name ;

	set max_id = seq_max;
	set max_id_length = character_length(max_id);

	#长度不够补0
	while seq_length > max_id_length do
		set max_id = concat('0',max_id);
		set max_id_length = character_length(max_id);
	end while; 

	#替换规则
	if seq_rules is not null and instr(seq_rules,'###max_id###') > 0   then
		set max_id = replace(seq_rules,'###max_id###',max_id);
	end if;

	return max_id;
end$
delimiter ;


drop function if exists nextval;
delimiter $
create function nextval (seq_name varchar(50))
returns varchar(20)
contains sql
begin
   update s_sequence set `max` = `max` + next  where name = seq_name;
   return bj(seq_name);
end$
delimiter ;