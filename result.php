<?php

if(!isset($_GET['t'])){
    header('Location: Home');
    exit();
}


?>

<?php require 'header.php' ?>
    <div class="container mt-3">
        <div class="custom-card p-3">
            <div class="row">
                <?php if(isset($error)){ require 'error.php'; } else { ?>
                    <div class="col-md-9 border-right">
                        <header>
                            <h3 class="headingtag"><?php echo $_GET['t']?></h3>
                        </header>
                        
                        <?php foreach($tresultdata as $key => $tresultdataval ) {  ?>
                            
                                <a class="iteam text-white" href="Mus?c=<?php echo $tresultdataval['musiccode'] ?>">
                                    <img class="w-100 musicimg" src="<?php echo $tresultdataval['img']?>" alt="">
                                    <div class="mx-2">
                                    <h5 class="p-0 text-white mt-1 m-0"><?php 
                                    
                                    if(strlen($tresultdataval['title']) > 15) {
                                        echo substr($tresultdataval['title'],0,15).'..';
                                    }else{
                                        echo $tresultdataval['title'];
                                    }       
                                    ?></h5>
                                <p><?php echo $tresultdataval['artist']?></p>
                                    </div>
                                </a>
                        <?php } ?>
                    
                    </div>
                <?php } ?>
              <?php require 'sidebar.php' ?>
            </div>
        </div>
    </div>
      
<?php require 'footer.php' ?>