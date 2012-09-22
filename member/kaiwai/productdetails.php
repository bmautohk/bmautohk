 <?php
 include("dbconnection.php");
  function back(){
   echo '<a href="index.php">back</a>';
     }
  require_once('Auth.php');
  $auth=new Auth('DB',$option,'back');
   $auth->start();
   if($auth->checkAuth()){
   ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><script type="text/javascript">window["_gaUserPrefs"] = { ioo : function() { return true; } }</script>
<head><meta http-equiv="Content-Type" content="text/html; charset=EUC-JP">


<title>TopNOV</title>

<link rel="stylesheet" type="text/css" href="./index_files/style.css">

<script type="text/javascript" src="./index_files/jquery.min.js"></script>
<script type="text/javascript" src="./index_files/stepcarousel.js"></script>
<script type="text/javascript">var _siteRoot='index.html',_root='index.html';</script>
<script type="text/javascript" src="./index_files/jquery.js"></script>
<script type="text/javascript" src="./index_files/scripts.js"></script>


<script type="text/javascript">
jQuery.noConflict();
stepcarousel.setup({
	galleryid: 'mygallery', //id of carousel DIV
	beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel', //class of panel DIVs each holding content
	autostep: {enable:false, moveby:1, pause:3000},
	panelbehavior: {speed:500, wraparound:false, wrapbehavior:'slide', persist:true},
	defaultbuttons: {enable: true, moveby: 1, leftnav: ['images/left.jpg', 1,1], rightnav: ['images/right.jpg', -25, 1]},
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
 </head>

<body screen_capture_injected="true">
<center>
<table width="" border="0" cellpadding="0" cellspacing="0">

 
  <tbody><tr>
    <td colspan="2">
      <!-- The top menu -->
      <table width=" " border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
          <td class="topline" height="5" colspan="8"></td>
        </tr>
      
        <tr>
          <td rowspan="2" width="10"></td>
          <td rowspan="2" width="180" height="102"><a href="/"><img src="./index_files/logo.jpg" width="180" height="102" border="0"></a></td>
          <td style="padding-right:8px" colspan="6" width="456" height="78" class="header"> </td>
        </tr>
        <tr>
         <td><?php  echo "Hi {$auth->getUserName()}";  ?> <a href="logout.php">[Logout]</a></td>
        </tr>
        <tr>
          <td class="bottomline" colspan="8" valign="top" width="750" height="1"></td>
        </tr>
        <tr>
          <td colspan="8" height="6"></td>
        </tr>
      </tbody></table>
      <!-- End of Top Menu -->
    </td>
  </tr>  
  
  <!-- sliding -->
  <tr>
    <td align="left" valign="top" width="748">
      <table cellspacing="0" cellpadding="0" border="0">  
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
          <td height="10"></td>
        </tr>
      </tbody></table>
 
    </td>
  </tr>
  
  <!-- detailpage -->
    <tr>
    <td align="left" valign="top" width="748">
      <table cellspacing="0" cellpadding="0" border="0">  
        <tbody>  
<?php

$result = "SELECT * FROM product;";
$model = trim($_GET["model"]);
$prod_id = $_GET["prod_id"];

if ($model!="")
	$result = "Select * from product where product_model like \"%".$model."%\"";

if ($prod_id!="")
	$result = "select * from product where product_id like \"%".$prod_id."%\"";


 
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
    <td colspan="8" height="60"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
<?php
while($row = mysql_fetch_array($result)) {
	$desc = $row['product_made']." ".$row['product_car_name']." ".$row['product_model']." ".$row['product_name'];
	 
		echo "<tr>
			<td valign='top' width='50%' height='184' class='newitem'><a class='productdetail' href=".$href."prod_id=".$row['product_id']."><img src='images/product/".$row['product_id']."_s.jpg'></a></td>
			<td width='2%'></td>
			<td valign='top' width='50%' height='184' class='newitem'>Prod Name: <a class='productdetail' href=".$href."prod_id=".$row['product_id'].">".$desc."</a><br><br>Model: ".$row['product_made']."<br><br>Car Model: ".$row['product_car_name']." ".$row['product_model']."</td>";
		 
			for ($r = 0; $r < $cellCnt; $r++) {
				echo "<td width='2%'></td>
				  	  <td valign='top' width='50%' height='184' class='newitem'></td>
				  	  <td width='2%'></td>
					  <td valign='top' width='50%' height='184' class='newitem'></td>";
			}
			echo "<td height='8' width='2%'></td></tr>";

	$i = $i + 1;
}
?>
  <tr>
    <td colspan="8" height="20"><?php doPages(10, $currentURL, '', $total_num_rows);?></td>
  </tr>
</table>

		
		</tbody>
		</table>
		</td>
	</tr>
	
 
   </tbody></table>
</center>


</body></html>
<?php } ?>