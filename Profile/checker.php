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
 
$comentsql = "SELECT  m.title as music ,c.* 
FROM comments c
JOIN music m
ON c.musiccode = m.musiccode
WHERE email = '$email' ";
    $comentresult = $con->query($comentsql);
    $comentdata = [];
        if ($comentresult->num_rows > 0) {
        while ($comentrow = $comentresult->fetch_assoc()) {
            array_push($comentdata, $comentrow);
        }
    } 

$ratingssql = "SELECT  m.title as music ,c.* 
FROM ratings c
JOIN music m
ON c.musiccode = m.musiccode
WHERE email = '$email' ";
    $ratingsresult = $con->query($ratingssql);
    $ratingsdata = [];
        if ($ratingsresult->num_rows > 0) {
        while ($ratingsrow = $ratingsresult->fetch_assoc()) {
            array_push($ratingsdata, $ratingsrow);
        }
    } 
?>