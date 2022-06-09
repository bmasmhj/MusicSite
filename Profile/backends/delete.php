<?php 

require '../connection.php';

session_start();

if(isset($_POST['deletecomment'])){
    $id = $_POST['deletecomment'];
    $code = $_POST['c'];
    if(isset($_SESSION['musicusername'])){
        $email = $_SESSION['musicusername'];
        $delete = "DELETE FROM comments WHERE id = '$id' AND email = '$email'  ";
        if ($con->query($delete)) {
            $sql2 = "UPDATE `music` SET comments = comments-1  WHERE `musiccode`='$code' ";
            if($con->query($sql2)){
                echo 'deleted';
            }
        }
        else{
            die("Update failed $con->error");
        }
    }
   
}else if(isset($_POST['deleterating'])){
    if(isset($_SESSION['musicusername'])){
        $id = $_POST['deleterating'];
        $musiccode = $_POST['c'];
        $re = $_POST['rating'];
        $email = $_SESSION['musicusername'];
        $update = "DELETE FROM ratings WHERE id = '$id' AND email = '$email' ";
        if($con->query($update)){
            $sql = "UPDATE `music` SET  rating = rating-$re, ratingcount = ratingcount-1  WHERE `musiccode`='$musiccode' ";
            if($con->query($sql)){
                echo 'deleted';
            }
        }
    }
}

?>