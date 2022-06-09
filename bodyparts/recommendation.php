<?php

require_once("backends/recommend.php");
// require_once("backends/sample_list.php");

$re = new Recommend();

require 'backends/connection.php';

$user = "SELECT email FROM usertable";
$user_result = $con->query($user);
if($user_result->num_rows > 0){
    while ($user_row = $user_result->fetch_assoc()) {
        $username = $user_row['email'];
        $rating = "SELECT * FROM ratings WHERE email = '$username'";
        $rating_result = $con->query($rating);
        if($rating_result->num_rows > 0){
            while ($rating_row = $rating_result->fetch_assoc()) {
                $r = $rating_row["title"];
                $datasets[$username][$r] = $rating_row['ratenumber'];
            }
        }
    }
       
}
$users = $_SESSION['email'];
$dataset = $datasets;
$recommended_items = $re->getRecommendations($dataset, $users);
$returned = array_keys($recommended_items);

// print_r($dataset);


?>
 <header>
        <h3 class="headingtag">You may also like</h3>
</header>
<div class="items" id="newmusic">
    <?php 
    $len = count($returned);
    for($p= 0 ; $p < $len ; $p++){ 
        $code = $returned[$p]; 
        $cresultsql = "SELECT  * FROM music WHERE musiccode = '$code'";
        $cresultresult = $con->query($cresultsql);
        if ($cresultresult->num_rows > 0) {
        while ($cresultrow = $cresultresult->fetch_assoc()) {
            echo '
            <a class="iteam text-white" href="Mus?c='.$cresultrow["musiccode"].'">
                <img class="w-100 musicimg" src="'.$cresultrow['img'].'" alt="">
                <div class="mx-2">
                <h5 class="p-0 text-white mt-1 m-0">';
            if(strlen($cresultrow['title']) > 15) {  echo substr($cresultrow['title'],0,15).'..'; }else{ echo $cresultrow['title']; }
            echo '</h5>
            <p>';
            $artist = $cresultrow['artist']; if(strlen($artist) > 15) { echo substr($artist,0,15).'..'; }else{ echo $artist; }
            echo'</p></div> </a>';
            }
            
        }

    } ?>

</div>