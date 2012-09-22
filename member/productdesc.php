<?php

$result = "SELECT * FROM product;";
 
	$query_str = http_build_query(array('brand'=>$model));
	if ($query_str != "") {
		$href = "productdetails.php?".$query_str."&";
	}
	else {
		$href = "productdetails.php?";
	}
 
$i = 1;
if (isset($_GET['page'])) {
	$startidx = ($_GET['page'] - 1) * 10;
	$endidx = 10;
	
	if (isset($productquery)) {		
		$result = $productquery;
		$totalresult = $result;
		$result = str_replace(";", " limit ".$startidx.", ".$endidx, $result);
	}
	else {
		$totalresult = $result;
		$result = str_replace(";", " limit ".$startidx.", ".$endidx, $result);
	}
}
else{
	$startidx = 0;
	$endidx = 10;
	if (isset($productquery)) {		
		$result = $productquery;
		$totalresult = $result;
		$result = str_replace(";", " limit ".$startidx.", ".$endidx, $result);
	}
	else {
		$totalresult = $result;
		$result = str_replace(";", " limit ".$startidx.", ".$endidx, $result);
	}
}
$result = mysql_query($result);
$totalresult = mysql_query($totalresult);
$num_rows = mysql_num_rows($result);
$total_num_rows = mysql_num_rows($totalresult);
$currentRow = 1;
if ($num_rows % 2 == 1) {
	$cellCnt = 1;
}

  
//Both of the functions below required   
  
?>
<table cellspacing="0" cellpadding="0" border="0">
  <tr>
    <td colspan="8" height="60" align="center"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
<?php
while($row = mysql_fetch_array($result)) {
	$desc = $row['product_made']." ".$row['product_car_name']." ".$row['product_model']." ".$row['product_name'];
	 
		echo "<tr>
			<td valign='top' width='15%' height='184' class='newitem'><a class='productdetail' href=".$href."prod_id=".$row['product_id']."><img src='images/product/".$row['product_id']."_s.jpg'></a></td>
			<td width='2%'></td>
			<td valign='top' width='15%' height='184' class='newitem'>Prod Name: <a class='productdetail' href=".$href."prod_id=".$row['product_id'].">".$desc."</a><br><br>Model: ".$row['product_made']."<br><br>Car Model: ".$row['product_car_name']." ".$row['product_model']."</td>";
		if ($currentRow == ceil($num_rows / 2) and ($num_rows % 2) == ($i % 2)) {
			for ($r = 0; $r < $cellCnt; $r++) {
				echo "<td width='2%'></td>
				  	  <td valign='top' width='20%' height='184' class='newitem'></td>
				  	  <td width='2%'></td>
					  <td valign='top' width='20%' height='184' class='newitem'></td>";
			}
			echo "<td height='8' width='2%'></td></tr>";
		}
	 						
  
 
  
	$i = $i + 1;
}
?>
  <tr>
    <td colspan="8" height="20" align="center"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
</table>

