<?php
if (isset($model)) {
	$href = "productdetails.php?brand=".$model."&";
}
else {
	$href = "productdetails.php?";
}
$i = 1;
if (isset($productquery)) {
	$result = $productquery;
	$result = mysql_query($result);
}
$num_rows = mysql_num_rows($result);
$currentRow = 1;

if ($num_rows % 2 == 1) {
	$cellCnt = 1;
}
?>
<table cellspacing="0" cellpadding="0" border="0">
<?php
while($row = mysql_fetch_array($result)) {
	$desc = $row['product_made']." ".$row['product_car_name']." ".$row['product_model']." ".$row['product_name'];
	if ($i % 2 == 1) {
		echo "<tr>
			<td valign='top' width='15%' height='184' class='newitem'><a class='productdetail' href=".$href."productdetail=".$row['product_cd']."><img src='images/product/".$row['product_cd']."_s.jpg'></a></td>
			<td width='2%'></td>
			<td valign='top' width='15%' height='184' class='newitem'>產品名稱: <a class='productdetail' href=".$href."productdetail=".$row['product_cd'].">".$desc."</a><br><br>車種: ".$row['product_made']."<br><br>適合型號: ".$row['product_car_name']." ".$row['product_model']."</td>";
		if ($currentRow == ceil($num_rows / 2) and ($num_rows % 2) == ($i % 2)) {
			for ($r = 0; $r < $cellCnt; $r++) {
				echo "<td width='2%'></td>
				  	  <td valign='top' width='20%' height='184' class='newitem'></td>
				  	  <td width='2%'></td>
					  <td valign='top' width='20%' height='184' class='newitem'></td>";
			}
			echo "<td height='8' width='2%'></td>";
		}
	}						
  
	elseif ($i % 2 == 0){
		echo "<td width='2%'></td>
		  	  <td valign='top' width='15%' height='184' class='newitem'><a class='productdetail' href=".$href."productdetail=".$row['product_cd']."><img src='images/product/".$row['product_cd']."_s.jpg'></a></td>
		  	  <td width='2%'></td>
		  	  <td valign='top' width='15%' height='184' class='newitem'>產品名稱: <a class='productdetail' href=".$href."productdetail=".$row['product_cd'].">".$desc."</a><br><br>車種: ".$row['product_made']."<br><br>適合型號: ".$row['product_car_name']." ".$row['product_model']."</td>
		  	  <td width='2%'></td>			  		
			  </tr>";
		$currentRow = $currentRow + 1;
  }
  
	$i = $i + 1;
}
?>
</table>
