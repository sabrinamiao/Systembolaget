<!DOCTYPE html>
<html>

<head>
    <title>php2pdf</title>
</head>

<body>
    <?php
require("php2pdf/fpdf.php");//extenbibliotek
require("php2pdf/")
$pdf=new FPDF();//New object
$pdf->AddPage();
$pdf->SetFont("Arial","B",16);
$pdf->Cell(40,10,"Hello World!");
$pdf->OutPut();
?>
</body>

</html>