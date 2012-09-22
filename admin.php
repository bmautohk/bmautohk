<? include("dbconnection.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理頁</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>
<table cellspacing="0" cellpadding="0" border="0">
  <tr>
    <td class="horizontalborder" colspan="17" height="1"></td>
  </tr>
  <tr>
    <td class="verticalborder" width="1"></td>
    <td width="80"></td>
    <td class="verticalborder" width="1"></td>
    <td width="80">製造商</td>
    <td class="verticalborder" width="1"></td>
    <td width="60">型號</td>
    <td class="verticalborder" width="1"></td>
    <td width="100">產品名稱</td>
    <td class="verticalborder" width="1"></td>
    <td width="100">產品顏色</td>
    <td class="verticalborder" width="1"></td>
    <td width="100">產品類別</td>
    <td class="verticalborder" width="1"></td>
    <td width="100">產品數量</td>
    <td class="verticalborder" width="1"></td>
    <td width="400">產品描述</td>
    <td class="verticalborder" width="1"></td>
  </tr>
  <tr>
    <td class="horizontalborder" colspan="17" height="1"></td>
  </tr>
<?php
$result = mysql_query("SELECT * FROM product order by product_made, product_model;");
while($row = mysql_fetch_array($result)) {
	echo "<tr>
	        <td class='verticalborder' width='1'></td>
			<td><input type='button' href='productedit.php?' value='編輯'/></td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_made']."</td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_model']."</td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_name']."</td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_colour']."</td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_cat']."</td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_qty']."</td>
			<td class='verticalborder' width='1'></td>
			<td>".$row['product_desc']."</td>
			<td class='verticalborder' width='1'></td>
		  </tr>
		  <tr>
    		<td class='horizontalborder' colspan='16' height='1'></td>
  		  </tr>";
}
?>
  </tr>
</table>
</body>
</html>