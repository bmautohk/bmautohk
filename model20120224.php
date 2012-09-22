<?php include("dbconnection.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>主頁</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="pagination.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/stepcarousel.js">

/***********************************************
* Step Carousel Viewer script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/

</script>
<script type="text/javascript" src="jquery.pagination.js"></script>
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

function pageselectCallback(page_index, jq){
	// Get number of elements per pagionation page from form
	var items_per_page = $('#items_per_page').val();
	var max_elem = Math.min((page_index+1) * items_per_page, members.length);
	var newcontent = '';

	// Iterate through a selection of the content and build an HTML string
	for(var i=page_index*items_per_page;i<max_elem;i++)
	{
		newcontent += '<dt>' + members[i][0] + '</dt>';
		newcontent += '<dd class="state">' + members[i][2] + '</dd>';
		newcontent += '<dd class="party">' + members[i][3] + '</dd>';
	}

	// Replace old content with new content
	$('#Searchresult').html(newcontent);

	// Prevent click eventpropagation
	return false;
}

function getOptionsFromForm(){
	var opt = {callback: pageselectCallback};
	// Collect options from the text fields - the fields are named like their option counterparts
	$("input:text").each(function(){
		opt[this.name] = this.className.match(/numeric/) ? parseInt(this.value) : this.value;
	});
	// Avoid html injections in this demo
	var htmlspecialchars ={ "&":"&amp;", "<":"&lt;", ">":"&gt;", '"':"&quot;"}
	$.each(htmlspecialchars, function(k,v){
		opt.prev_text = opt.prev_text.replace(k,v);
		opt.next_text = opt.next_text.replace(k,v);
	})
	return opt;
}

// When document has loaded, initialize pagination and form

</script>
</head>

<body>
<center>
<table width="950" border="0" cellpadding="0" cellspacing="0">
  <?php include_once("header.php");?>

  
  <tr>
    <td valign="top" width="190">
      <table width="190" border="0" cellspacing="0" cellpadding="0">
       <?php include_once("search_box.php"); ?>
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
      <table cellspacing="0" cellpadding="0" border="0" width="748">
    <?php include_once("branding.php");?>
        
        <tr>
          <td height="8"></td>
        </tr>
        
        <tr>
          <td colspan="2"><img src="images/alphard.jpg" /></td>
        </tr>
        
        <tr>
          <td colspan="2" height="8"></td>
        </tr>
        <?php
		if ($_GET['brand'] != "") {
			$model = $_GET['brand'];
			$lcmodel = strtolower($_GET['brand']);
			$result = mysql_query("SELECT make_id FROM make where make_name='".$brand."';");
			while($row = mysql_fetch_array($result)) {
				$makeid = $row['make_id'];
			}
			$result = mysql_query("SELECT model_name FROM model where make_id='".$makeid."';");
			$productquery = "select * from product where product_made='".$model."';";
		}
		elseif ($_GET['product'] != "") {
			$product = $_GET['product'];
			//get the brand for product			
			$result = mysql_query("SELECT make_id FROM model where model_name='".$product."';");
			while($row = mysql_fetch_array($result)) {
				$makeid = $row['make_id'];
			}
			$result = mysql_query("SELECT make_name FROM make where make_id='".$makeid."';");
			while($row = mysql_fetch_array($result)) {
				$model = $row['make_name'];
			}
			$lcmodel = strtolower($model);
			$result = mysql_query("SELECT model_name FROM model where make_id='".$makeid."';");
			$productquery = "select * from product where product_model='".$hproduct."' or product_car_name='".$product."';";
		}
		?>
        <tr>
          <td width="120" valign="top">
            <table cellspacing="0" cellpadding="0" width="98" border="0">            
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
                <td colspan="2">
                  <table width="628" cellspacing="0" cellpadding="0" border="0" align="left">
                    <tr>
                      <td class="horizontalborder" colspan="4" width="628" height="1"></td>                  
                    </tr>
                    
                    <tr>
                      <td class="verticalborder" height="8"></td>
                      <td></td>
                      <td></td>
                      <td class="verticalborder" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="verticalborder" width="1"></td>
                      <td width="8"></td>
                      <td>
                    <?php include("productdesc.php"); ?>
                    <td class="verticalborder" width="1" height="8"></td>
                  </tr>
                  <tr>
                    <td class="horizontalborder" colspan="4" width="628" height="1"></td>
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
  
  <?php include_once("footer.php"); ?>

</table>
</center>
</body>
</html>