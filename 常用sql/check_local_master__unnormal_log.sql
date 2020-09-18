--检查本地master日志报错信息
select * from gp_toolkit.__gp_log_master_ext where logseverity in ('FATAL','ERROR','PANIC') order by logsessiontime;