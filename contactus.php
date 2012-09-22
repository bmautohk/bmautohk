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

<!--<script type="text/javascript" src="js/stepcarousel.js"></script>-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script>

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

<script type="text/javascript">
jQuery.validator.setDefaults({
	debug: false,
	success: "valid"
});;
</script>

<script>
$(document).ready(function(){
  $("#contactus").validate({
	rules: {
	  field: {
		required: true,
		email: true,
		email2: true
	  },
	 email: {
		  equalTo: "#email2"
		}
	},
	submitHandler: function(form) {
		alert("Success");
		form.submit();
	}
	
  });
});
  </script>
</head>

<body>
<p>
<?

//$pos = strpos($params, "=");

//echo $params.$pos; ?>
</p>
<center>
<form id="contactus"  method="post" action="leavecontact.php"> 
<table width="950" border="0" cellpadding="2" cellspacing="0">
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
                <td height="8"></td>
              </tr>
              
              <tr>             
                <td class="producttitle" width="950">お問い合わせフォーム</td>
              </tr>
              
              <tr>
                <td height="8"></td>
              </tr>
              
              <tr>
                <td align="center">
                  <table width="950"  cellspacing="10" >
                    <tr>
                      <td class="left" align="left">お名前</td>
                      <td class="left" align="left">姓</td>
                      <td  class="left"align="left"><input type="text" maxlength="20" name="first_name"/></td>
                      <td class="left" align="left">名</td>
                      <td class="end" align="left"><input type="text" maxlength="20" name="last_name"/></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="left" align="left">お名前(フリカナ)</td>
                      <td class="left" align="left">セイ</td>
                      <td class="left" align="left"><input type="text" maxlength="20" name="first_name2"/></td>
                      <td class="left" align="left">メイ</td>
                      <td class="end" align="left"><input type="text" maxlength="20" name="last_name2"/></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="left" align="left">電話番号</td>
                      <td class="end" colspan="4" align="left"><input type="text" maxlength="20" name="phone"/></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="left" align="left">メールアドレス</td>
                      <td class="end" colspan="4" align="left"><input type="text" maxlength="40" name="email" id="email" class="required email"/></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="left" align="left">メールアドレス<br />(確認用）</td>
                      <td class="end" colspan="4" align="left"><input type="text" maxlength="40" name="email2" id="email2" class="required email"/></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="left" align="left">お問い合わせ車種</td>
                      <td class="end" colspan="4" align="left"><input type="text" maxlength="20" name="car_type"/></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    <tr>
                      <td class="left" align="left">お問い合わせ内容</td>
                      <td class="end" colspan="4" align="left"><textarea  rows="10"  cols="80" name="detail"></textarea></td>
                    </tr>
                    
                    <tr>
                      <td colspan="5" height="8"></td>
                    </tr>
                    
                    
                    
                    <tr>
                      <td colspan="4" align="center"><input type="submit" value="確認" />&nbsp<input type="reset" name="reset" value="キャンセル" /></td>
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
</form>
</center>
</body>
</html>