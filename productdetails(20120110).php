<?php
include("dbconnection.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>主頁</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/thickbox.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/stepcarousel.js"></script>
<script type="text/javascript">var _siteRoot='index.php',_root='index.php';</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script type="text/javascript" src="js/thickbox.js"></script>
<script type="text/javascript" src="js/jquerythickbox.js"></script>

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
</script>
</head>

<body>
<p>
<?
$params = $_SERVER['QUERY_STRING'];
$pos = strpos($params, "=");

//echo $params.$pos; ?>
</p>
<center>
<table width="950" border="0" cellpadding="0" cellspacing="0">
  <?php include_once("header.php");?>

  
  <tr>
    <td valign="top" width="190">
      <table width="190" border="0" cellspacing="0" cellpadding="0">
       <?php include_once("search_box.php");?>
        <tr>
          <td height="8"></td>
        </tr>
        <tr>
          <td align="center">
            <? include("menu.php"); ?>
          </td>
        </tr>
        <tr>
          <td height="8"></td>
        </tr>
        <tr>
          <td align="center">            
            <table width="170" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left"><font class="contact">TEL:(86)20 37221551<br />
					FAX:(86)20 37026589<br /><br />
					Room2113.Yiyun Plaza NO.79<br />
					Yongfu Road.Guangzhou City</font></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
    
    <td align="left" valign="top" width="748">
      <table cellspacing="0" cellpadding="0" border="0">  
<?php include_once("branding.php");?>
        
        <tr>
          <td height="10" colspan="3"></td>
        </tr>
        
       <?php include_once("slideshow.php");?> 
 
        
        <tr>
          <td height="10" colspan="3"></td>
        </tr>        
         
        <tr>
          <td width="120" valign="top">
            <table cellspacing="0" cellpadding="0" width="98" border="0">
            <?php
		if ($_GET['productdetail'] != "") {	
			$productdetail = $_GET['productdetail'];
			$result = mysql_query("SELECT * FROM product where product_cd='".$productdetail."';");
			while($row = mysql_fetch_array($result)) {
				$brand = $row['product_made'];
				$lcmodel = strtolower($brand);
				$makeid = $row['make_id'];
				$productdesc = $row['product_desc'];
			}
						
		}
		$result = mysql_query("SELECT * FROM model where make_id='".$makeid."';");	
		?>
              <tr>
                <td width="120" colspan="2"><?php echo"<img src='images/".$lcmodel."brandtitle.jpg'/>"?></td>
              </tr>
              <?php
              while($row = mysql_fetch_array($result)) {
                echo "
              <tr>
                <td><img src='images/point.jpg'/></td>
                <td><a class='point' href='product.php?product=".$row['model_name']."'>".$row['model_name']."</a></td>
              </tr>";
			  }
			  ?>
            </table>
          </td>
          <td width="628">
            <table cellspacing="0" cellpadding="0" border="0">
              <tr>
                <td class="producttitle" width="24"><img src="images/bluepoint.gif" /></td>
                <td class="producttitle" width="604">商品一覽</td>
              </tr>
              
              <tr>
                <td colspan="2" width="628" valign="top">
                  <table width="628" cellspacing="0" cellpadding="0" border="0" align="left">
                    <tr>
                      <td class="horizontalborder" colspan="4" width="628" height="1"></td>
                    </tr>
                    <tr>
                      <td class="verticalborder" width="1" height="8"></td>
                      <td width="360" height="8"></td>
                      <td width="266" height="8"></td>
                      <td class="verticalborder" width="1" height="8"></td>
                    </tr>
                    <tr>
                      <td class="verticalborder" width="1" height="184"></td>
                      <td align="center" width="360"><a href="images/product/<?php if ($_GET['photono'] != "") {
						  $photono = $_GET['photono'];
					  	  echo $productdetail."_".$photono; 
					  }
					  else {
						  echo $productdetail;
					  }
					  ?>_m.jpg" class="thickbox"><img src="images/product/<?php if ($_GET['photono'] != "") {
						  $photono = $_GET['photono'];
					  	  echo $productdetail."_".$photono; 
					  }
					  else {
						  echo $productdetail;
					  }  
				?>_m.jpg" /></a></td>       
                      <td valign="top" class="productdetaildesc"><br /><?php echo $productdesc; ?>
                      </td>
                      <td class="verticalborder" width="1" height="184"></td>
                    </tr>
                    <tr>
                      <td class="verticalborder" width="1" height="8"></td>
                      <td width="360" height="8"></td>
                      <td width="266" height="8"></td>
                      <td class="verticalborder" width="1" height="8"></td>
                    </tr>
                    <tr>
				  	  <td class="horizontalborder" colspan="4"width="628" height="1"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              
              <tr>
                <td colspan="2" height="10"></td>
              </tr>              
              
              <?php 
			  $result = mysql_query("SELECT product_photo FROM product where product_cd='".$productdetail."';");
			  $row = mysql_fetch_array($result);
			  $numphoto = $row['product_photo'];
			  ?>
                            
              <tr>
                <td colspan="2">
                  <table cellspacing="0" cellpadding="0" border="0">
                    <tr>
				  	  <td class="horizontalborder" colspan="<?php echo $numphoto + 2; ?>" width="628" height="1"></td>
                    </tr>
                    <tr>
                      <td class="verticalborder" width="1"></td>
                      <?
					  $i = 1;
					  while ($i <= $numphoto) {
						  echo "<td><a href='productdetails.php?productdetail=".$productdetail."&photono=".$i."'><img src='images/product/".$productdetail."_".$i."_s.jpg' width='30' height='30'></a></td>";
						  $i = $i + 1;
					  }
					  ?>
                      <td class="verticalborder" width="1"></td>                    </tr>
                    <tr>
				  	  <td class="horizontalborder" colspan="<?php echo $numphoto; ?>" width="628" height="1"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              
              <tr>
                <td colspan="2" height="10"></td>
              </tr>
              
              <tr>
                <td colspan="2">
                  <table cellspacing="0" cellpadding="0" border="0">
                    <tr>
				  	  <td class="horizontalborder" colspan="5" width="628" height="1"></td>
                    </tr>
                    <tr>
                      <?
					  $productresult = mysql_query("SELECT * FROM product where product_cd='".$productdetail."';");
					  $rowresult = $row = mysql_fetch_array($productresult);
					  ?>
                      <td class="verticalborder" width="1"></td>
                      <td class="productdetailitem" width="100">商品名</td>
                      <td class="verticalborder" width="1"></td>
                      <td class="productdetailitem" width="528"><?php echo $rowresult['product_made']." ".$rowresult['product_car_name']." ".$rowresult['product_model']." ".$rowresult['product_name']; ?></td>
                      <td class="verticalborder" width="1"></td>
                    </tr>
                    <tr>
				  	  <td class="horizontalborder" colspan="5"width="628" height="1"></td>
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