<?php
include("dbconnection.php");
$result = mysql_query("SELECT * FROM product WHERE new = 'T' LIMIT 4");
?>
		 <tr>
           <td colspan="3" align="center" height="8"></td>
         </tr>
         
         <tr>
           <td colspan="3" align="center">
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
			 <tr><td  height="38" colspan="5"><img src="images/newitemsbanner.jpg"/></td>
			 </tr>
               <tr>
         <?php
		 
		  //while($row = mysql_fetch_array($result)) {
			//$desc = $row['product_made']." ".$row['product_car_name']." ".$row['product_model']." ".$row['product_name'];
			for ($i=1;$i<5;$i++){
		  	?><td  align="center">
			<a  target="_aa" href='newitem/index.html'>
			<img src='/newitem/image/k<?php echo $i;?>.jpg'/>
			</a></td><?php
		  }
		  
		  ?>
              </tr>
            </table>
          </td>
        </tr>
        
        <tr>
          <td colspan="3" height="8"></td>
        </tr>