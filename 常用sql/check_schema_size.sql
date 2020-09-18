--查询每个schema的空间占用大小

SELECT sosdnsp AS SchemaName,
       round(sosdschematablesize/power(1024,3)::numeric,2) AS "Table Size (GB)",
       round(sosdschemaidxsize/power(1024,3)::numeric,2) AS "Indx Size GB (GB)",
       round((sosdschematablesize + sosdschemaidxsize)/power(1024,3)::numeric,2) AS "Total Schema Size (GB)"
FROM gp_toolkit.gp_size_of_schema_disk
ORDER BY 4 DESC ;