<?php
include"connectionLocal.php";
$Artikelid = $_POST["Artikelid"];
$Namn = $_POST["Namn"];
$Namn2 = $_POST["Namn2"];
$Prisinklmoms = $_POST["Prisinklmoms"];
$Volymiml = $_POST["Volymiml"];
$Varugrupp = $_POST["Varugrupp"];
$Forpackning = $_POST["Forpackning"];
$Ursprunglandnamn = $_POST["Ursprunglandnamn"];
$Leverantor =$_POST["Leverantor"];
$Argang = $_POST["Argang"];
$Alkoholhalt = $_POST["Alkoholhalt"];
$Ekologisk = $_POST["Ekologisk"];

$getAllData = "SELECT * FROM sortiment";
$resultGetAllData=$conn->query($getAllData) or die($conn->error);
?>