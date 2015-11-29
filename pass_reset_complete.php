<?php
include("connection.php");
$newpass=$_POST['newpass'];
$newpass1=$_POST['newpass1'];
$post_username=$_POST['username'];
$code=$_GET['code'];

if($newpass==$newpass1){
    $enc_pass=md5($newpass);
    mysql_query("UPDATE mainsite_users SET password='$enc_pass' WHERE username='$post_username'");
    mysql_query("UPDATE mainsite_users SET passreset='0' WHERE username='$post_username'");
    echo "Your password has been updated<p>.<a href='login'>Click here to login</a>";
}else{
    echo "Passwords must match. <a href='forgot_pass.php?code=$code&&username=$username'>Click here to go back</a>"
}
?>