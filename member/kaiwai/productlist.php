<?php
include("dbconnection.php");
session_start();
$currentURL = $_SERVER["PHP_SELF"];
if (isset($_POST['showby'])) {
	$_SESSION['showby'] = $_POST['showby'];
	$showby = $_SESSION['showby'];
}
else {
	$showby = $_SESSION['showby'];
}

if (isset($_POST['option'])) {
	$_SESSION['option'] = $_POST['option'];
	$dropdownoption = $_SESSION['option'];
}
else {
	$dropdownoption = $_SESSION['option'];
}

if (isset($_POST['productid'])) {
	$_SESSION['productid'] = $_POST['productid'];
	$productid = $_SESSION['productid'];
}
else {
	$productid = $_SESSION['productid'];
}

function back(){
	echo '<a href="index.php">back</a>';
}
require_once('Auth.php');
$auth=new Auth('DB',$option,'back');
$auth->start();
if($auth->checkAuth()){
	
	
	if ($showby == "By Category") {
		$query = "select product_group from product_member group by product_group having product_group is not null order by product_id asc";	
	}
	elseif ($showby == "By Model") {
		$query = "SELECT product_model from product_member group by product_model HAVING product_model IS NOT NULL order by product_id asc";
	}
	$result = mysql_query($query);

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><script type="text/javascript">window["_gaUserPrefs"] = { ioo : function() { return true; } }</script>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<title>TopNOV</title>

<link rel="stylesheet" type="text/css" href="./index_files/style.css">

<script type="text/javascript" src="./index_files/jquery.min.js"></script>
<script type="text/javascript" src="./index_files/stepcarousel.js"></script>
<script type="text/javascript">var _siteRoot='index.html',_root='index.html';</script>
<script type="text/javascript" src="./index_files/jquery.js"></script>
<script type="text/javascript" src="./index_files/scripts.js"></script>


<script type="text/javascript">

stepcarousel.setup({
	galleryid: 'mygallery', //id of carousel DIV
	beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel', //class of panel DIVs each holding content
	autostep: {enable:false, moveby:1, pause:3000},
	panelbehavior: {speed:500, wraparound:false, wrapbehavior:'slide', persist:true},
	defaultbuttons: {enable: true, moveby: 1, leftnav: ['../images/left.jpg', 1,1], rightnav: ['../images/right.jpg', -25, 1]},
	statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
	contenttype: ['inline'] //content setting ['inline'] or ['ajax', 'path_to_external_file']
})

</script><style type="text/css">
#mygallery{overflow: hidden;}
<!--
div.scroll {
height: 400px;
width: 600px;
overflow: auto;
border: 1px solid #666;
background-color: #ccc;
padding: 8px;
}
-->
</style>
 
<body screen_capture_injected="true">
<center>
<form METHOD="POST" ACTION="productlist.php">
<table width="748" border="0" cellpadding="0" cellspacing="0"> 
  <tbody><tr>
    <td colspan="2">
      <!-- The top menu -->
      <table width="748" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
          <td class="topline" height="5" colspan="3"></td>
        </tr>
      
        <tr>
          <td rowspan="2" width="10"></td>
          <td rowspan="2" width="180" height="102"><a href=""><img src="./index_files/logo.jpg" width="180" height="102" border="0"></a></td>
          <td style="padding-right:8px" colspan="6" width="610" height="78" class="header"> </td>
        </tr>
        <tr>
         <td><?php  echo "Hi {$auth->getUserName()}";  ?> <a href="logout.php">[Logout]</a></td>
        </tr>
        <tr>
          <td class="bottomline" colspan="3" valign="top" width="800" height="1"></td>
        </tr>
        <tr>
          <td colspan="8" height="6"></td>
        </tr>
      </tbody></table>
      <!-- End of Top Menu -->
    </td>
  </tr>  
  <tr>    
    <td align="center" valign="top" width="748">
      <table cellspacing="0" cellpadding="0" border="0" width="748">  
        <tbody> 
        <tr>
          <td colspan="3">
            <!--/top-->
            <div id="header"><div class="wrap">
            <div id="slide-holder">
            <div id="slide-runner">
                <a href=""><img id="slide-img-1" src="./sliding/1--01.jpg" class="slide" alt="" style="display: inline; left: -3200px; "></a>
                <a href=""><img id="slide-img-2" src="./sliding/1--02.jpg" class="slide" alt="" style="display: inline; left: -2400px; "></a>
                <a href=""><img id="slide-img-3" src="./sliding/1--03.jpg" class="slide" alt="" style="display: inline; left: -1600px; "></a>
                <a href=""><img id="slide-img-4" src="./sliding/1--04.jpg" class="slide" alt="" style="display: inline; left: -800px; "></a>
                <a href=""><img id="slide-img-5" src="./sliding/1--05.jpg" class="slide" alt="" style="display: inline; left: 0px; "></a> 
                <div id="slide-controls" style="display: block; ">

                <p id="slide-nav"></p>
                </div>
            </div>
            </div>
               <script type="text/javascript">
                if(!window.slider) var slider={};slider.data=[{"id":"slide-img-1","client":"","desc":""},{"id":"slide-img-2","client":"","desc":""},{"id":"slide-img-3","client":"nature beauty","desc":"add your description here"},{"id":"slide-img-4","client":"nature beauty","desc":"add your description here"},{"id":"slide-img-5","client":"nature beauty","desc":"add your description here"}];
               </script>
            </div></div>
          </td>
        </tr>         
 		
        <tr>
          <td align="center" width="33%"><input type="submit" name="showby" value="By Category"/></td><td align="center" width="33%"><input type="submit" name="showby" value="By Model"/></td><td align="center" width="33%" colspan="2"><input type="submit" name="showby" value="By Product"/>
          </td>
        </tr>
      </tbody>
    </table>
    
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="3" align="center" width="748">
<?php
          echo $showby."</td></tr><tr><td colspan='3' align='center'>";

if ($showby == "By Category") {
	echo "<SELECT NAME='option'>";
	while($row = mysql_fetch_array($result)) {
	
		$desc = $row['product_group'];
		echo "<OPTION VALUE='".$desc."'>".$desc."</OPTION>";
	}
	echo "</SELECT>";
}
elseif ($showby == "By Model")  {
	echo "<SELECT NAME='option'>";
	while($row = mysql_fetch_array($result)) {
		$desc = $row['product_model'];
		echo "<OPTION VALUE='".$desc."'>".$desc."</OPTION>";
	}
	echo "</SELECT>";
}
if ($showby == "By Product") {
	echo "<input type='text' name='productid'>";
}

if ($dropdownoption != "") {
	if ($showby == "By Category") {
		$cat = $dropdownoption;
		$showquery = "select * from product_member where product_group='".$cat."';";
	}
	elseif ($showby == "By Model") {
		$model = $dropdownoption;
		$showquery = "select * from product_member where product_model='".$model."';";
	}	
}
elseif ($productid != "") {
	if ($showby == "By Product") {
		$showquery = "select * from product_member where product_id='".$productid."';";
	}
}

$i = 1;
if (isset($_GET['page'])) {
	$startidx = ($_GET['page'] - 1) * 10;
	$endidx = 10;	
	$totalresult = $showquery;
	$showresult = str_replace(";", " limit ".$startidx.", ".$endidx, $showquery);
}
else{
	$startidx = 0;
	$endidx = 10;
	$totalresult = $showquery;
	$showresult = str_replace(";", " limit ".$startidx.", ".$endidx, $showquery);
}
$showresult = mysql_query($showresult);
$totalresult = mysql_query($totalresult);
$num_rows = mysql_num_rows($showresult);
$total_num_rows = mysql_num_rows($totalresult);

?>
<INPUT TYPE=SUBMIT VALUE="Go"></td></tr>

<tr>
    <td colspan="3" height="60" align="center"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
</tr>

<?php
	$idx = 1;
	while($row = mysql_fetch_array($showresult)) {
		//echo "<tr><td>Product ID: ".$row['product_id']."<br>Brand: ".$row['product_made']."<br>Model: ".$row['product_model']."</td></tr>";
		$productdesc = $row['product_made']." ".$row['product_model']." ".$row['product_name'];
		echo "<tr>
			<td valign='top' width='15%' height='184' class='newitem'><img src='../images/product/".$row['product_id']."_s.jpg'></td>
			<td width='2%'></td>
			<td valign='top' align='left' width='15%' height='184' class='newitem'>產品名稱: ".$productdesc."</a><br><br>車種: ".$row['product_made']."<br><br>適合型號: ".$row['product_model'].
			"<br><input type='button' value='check stock' onclick=\"findPartNoAjax('".$row['product_id']."', 'real_stock".$idx."')\">
		  <br><br>
		  <label>Stock:</label><input type='text' id='real_stock".$idx."' size='10' maxlength='30' readonly='readonly'>
</td></tr>";
$idx = $idx + 1;
}
?>          
      </tbody></table>
    </td>
  </tr>
  
  <tr>
    <td colspan="8" height="60" align="center"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
  
  </tbody></table>
</center>

</form>
</body><script>
function findPartNoAjax(goods_row, stockFlag) {	
	//product_id = document.getElementById("goods_partno").value;
	product_id = goods_row;
	element_id = stockFlag;
	alert(element_id);
	if (product_id == '') {
		document.getElementById("productCheckImg" + index).style.display = 'none';
		clearProductField(index);
		calSubTotal();
	}
	else {
		xmlhttp=GetXmlHttpObject();
		if (xmlhttp==null) {
			alert ("Browser does not support HTTP Request");
			return;
		}
		
			//document.getElementById("real_stock").value = 'Retrieving ...';
			document.getElementById(element_id).value = 'Retrieving ...';
  
			xmlhttp.onreadystatechange=stateChangedStock;
			xmlhttp.open("GET","productStockXml.php?product_id=" + product_id,true);
			xmlhttp.send(null);
		 

	}
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
</script></html>
<?php 
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
        //echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('showby'=>$_GET['showby'], 'option'=>$_GET['option'], 'productid'=>$_GET['productid'], 'page'=>$i)).'" rel=nofollow>< Previous</A> ';
		echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('page'=>$i)).'" rel=nofollow>< Previous</A> ';   
        echo '<SPAN class=prn>...</SPAN> ';   
    }   
  
    if($start > 1) {   
        $i = 1;
        echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('page'=>$i)).'">'.$i.'</A> ';   
    }   
  
    for ($i = $start; $i <= $end && $i <= $total_pages; $i++){   
        if($i==$current) {   
            echo '<SPAN>'.$i.'</SPAN> ';   
        } else {
            echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('page'=>$i)).'">'.$i.'</A> ';   
        }   
    }   
  
    if($total_pages > $end){   
        $i = $total_pages;
        echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('page'=>$i)).'">'.$i.'</A> ';   
    }   
  
    if($current < $total_pages) {   
        $i = $current+1;
        echo '<SPAN class=prn>...</SPAN> ';   
        echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('page'=>$i)).'" rel=nofollow>Next ></A> ';   
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
} 
?>