<td valign="top" width="190">
      <table width="190" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="center">
            <table width="170" height="38" border="0" cellspacing="0" cellpadding="0" background="images/greenborder.jpg">
              <tr>
                <td width="133"></td>
                <td><img src="images/go.jpg" width="36" height="36" /></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="8"></td>
        </tr>
        <tr>
          <td align="center">
            <table width="170" border="0" cellspacing="0" cellpadding="0" background="images/greyborder.jpg">
              <tr>
                <td><img src="images/carlist.jpg" width="168" height="66" /></td>
              </tr>
              <?php
			  // select the brand name from database
			  
			  $i = 1;
			  $result = mysql_query("SELECT make_name FROM make");

			  while($row = mysql_fetch_array($result)) {
				if ($i % 2 != 0) {
				  echo "<tr>
				          <td background='images/row1.jpg' width='170' height='25' align='left'><a href='model.php?brand=". $row['make_name']."' class='carlist'>".$row['make_name']."</a></td>
						</tr>";
				}
				else {
				  echo "<tr>
				          <td background='images/row2.jpg' width='170' height='25' align='left'><a href='model.php?brand=".$row['make_name']."' class='carlist'>".$row['make_name']."</a></td>
						</tr>";
                }
				$i = $i + 1;
			  }
			  ?>                        
            </table>
          </td>
        </tr>
        <tr>
          <td height="8"></td>
        </tr>
        <tr>
          <td align="center">
            <table width="170" border="0" cellspacing="0" cellpadding="0" background="images/greyborder.jpg">
              <tr>
                <td><img src="images/hotmodels.jpg" width="168" height="66" /></td>
              </tr>
              <?php
			  // select the brand name from database
			  
			  $i = 1;
			  $result = mysql_query("SELECT model_name FROM model");

			  while($row = mysql_fetch_array($result)) {
				if ($i % 2 != 0) {
				  echo "<tr>
				          <td background='images/row1.jpg' width='170' height='25' align='left'><a href='model.php?brand=". $row['model_name']."' class='hotmodel'>".$row['model_name']."</a></td>
						</tr>";
				}
				else {
				  echo "<tr>
				          <td background='images/row2.jpg' width='170' height='25' align='left'><a href='model.php?brand=".$row['model_name']."' class='hotmodel'>".$row['model_name']."</a></td>
						</tr>";
                }
				$i = $i + 1;
			  }
			  ?>              
            </table>
          </td>
        </tr>
        <tr>
          <td height="8"></td>
        </tr>
        <tr>
          <td align="center">
            <table width="170" border="0" cellspacing="0" cellpadding="0" background="images/greyborder.jpg">
              <tr>
                <td><img src="images/cat.jpg"/></td>
              </tr>
                               <?php
			  // select the category from database
			  
			  $i = 1;
			  $result = mysql_query("SELECT cat_name FROM category");

			  while($row = mysql_fetch_array($result)) {
				if ($i % 2 != 0) {
				  echo "<tr>
				          <td background='images/row1.jpg' width='170' height='25' align='left'><a href='' class='category'>".$row['cat_name']."</a></td>
						</tr>";
				}
				else {
				  echo "<tr>
				          <td background='images/row2.jpg' width='170' height='25' align='left'><a href='' class='category'>".$row['cat_name']."</a></td>
						</tr>";
                }
				$i = $i + 1;
			  }
			  
			  ?>
            </table>
            
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