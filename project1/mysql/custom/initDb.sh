#!/bin/bash

start_db() {
	# Hack to get MySQL up and running... I need to look into it more.
	echo "Running the start_db() function."
	# mysql_install_db
	chown -R mysql:mysql /var/lib/mysql
	/usr/bin/mysqld_safe & 
	sleep 10
}

init_data() {
	echo "Running the init_data() function."
	local USER=root
	local PASSWORD=toor
	local DB_NAME=project1
	mysqladmin -u ${USER} password ${PASSWORD}
	mysql -u ${USER} -p${PASSWORD} -e "CREATE DATABASE ${DB_NAME};"
	# Warning: Password is equal than username
	mysql -u ${USER} -p${PASSWORD} -e "CREATE USER '${DB_NAME}'@'%' IDENTIFIED BY '${DB_NAME}';"
	mysql -u ${USER} -p${PASSWORD} -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_NAME}'@'%';"
	mysql -u ${USER} -p${PASSWORD} ${DB_NAME} < /backup_db.sql
}

stop_db() {
	echo "Running the stop_db() function."
	killall mysqld
	sleep 10
}

# Call all functions
start_db
init_data
stop_db
