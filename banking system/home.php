<?php 
$name= filter_input(INPUT_POST, 'username');
$fname= filter_input(INPUT_POST, 'fname');
$id= filter_input(INPUT_POST, 'uid');
$mob= filter_input(INPUT_POST, 'phno');
$email= filter_input(INPUT_POST, 'email');
$pass= filter_input(INPUT_POST, 'password');
$cpass= filter_input(INPUT_POST, 'con');

if("$pass" == "$cpass"){
	$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";
$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
	$sql = "INSERT INTO signup (username , fname , uid , phno , email , password)
values ('$name' , '$fname' , '$id' , '$mob' , '$email' , '$pass')";
if($conn->query($sql)){
	echo "new record is inserted";
	header('Location: page3.html');
exit();
}
else{
	echo "error". $sql ."<br>". $conn->error;
}
}
else{
	echo "check the password";
}
 ?>