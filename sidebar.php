<div class="col-md-3 p-2">
    <div>
        <h3>Genres</h3>
        <div class="genre-list"> 
            <?php foreach($musicgenredata as $key => $musicgenreval ) {
                echo "<a href='Resu?t=".$musicgenreval['genre']."' class='text-secondary'><p>".$musicgenreval['genre']."<span class='float-end smt'>".$musicgenreval['count']."</span></p></a>";
            } ?>
        </div>
    </div>
    <div class="mt-5">
        <h3>Release Date</h3>
        <div class="releasedate" id="release_date">
            <?php foreach($datedata as $key => $dateval ){ echo '<li><a href="Resu?t='.$dateval['releasedate'].'">'.$dateval['releasedate'].'</a></li>'; } ?>
        </div>
    </div>
    <div class="mt-3">
        <h3>Latest Music</h3>
        <div id="latest_music" class="p-2">
        <?php foreach($latestdata as $key => $latestval ){ echo '

            <a href="Mus?c='.$latestval['musiccode'].'" class="text-white"><div class="row mt-2 latestsmall">
                         <div class="m-0 p-0 col-3">
                             <img src="'.$latestval['img'].'" class="w-100 smallimg" alt="">
                         </div>
                         <div class="col-9">
                             <div class="m-0 p-0">
                                 <h4 class="p-0 text-white mt-1 m-0">'.$latestval['title'].'</h4>
                                 <small>'.title($latestval['artist']).'</small>
                             </div>
                         </div>
                     </div> </a>
            
            '; } ?>

        </div>
        
    </div>
</div>

<?php 
function title($title){
     
    if(strlen($title) > 25) {
        return substr($title,0,25).'..';
    }else{
        return $title;
    }
}

?>