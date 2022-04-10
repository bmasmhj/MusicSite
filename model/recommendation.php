<?php

require_once("controller/recommend.php");
// require_once("controller/sample_list.php");

$re = new Recommend();

require 'controller/connection.php';

$user = "SELECT email FROM usertable";
$user_result = $con->query($user);
if($user_result->num_rows > 0){
    while ($user_row = $user_result->fetch_assoc()) {
        $username = $user_row['email'];
        $rating = "SELECT * FROM ratings WHERE email = '$username'";
        $rating_result = $con->query($rating);
        if($rating_result->num_rows > 0){
            while ($rating_row = $rating_result->fetch_assoc()) {
                $r = $rating_row["musiccode"];
                $datasets[$username][$r] = $rating_row['ratenumber'];
            }
        }
    }
       
}
$users = 'Famous@email.com';

echo "<pre>";


$dataset = $datasets;
// print_r($dataset);


$recommended_items = $re->getRecommendations($dataset, $users);
// print_r($recommended_items);
echo "</pre>";
?>
 <header>
        <h3 class="headingtag">You may also like</h3>
</header>
<div class="items" id="newmusic">
    <?php foreach($recommended_items as $key => $randval){ ?>

    <a class="iteam text-white" href="Mus?c=<?php echo $randval['musiccode'] ?>">
        <img class="w-100 musicimg" src="<?php echo $randval['img']?>" alt="">
        <div class="mx-2">
        <h5 class="p-0 text-white mt-1 m-0"><?php  if(strlen($randval['title']) > 15) {  echo substr($randval['title'],0,15).'..'; }else{ echo $randval['title']; }?></h5>
    <p><?php 
    $artist = $randval['artist'];
    
    if(strlen($artist) > 15) { echo substr($artist,0,15).'..'; }else{ echo $artist; }
    ?></p>


        </div>
    </a>
    <?php } ?>
    
</div>