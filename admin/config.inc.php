<?php
  session_start();
  $servername = "10.96.166.133"; //change this  accordingly
  $dBUsername = "root";
  $dBPassword = "root";
  $dBName = "hms";
 // session_start();
  $conn=mysqli_connect($servername, $dBUsername, $dBPassword, $dBName);

  if (!$conn) {
    //echo "connection issue me shifan"
    die("Connection Failed: ".mysqli_connect_error());
  }
?>