<?php 

session_start();
require 'connection.php';
if(isset($_POST['addcomment'])){
    $code = $_POST['id'];
    $coment = $_POST['coment'];
    $email = $_SESSION['musicusername'];



    $musicsql = "SELECT  * FROM music WHERE musiccode = '$code' ";
    $musicresult = $con->query($musicsql);
    $musicdata = [];
        if ($musicresult->num_rows > 0) {
        while ($musicrow = $musicresult->fetch_assoc()) {
            $musicid = $musicrow['id'];
        }
    } 


    $usersql = "SELECT  * FROM usertable WHERE email = '$email' ";
    $userresult = $con->query($usersql);
    $userdata = [];
        if ($userresult->num_rows > 0) {
        while ($userrow = $userresult->fetch_assoc()) {
            $userid = $userrow['id'];
        }
    } 


    $sql = "INSERT INTO `comments`( `email`, `musiccode`, `comment`,`userid`,`musicid`) VALUES ('$email','$code','$coment','$userid','$musicid')";
    if($con->query($sql)){
        $sql2 = "UPDATE `music` SET comments = comments+1  WHERE `musiccode`='$code' ";
        if($con->query($sql2)){
            echo 'success';
        }
    }
}


?>