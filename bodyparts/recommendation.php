<?php
$usersz = $fetch_info['email'];


$rating = "SELECT * FROM ratings WHERE email = '$usersz'";
$rating_result = $con->query($rating);
if($rating_result->num_rows > 0){
    while ($rating_row = $rating_result->fetch_assoc()) {
        require_once("backends/recommend.php");
        $re = new Recommend();
            $user = "SELECT email FROM usertable  ";
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
                    }else {
                        $datasets[$username][''] = '' ;
                }
            }
        }
        $users = $fetch_info['email'];
        $dataset = $datasets;
        $recommended_items = $re->getRecommendations($dataset, $users);
        $returned = array_keys($recommended_items);    
        
        $len = count($returned);
        if($len>0){
            echo ' <header>
            <h3 class="headingtag">Reccomendation</h3>
    </header>
    <div class="items" id="newmusic">';
            for($p= 0 ; $p < $len ; $p++){ 
                $code = $returned[$p]; 
                $cresultsql = "SELECT  * FROM music WHERE musiccode = '$code'";
                $cresultresult = $con->query($cresultsql);
                if ($cresultresult->num_rows > 0) {
                while ($cresultrow = $cresultresult->fetch_assoc()) {
                    echo '
                    <a class="iteam text-white" href="../Mus?c='.$cresultrow["musiccode"].'">
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
        
            }
            echo '</div>';
        }
        else {
            echo '<header>
        <h3 class="headingtag">Random Picks</h3>
        </header>';
        echo '
        <div class="items" id="newmusic">
        ';
        foreach($randdata as $key => $randval){
        echo '
        <a class="iteam text-white" href="Mus?c='.$randval['musiccode'] .'">
            <img class="w-100 musicimg" src="'.$randval['img'].'" alt="">
            <div class="mx-2">
                <h5 class="p-0 text-white mt-1 m-0">'; 
                if(strlen($randval['title']) > 15) {
                    echo substr($randval['title'],0,15).'..';
                }else{
                    echo $randval['title'];
                }
                echo '</h5> <p>';
                if(strlen($randval['artist']) > 15) {
                        echo substr($randval['artist'],0,15).'..';
                    }else{
                        echo $randval['artist'];
                    }
                echo ' </p>
                </div>
            </a>';
            }
        echo '
            </div>
        ';

    }
}
}else {
    echo '<header>
    <h3 class="headingtag">Random Picks</h3>
</header>';
echo '
<div class="items" id="newmusic">
';
foreach($randdata as $key => $randval){
echo '
<a class="iteam text-white" href="Mus?c='.$randval['musiccode'] .'">
    <img class="w-100 musicimg" src="'.$randval['img'].'" alt="">
    <div class="mx-2">
        <h5 class="p-0 text-white mt-1 m-0">'; 
        if(strlen($randval['title']) > 15) {
            echo substr($randval['title'],0,15).'..';
        }else{
            echo $randval['title'];
        }
        echo '</h5> <p>';
        if(strlen($randval['artist']) > 15) {
                echo substr($randval['artist'],0,15).'..';
            }else{
                echo $randval['artist'];
            }
        echo ' </p>
        </div>
    </a>';
    }
echo '
    </div>
';

}



?>