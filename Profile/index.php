<?php require_once "controllerUserData.php"; 
 require 'checker.php';
  require 'header.php';?>
               

<nav class="navbar container">
  <a class="navbar-brand text-dark" href="../">InfoSongs</a>
  <button type="button" class="btn btn-light text-dark"><a href="logout-user.php" class="text-dark">Logout</a></button>
</nav>
        
<div class="container text-black mt-5">

  <div class="row">
    <div class="card">
      <div class="card-body">
        <h3>Welcome , <?php echo $fetch_info['name'] ?></h3>
      </div>
    </div>
  </div>
  
  <div class="row">
    <div class="col-md-3 mb-2 mb-sm-0">
      <?php require 'sidenav.php'?>  
    </div> 

    <div class="col-md-9">
        <div class="card">
          <div class="card-body">
            <div class="tab-content" id="v-pills-tabContent" style='height:400px!important'>
             <?php require 'editprofile.php'; require 'myratings.php'; require 'mycomments.php';?>
          </div>
          </div>
        </div>
    </div> 
  </div>
  <div class="row">
    <div class="card">
      <div class="card-body">
        <?php require 'recommendation/recommendation.php'?>        
      </div>
    </div>
  </div>
</div>

         
<?php require 'footer.php' ?>
<script src="script.js"></script>

</html>
