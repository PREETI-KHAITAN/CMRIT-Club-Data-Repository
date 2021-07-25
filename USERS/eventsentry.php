<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "cmritdb";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $eventid=$_GET['eid'];
 $eventname=$_GET['ename'];
 $organiser=$_GET['oname'];
 $clubid=$_GET['cid'];
 $startdate=$_GET['sdate'];
 $enddate=$_GET['edate'];
 $status=$_GET['status'];
 $res = mysqli_query($conn,"insert into events values('$eventid','$eventname','$organiser','$clubid','$startdate','$enddate','$status')");


   $conn -> close();
    
?>