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
          <td rowspan="2" width="180" height="102"><a href=""><img src="./index_files/logo.jpg" width="180" height="102" border="0"></a></td>
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
  <tr>
    
    <td align="center" valign="top" width="800">
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
<table cellspacing="0" cellpadding="0" width="800" border="0">
        <tbody><tr>
          <td>
		  <div class="scroll"style="width:580px"><?php include_once("productdesc.php");?>
		  </div>
          </td>
        
          <td>
		  <div class="scroll" style="width:180px">
		  <label>Prod Id:</label><br><input id="goods_partno" type="text" value="" size="10" onchange="findPartNoAjax('1')"><input type="button" value="check stock" onclick="findPartNoAjax('1')">
		  <br><br>
		  <label>Stock:</label><input type="text" id="real_stock"  size="10" maxlength="30" readonly="readonly">
		  </div>
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
  <tr height=50> </tr>
 <tr>
    <td colspan="2">
      <table width="650">
        <tbody>
		
		<div id="modelcloud" style="width:800px">
		<?php $result = "SELECT product_model FROM product group by product_model HAVING product_model IS NOT NULL  order by product_model asc";
		$result = mysql_query($result);
		while($row = mysql_fetch_array($result)) {
			echo "| &nbsp; <a href=\"productdetails.php?model=".$row['product_model']."\">".$row['product_model']."</a> &nbsp; |  <br>";
		 
		}?></div>
	  
      </tbody></table>
    </td>
  </tr>  
  <tr>
    <td align="center" colspan="2">
      <table width="700">
        <tbody><tr>
           
        </tr>
      </tbody></table>
    </td>
  </tr></tbody></table>
</center>


</body><script>
function findPartNoAjax(goods_row, stockFlag) {
	 
	product_id = document.getElementById("goods_partno").value;
	 
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
		
			document.getElementById("real_stock").value = 'Retrieving ...';
  
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
<?php } ?>