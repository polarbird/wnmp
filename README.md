wnmp用于简化windows平台上的php开发环境安装。

注意：本文档内容不包括Git的安装和使用。

###软件版本
 序号 | 名称 | 版本号 | 安装包名称 | 安装包下载链接地址
 :----: | :----: | :----: | :----: | :---- 
 1      | PHP    | 7.0    | php-7.0.30-nts-Win32-VC14-x64.zip | https://windows.php.net/downloads/releases/php-7.0.30-nts-Win32-VC14-x64.zip
 2      | Nginx  | 1.14.0 | nginx-1.14.0.zip                  | http://nginx.org/download/nginx-1.14.0.zip
 3      | MySQL  | 5.6.40 | mysql-5.6.40-winx64.zip           | https://cdn.mysql.com//Downloads/MySQL-5.6/mysql-5.6.40-winx64.zip

###安装说明

1.在命令行窗口输入以下命令 clone 本项目到 C:\。
>
>cd c:\
>
>git clone git@e.coding.net:youpin/wnmp.git
>

2.因为windows平台运行PHP 7.0依赖于Visual C++ Redistributable 2015，进入resource文件夹，使用“vc_redist.x64.exe”安装 Visual C++ Redistributable for Visual Studio 2015 64位。

3.将resource文件夹中的php、nginx、mysql的zip包分别解压到本项目中php、nginx、mysql三个文件夹,解压完成后的文件夹结构如下图所示。

![图片](https://youpin.coding.net/api/project/17764/files/162937/imagePreview)

4.将resource文件夹中的文件分别复制到下列所述文件夹的对应位置。
 序号 | 名称 | 路径
 :----: | :----: | :----
 1      | verify                                   | C:\wnmp\php\verify
 2      | php.ini                                  | C:\wnmp\php\php.ini
 3      | php_pdo_sqlsrv_7_nts_x64.dll             | C:\wnmp\php\ext\php_pdo_sqlsrv_7_nts_x64.dll
 4      | php_sqlsrv_7_nts_x64.dll                 | C:\wnmp\php\ext\php_sqlsrv_7_nts_x64.dll
 5      | php_xdebug-2.5.5-7.0-vc14-nts-x86_64.dll | C:\wnmp\php\ext\php_xdebug-2.5.5-7.0-vc14-nts-x86_64.dll
 6      | nginx.conf                               | C:\wnmp\nginx\conf\nginx.conf
 7      | vhosts                                   | C:\wnmp\nginx\conf\vhosts
 8      | my.ini                                   | C:\wnmp\mysql\my.ini
 9      | start_server.bat                         | C:\wnmp\start_server.bat
 10     | stop_server.bat                          | C:\wnmp\stop_server.bat

5.执行下列命令将mysql中root的登录密码修改为123456。
>
>cd c:\wnmp\mysql\bin
>
>mysqld --console
>
>mysql -uroot -p
>
>SET PASSWORD FOR 'root'@'localhost' = PASSWORD('123456');
>

6.配置系统PHP环境变量
>
>在系统环境变量PATH中加入;C:\wnmp\php
>
>在任意命令行中输入php -v 验证php安装成功
>

7.配置系统phars环境变量
>
>在系统环境变量PATH中加入;C:\wnmp\phars
>
>在任意命令行中输入composer -V 验证composer安装成功
>
>在任意命令行中输入phpunit --version 验证phpunit安装成功
>

8.配置批处理程序的环境变量
>
>在系统环境变量PATH中加入;C:\wnmp
>
>在任意命令行中输入start_server.bat和stop_server.bat，如果显示结果如下图所示，说明环境变量配置成功。
>说明：截图中没有mysql的相关信息，是因为我修改了本机的start_server.bat和stop_server.bat文件，删除了其中启动mysql和关闭mysql的代码。
>

![图片](https://youpin.coding.net/api/project/17764/files/162941/imagePreview)

###使用说明

1.执行以下命令启动服务器。
>
>start_server.bat
>

2.执行以下命令关闭服务器。
>
>stop_server.bat
>
