<?php
	function db_query($sqlstr)	{return mysql_query($sqlstr);}
	function db_num_rows($res)	{return mysql_num_rows($res);}
	function db_fetch_array($res)	{return mysql_fetch_array($res);}
	function db_fetch_object($res)	{return mysql_fetch_object($res);}
	function db_data_seek($res,$num){return mysql_data_seek($res,$num);}
?>
