<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "cmritdb";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $name=$_GET['rname']; 
 $emailid=$_GET['email'];
 $company=$_GET['coname'];
 $designation=$_GET['desg'];
 $phoneno=$_GET['phno'];
 $eventid=$_GET['eid'];
 $res = mysqli_query($conn,"insert into resourceperson values('$name','$emailid','$company','$designation','$phoneno','$eventid')");


   $conn -> close();
    
?>