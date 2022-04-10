
<?php require '../controller/connection.php';


if(isset($_POST['searchkey']) && trim($_POST['searchkey'])!='' ){
    $search = $_POST['searchkey'];

    echo '  <div class="dropdown-header noti-title">
    <h5 class="text-overflow mb-2">Showing result for <span class="text-danger" id="searchkley">'.$search.'</span></h5>
</div> 
<h6 class="text-overflow mx-2 mb-2 text-uppercase">Music</h6>
';

$musicgensql = "SELECT  m.* ,  a.name as artistname
FROM music m
JOIN artist a
ON m.artistid = a.id
WHERE 
(genre LIKE '%$search%') OR (a.name LIKE '%$search%') OR (title LIKE '%$search%') ";
$musicgenresult = $con->query($musicgensql);
    if ($musicgenresult->num_rows > 0) {
    while ($musicgenrow = $musicgenresult->fetch_assoc()) {

        echo'<a href="Mus?c='.$musicgenrow['musiccode'].'" class="dropdown-item notify-item">
            <div class="d-flex">
                <img class="d-flex me-2 rounded-circle" src="'.$musicgenrow['img'].'" alt="Generic placeholder image" width="32" height="32">
                <div class="w-100">
                    <h5 class="m-0 font-14">'.title($musicgenrow['title']).'</h5>
                    <span class="font-12 mb-0">'.$musicgenrow['artistname'].'</span>
                </div>
            </div>
        </a>';
    }
}

echo '<h6 class="text-overflow mx-2 mb-2 text-uppercase">Genre</h6>';

$musicgensql = "SELECT  * FROM musicgenre WHERE genre LIKE '%$search%' ";
$musicgenresult = $con->query($musicgensql);
    if ($musicgenresult->num_rows > 0) {
    while ($musicgenrow = $musicgenresult->fetch_assoc()) {
       echo '<a href="Resu?t='.$musicgenrow['genre'].'" class="dropdown-item notify-item">
       <div class="d-flex">
           <div class="w-100">
               <h5 class="m-0 font-14">'.$musicgenrow['genre'].'</h5>
           </div>
       </div>
   </a>';
    }
}
}  

function title($title){
     
    if(strlen($title) > 25) {
        return substr($title,0,25).'..';
    }else{
        return $title;
    }
}

?>

