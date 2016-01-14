<?php
    //error_reporting(E_ALL);
    //connect to the database
    $DB_NAME='localhost_systembolaget';
    $DB_HOST='localhost';
    $DB_USER='root';
    $DB_PASS='';
    $conn = mysqli_connect($DB_HOST,$DB_USER,$DB_PASS,$DB_NAME);
    if (!$conn)
  {
  die('Could not connect: ' . mysql_error());
  }
?>