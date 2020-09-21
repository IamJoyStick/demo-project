<?php 
$name= filter_input(INPUT_POST, 'name');
$fname= filter_input(INPUT_POST, 'fname');
$brno= filter_input(INPUT_POST, 'branch_no');
$brname= filter_input(INPUT_POST, 'branch_name');
$dob= filter_input(INPUT_POST, 'dob');
$gender= filter_input(INPUT_POST, 'gender');
$age= filter_input(INPUT_POST, 'age');
$occupa= filter_input(INPUT_POST, 'occpation');
$mob= filter_input(INPUT_POST, 'mob_no');
$id= filter_input(INPUT_POST, 'uid');
$email= filter_input(INPUT_POST, 'email');
$address= filter_input(INPUT_POST, 'address');

$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";

$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$sql = "INSERT INTO account_info (username , fname , branch_no , branch_name , dob , gender , age , occupation , phno , uid  , email , address)
values ('$name' , '$fname' , '$brno' , '$brname' , '$dob' , '$gender' , '$age' , '$occupa' , '$mob' , '$id' , '$email' , '$address')";
$sql1= "INSERT INTO basic_info (branch_no , balance , phno)
values ('$brno' , 0 , '$mob')";

if($conn->query($sql)){
	if($conn->query($sql1)){
		echo "new record is inserted";
	echo "<br>";
	$sql2= "SELECT acc_no FROM basic_info WHERE phno = '$mob'";
$result = mysqli_query($conn,$sql2);
while($row = mysqli_fetch_array($result))
  {
  	echo "your account number is";
  echo $row['acc_no'];
}
}
}
else{
	echo "error". $sql ."<br>". $conn->error;
}
 ?>