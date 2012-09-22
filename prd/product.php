<?
include("dbconnection.php");
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>主頁</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/stepcarousel.js">
<script type="text/javascript">var _siteRoot='index.html',_root='index.html';</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

</script>
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
          <td height="10" colspan="2"></td>
        </tr>
        
        
<?php include_once("slideshow.php");?> 
        
        <tr>
          <td height="10" colspan="2"></td>
        </tr>
        
        
         <tr>
          <td width="120" valign="top">
            <table cellspacing="0" cellpadding="0" width="98" border="0">
            <?php
		if ($_GET['product'] != "") {
			$product = $_GET['product'];
			//get the brand for product			
			$result = mysql_query("SELECT make_id FROM model where model_name='".$product."';");
			$row = mysql_fetch_array($result);
			$makeid = $row['make_id'];
			
			$result = mysql_query("SELECT make_name FROM make where make_id='".$makeid."';");
			$row = mysql_fetch_array($result);
			$model = $row['make_name'];

			$lcmodel = strtolower($model);
			$modelresult = mysql_query("SELECT model_name FROM model where make_id='".$makeid."';");
			
			$result = mysql_query("SELECT * FROM product where product_car_name='".$product."';");
			
		}
		else if ($_GET['productcat'] != "") {
			$productcat = $_GET['productcat'];
			$result = mysql_query("SELECT * FROM product where product_cat='".$productcat."';");
		}
		?>
              <tr>			
                <td width="120" colspan="2"><?php if ($_GET['product'] != "") { echo"<img src='images/".$lcmodel."brandtitle.jpg'/>"; }?></td>
              </tr>
              <?php
			  if ($_GET['product'] != "") {
              while($row = mysql_fetch_array($modelresult)) {
                echo "
              <tr>
                <td><img src='images/point.jpg'/></td>
                <td><a class='point' href='product.php?product=".$row['model_name']."'>".$row['model_name']."</a></td>
              </tr>";
			  }
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
                <td colspan="2" valign="top">
                  <table width="628" cellspacing="0" cellpadding="0" border="0" align="left">
                    <tr>
                      <td class="horizontalborder" colspan="11" width="628" height="1"></td>
                    </tr>
                    <tr>
                      <td class="verticalborder" height="8" width="1"></td>
                      <td height="8" width="8"></td>
                      <td height="8" width="143"></td>
                      <td height="8" width="14"></td>
                      <td height="8" width="143"></td>
                      <td height="8" width="14"></td>
                      <td height="8" width="143"></td>
                      <td height="8" width="14"></td>
                      <td height="8" width="143"></td>
                      <td height="8" width="8"></td>
                      <td class="verticalborder" height="8" width="1"></td>
                    </tr>
                    <?php
					/*
		if $_GET['product'] != "") {			
			$productquery = "select * from product where product_car_name='".$product."';";
		}
		*/
		 	  
			  $i = 1;
			  
			  $num_rows = mysql_num_rows($result);
			  $currentRow = 1;
			  
			  if ($num_rows % 4 == 1) {
				  $cellCnt = 3;
			  }
				  else if ($num_rows % 4 == 2) {
					 $cellCnt = 2; 
			      }
				  else if ($num_rows % 4 == 3) {
					  $cellCnt = 1;
				  }
			  
			  while($row = mysql_fetch_array($result)) {
				$desc = $row['product_made']." ".$row['product_car_name']." ".$row['product_model']." ".$row['product_name'];
				if ($i % 4 == 1) {
				  echo "<tr>
				  		  <td class='verticalborder' width='1' height='184'></td>
						  <td height='8' width='8'></td>
				          <td align='center' valign='top' width='143' height='184' class='newitem'><a class='productdetail' href='productdetails.php?productdetail=".$row['product_cd']."'><img src='images/product/".$row['product_cd']."_s.jpg'><br>".$desc."</a></td>";
				  if ($currentRow == ceil($num_rows / 4) and ($num_rows % 4) == ($i % 4)) {
					  for ($r = 0; $r < $cellCnt; $r++) {
						  echo "<td height='184' width='14'></td>
						  		<td align='center' valign='top' width='143' height='184' class='newitem'></td>";
					  }
					  echo "<td height='8' width='8'></td>
					  		<td class='verticalborder' height='184' width='1'></td>";
				  }
				}
				
				else if ($i % 4 == 2) {
				  echo "<td height='184' width='14'></td>
				  		<td align='center' valign='top' width='143' height='184' class='newitem'><a class='productdetail' href='productdetails.php?productdetail=".$row['product_cd']."'><img src='images/product/".$row['product_cd']."_s.jpg'><br>".$desc."</a></td>";
				  if ($currentRow == ceil($num_rows / 4) and ($num_rows % 4) == ($i % 4)) {
					  for ($r = 0; $r < $cellCnt; $r++) {
						  echo "<td height='184' width='14'></td>
						  		<td align='center' valign='top' width='143' height='184' class='newitem'></td>";
					  }
					  echo "<td height='8' width='8'></td>
					  		<td class='verticalborder' height='184' width='1'></td>";
				  }
				}
				
				else if ($i % 4 == 3) {
				  echo "<td height='184' width='14'></td>
				  		<td align='center' valign='top' width='143' height='184' class='newitem'><a class='productdetail' href='productdetails.php?productdetail=".$row['product_cd']."'><img src='images/product/".$row['product_cd']."_s.jpg'><br>".$desc."</a></td>";
				  if ($currentRow == ceil($num_rows / 4) and ($num_rows % 4) == ($i % 4)) {
					  for ($r = 0; $r < $cellCnt; $r++) {
						  echo "<td height='184' width='14'></td>
						  		<td align='center' valign='top' width='143' height='184' class='newitem'></td>";
					  }
					  echo "<td height='8' width='8'></td>
					  		<td class='verticalborder' height='184' width='1'></td>";
				  }
				}
				
				elseif ($i % 4 == 0){
				  echo "<td height='184' width='14'></td>
				  		<td align='center' valign='top' width='143' height='184' class='newitem'><a class='productdetail' href='productdetails.php?productdetail=".$row['product_cd']."'><img src='images/product/".$row['product_cd']."_s.jpg'><br>".$desc."</a></td>
						<td height='8' width='8'></td>
				  		<td class='verticalborder' width='1' height='184'></td>
					  </tr>";
				  $currentRow = $currentRow + 1;
                }
				
			  $i = $i + 1;
			  }
			  ?>
                    <tr>
				  	  <td class="horizontalborder" colspan="11" width="628" height="1"></td>
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
  
  <tr>
    <td colspan="2">
      <table width="950">
        <tr>
          <td class="bottomdotline">
          </td>
        </tr>
      </table>
    </td>
  </tr>  
  <tr>
    <td align="center" colspan="2">
      <table width="700">
        <tr>
          <td width="700"><font class="copyright">本????使用????商品?像????著作者?BMAUTO??許可?得?使用?????。?????像???文章????著作????????????????????、 無?使用???加工???二次使用?一切禁止???。無?使用?場合、第三者機??通??連絡??場合?????。</font>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</center>
</body>
</html>