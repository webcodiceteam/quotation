<?php 
require('db.php'); 
function fetch_data()  
{  
$output = ''; 
$id = $_GET['id']; 
$conn = mysqli_connect("localhost", "root", "", "dashboard");  
$sql = "SELECT * FROM quotation order by id desc limit 1";  
$result = mysqli_query($conn, $sql);  
while($row = mysqli_fetch_array($result))  
{       
$output .= '<tr>  
 
<th width="20%">COMPANY NAME</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>'.$row["company_name"].'</td></tr><br> 
<tr><th width="20%">FIRST NAME</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>'.$row["first_name"].'</td></tr><br> 
<tr><th width="20%">LAST NAME</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>'.$row["last_name"].'</td></tr><br> 
<tr><th width="20%">PRICE</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>'.$row["price"].'</td></tr><br> 
<tr><th width="20%">ADDRESS</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>'.$row["address"].'</td> 
<tr><th width="20%">TIME</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>'.$row["c_time"].'</td>   
</tr><br>  
';  
}  
return $output;  
}  
if(isset($_POST["generate_pdf"]))  
{  
require_once('tcpdf_min/tcpdf.php');  
$obj_pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
$obj_pdf->SetCreator(PDF_CREATOR);  
$obj_pdf->SetTitle("Generate HTML Table Data To PDF From MySQL Database Using TCPDF In PHP");  
$obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
$obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
$obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
$obj_pdf->SetDefaultMonospacedFont('helvetica');  
$obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
$obj_pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
$obj_pdf->setPrintHeader(false);  
$obj_pdf->setPrintFooter(false);  
$obj_pdf->SetAutoPageBreak(TRUE, 10);  
$obj_pdf->SetFont('helvetica', '', 11);  
$obj_pdf->AddPage();  
$content = '';  
$content .= '  

<table  cellspacing="0" cellpadding="3">  
<tr>  
<th width="20%"></th>
 

  

</tr>  
';  
$content .= fetch_data();  
$content .= '</table>';  
$obj_pdf->writeHTML($content);  
$obj_pdf->Output('file.pdf', 'I');  
}  
?>  
<!DOCTYPE html>  
<html>  
<head>
<style type="text/css">
	.table-responsive {
    min-height: .01%;
    overflow-x: auto;
    
    line-height: 40px;
    background-color: burlywood;
    padding-left: 45%;
}</style>  
<title> Quotation</title>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />            
</head>  
<body>  
<br />
<div class="container">  
<h4 align="center"> View your quotation deatils</h4><br />  
<div class="table-responsive">  
<div class="col-md-12" align="right">
 
</div>
<br/>
<br/>
<!-- <table class="table table-bordered">  
<tr>  
 <th width="20%">id</th>
 <th width="20%">Name</th>
<th width="20%">Email</th>
<th width="20%">Phone no</th>
<th width="20%">Address</th>
  
</tr>  --> 
<?php  
echo fetch_data();  
?>  
<!-- </table> -->
<form method="post">  
<input type="submit" name="generate_pdf" class="btn btn-success" value="Generate PDF" />  
</form>   
</div>  
</div>  
</body>  
</html>