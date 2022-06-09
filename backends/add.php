<?php 

session_start();
require 'connection.php';
if(isset($_POST['addcomment'])){
    $code = $_POST['id'];
    $coment = $_POST['coment'];
    $email = $_SESSION['musicusername'];
    $sql = "INSERT INTO `comments`( `email`, `musiccode`, `comment`) VALUES ('$email','$code','$coment')";
    if($con->query($sql)){
        $sql2 = "UPDATE `music` SET comments = comments+1  WHERE `musiccode`='$code' ";
        if($con->query($sql2)){
            echo 'success';
        }
    }
}


?>