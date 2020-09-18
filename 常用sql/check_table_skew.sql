--查看segment偏移

select gp_segment_id,count(1) from schema_name.table_name  group by 1 order by 1 ;