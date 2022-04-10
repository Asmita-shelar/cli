<?php

$servername="localhost";
$username="root";
$password="";
$database= "cakeshop";

$conn= mysqli_connect($servername,  $username, $password, $database);

$adminname=$_POST['adminname'];
$password=$_POST['password'];





if(!$conn){
    echo'<strong>Warning!</strong>Cannot place your order try again later sorry the inconvinience caused.';
}

else{
  $query = "SELECT * FROM admin WHERE admin_name='$adminname' AND passwords='$password'";
    $result= mysqli_query($conn, $query);
    if($result){

        header("Location:admin2.php"); 
  
        exit; 
    }
    else{
        header("Location:admin1.php"); 
  
        exit; 
    }

}

?>
