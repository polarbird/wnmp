wnmp用于简化windows平台上的php开发环境安装。

注意：本文档内容不包括Git的安装和使用。

### 软件版本

 序号 | 名称 | 版本号 | 安装包名称 | 安装包下载链接地址
 ---- | ---- | ---- | ---- | ---- 
 1      | PHP    | 7.3.15  | php-7.3.15-nts-Win32-VC15-x64.zip  | https://windows.php.net/downloads/releases/php-7.3.15-nts-Win32-VC15-x64.zip
 2      | Nginx  | 1.18.0 | nginx-1.18.0.zip                  | http://nginx.org/download/nginx-1.18.0.zip
 3      | MySQL  | 5.7.27 | mysql-5.7.27-winx64.zip           | https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.27-winx64.zip

### 安装说明

1.在命令行窗口输入以下命令 clone 本项目到 C:\。
>
>cd C:\
>
>git clone git@github.com:polarbird/wnmp.git
>

2.因为windows平台运行PHP 7.3 依赖于Visual C++ Redistributable 2017 ，访问 https://aka.ms/vs/16/release/VC_redist.x64.exe 下载文件，使用“VC_redist.x64.exe”安装 Visual C++ Redistributable for Visual Studio 2017 64位。

3.访问上述表格中的安装包下载链接地址，下载 php、nginx、mysql 的 zip 包，并分别解压到本项目中php、nginx、mysql三个文件夹,解压完成后的文件夹结构如下图所示。

![图片](https://github.com/polarbird/wnmp/blob/master/resource/fc955a70-6e22-11e8-81cd-27cee32a117f.jpg?raw=true)

4.将resource文件夹中的文件分别复制到下列所述文件夹的对应位置。

 序号 | 名称 | 路径
 ---- | ---- | ----
 1      | verify                                   | C:\wnmp\php\verify
 2      | php.ini                                  | C:\wnmp\php\php.ini
 3      | php_pdo_sqlsrv_73_nts_x64.dll            | C:\wnmp\php\ext\php_pdo_sqlsrv_73_nts_x64.dll
 4      | php_sqlsrv_73_nts_x64.dll                | C:\wnmp\php\ext\php_sqlsrv_73_nts_x64.dll
 5      | php_xdebug-2.7.2-7.3-vc15-nts-x86_64.dll | C:\wnmp\php\ext\php_xdebug-2.7.2-7.3-vc15-nts-x86_64.dll
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
>在系统环境变量PATH中加入;d
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

![图片](https://github.com/polarbird/wnmp/blob/master/resource/cade30f0-6e23-11e8-b836-7196cc07eb35.jpg?raw=true)

### 使用说明

1.执行以下命令启动服务器。
>
>start_server.bat
>

2.执行以下命令关闭服务器。
>
>stop_server.bat
>
