--检查死锁

SELECT usename,
       COUNT(DISTINCT l.pid)
FROM pg_locks l
JOIN pg_stat_activity a ON (a.pid=l.pid)
WHERE l.granted IS FALSE
GROUP BY 1
ORDER BY COUNT DESC;