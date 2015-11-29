<?php
  include ("connection.php");
  $getData=("SELECT fname,lname,co,address,postcode,region,email,tel,ssn FROM klass_register ORDER BY lname ASC"); 
  if($result=$conn->query($getData)){
        $xml_output="<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\n"; 
        $xml_output .="\t\t<students>\n";
  WHILE($row=mysqli_fetch_array($result)){
        $xml_output .="\t\t\t\t<student>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<fname>".$row['fname']."</fname>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<lname>".$row['lname']."</lname>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<co>".$row['co']."</co>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<address>".$row['address']."</address>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<postcode>".$row['postcode']."</postcode>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<region>".$row['region']."</region>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<email>".$row['email']."</email>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<tel>".$row['tel']."</tel>\n"; 
        $xml_output .="\t\t\t\t\t\t\t<ssn>".$row['ssn']."</ssn>\n"; 
        $xml_output .="\t\t\t\t</student>\n";
  }
        $xml_output .="\t\t</students>\n";
  

} else{ 
      echo "No records found!";
  } 
$filenameAndPath="students.xml";
$myFile=fopen($filenameAndPath, 'w');
$write=fwrite($myFile,$xml_output);
echo "<meta http-equiv='refresh' content='0;url=students.xml'/>";
mysqli_free_result($result);
mysqli_close($conn);
?>