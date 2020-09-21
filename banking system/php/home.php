<?php 
$name= filter_input(INPUT_POST, 'username');
$fname= filter_input(INPUT_POST, 'fname');
$id= filter_input(INPUT_POST, 'UID');
$mob= filter_input(INPUT_POST, 'phno');
$email= filter_input(INPUT_POST, 'email');
$pass= filter_input(INPUT_POST, 'password');
$conpass= filter_input(INPUT_POST, 'confirm');
$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";

$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$sql = "INSERT INTO signup (username , fname , UID , phno , email , password)
values ('$name' , '$fname' , '$id' , '$mob' , '$email' , '$pass')";
if($conn->query($sql)){
	echo "new record is inserted";
}
else{
	echo "error". $sql ."<br>". $conn->error;
}

 ?>