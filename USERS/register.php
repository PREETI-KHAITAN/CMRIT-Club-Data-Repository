<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "cmritdb";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $studentid=$_GET['sid'];
 $studentname=$_GET['sname'];
 $branch=$_GET['br'];
 $sex=$_GET['gen'];
 $email=$_GET['mail'];
 $semester=$_GET['sem'];
 $phonenumber=$_GET['phno'];
 $eventid=$_GET['eid'];
 $res = mysqli_query($conn,"insert into allstudents
  values('$studentid','$studentname','$branch','$sex','$email','$semester','$phonenumber','$eventid')");


   $conn -> close();
    
?>