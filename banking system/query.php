   <!DOCTYPE html>
<html>
<head>
	<title>page3</title>
     <link rel="stylesheet" type="text/css" href="css/page3.css">
      <link rel="stylesheet" type="text/css" href="css/table.css">
</head>
<body>
  <div>
	<img src="4logo.jpg" width="150" height="150">
	<h1 id="h1">oriental bank of india</h1>
	<h1 id="h3">banglore,karnataka,560060</h1>
	<img src="home.png" id="home">
</div>
<div id="b1">
	<a href="createacc.html"><button>create account</button></a>
	<a href="page4.html"><button>deposite</button></a>
	<a href="montrans.html"><button>money transfer</button></a>
	<a href="withdraw.html"><button>withdrawal</button></a>
	<a href="loan.html"><button>loan</button></a>
	<a href="index.html"><button>logout</button></a>
</div>
<div style="position: absolute; top: 200px; right: 500px;">
		<form action="query.php" method="post">
		<input type="search" name="acc_no" placeholder="account number"  >	
	<button style="color: blue;">search</button>
	</form>
</div>
<?php 
$acc_no= filter_input(INPUT_POST, "acc_no");
$host= "localhost";
$dbusername= "root";
$dbpassword= "";
$dbname= "obibank";
$conn = new mysqli ("$host" , "$dbusername" , "$dbpassword" , "$dbname");
$sql= "SELECT A.acc_no , B.username , B.branch_name , A.balance , A.phno FROM basic_info A , account_info B WHERE A.acc_no = '$acc_no' AND A.phno=B.phno";
$result = mysqli_query($conn, $sql);
$rows=mysqli_num_rows($result);
if($rows>0){
    $row = mysqli_fetch_assoc($result);
   echo "<br><br><br><br><br><br>";
 echo "<table border='4' id='customers' cellspacing='0'>
            <tr>
            <th colspan='8'>OBI ACCOUNT INFORMATION</th>
              </tr>
            <tr>
            <th>ACCOUNT_NO</th>
            <th>USERNAME</th>
            <th>BRANCH NAME</th>
            <th>BALANCE</th>
            <th>PHNO</th>
            </tr>";
              echo "<tr>";
              echo "<td>" .  $row["acc_no"]  . "</td>";
              echo "<td>" .  $row["username"]   . "</td>";
              echo "<td>" .  $row["branch_name"]  . "</td>";
              echo "<td>" .  $row["balance"]   . "</td>";
              echo "<td>" . $row["phno"] . "</td>";
}
else{
	echo "error enter valid account number";
}

    echo "</table>";
?>
</body>
</html>
        