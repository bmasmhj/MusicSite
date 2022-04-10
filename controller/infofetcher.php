<?php require 'connection.php';

session_start();

$featuredsql = "SELECT  * FROM music WHERE status = 1 ";
$featuredresult = $con->query($featuredsql);
$featureddata = [];
    if ($featuredresult->num_rows > 0) {
    while ($featuredrow = $featuredresult->fetch_assoc()) {
        array_push($featureddata, $featuredrow);
    }
} 

$randsql = "SELECT  * FROM music ORDER BY rand() LIMIT 20 ";
$randresult = $con->query($randsql);
$randdata = [];
    if ($randresult->num_rows > 0) {
    while ($randrow = $randresult->fetch_assoc()) {
        array_push($randdata, $randrow);
    }
} 

$latestsql = "SELECT  * FROM music ORDER BY id desc LIMIT 5 ";
$latestresult = $con->query($latestsql);
$latestdata = [];
    if ($latestresult->num_rows > 0) {
    while ($latestrow = $latestresult->fetch_assoc()) {
        array_push($latestdata, $latestrow);
    }
} 


$datesql = "SELECT releasedate FROM `music`  GROUP BY releasedate HAVING COUNT(musiccode)>1 ORDER BY releasedate desc";
$dateresult = $con->query($datesql);
$datedata = [];
    if ($dateresult->num_rows > 0) {
    while ($daterow = $dateresult->fetch_assoc()) {
        array_push($datedata, $daterow);
    }
} 

$musicgenresql = "SELECT  * FROM musicgenre ORDER BY id ";
$musicgenreresult = $con->query($musicgenresql);
$musicgenredata = [];
    if ($musicgenreresult->num_rows > 0) {
    while ($musicgenrerow = $musicgenreresult->fetch_assoc()) {
        array_push($musicgenredata, $musicgenrerow);
    }
} 


if(isset($_GET['c'])){
    $code = $_GET['c'];
    $cresultsql = "SELECT  * FROM music WHERE musiccode = '$code' LIMIT 1";
    $cresultresult = $con->query($cresultsql);
    $cresultdata = [];
    if ($cresultresult->num_rows > 0) {
    while ($cresultrow = $cresultresult->fetch_assoc()) {
        array_push($cresultdata, $cresultrow);
        $artist = $cresultrow['artist'];

    }
    }else{
        $error = 'true';
    } 

    $similarsql = "SELECT  * FROM music WHERE artist = '$artist' ORDER BY id  ";
    $similarresult = $con->query($similarsql);
    $similardata = [];
        if ($similarresult->num_rows > 0) {
        while ($similarrow = $similarresult->fetch_assoc()) {
            array_push($similardata, $similarrow);
        }
    } 


}

if(isset($_GET['t'])){
    $code = $_GET['t'];
    $tresultsql = "SELECT  * FROM music WHERE (genre LIKE '%$code%') OR (releasedate = '$code' )";
    $tresultresult = $con->query($tresultsql);
    $tresultdata = [];
    if ($tresultresult->num_rows > 0) {
    while ($tresultrow = $tresultresult->fetch_assoc()) {
        array_push($tresultdata, $tresultrow);
    }
    }else{
        $error = 'true';
    } 

}


?>
