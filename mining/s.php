<?php 
$con = mysqli_connect('localhost','root','','music');


// for($i=0 ; $i<49 ; $i++){

//     $musicgenresql = "SELECT  * FROM musicgenre WHERE id = $i ";
//     $musicgenreresult = $con->query($musicgenresql);
//     $musicgenredata = [];
//     if ($musicgenreresult->num_rows > 0) {
//     while ($musicgenrerow = $musicgenreresult->fetch_assoc()) {
//         $gen = $musicgenrerow['genre'];

//         $user_sql = "SELECT COUNT(id) FROM music WHERE genre LIKE '%$gen%' ";
//         $user_result = mysqli_query($con,$user_sql);
//         $user_row = mysqli_fetch_array($user_result);
//         $user_count = $user_row[0];
        
//         echo $user_count.'<br>';

//     }
//     $sql = "UPDATE `musicgenre` SET `count`='$user_count' WHERE id = $i ";

//     if($con->query($sql)){
//         echo 'success';
//     }

// } 

// }
// $i=0;
//     $musicsql = "SELECT  * FROM music  ";
//         $musicresult = $con->query($musicsql);
//         $musicdata = [];
//         if ($musicresult->num_rows > 0) {
//         while ($musicrow = $musicresult->fetch_assoc()) {
            
           
//             $id = $musicrow['id'];
//              $musiccode = $musicrow['musiccode'];
//              $title = $musicrow['title'];
//              $version = $musicrow['version'];
//              $album = $musicrow['album'];
//              $img = $musicrow['img'];
//              $duration = $musicrow['duration'];
//              $artist = $musicrow['artist'];
//              $artistid = $musicrow['artistid'];
//              $preview = $musicrow['preview'];
//              $contributor = $musicrow['contributor'];
//              $status = $musicrow['status'];
//              $releasedate = $musicrow['releasedate'];
//              $genre = $musicrow['genre'];
//              $rating = $musicrow['rating'];
//              $ratingcount = $musicrow['ratingcount'];
//              $comments = $musicrow['comments'];

//             $sql = "INSERT INTO `music`(`id`, `musiccode`, `title`, `version`, `album`, `img`, `duration`, `artist`, `artistid`, `preview`, `contributor`, `status`, `releasedate`, `genre`, `rating`, `ratingcount`, `comments`) VALUES 
//             ('$id', '$musiccode', '$title', '$version', '$album', '$img', '$duration', '$artist', '$artistid', '$preview', '$contributor', '$status', '$releasedate', '$genre', '$rating', '$ratingcount', '$comments')";

//             if($cons->query($sql)){
//                 echo $i;
//                 $i++;
//             }
//             else {
//                 echo 'err';
//             }
//         }
//         }

// for($i=0 ; $i<207;$i++){
//     $musicsql = "SELECT  * FROM music WHERE id = $i ";
//         $musicresult = $con->query($musicsql);
//         $musicdata = [];
//         if ($musicresult->num_rows > 0) {
//         while ($musicrow = $musicresult->fetch_assoc()) {
//             $j = rand(0,9);
//             $musiccode = str_replace(" ","_" , strtolower($musicrow['title'].'_'.$musicrow['artist'].$j)) ;
//             $musiccode = str_replace("'","" , $musiccode) ;
//             $musiccode = str_replace("(","" , $musiccode) ;
//             $musiccode = str_replace(")","" , $musiccode) ;
//             $musiccode = str_replace(",","" , $musiccode) ;
//                 $musiccode = str_replace('"',"" , $musiccode) ;

//             $sql = "UPDATE `music` SET `musiccode`='$musiccode' WHERE id = $i ";

//             if($con->query($sql)){
//                 echo 'success';
//             }
//         }
//     }
// }

// $sql = "UPDATE `music` SET `rating`='0' , `ratingcount`='0' ,`comments` = '0' ";

// if($con->query($sql)){
//     echo 'success';
// }
// for($i=0 ; $i<207;$i++){
//     echo $i.'<br>';
//     $musicsql = "SELECT  * FROM music WHERE id = $i ";
//         $musicresult = $con->query($musicsql);
//         $musicdata = [];
//         if ($musicresult->num_rows > 0) {
//         while ($musicrow = $musicresult->fetch_assoc()) {
//             $j = rand(9,25);
//             $musiccode = $musicrow['musiccode'];
//             $musicid = $musicrow['id'];

