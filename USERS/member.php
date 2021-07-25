<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "cmritdb";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $memberid=$_GET['mid'];
 $membername=$_GET['mname'];
 $branch=$_GET['bran'];
 $sex=$_GET['gend'];
 $email=$_GET['maili'];
 $phonenumber=$_GET['phnum'];
 $clubid=$_GET['cid'];
 $designation=$_GET['desg'];
 $res = mysqli_query($conn,"insert into members
  values('$memberid','$membername','$branch','$sex','$email','$phonenumber','$clubid','$designation')");


   $conn -> close();
    
?>