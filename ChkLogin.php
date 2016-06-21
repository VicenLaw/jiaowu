<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>
<body>
<?php
session_start();
include("conn/db_conn.php");
include("conn/db_func.php");
$role=$_POST['role'];
$username=$_POST['username'];
$userpwd=$_POST['userpwd'];
if($role=="teacher")
{
	$ChkLogin="select * from teacher where TeaNo='$username' and Pwd='$userpwd'";
	}
	else
	{
		$ChkLogin="select * from student where StuNo='$username' and Pwd='$userpwd'";
		}
		$ChkLoginResult=db_query($ChkLogin);
		$number=db_num_rows($ChkLoginResult);
        $row=db_fetch_array($ChkLoginResult);
		if($number>0){
			if($role=="teacher"){
				$_SESSION["username"]=$username;
				$_SESSION["role"]="teacher";
				header("Location:tea/ShowCourse.php");
				}
			else{
					$_SESSION["username"]=$username;
					header("Location:stu/ShowCourse.php");
					//echo "123";
					}	
			}else{
				echo"<script>";
				echo"alert(\"错误的用户名或者密码，请重新登录\");";
				echo"location.href=\"login.php\"";
				echo"</script>";
				}
?>
</body>
</html>