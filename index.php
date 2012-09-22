<?php
include("dbconnection.php");
$currentURL = $_SERVER["PHP_SELF"];
$params = $_SERVER['QUERY_STRING'];
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>主頁</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<!--<script type="text/javascript" src="js/stepcarousel.js"></script>-->

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
<center>
<table width="950" border="0" cellpadding="0" cellspacing="0">

  <?php include_once("header.php");?>

  <?php include_once("slideshow.php");?> 
  
  <?php include_once("newitem.php");?>
  <tr>
    <td height="8"></td>
  </tr>
  
  <tr>
    <td valign="top" width="190">
      <table width="190" border="0" cellspacing="0" cellpadding="0">
		<?php include_once("search_box.php");?>
        <tr>
          <td height="8"></td>
        </tr>
        <tr>
          <td align="center">
          <?php include("menu.php"); ?>  
          </td>
        </tr>
        
        <?php
		$result = mysql_query("SELECT company_address, company_phone, company_fax FROM companyprofile");
		$num_rows = mysql_num_rows($result);
		if ($num_rows > 0) {
			$row = mysql_fetch_array($result);
		}
		?>
        <tr>
          <td align="center">                        
            <table width="170" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left"><font class="contact">TEL: <?php echo $row['company_phone']; ?><br />
					FAX: <?php echo $row['company_fax']; ?><br /><br />
					<?php echo $row['company_address']; ?><br />
					</font></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    
    <td align="left" valign="top" width="748">
      <table cellspacing="0" cellpadding="0" border="0">
      <!-- 
<?php include_once("branding.php");?>
        
        <tr>
          <td colspan="3" height="10"></td>
        </tr>
 	  -->
      </table>	  
      
      <table cellspacing="0" cellpadding="0" border="0">        
        <tr>
          <td><img src="images/newproductsbanner.jpg" width="760" /></td>
        </tr>
        
        <tr>
          <td height="10"></td>
        </tr>
      </table>
      
      <table cellspacing="0" cellpadding="0" width="748" border="0">
        <tr>
          <td>
        <?php 
		//$result = mysql_query("SELECT * FROM product");
		$result = "SELECT * FROM product where new='N' and sts='A' ;";
		include("productdesc.php");			  
		?>
          </td>
        </tr>
        
        <tr>
          <td height="40"></td>
        </tr>        
      </table>
    </td>
  </tr>
<?php include_once("footer.php"); ?>
</table>
</center>
</body>
</html>
