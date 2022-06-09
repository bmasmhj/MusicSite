<div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">

<?php 
foreach($comentdata as $key => $comentdataval ) { 
echo '
<div id="tr_coment_'.$comentdataval["id"].'">
        <button class="row w-100 text-start bg-transparent text-dark border-0">
            <div id="comments" class="col-3"> 
                <h5><a class="text-dark" href="../Mus?c='.$comentdataval['musiccode'].'">'.$comentdataval['music'].'</a></h5>
                <p class="text-muted mb-0"><small>'.time_elapsed_string($comentdataval["time"]).'</small></p>
            </div>
            <div class="col-9 d-flex ">
                <p class="mx-2 mt-1 flex-grow-1">'.$comentdataval['comment'].'</p>
                <div class="float-end">';
                   ?> <a href="javascript:deletecomment(<?php echo $comentdataval["id"].",'".$comentdataval["musiccode"]."'";?>)">Delete </a> <?php
                
                echo '</div>
            </div>

        </button>
    <hr>
</div>

';
 } ?>
</div>

