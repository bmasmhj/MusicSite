<?php 
require 'timeago.php';
session_start();
$c = $_POST['c'];
require '../backends/connection.php';
$comentsql = "SELECT  * FROM comments WHERE musiccode = '$c' ";
    $comentresult = $con->query($comentsql);
    $comentdata = [];
        if ($comentresult->num_rows > 0) {
        while ($comentrow = $comentresult->fetch_assoc()) {
            array_push($comentdata, $comentrow);
        }
    } 

foreach($comentdata as $key => $comentdataval ) { 
echo '
<div id="tr_coment_'.$comentdataval["id"].'">
    <div class="row w-100" ">
        <div id="comments" class="col-3"> 
            <h5>'.$comentdataval['email'].'</h5>
            <p class="text-muted mb-0"><small>'.time_elapsed_string($comentdataval["time"]).'</small></p>
        </div>
        <div class="col-9 d-flex ">
            <p class="mx-2 mt-1 flex-grow-1">'.$comentdataval['comment'].'</p>
            <div class="float-end">';
                
                if($_SESSION['musicusername']=== $comentdataval['email']){
                    echo '<a href="javascript:deletecomment('.$comentdataval["id"].')">Delete </a>';
                }

            echo'</div>
        </div>
    </div>

    <hr>
</div>

';
 } ?>