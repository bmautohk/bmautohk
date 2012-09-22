<?php
  require_once('Auth.php');
  function show_login_form(){
   header("Location: index.php");
     }
$auth = new Auth('DB', $options, 'show_login_form');
$auth->start();
if ($auth->checkAuth()) {
   $auth->logout();
   $auth->start();
}
?>