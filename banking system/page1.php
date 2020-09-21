<?php 
$username= filter_input(INPUT_POST, 'username');
$pass= filter_input(INPUT_POST, 'password');
$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";
$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$sql= mysqli_query($conn,"SELECT username , password FROM signup WHERE username = '$username' AND password = '$pass'");
$rows=mysqli_num_rows($sql);
	if($rows==1){
		echo "login successful";
		header("Location: page3.html");
		exit();
	}
else{
	echo "error input username or password may wrong";
}


?>
