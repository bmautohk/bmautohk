<html xmlns="http://www.w3.org/1999/xhtml"><script type="text/javascript">window["_gaUserPrefs"] = { ioo : function() { return true; } }</script>
<head><meta http-equiv="Content-Type" content="text/html; charset=EUC-JP"></head><?php
include("dbconnection.php");?>
<FORM ACTION="productlist.php" METHOD="POST">
<?php
if ($_POST['showby'] == "By Category") {
	$query = "select product_group from product_member group by product_group having product_group is not null order by product_id asc";	
}
elseif ($_POST['showby'] == "By Model") {
	$query = "SELECT product_model from product_member group by product_model HAVING product_model IS NOT NULL order by product_id asc";
}
//elseif ($_POST['showby'] == "By Product") {
//	$query = "SELECT product_model from product group by //product_model HAVING product_model IS NOT NULL order by //product_model asc";
//}
$result = mysql_query($query);
echo "<table><tr><td>".$_POST['showby']."</td></tr><tr><td>";

?>
<div class="scroll" style="width:180px">
	<table><tr><td>
	
<?php
if ($_POST['showby'] == "By Category") {
	echo "<SELECT NAME='option'>";
	while($row = mysql_fetch_array($result)) {
	
		$desc = $row['product_group'];
		dropdown($desc);
	}
	echo "</SELECT>";
}
elseif ($_POST['showby'] == "By Model")  {
	echo "<SELECT NAME='option'>";
	while($row = mysql_fetch_array($result)) {
		$desc = $row['product_model'];
		dropdown($desc);
	}
	echo "</SELECT>";
}
	?>
		
	</div>

<?php

	if ($_POST['showby'] == "By Product") {
		echo "<input type='text' name='productid'>";
	}
?></td><td>
<INPUT TYPE=SUBMIT VALUE="Go"></td></tr>
<tr>
	<td><input type="hidden" name="showby" value="<?php echo $_POST['showby']; ?>"></td>
</tr>

<?php 
	if ($_POST['option'] != "") {
		if ($_POST['showby'] == "By Category") {
			$cat = $_POST['option'];
			$showquery = "select * from product_member where product_group='".$cat."';";
		}
		elseif ($_POST['showby'] == "By Model") {
			$model = $_POST['option'];
			$showquery = "select * from product_member where product_model='".$model."';";
		}	
	}
	elseif ($_POST['productid'] != "") {
		if ($_POST['showby'] == "By Product") {
			$productid = $_POST['productid'];
			$showquery = "select * from product_member where product_id='".$productid."';";
		}
	}
	//echo "a: ".$showquery;
?>


<?php
	$showresult = mysql_query($showquery);
	while($row = mysql_fetch_array($showresult)) {
		echo "<tr><td>Product ID: ".$row['product_id']."<br>Brand: ".$row['product_made']."<br>Model: ".$row['product_model']."</td></tr>";
}

function dropdown($desc) {
	echo "<OPTION VALUE='".$desc."'>".$desc."</OPTION>";
}
?>
</table>
<script>
function findPartNoAjax(goods_row, stockFlag) {
	 
	//product_id = document.getElementById("goods_partno").value;
	 
	//if (product_id == '') {
		document.getElementById("productCheckImg" + index).style.display = 'none';
		clearProductField(index);
		calSubTotal();
	//}
	//else {
		xmlhttp=GetXmlHttpObject();
		if (xmlhttp==null) {
			alert ("Browser does not support HTTP Request");
			return;
		}
		
			document.getElementById("real_stock").value = 'Retrieving ...';
  
			xmlhttp.onreadystatechange=stateChangedStock;
			//xmlhttp.open("GET","productStockXml.php?product_id=" + product_id,true);
			xmlhttp.send(null);
		 

	//}
}
function stateChangedStock() {
	if (xmlhttp.readyState==4) {
		xmlDoc=xmlhttp.responseXML;
		node = xmlDoc.getElementsByTagName("real_stock")[0].childNodes[0]
		if (node != null)	document.getElementById("real_stock").value = node.nodeValue;
	}
}

function GetXmlHttpObject()
{
if (window.XMLHttpRequest)
  {
  // code for IE7+, Firefox, Chrome, Opera, Safari
  return new XMLHttpRequest();
  }
if (window.ActiveXObject)
  {
  // code for IE6, IE5
  return new ActiveXObject("Microsoft.XMLHTTP");
  }
return null;
}
</script>
</form>
</html>

