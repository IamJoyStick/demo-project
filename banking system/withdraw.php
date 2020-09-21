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
$sql3= "SELECT balance FROM basic_info WHERE acc_no= '$acc_no' AND balance>= '$amount' ";
$sql = "INSERT INTO withdraw (acc_no , username , branch_no , amount , phno)
values ('$acc_no' , '$name' , '$br_no' , '$amount' , '$mob')";
$result = mysqli_query($conn, $sql3);
$rows=mysqli_num_rows($result);
if($rows>0){
if($conn->query($sql)){
	echo "new record is inserted";
}
else{
	echo "error". $sql ."<br>". $conn->error;
}
}
else{
	echo "insuficiant balance";
}

 ?>