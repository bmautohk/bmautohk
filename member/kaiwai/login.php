<?php
include("dbconnection.php");
$query = "select * from customer where cust_cd = '".$_POST['username']."' and password = '".$_POST['password']."';";
$result = mysql_query($query);
$count=mysql_num_rows($result);
if ($count == 1){
	header("Location: index2.php");
}
 
?>