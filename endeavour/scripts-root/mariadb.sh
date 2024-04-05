#!/bin/bash

# Check if MariaDB is installed
x=`pacman -Qs mariadb`
if [ -n "$x" ]; then
    echo ""
    echo "-------------------------------------------------------"
    echo "Setup der Datenbank MariaDB"
    echo "-------------------------------------------------------"
    echo "Anlegen der Verzeichnisse"
    mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

    echo -n "Passwort für Benutzer admin in der Datenbank: "
    read ADMIN_PASSWORD

    echo "CREATE USER 'admin'@'localhost' IDENTIFIED BY '$ADMIN_PASSWORD';" > /tmp/maria.sql
    echo "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;" >> /tmp/maria.sql
    echo "FLUSH PRIVILEGES;" >> /tmp/maria.sql
    echo "exit" >> /tmp/maria.sql

    mariadb -u root < /tmp/maria.sql
    rm /tmp/maria.sql
fi
