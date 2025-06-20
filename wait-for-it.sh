#!/bin/sh
echo "Waiting for MySQL to be ready..."
while ! nc -z mysql-db 3306; do
  sleep 2
done
echo "MySQL is up - starting Spring Boot app"
exec java -jar app.jar
