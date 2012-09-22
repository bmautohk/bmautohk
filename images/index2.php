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
<form METHOD="POST" ACTION="productlist.php">
<table width="100%" border="0" cellpadding="0" cellspacing="0">

 
  <tbody><tr>
    <td colspan="2">
      <!-- The top menu -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0"bgcolor="#000000">
        <tbody><tr>
          <td class="topline" height="5" colspan="8"></td>
        </tr>
      
        <tr>
          <td rowspan="2" width="8%"></td>
          <td rowspan="2" width="30%" height="80"><?php  echo "Hi {$auth->getUserName()}";  ?> <a href="logout.php">[Logout]</a></td>
          <td style="padding-right:8px" colspan="6" width="62%" height="78" class="header" align="right" valign="bottom"><font color="#999999" face="Arial, Helvetica, sans-serif" size="2px">BM AUTO ACCESSORIES (HK) CO.,LTD.</font></td>
        </tr>
        </tbody>
      </table>
      <!-- End of Top Menu -->
    </td>
  </tr>  
  <tr>    
    <td align="center" valign="top" width="14%">
      <table cellspacing="0" cellpadding="0" border="0" bgcolor="#000000" width="100%">  
        <tbody> 
        <tr>
          <td colspan="3" align="center"><img src="../images/logo_back.jpg" />           
          </td>
        </tr>
        <tr>
          <td><img src="../images/toyota.gif" /></td>
        </tr>
        <tr>
          <td height="10"></td>
        </tr>
        <tr>
          <td><img src="../images/honda.gif" /></td>
        </tr>        
        <tr>
          <td height="10"></td>
        </tr>  
        <tr>
          <td><img src="../images/nissan.gif" /></td>
        </tr>
      </tbody></table>
    </td>
    <td width="80%">b</td>
  </tr></tbody></table>
</center>

</form>
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