<?php
require_once "Auth.php";
include("dbconnection.php");

function loginFunction($username = null, $status = null, &$auth = null)
{
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>TopNOV</title>

<link rel="stylesheet" type="text/css" href="../css/style.css" />


</head>

<body>
<center>
<table width="748" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <form name="form1" method="post" action="index.php">
<td align="center">
<table width="60%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
<tr>
<td colspan="3"><strong>Login </strong></td>
</tr>
<tr>
<td width="78">Username</td>
<td width="6">:</td>
<td width="294"><input name="username" type="text" id="username"></td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input name="password" type="password" id="password"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Login"></td>
</tr>
</table>
</td>
</form>
        </tr>
      </table>
</center>
</body>
</html>
<?php
}

$options = array(
    'dsn' => $dsn,
  'table' => "customer",
  'usernamecol' => "cust_cd",
  'passwordcol' => "password",
  'cryptType'=>'',
  'db_fields'=>'*',
  );
$a = new Auth("DB", $options, "loginFunction");

$a->start();

if ($a->checkAuth()) {
     header("Location: index2.php");
}else{
	 
}
?>
