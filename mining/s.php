<?php $con = mysqli_connect('localhost','root','','music');


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

// for($i=0 ; $i<207;$i++){
//     echo $i.'<br>';
//     $musicsql = "SELECT  * FROM music WHERE id = $i ";
//         $musicresult = $con->query($musicsql);
//         $musicdata = [];
//         if ($musicresult->num_rows > 0) {
//         while ($musicrow = $musicresult->fetch_assoc()) {
//             $j = rand(9,25);
//             $musiccode = $musicrow['musiccode'];
         
//                 $user = "SELECT * FROM usertable  ORDER BY rand() LIMIT $j";
//                 $user_result = $con->query($user);
//                 if($user_result->num_rows > 0){
//                     while ($user_row = $user_result->fetch_assoc()) {
//                         $a = array('1','1.5','2','2.5','3','3.5','4','4.5','5');
//                         $random_keys=array_rand($a,3);
//                         $re = $a[$random_keys[0]];
//                         $email = $user_row['email'];

//                         $insert = "INSERT INTO `ratings`(`email`, `musiccode`, `ratenumber`) VALUES ('$email' ,'$musiccode' ,'$re')";
//                         if($con->query($insert)){
//                             echo $user_row['email'].$re.' '.$musiccode.'<br>';

//                 }


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



?>
