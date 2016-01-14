<?php
define('DB_USER', 'u5968850');
define('DB_PASSWORD', 'as894567890');
define('DB_SERVER', 'u5968850.fsdata.se.mysql.fsdata.se');
define('DB_NAME', 'u5968850_s');


if (!$db = new mysqli(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME)) {
	die($db->connect_errno.' - '.$db->connect_error);
}

$arr = array();

if (!empty($_POST['keywords'])) {
	$keywords = $db->real_escape_string($_POST['keywords']);
	$sql = "SELECT * FROM Sortiments WHERE Namn LIKE '%".$keywords."%' OR Prisinklmoms LIKE '%".$keywords."%' OR Varnummer LIKE '%".$keywords."%'  OR Varugrupp LIKE '%".$keywords."%' OR Ursprunglandnamn LIKE '%".$keywords."%'";
	$result = $db->query($sql) or die($mysqli->error);
	if ($result->num_rows > 0) {
		while ($obj = $result->fetch_object()) {
			$arr[] = array('Namn'=> $obj->Namn, 'id'=> $obj->id ,'Varnummer'=> $obj->Varnummer ,'Ursprunglandnamn'=> $obj->Ursprunglandnamn , 'Prisinklmoms'=> $obj->Prisinklmoms, 
			 'Forpackning'=> $obj->Forpackning ,'Volymiml'=>$obj->Volymiml );
		}
	}
}
echo json_encode($arr);
