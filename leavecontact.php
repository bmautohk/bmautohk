<?php
ini_set('display_errors', 1);
 ini_set('log_errors', 1);
 ini_set('error_log', dirname(__FILE__) . '/error_log.txt');
 error_reporting(E_ALL);
include("dbconnection.php");

$fn=$_POST["first_name"];
$ln=$_POST["last_name"];
$fn2=$_POST["first_name2"];
$ln2=$_POST["last_name2"];
$email=$_POST["email"];
$email2=$_POST["email2"];
$phone=$_POST["phone"];
$ctype=$_POST["car_type"];
$detail=$_POST["detail"];

//check the email and confirm email input
if ($email <> $email2) {
	echo("メールアドレス and メールアドレス (確認用） mismatch");
	return false;
}
else {
  $sql = "INSERT INTO contactus VALUES ('".$fn."', '".$ln."', '".$fn2."', '".$ln2."','".$phone."', '".$email."', '".$ctype."', '".$detail."')";
  $result = mysql_query($sql);
  if (!$result) {
	   
  }
  else {
	   
	  header( 'Location: http://www.bmautohk.com' ) ;
  }
}
?> 