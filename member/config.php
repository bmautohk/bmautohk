<?
//header('Content-Type: text/html; charset=euc-jp');

//set up the names of the database and table
$db_name ="topnov_db";

//connect to the server and select the database
$server = "127.0.0.1";
$dbusername = "membertopnov";
$dbpassword = "98014380";

define('DB_HOST', $server);
define('DB_LOGIN', $dbusername);
define('DB_PASSWORD', $dbpassword);
define('DB_NAME', $db_name);

//domain information
$domain = ".127.0.0.1/~autopart";

//Change to "0" to turn off the login log
$log_login = "1";

//base_dir is the location of the files, ie http://www.yourdomain/login
$base_dir = "http://74.53.227.146/~autopart/";

//length of time the cookie is good for - 7 is the days and 24 is the hours
//if you would like the time to be short, say 1 hour, change to 60*60*1
$duration = time()+(60*60*24*30);

//the site administrator\'s email address
$adminemail = "info@superior-autoparts.com";

//sets the time to EST
$zone=3600*+8;

//do you want the verify the new user through email if the user registers themselves?
//yes = "0" :  no = "1"
$verify = "1";

//default redirect, this is the URL that all self-registered users will be redirected to
$default_url = "http://127.0.0.1/~autopart";

//minimum and maximum password lengths
$min_pass = 0;
$max_pass = 8;


$num_groups = 2+2;
$group_array = array("Suppliers", "Partners", "Users","Administrators");

?>
