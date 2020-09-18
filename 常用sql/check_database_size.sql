--查询每个数据库的空间大小

SELECT datname,
       pg_size_pretty(pg_database_size(datname)) AS SIZE
FROM pg_database;