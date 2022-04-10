<?php $email = $_SESSION['musicusername'];
$password = $_SESSION['password'];
if($email != false && $password != false){
    $sql = "SELECT * FROM `usertable`
        
    WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
$code = $fetch_info['code'];
        if($status == "verified"){
            if($code != 0){
                header('Location: ResetCode');
            }
        }else{
            header('Location: UserOTP');
        }
    }
}else{
    header('Location: Login');
} 
 
?>