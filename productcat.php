<?php
include("dbconnection.php");
$currentURL = $_SERVER["PHP_SELF"];
$params = $_SERVER['QUERY_STRING'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>主頁</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/stepcarousel.js">
//<script type="text/javascript">var _siteRoot='index.html',_root='index.html';</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

</script>
<!--
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

</script>
-->
</head>

<body>
<p>
<?

//$pos = strpos($params, "=");

//echo $params.$pos; ?>
</p>
<center>
<table width="950" border="0" cellpadding="0" cellspacing="0">
  <?php include_once("header.php");?>
  
  <?php include_once("slideshow.php");?> 
  
  <tr>
    <td height="8"></td>
  </tr>
   
  <tr>    
    <td align="left" valign="top" width="950">
      <table cellspacing="0" cellpadding="0" border="0">        
        <tr>          
          <td width="950">
            <table cellspacing="0" cellpadding="0" border="0">
              <tr>
                <td class="producttitle" width="24"><img src="images/bluepoint.gif" /></td>
                <td class="producttitle" width="926">商品一覽</td>
              </tr>
              
              <tr>
                <td colspan="2" valign="top">
                  <table width="950" cellspacing="0" cellpadding="0" border="0" align="left">
                    <tr>
                      <td><?php include_once("showcat.php");?></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>        
      </table>
      
    </td>
  </tr>
  
  <?php include_once("footer.php");?>
  
</table>
</center>
</body>
</html>