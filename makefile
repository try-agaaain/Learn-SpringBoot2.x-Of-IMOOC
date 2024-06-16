install_mysql:
	sudo apt update
	sudo apt-get install mysql-server mysql-client -y
	# sudo service mysql status
	sudo service mysql start
	
create_mysql_user: 
	sudo mysql -u root -e "\
	CREATE USER 'guest'@'%' IDENTIFIED WITH mysql_native_password BY '123456'; \
	GRANT ALL PRIVILEGES ON *.* TO 'guest'@'%' WITH GRANT OPTION; \
	FLUSH PRIVILEGES; \
	"

USER = guest
PASS = 123456

create_db:
	sudo mysql -u guest -p -t < db.sql

install_postman:
	sudo apt update
	sudo apt install snapd
	
	sudo systemctl unmask snapd.service
	sudo systemctl enable snapd.service
	sudo systemctl start snapd.service

	sudo snap install postman

