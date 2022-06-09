<link rel="stylesheet" href="../assets/css/star-rating-svg.css">
<link rel="stylesheet" href="../assets/css/demo.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">

        <?php 
require '../bodyparts/timeago.php';

        foreach($ratingsdata as $key => $ratingsdatadataval ) { 
        echo '
        <div id="tr_rating_'.$ratingsdatadataval["id"].'">
                <button class="row w-100 text-start bg-transparent text-dark border-0">
                    <div id="comments" class="col-3"> 
                        <h5><a class="text-dark" href="../Mus?c='.$ratingsdatadataval['musiccode'].'">'.$ratingsdatadataval['music'].'</a></h5>
                    </div>
                    <div class="col-9 d-flex ">
                        <div class="mx-2 mt-1 flex-grow-1">
                            <div class="my-rating'.$ratingsdatadataval['id'].'"></div> 
                            '.$ratingsdatadataval['ratenumber'].'/5.0

                        </div>

                        <div class="float-end">';
                        ?> <a href="javascript:deleterating(<?php echo $ratingsdatadataval["id"].",'".$ratingsdatadataval["musiccode"]."',".$ratingsdatadataval["ratenumber"];?>)">Delete </a> <?php
                     
                     echo '</div>
                    </div>

                </button>
            <hr>
        </div>

        ';
        } ?>
</div>

<script src='../assets/js/jquery.min.js'></script>
<script src='../assets/js/jquery.star-rating-svg.min.js'></script>
<script src='../assets/js/jquery.star-rating-svg.js'></script>
<script>
        <?php foreach($ratingsdata as $key => $ratingsdatadataval ) { ?>
            $(".my-rating<?php echo $ratingsdatadataval['id'] ?>").starRating({
                starSize: 20,
                initialRating: <?php echo $ratingsdatadataval['ratenumber']; ?>,
                readOnly: true
                });
        <?php } ?>

</script>