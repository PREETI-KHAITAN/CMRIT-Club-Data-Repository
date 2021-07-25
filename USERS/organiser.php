<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "cmritdb";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $memberid=$_GET['mid'];
 $eventid=$_GET['eid'];
 $res = mysqli_query($conn,"insert into organiser values('$memberid','$eventid')");

   $conn -> close();
    
?>
