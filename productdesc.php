<?php

//if (isset($model)) {
	$query_str = http_build_query(array('brand'=>$model));
	if ($query_str != "") {
		$href = "productdetails.php?".$query_str."&";
	}
	else {
		$href = "productdetails.php?";
	}
//}
//else {
//	$href = "productdetails.php?";
//}

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

function doPages($page_size, $thepage, $query_string, $total) {
	
    //per page count   
    $index_limit = 10;   
  
    //set the query string to blank, then later attach it with $query_string   
    $query='';   
  
    if(strlen($query_string)>0){   
        $query = "&".$query_string;   
    }   
  
    //get the current page number example: 3, 4 etc: see above method description   
    $current = get_current_page();   
  
    $total_pages=ceil($total/$page_size);   
    $start=max($current-intval($index_limit/2), 1);   
    $end=$start+$index_limit-1;
    echo '<DIV class=paging>';
    if($current==1) {
        echo '<SPAN class=prn>< Previous</SPAN> ';   
    } else {   
        $i = $current-1;
        echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'" rel=nofollow>< Previous</A> ';   
        echo '<SPAN class=prn>...</SPAN> ';   
    }   
  
    if($start > 1) {   
        $i = 1;
        echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'],  'page'=>$i)).'">'.$i.'</A> ';   
    }   
  
    for ($i = $start; $i <= $end && $i <= $total_pages; $i++){   
        if($i==$current) {   
            echo '<SPAN>'.$i.'</SPAN> ';   
        } else {
            echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'">'.$i.'</A> ';   
        }   
    }   
  
    if($total_pages > $end){   
        $i = $total_pages;
        echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'">'.$i.'</A> ';   
    }   
  
    if($current < $total_pages) {   
        $i = $current+1;
        echo '<SPAN class=prn>...</SPAN> ';   
        echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'" rel=nofollow>Next ></A> ';   
    } else {   
        echo '<SPAN class=prn>Next ></SPAN> ';   
    }     
}//end of method doPages()   
  
//Both of the functions below required   
  
function check_integer($which) {   
    if(isset($_REQUEST[$which])){   
        if (intval($_REQUEST[$which])>0) {   
            //check the paging variable was set or not,   
            //if yes then return its number:   
            //for example: ?page=5, then it will return 5 (integer)   
            return intval($_REQUEST[$which]);   
        } else {   
            return false;   
        }   
    }   
    return false;   
}//end of check_integer()   
  
function get_current_page() {   
    if(($var=check_integer('page'))) {   
        //return value of 'page', in support to above method   
        return $var;   
    } else {   
        //return 1, if it wasnt set before, page=1   
        return 1;   
    }   
}//end of method get_current_page()
?>
<table cellspacing="0" cellpadding="0" border="0">
  <tr>
    <td colspan="8" height="60"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
<?php
while($row = mysql_fetch_array($result)) {
	$desc = $row['product_made']." ".$row['product_car_name']." ".$row['product_model']." ".$row['product_name'];
	if ($i % 2 == 1) {
		echo "<tr>
			<td valign='top' width='150' height='180'   class='newitem'><a class='productdetail' href=".$href."productdetail=".$row['product_cd']."><img src='images/product/".$row['product_cd']."_s.jpg' width='150'></a></td>
			<td width='2%'></td>
			<td valign='top' width='150'  class='newitem'>產品名稱: <a class='productdetail' href=".$href."productdetail=".$row['product_cd'].">".$desc."</a><br><br>車種: ".$row['product_made']."<br><br>適合型號: ".$row['product_car_name']." ".$row['product_model']."</td>";
		if ($currentRow == ceil($num_rows / 2) and ($num_rows % 2) == ($i % 2)) {
			for ($r = 0; $r < $cellCnt; $r++) {
				echo "<td width='2%'></td>
				  	  <td valign='top'   class='newitem'></td>
				  	  <td width='2%'></td>
					  <td valign='top'   class='newitem'></td>";
			}
			echo "<td height='8' width='2%'></td>";
		}
	}						
  
	elseif ($i % 2 == 0){
		echo "<td width='2%'></td>
		  	  <td valign='top'  width='150' height='150'  class='newitem'><a class='productdetail' href=".$href."productdetail=".$row['product_cd']."><img src='images/product/".$row['product_cd']."_s.jpg' width='150'></a></td>
		  	  <td width='2%'></td>
		  	  <td valign='top'  width='150'  class='newitem'>產品名稱: <a class='productdetail' href=".$href."productdetail=".$row['product_cd'].">".$desc."</a><br><br>車種: ".$row['product_made']."<br><br>適合型號: ".$row['product_car_name']." ".$row['product_model']."</td>
		  	  <td width='2%'></td>			  		
			  </tr>";
		$currentRow = $currentRow + 1;
  }
  
	$i = $i + 1;
}
?>
  <tr>
    <td colspan="8" height="20"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
</table>
