<?php
include("dbconnection.php");
$result = mysql_query("SELECT company_name FROM companyprofile");
$num_rows = mysql_num_rows($result);
if ($num_rows > 0) {
	$row = mysql_fetch_array($result);
}
?>
  <tr>
    <td colspan="2">
      <!-- The top menu -->
      <table width="950" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td class="topline" height="5" colspan="8"></td>
        </tr>
      
        <tr>
          <td rowspan="2" width="10"></td>
          <td rowspan="2" width="180" height="102"><a href="index.php"><img src="images/logo.jpg" width="180" height="102" border="0"/></a></td>
          <td style="padding-right:8px" colspan="6" width="456" height="78" class="header"><?php echo $row['company_name']; ?></td>
          </tr>
          <tr>
          <td width="456"></td>
          <td align="center" valign="bottom"><a href="index.php"><img border="0" src="images/home.jpg" height="24"/></a></td>
          <td valign="bottom"><a href="aboutus.php"><img border="0" src="images/aboutus.jpg" height="24"/></a></td>
          <td align="center" valign="bottom"><a href="productcat.php"><img border="0"  src="images/productlib.jpg"  height="24"/></a></td>
          <td align="center" valign="bottom"><a href="contactus.php"><img border="0" src="images/contact.jpg" height="24"/></a></td>
          <td align="center" valign="bottom"><img border="0" src="images/end.jpg" width="34" height="24"/></td>
        </tr>
        <tr>
          <td class="bottomline" colspan="8" valign="top" width="950" height="1"></td>
        </tr>
        <tr>
          <td colspan="8" height="6"></td>
        </tr>
      </table>
      <!-- End of Top Menu -->
    </td>
  </tr>
