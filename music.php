<?php

if(!isset($_GET['c'])){
    header('Location: Home');
    exit();
}


?>

<?php require 'header.php'; ?> 
<link rel="stylesheet" href="assets/css/star-rating-svg.css">
<link rel="stylesheet" href="assets/css/demo.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">

    <div class="container mt-3">
        <div class="custom-card p-3">
            <div class="row">
                <?php if(isset($error)){ require 'error.php'; } else {  foreach($cresultdata as $key => $cresultdataval ) { ?>
                <div class="col-md-9 border-right">
                    <div class="ccard">
                        <div class="card-body">
                            <div class="p-3 bLXwom" style="background-image: url('<?php echo $cresultdataval['img']?>'); ">
                             </div>
                            <div class="row backdrop">
                                <div class="col-md-2 p-0 m-0 gLbHXr">
                                    <img class="image-det" src="<?php echo $cresultdataval['img']?>">
                               <?php if(isset($_SESSION['musicusername'])) {?>   
                                        <button class="mt-1 btn btn-danger form-control" id='showratingstars' data-bs-toggle="modal" data-bs-target="#centermodal"> Rate this Song </button>
                                    <?php } else{ ?>
                                        <button class="mt-1 btn btn-danger form-control" id='showlogin' data-bs-toggle="modal" data-bs-target="#loginmodal"> Rate this Song </button>
                               <?php } ?>
                                </div>
                                <div class="col-md-10 gLbHXr">
                                    <div class="music-content">
                                       <h4><?php echo $cresultdataval['title']?><small class="float-end">Released : <?php echo $cresultdataval['releasedate']?></small> </h4> <hr class="m-1">
                                       <span><?php echo $cresultdataval['artist']?> <small class="float-end">Duration : <?php echo number_format((float)$cresultdataval['duration']/60 , 2 ,':','')?> min</small> </span>
                                       <div class="my-rating-5"></div> 
                                       <span>2.5/5</span>
                                       <br>
                                       <?php require 'musicplayer.php' ?>
                                      <h4 class="text-center">Preview</h4>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                   <?php require 'model/gnre.php' ?>

                    <?php  if ($similarresult->num_rows > 1) { ?>
                        <header>
                            <h3 class="headingtag">  <?php echo $cresultdataval['artist']?>'s other Musics</h3>
                        </header>
                        <div class="items owl-carousel mb-3 "> 

                        
                        <?php foreach($similardata as $key => $similarval){ 
                            if($similarval['musiccode'] != $cresultdataval['musiccode'] ) { ?>
                                <a class="item text-white" href="Mus?c=<?php echo $similarval['musiccode'] ?>">
                                <img class="w-100 musicimg" src="<?php echo $similarval['img']?>" alt="">
                                <div class="mx-2">
                                    <h5 class="p-0 text-white mt-1 m-0"><?php if(strlen($similarval['title']) > 18) { echo substr($similarval['title'],0,15).'..'; }else{ echo $similarval['title']; }?></h5>
                                    <p><?php $artist = $similarval['artist']; if(strlen($artist) > 15) {  echo substr($artist,0,15).'..';}else{echo $artist; }?></p>
                                </div>
                                </a>
                        <?php } } ?>  
                        </div>
                            <?php } 
                        if(isset($_SESSION['musicusername'])){
                                $user='phil';
                                require 'model/recommendation.php' ;
                            }
                            else {
                                require 'model/featured.php' ;
                        }
                            ?>
                        </div>
                <?php } } ?>

                <?php require 'sidebar.php' ?>
            </div>
        </div>
    </div>

    <?php require 'model/modalbox.php' ?>


<?php require 'footer.php' ?>
<script src='assets/js/jquery.min.js'></script>
<script src='assets/js/jquery.star-rating-svg.min.js'></script>
<script src='assets/js/jquery.star-rating-svg.js'></script>
<script>
    $(".my-rating-5").starRating({
    starSize: 20,
    initialRating: 2.5,
	readOnly: true
    });
    $('#showratingstars').click(function(){
    var c = "<?php echo $_GET['c'] ?>";

        $.ajax({
            url: "rating.php",
            type: "POST",
            data: { "searchkey" : 'true',
                    "c" : c },
            success:function(response){
                $('#ratinghere').html(response);                
            }
        });
    });

    $('#addcomments').click(function(){
        var c = "<?php echo $_GET['c'] ?>";
        var comment = $('#commentval').val();
        if(comment !=''){
            $.ajax({
                url: "controller/add.php",
                type: "POST",
                data: { "addcomment" : 'true',
                        "id" : c,
                        "coment" : comment },
                success:function(response){
                alert(response);         
                }
            });
        }else{
            $('#commentval').addClass("is-invalid");
        }
    });

    $('#commentval').keyup(function(){
        $('#commentval').removeClass("is-invalid");
    })



</script>
<script> commentdata(); </script>
