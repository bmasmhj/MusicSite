<?php 
    require '../connection.php';

if(isset($_POST['o']) && isset($_POST['n']) && isset($_POST['c'])){
    $old = $_POST['o'];
    $new = $_POST['n'];
    session_start();
    $email = $_SESSION['musicusername'] ;
    $password = $old;
    $chewckuser = "SELECT * FROM usertable WHERE email = '$email'";
        $res = mysqli_query($con, $chewckuser);
        if(mysqli_num_rows($res) > 0){
            $fetch = mysqli_fetch_assoc($res);
            $fetch_pass = $fetch['password'];
            if(password_verify($password, $fetch_pass)){
                $changepw = password_hash($new, PASSWORD_BCRYPT);
                $sql = "UPDATE usertable SET password = '$changepw' WHERE email = '$email' ";
                if ($con->query($sql)) {
                     echo "sucess"; 
                     $_SESSION['password'] = $new;
                }
            }else{
                echo "oldwrong";  
            }
        }else {
            echo "error";

        }

}else if(isset($_POST['updatemusicname'])){
    session_start();
    $email = $_SESSION['musicusername'] ;

    $name = $_POST['fullname'];
    $sql = "UPDATE usertable SET name = '$name' WHERE email = '$email' ";
    if ($con->query($sql)) {
        header('Location: ../');
        exit();
    }

}


?>