--查看每个query创建的溢出文件

SELECT procpid,
       sum(SIZE)/power(1024,3),
       avg(SIZE)/power(1024,3)
FROM gp_toolkit.gp_workfile_usage_per_query
GROUP BY procpid;