//             $rating = (int)$musicrow['rating'];
//                 $user = "SELECT * FROM usertable  ORDER BY rand() LIMIT $j";
//                 $user_result = $con->query($user);
//                 if($user_result->num_rows > 0){
//                     while ($user_row = $user_result->fetch_assoc()) {
//                         $a = array('1','1.5','2','2.5','3','3.5','4','4.5','5');
//                         $random_keys=array_rand($a,2);
//                         $re = $a[$random_keys[0]];
//                         $email = $user_row['email'];
//                         $userid = $user_row['id'];

//                         $rating = $rating+$re;
//                         $insert = "INSERT INTO `ratings`(`email`, `musiccode`, `ratenumber`,`userid`,`musicid`) VALUES ('$email' ,'$musiccode' ,'$re','$userid','$musicid')";
//                         if($con->query($insert)){
//                             $sql = "UPDATE `music` SET ratingcount = ratingcount+1 , rating = '$rating' WHERE `musiccode`='$musiccode' ";
//                             if($con->query($sql)){
//                                 echo 'success';
//                             }

//                         }


//                     }
//                 }
//            echo '<br>';
           
//         }
//     }
// }






// if(isset($_POST['artist'])){
//     $name = $_POST['artist'];
//     $img = $_POST['img'];
//     $id = $_POST['id'];


//     $sql = "INSERT INTO `artist`(`id`,`name`, `img_url`) VALUES ('$id','$name','$img') ";
//     if($con->query($sql)){
//         echo 'success';
//     }
// }

// if(isset($_POST['artist'])){
//     echo '<pre>';
//     print_r($_POST);

//     $title = $_POST['title'];
//     $version = $_POST['version'];
//     $album = $_POST['album'];
//     $img = $_POST['img'];
//     $artist = $_POST['artist'];
//     $artistid = $_POST['artistid'];
//     $preview = $_POST['preview'];
//     $contributor = $_POST['countribut'];
//     $duration = $_POST['dur'];


//     $sql = "INSERT INTO `music`(`title`, `version`, `album`, `img`, `duration`, `artist`, `artistid`, `preview`, `contributor`) 
//                 VALUES ('$title' , '$version' , '$album' , '$img' , '$duration' , '$artist' , '$artistid' , '$preview' , '$contributor' )";

//     if($con->query($sql)){
//         echo 'success';
//     }
// }


// for($id = 0 ; $id<97 ; $id++) {
// $ratingsql = "SELECT * FROM ratings WHERE userid = '$id' ";
// $ratingresult = $con->query($ratingsql);
//     if ($ratingresult->num_rows > 0) {
//     while ($ratingrow = $ratingresult->fetch_assoc()) {
//         $rtid = $ratingrow['id'];
//         $ratenum = $ratingrow['ratenumber'];
//         $musicid = $ratingrow['musicid'];

//         $sql1 = "DELETE FROM `ratings` WHERE id= '$rtid' ";
//         if($con->query($sql1)){
//             $sql = "UPDATE `music` SET  rating = rating-$ratenum , ratingcount = ratingcount-1 WHERE `id`='$musicid' ";
//             if($con->query($sql)){
//             }
//         }
//     }
// } 

// $commentsql = "SELECT * FROM comments WHERE userid = '$id' ";
// $commentresult = $con->query($commentsql);
//     if ($commentresult->num_rows > 0) {
//     while ($commentrow = $commentresult->fetch_assoc()) {
//         $cmntid = $commentrow['id'];
//         $musicid = $commentrow['musicid'];
//         $sql1 = "DELETE FROM `comments` WHERE id= '$cmntid' ";
//         if($con->query($sql1)){
//             $sql2 = "UPDATE `music` SET comments = comments-1  WHERE `id`='$musicid' ";
//             if($con->query($sql2)){
//             }
//         }
//     }
// } 


// $sql = "DELETE FROM `usertable` WHERE id= '$id' ";

// if($con->query($sql)){
//     echo 'deleted';

// }
// }
?>
