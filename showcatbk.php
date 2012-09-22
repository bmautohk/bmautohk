<?php

$i = 1;
$result = mysql_query("SELECT product_cd, (SELECT p1.product_cat FROM product p1 WHERE p1.product_cd=p.product_cd order by rand() limit 1) AS product_cat FROM product p group by p.product_cat");
//$result = mysql_query($result);
$totalresult = mysql_query("SELECT count(product_cat) FROM product group by product_cat");
//$totalresult = mysql_query($totalresult);
$num_rows = mysql_num_rows($result);
$total_num_rows = mysql_num_rows($totalresult);
$currentRow = 1;
if ($num_rows % 2 == 1) {
	$cellCnt = 1;
}

?>
<table cellspacing="8" cellpadding="3" border="0">

<?php
while($row = mysql_fetch_array($result)) {
	$str = str_replace(' ','',$row['product_cat']);
	$str = str_replace("　","", $str);
if ($i % 2 == 1) {
		echo "<tr>
		        <td><img src='images/category/".strtolower($str).".jpg'><br>
			    <img src='images/product/".$row['product_cd']."_s.jpg'></td>
			<td width='200'></td>
			<td width='200'></td>";
		if ($currentRow == ceil($num_rows / 2) and ($num_rows % 2) == ($i % 2)) {
			for ($r = 0; $r < $cellCnt; $r++) {
				echo "<td><img src='images/category/".strtolower($str).".jpg'><br>
			    <img src='images/product/".$row['product_cd']."_s.jpg'></td>";
			}
			echo "<td height='8' width='2%'></td>";
		}
	}						
  
	elseif ($i % 2 == 0){
		echo "<td width='2%'></td>
		  	  <td><img src='images/category/".strtolower($str).".jpg'><br><img src='images/product/".$row['product_cd']."_s.jpg'></td>		  		
			  </tr>";
		$currentRow = $currentRow + 1;
  }
  
	$i = $i + 1;
}
?>
  
</table>
