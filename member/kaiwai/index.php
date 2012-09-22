<?php
include("dbconnection.php");
require_once('Auth.php');
function loginFunction($username = null, $status = null, &$auth = null)
{
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
	defaultbuttons: {enable: true, moveby: 1, leftnav: ['../images/left.jpg', 1,1], rightnav: ['../images/right.jpg', -25, 1]},
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
<form name="form1" method="post" action="index.php">
<table width="800" border="0" cellpadding="0" cellspacing="0"> 
  <tbody><tr>
    <td colspan="2">
      <!-- The top menu -->
      <table width="800" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
          <td class="topline" height="5" colspan="3"></td>
        </tr>
      
        <tr>
          <td rowspan="2" width="10"></td>
          <td rowspan="2" width="180" height="102"><a href="index.php"><img src="./index_files/logo.jpg" width="180" height="102" border="0"></a></td>
          <td style="padding-right:8px" colspan="6" width="610" height="78" class="header"> </td>
        </tr>
        <tr>
          <td class="bottomline" colspan="3" valign="top" width="800" height="1"></td>
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
      <table cellspacing="0" cellpadding="0" border="0" width="800">  
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
          <td colspan="3" align="center" width="748">
            <table width="748" border="0" cellpadding="0" cellspacing="0">
              <tr>
              <form name="form1" method="post" action="index.php">
                <td align="center">
				  <table width="60%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
				    <tr>
                      <td colspan="3" align="center"><strong>Login </strong></td>
                    </tr>
                      <tr>
                        <td width="78">Username</td>
                        <td width="6">:</td>
                        <td width="294"><input name="username" type="text" id="username"></td>
                      </tr>
                      <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td><input name="password" type="password" id="password"></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input type="submit" name="Submit" value="Login"></td>
                      </tr>
                    </table>
                  </td>
                  </form>
                </tr>
              </table>
            </td>
          </tr>
        </tbody>
      </table>
    </td>
  </tr>
  </tbody>
</table>
</center>
</body>
</html>
<?php
}
$options = array(
    'dsn' => $dsn,
  'table' => "customer",
  'usernamecol' => "cust_cd",
  'passwordcol' => "password",
  'cryptType'=>'',
  'db_fields'=>'*',
  );
$a = new Auth("DB", $options, "loginFunction");

$a->start();

if ($a->checkAuth()) {
     header("Location: index2.php");
}else{
	 
}
?>