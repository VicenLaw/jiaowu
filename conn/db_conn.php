<?php
	$DB_HOST	= "localhost";	  //数据库主机位置
	$DB_LOGIN	= "root";	  //数据库的使用账号
	$DB_PASSWORD	= "";	  //数据库的使用密码
	$DB_NAME	= "xk";           //数据库名称

	$conn = mysql_connect($DB_HOST, $DB_LOGIN, $DB_PASSWORD);
/* 	if($conn)           //检测数据库是否连接成功
	{
		echo "数据库连接成功！";
	}
	else
	{
		echo "数据库没有连接成功！";
	} */
	mysql_select_db($DB_NAME);
        mysql_query("SET NAMES UTF8");	
?>