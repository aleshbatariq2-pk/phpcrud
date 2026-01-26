<?php
session_start();
include ("dbconnection.php");
$userotp = $_POST["otp"];
if($_SESSION["otp"]== $userotp){

    //equal
    // insert DB
    //use sessions
   $username = $_SESSION["username"];
   $email = $_SESSION["email"];
   $password = $_SESSION["password"];
   $query = "INSERT into users(username,email,password)
   Values ('$username','$email','$password')";
   $run = mysqli_query($connection,$query);

   if($run){
   //remove only otp
   unset($_SESSION["otp"]);
   echo "<script>alert('signUp successfull! Now You can Login.')
   window.location.href = 'login.php'
   </script>";
   }else{
echo "Connectivity Issue";
   }
}else{
    echo "<script>alert('Invalid OTP')
    window.location.href = 'verify_otp.php'
    
    </script>";
}



?>