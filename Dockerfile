FROM mariadb:10.3

ENV MYSQL_ROOT_PASSWORD USER_ROOT_PASSWORD

WORKDIR /etc/mysql

# configure
# upperlower setting
RUN echo "lower_case_table_names=1" >> /etc/mysql/conf.d/docker.cnf \
# timezone setting
&& echo "default-time-zone='+9:00'" >> /etc/mysql/conf.d/docker.cnf \
# charset setting
&& echo "character-set-server = utf8mb4" >> /etc/mysql/conf.d/docker.cnf \
&& echo "collation-server = utf8mb4_general_ci" >> /etc/mysql/conf.d/docker.cnf \
&& echo "default-storage-engine=Innodb" >> /etc/mysql/conf.d/docker.cnf \
&& echo "innodb_log_file_size=2GB" >> /etc/mysql/conf.d/docker.cnf \
&& echo "explicit_defaults_for_timestamp=true" >> /etc/mysql/conf.d/docker.cnf \
&& echo "max_connections=3600" >> /etc/mysql/conf.d/docker.cnf \
&& echo "innodb_large_prefix=ON" >> /etc/mysql/conf.d/docker.cnf \
&& echo "innodb_file_format=Barracuda" >> /etc/mysql/conf.d/docker.cnf \
&& echo "innodb_file_format_check=ON" >> /etc/mysql/conf.d/docker.cnf \
&& echo "innodb_file_format_max=Barracuda" >> /etc/mysql/conf.d/docker.cnf \
&& echo "innodb_file_per_table=ON" >> /etc/mysql/conf.d/docker.cnf \
&& echo "default-character-set = utf8mb4" >> /etc/mysql/conf.d/docker.cnf