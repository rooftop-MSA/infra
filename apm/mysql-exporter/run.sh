sudo docker run -d -p 9104:9104 \
-v ./exporter.cnf:/etc/mysql/my.cnf \
prom/mysqld-exporter \
--config.my-cnf=/etc/mysql/my.cnf \
--collect.info_schema.processlist --collect.info_schema.innodb_metrics --collect.info_schema.tablestats \
--collect.info_schema.tables --collect.info_schema.userstats --collect.engine_innodb_status \
