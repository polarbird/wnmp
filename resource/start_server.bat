@echo off
set WNMP_DIR=C:\wnmp
set NGINX_DIR=C:\wnmp\nginx
set PHP_DIR=C:\wnmp\php
set MYSQL_DIR=C:\wnmp\mysql

REM Windows The following is not valid  
REM set PHP_FCGI_CHILDREN=5

REM  Each process handles the maximum number of requests, or is set to Windows Environment variables  
set PHP_FCGI_MAX_REQUESTS=1000

:: Start PHP-fastcgi on port 8888
start "PHP FastCGI" /B "%PHP_DIR%\php-cgi.exe" -b localhost:8888
echo Started PHP-FastCGI on port 8888.

:: Start MySQL using the mysql\my.ini config file
set PATH = %PATH%;%MYSQL_DIR%\bin
start "MySQL" /B "%MYSQL_DIR%\bin\mysqld.exe" "--defaults-file=%MYSQL_DIR%\my.ini"
echo Started MySQL.

:: Start the nginx server
cd /d %NGINX_DIR%
start "nginx" /B "%NGINX_DIR%\nginx.exe"
echo Started nginx.