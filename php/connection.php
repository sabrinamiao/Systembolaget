<!DOCTYPE html>
<html>

<head>

</head>

<body>
    <?php
    //error_reporting(E_ALL);
    //connect to the database
    $DB_NAME='u0229387_s';
    $DB_HOST='u0229387.fsdata.se.mysql.fsdata.se';
    $DB_USER='u0229387';
    $DB_PASS='N8?w6hGaJRrq';
    $conn = mysqli_connect($DB_HOST,$DB_USER,$DB_PASS,$DB_NAME);
    if (!$conn)
  {
  die('Could not connect: ' . mysql_error());
  }
?>
</body>

</html>