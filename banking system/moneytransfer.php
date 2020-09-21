<?php 
$sacc_no= filter_input(INPUT_POST, 'sacc_no');
$name= filter_input(INPUT_POST, 'username');
$br_no= filter_input(INPUT_POST, 'br_name');
$racc_no= filter_input(INPUT_POST, 'racc_no');
$amount= filter_input(INPUT_POST, 'amount');
$mob= filter_input(INPUT_POST, 'phno');
$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";
$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$sql = "INSERT INTO moneytrans (sacc_no , username , branch_no , racc_no , amount , phno)
values ('$sacc_no' , '$name' , '$br_no' , '$racc_no' , '$amount' , '$mob')";
$sql1= "UPDATE basic_info SET balance = balance+'$amount' WHERE acc_no = '$racc_no'";
$sql2= "UPDATE basic_info SET balance = balance-'$amount' WHERE acc_no = '$sacc_no'";
$sql3= "SELECT balance FROM basic_info WHERE acc_no= '$sacc_no' AND balance>= '$amount' ";
$result = mysqli_query($conn, $sql3);
$rows=mysqli_num_rows($result);
if($rows>0){
if($conn->query($sql)){
	if($conn->query($sql1)){
		if($conn->query($sql2)){
	echo "new record is inserted";

}
}
}
else{
	echo "error". $sql ."<br>". $conn->error;
}
}
else{
	echo "insuficiant balance";
}

 ?>