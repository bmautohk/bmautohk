<?php 
include("dbconnection.php"); 
$result = mysql_query("SELECT * FROM aboutus");
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
	$aboutus_row = mysql_fetch_array($result, MYSQL_ASSOC) or die(mysql_error());
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主頁</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<!--<script type="text/javascript" src="js/stepcarousel.js">
-->
<script type="text/javascript">var _siteRoot='index.html',_root='index.html';</script>
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
<center>
<body>
<table width="950" border="0" cellpadding="0" cellspacing="0">
  <?php include_once("header.php");?>
  
  <?php include_once("slideshow.php");?>
  
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
      <!-- 
        <?php include_once("branding.php");?>	
        
        <tr>
          <td height="10"></td>
        </tr>
      -->         
      </table>
      
      <table cellpadding="0" cellspacing="0" border="0">
   		<tr>
          <td height="10"></td>
        </tr>
        
        <tr>
          <td><img src="images/aboutustitle.jpg" /></td>
        </tr>
        
        <tr>
          <td>
          <p class="engaboutus"><?php echo $aboutus_row["c_content"]; ?></p>
          </td>
        </tr>
        
        <tr>
          <td height="10"></td>
        </tr>
        
        <tr>
          <td class="engaboutus">
            <table width="748" cellpadding="0" cellpadding="0" border="1">
              <tr>
                <td width="100">商号</td><td><?php echo $aboutus_row["business_name"]; ?></td>
              </tr>
              <tr>
                <td>代表者</td><td><?php echo $aboutus_row["representative"]; ?></td>
              </tr>
              <tr>
                <td>事業所</td><td><?php echo $aboutus_row["office"]; ?></td>
              </tr>
              <tr>
                <td>電話番号</td><td><?php echo $aboutus_row["phone"]; ?></td>
              </tr>
              <tr>
                <td>ファックス番号</td><td><?php echo $aboutus_row["fax"]; ?></td>
              </tr>
              <tr>
                <td>メール</td><td><?php echo "<a href='mailto:".$aboutus_row["email"]."'</a>";?><?php echo $aboutus_row["email"]; ?></td>
              </tr>
              <tr>
                <td>事業内容</td><td><?php echo $aboutus_row["business_nature"]; ?></td>
              </tr>
            </table>
          </td>
        </tr>
        
        <tr>
          <td height="10"></td>
        </tr>
        
        <tr>
          <td class="engaboutus">
            <table width="748" cellpadding="0" cellpadding="0" border="1">
              <tr>
                <td colspan="2">会社写真</td>
              </tr>
              <tr>
                <td><img src="images/companyprof1.jpg" /></td>
                <td><img src="images/companyprof2.jpg" /></td>
              </tr>             
            </table>
          </td>
        </tr>
        
        <!--
        <tr>
          <td align="right"><img src="<?php echo "images/".$aboutus_row['image']; ?>"></td>
        </tr>
        -->
      </table>    
    
    </td>
  </tr>
  <?php include_once("footer.php");?>
</table>
</body>
</center>
</html>
