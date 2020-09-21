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
  <a href="page3.html"><img src="home.png" id="home"></a>
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
$sql= "SELECT acc_no , username , branch_no , loan_type , time_span , amount , phno , date FROM loan WHERE acc_no = '$acc_no' ";
$result = mysqli_query($conn, $sql);
$rows=mysqli_num_rows($result);
if($rows>0){
 echo "<br><br><br><br><br><br>";
       echo "<table border='1' id='customers'>
<tr>
            <th colspan='8'>OBI  ACCOUNT  DEPOSITE  INFORMATION</th>
              </tr>
            <tr>
            <th>ACCOUNT_NO</th>
            <th>NAME</th>
            <th>BRANCH_NO</th>
            <th>LOAN TYPE</th>
            <th>TIME SPAN (month)</th>
            <th>AMOUNT</th>
            <th>PHNO</th>
            <th>DATE</th>
          </tr>";
          while($row = mysqli_fetch_assoc($result)){
             echo "<tr>"; 

              echo "<td>" .  $row["acc_no"]  . "</td>";
              echo "<td>" .  $row["username"]   . "</td>";
              echo "<td>" .  $row["branch_no"]  . "</td>";
              echo "<td>" . $row["loan_type"] . "</td>";
              echo "<td>" . $row["time_span"] . "</td>";
              echo "<td>" .  $row["amount"]   . "</td>";
              echo "<td>" . $row["phno"] . "</td>";
              echo "<td>" . $row["date"] . "</td>";
              echo "</tr>";
}
echo "</table>";
}
?>
</body>
</html>
        