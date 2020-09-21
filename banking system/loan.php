<?php 
$acc_no= filter_input(INPUT_POST, 'acc_no');
$name= filter_input(INPUT_POST, 'username');
$br_no= filter_input(INPUT_POST, 'br_no');
$loan_type= filter_input(INPUT_POST, 'loan_type');
$time_span= filter_input(INPUT_POST, 'time_span');
$amount= filter_input(INPUT_POST, 'amount');
$mob= filter_input(INPUT_POST, 'phno');

$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";
$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$today = date("Y/m/d");
$sql = "INSERT INTO loan (acc_no , username , branch_no , loan_type , time_span , amount , phno , date)
values ('$acc_no' , '$name' , '$br_no' , '$loan_type' , '$time_span' , '$amount' , '$mob' , '$today')";
if($conn->query($sql)){
	echo "new record is inserted";

}
else{
	echo "error". $sql ."<br>". $conn->error;
}

 ?>