<header>
        <h3 class="headingtag">Featured</h3>
</header>
<div class="items" id="newmusic">
<?php foreach($featureddata as $key => $randval){ ?>

<a class="iteam text-white" href="Mus?c=<?php echo $randval['musiccode'] ?>">
    <img class="w-100 musicimg" src="<?php echo $randval['img']?>" alt="">
    <div class="mx-2">
    <h5 class="p-0 text-white mt-1 m-0"><?php 
    
    if(strlen($randval['title']) > 15) {
        echo substr($randval['title'],0,15).'..';
    }else{
        echo $randval['title'];
    }
    
    
    ?></h5>
<p><?php 
$artist = $randval['artist'];

if(strlen($artist) > 15) {
    echo substr($artist,0,15).'..';
}else{
    echo $artist;
}
?></p>


    </div>
</a>
<?php } ?>
</div>
