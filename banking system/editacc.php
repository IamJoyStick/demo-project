
<?php 
$acc_no= filter_input(INPUT_POST, 'acc_no');
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
$sql = "UPDATE account_info SET username= '$name' , fname= '$fname' , branch_no= '$brno' , branch_name= '$brname' , dob= '$dob' , gender= '$gender' , age= '$age' , occupation= '$occupa', uid= '$id' , email= '$email' , address= '$address' WHERE phno= '$mob'";
$sql1= "UPDATE basic_info SET branch_no= '$brno' WHERE acc_no= '$acc_no' ";

if($conn->query($sql)){
	if($conn->query($sql1)){
  	echo "your   account is updated successfully";
}
}
else{
	echo "error". $sql ."<br>". $conn->error;
}
 ?>