#!/bin/bash

# Check if MariaDB is installed
dpkg -l mariadb-server > /dev/null
if [ $? -eq 0 ]; then
    echo ""
    echo "-------------------------------------------------------"
    echo "Setup der Datenbank MariaDB"
    echo "-------------------------------------------------------"
    echo -n "Passwort für Benutzer admin in der Datenbank: "
    read ADMIN_PASSWORD

    echo "CREATE USER 'admin'@'localhost' IDENTIFIED BY '$ADMIN_PASSWORD';" > /tmp/maria.sql
    echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;" >> /tmp/maria.sql
    echo "FLUSH PRIVILEGES;" >> /tmp/maria.sql
    echo "exit" >> /tmp/maria.sql

    mysql -u root < /tmp/maria.sql
    rm /tmp/maria.sql
fi