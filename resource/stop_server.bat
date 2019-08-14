@echo off
set NGINX_DIR=C:\wnmp\nginx
set PHP_DIR=C:\wnmp\php
set MYSQL_DIR=C:\wnmp\mysql

echo Stopping Nginx...  
taskkill /F /IM nginx.exe > nul
echo Stopped Nginx.

echo Stopping PHP-FastCGI...
taskkill /F /IM php-cgi.exe > nul
echo Stopped PHP-FastCGI.

echo Stopping MySQL...
%MYSQL_DIR%\bin\mysqladmin -uroot -p123456 shutdown
echo Stopped MySQL.