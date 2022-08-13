<?php require 'header.php' ?>
<div class="container mt-3">
    <div class="custom-card p-3">
        <div class="row">
            <div class="col-md-9 border-right">
                <header>
                    <h3 class="headingtag">Featured</h3>
                </header>
                <div class="items owl-carousel"> 
                    <?php foreach($featureddata as $key => $featureval){
                    echo '<a class="item text-white" href="Mus?c='.$featureval['musiccode'].'">
                            <img class="w-100 musicimg" src="'.$featureval['img'].'" alt="">
                            <div class="mx-2">
                                <h5 class="p-0 text-white mt-1 m-0">';
                        if(strlen($featureval['title']) > 18) {
                                echo substr($featureval['title'],0,15).'..';
                            }else{
                                echo $featureval['title'];
                            } echo ' </h5>
                        <p>'.$featureval['artist'].'</p>
                            </div>
                        </a>';
                    }     
                    ?>
                </div>

                <?php 
                if(isset($_SESSION['musicusername'])){
                    require 'bodyparts/recommendation.php';                        
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
                        } ?>
                   
            </div>
            <?php require 'sidebar.php' ?>

        </div>
    </div>
</div>

<?php require 'footer.php' ?>
