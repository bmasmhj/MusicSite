<?php 

require 'connection.php';
if(isset($_POST['rating']) && isset($_POST['star']) && isset($_POST['user']) ){
    session_start();
    if(isset($_SESSION['musicusername'])){
        $re = $_POST['star'];
        $musiccode = $_POST['rating'];
        $email = $_SESSION['musicusername'];



    $musicsql = "SELECT  * FROM music WHERE musiccode = '$musiccode' ";
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


        $ratesql = "SELECT  * FROM ratings WHERE email = '$email' AND musiccode = '$musiccode' ";
        $rateresult = $con->query($ratesql);
        $ratedata = [];
        if ($rateresult->num_rows > 0) {
            while ($raterow = $rateresult->fetch_assoc()) {
                $initialrate = $raterow['ratenumber'];
            }
            $update = "UPDATE `ratings` SET `ratenumber`='$re' WHERE  email = '$email' AND musiccode = '$musiccode'";
            if($con->query($update)){
                $sql = "UPDATE `music` SET  rating = rating-$initialrate+$re WHERE `musiccode`='$musiccode' ";
                if($con->query($sql)){
                    echo "Thank's for rating ".$re." stars";
                }
            }
        }else{
            $insert = "INSERT INTO `ratings`(`email`, `musiccode`, `ratenumber`,`userid` ,`musicid`) VALUES ('$email' ,'$musiccode' ,'$re' , '$userid' , '$musicid')";
            if($con->query($insert)){
                $sql = "UPDATE `music` SET ratingcount = ratingcount+1 , rating = rating+$re WHERE `musiccode`='$musiccode' ";
                if($con->query($sql)){
                    echo "Thank's for rating ".$re." stars";

                }

            }
        } 

       
    }
}

?>