<?php
// connect to localhost

$host="127.0.0.1";
$dbuser="membertopnov";
$dbpass="98014380";
$dbname="topnov_db";

$dsn = "mysql://".$dbuser.":".$dbpass."@".$host."/".$dbname;
$con = mysql_connect($host,$dbuser,$dbpass);
if (!$con) {
    die('Could not connect: ' . mysql_error());
}

//$aa = mysql_query("set names 'UTF8'",$con);
mysql_select_db($dbname, $con);
mysql_set_charset('EUC-JP',$con);

function doPages($page_size, $thepage, $query_string, $total) {
	
    //per page count   
    $index_limit = 10;   
  
    //set the query string to blank, then later attach it with $query_string   
    $query='';   
  
    if(strlen($query_string)>0){   
        $query = "&".$query_string;   
    }   
  
    //get the current page number example: 3, 4 etc: see above method description   
    $current = get_current_page();   
  
    $total_pages=ceil($total/$page_size);   
    $start=max($current-intval($index_limit/2), 1);   
    $end=$start+$index_limit-1;
    echo '<DIV class=paging>';
    if($current==1) {
        echo '<SPAN class=prn>< Previous</SPAN> ';   
    } else {   
        $i = $current-1;
        echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'" rel=nofollow>< Previous</A> ';   
        echo '<SPAN class=prn>...</SPAN> ';   
    }   
  
    if($start > 1) {   
        $i = 1;
        echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'],  'page'=>$i)).'">'.$i.'</A> ';   
    }   
  
    for ($i = $start; $i <= $end && $i <= $total_pages; $i++){   
        if($i==$current) {   
            echo '<SPAN>'.$i.'</SPAN> ';   
        } else {
            echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'">'.$i.'</A> ';   
        }   
    }   
  
    if($total_pages > $end){   
        $i = $total_pages;
        echo '<A title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'">'.$i.'</A> ';   
    }   
  
    if($current < $total_pages) {   
        $i = $current+1;
        echo '<SPAN class=prn>...</SPAN> ';   
        echo '<A class=prn title="go to page '.$i.'" href="'.$thepage."?".http_build_query(array('brand'=>$_GET['brand'], 'productcat'=>$_GET['productcat'], 'page'=>$i)).'" rel=nofollow>Next ></A> ';   
    } else {   
        echo '<SPAN class=prn>Next ></SPAN> ';   
    }     
}//end of method doPages()   


function check_integer($which) {   
    if(isset($_REQUEST[$which])){   
        if (intval($_REQUEST[$which])>0) {   
            //check the paging variable was set or not,   
            //if yes then return its number:   
            //for example: ?page=5, then it will return 5 (integer)   
            return intval($_REQUEST[$which]);   
        } else {   
            return false;   
        }   
    }   
    return false;   
}//end of check_integer()   
  
function get_current_page() {   
    if(($var=check_integer('page'))) {   
        //return value of 'page', in support to above method   
        return $var;   
    } else {   
        //return 1, if it wasnt set before, page=1   
        return 1;   
    }   
}//end of method get_current_page()
?>
