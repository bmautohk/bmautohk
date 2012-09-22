<?php

require_once "Auth.php";
include_once "dbconnection.php";
 
function loginFunction($username = null, $status = null, &$auth = null)
{
  
 ?>
 <link rel="stylesheet" type="text/css" href="../css/style.css" />
 <form name="form1" method="post" action="index.php">
<table width="100%" border="0" cellpadding="3" cellspacing="0">
  <tr>
    <td bgcolor="#000000"><img src="../images/logo_back.jpg" width="120" height="119" /></td>
    <td bgcolor="#000000" align="right" valign="bottom"><font color="#999999" face="Arial, Helvetica, sans-serif" size="2px">BM AUTO ACCESSORIES (HK) CO.,LTD.</font></td>
  </tr>
  <tr><td colspan="2" class="horizontalborder" height="1"></td></tr>
  <tr>
    <td colspan="2" align="center" class="backendlogin">
      <table width="40%" border="0">
        <tr>
          <td><br /><br /></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td width="78"><font color="#FFFFFF">Username</font></td>
          <td width="6" ><font color="#FFFFFF">:</font></td>
          <td width="294"><input name="username" type="text" id="username"></td>
        </tr>
        <tr>
          <td><font color="#FFFFFF">Password</font></td>
          <td><font color="#FFFFFF">:</font></td><br />
          <td colspan="2"><input name="password" type="password" id="password" />
          </td>
        </tr>
        <tr>
          <td><br /></td>
          <td></td>
          <td></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><input type="image" src="../images/login.jpg" /></td><td><input type="checkbox" /><font color="#FFFFFF">Remember Me</font></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</form><?php
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
