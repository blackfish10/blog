-- 按照存储大小查询最大的10张表
-- 查询包括表和相关索引

SELECT soatischemaname AS schemaname,
       soatitablename AS tablename,
       round(max(soatisize)/power(1024,3)::integer,3) size_GB
FROM gp_toolkit.gp_size_of_all_table_indexes
GROUP BY soatischemaname,
         soatitablename
ORDER BY 3 DESC
LIMIT 10;