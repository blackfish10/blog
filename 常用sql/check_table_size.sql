--查询某张表的大小

SELECT pg_size_pretty(pg_total_relation_size('shema_name.table_name'));