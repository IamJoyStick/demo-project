<?php 
$acc_no= filter_input(INPUT_POST, 'acc_no');
$name= filter_input(INPUT_POST, 'username');
$br_no= filter_input(INPUT_POST, 'br_name');
$amount= filter_input(INPUT_POST, 'amount');
$mob= filter_input(INPUT_POST, 'phno');
$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";
$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$sql = "INSERT INTO deposite (acc_no , username , branch_no , amount , phno)
values ('$acc_no' , '$name' , '$br_no' , '$amount' , '$mob')";
$sql1= "UPDATE basic_info SET balance = balance+'$amount' WHERE acc_no = '$acc_no'";
if($conn->query($sql)){
	if($conn->query($sql1)){
	echo "new record is inserted";
}
}

else{
	echo "error". $sql ."<br>". $conn->error;
}

$conn->close();
 ?>