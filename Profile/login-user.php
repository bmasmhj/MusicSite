<?php require_once "controllerUserData.php"; 


if(isset($_SESSION['musicusername']) && isset($_SESSION['password'])){
    $email = $_SESSION['musicusername'];
$password = $_SESSION['password'];
    $sql = "SELECT * FROM usertable WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        header('Location: ../Profile');


    }
}

?>
<?php require 'header.php' ?>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4 offset-md-4 mt-5 form card">
                <a href="../"> <span class='mdi mdi-chevron-left'> << Home</span> </a>
                <form action="Login" method="POST" autocomplete="">
                    <h2 class="text-center">Login</h2>
                    <p class="text-center">Login with your email and password.</p>
                    <?php
                    if(count($errors) > 0){
                        ?>
                        <div class="alert alert-danger text-center">
                            <?php
                            foreach($errors as $showerror){
                                echo $showerror;
                            }
                            ?>
                        </div>
                        <?php
                    }
                    ?>
                    <div class="form-group">
                        <input class="form-control mb-2" type="email" name="email" placeholder="Email Address" required value="<?php echo $email ?>">
                    </div>
                    <div class="form-group">
                        <input class="form-control mb-2" type="password" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <input class="form-control mb-2 mt-2 button" type="submit" name="login" value="Login">
                    </div>
                    <div class="link login-link text-center">Not yet a member? <a href="SignupUser">Signup now</a></div>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>