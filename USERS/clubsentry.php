<?php
 $dbhost = "localhost";  
 $dbuser = "root";
 $dbpass = "";
 $db = "cmritdb";
 $conn = new mysqli($dbhost,$dbuser, $dbpass,$db) or die();
 echo "connected successfully";
 $clubid=$_GET['cid'];
 $clubname=$_GET['cname'];
 $branch=$_GET['bran'];
 $res = mysqli_query($conn,"insert into clubs values('$clubid','$clubname','$branch')");


   $conn -> close();
    
?>