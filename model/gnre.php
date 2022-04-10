<ul class="mt-3 nav nav-tabs nav-bordered mb-3">
    <li class="nav-item">
        <a href="#home-b1" data-bs-toggle="tab" aria-expanded="false" class="nav-link active">
            <i class="mdi mdi-home-variant d-md-none d-block"></i>
            <span class="d-none d-md-block">Genre</span>
        </a>
    </li>
    <li class="nav-item">
        <a href="#profile-b1" data-bs-toggle="tab" aria-expanded="true" class="nav-link ">
            <i class="mdi mdi-account-circle d-md-none d-block"></i>
            <span class="d-none d-md-block">Contributors</span>

        </a>
    </li>
    <li class="nav-item">
        <a href="#comments" data-bs-toggle="tab" aria-expanded="true" class="nav-link ">
            <i class="mdi mdi-account-circle d-md-none d-block"></i>
            <span class="d-none d-md-block">Comments(<?php echo $cresultdataval['comments'] ?>)</span>

        </a>
    </li>

</ul>

<div class="tab-content">
    <div class="tab-pane active" id="home-b1">
        <p>
        <?php echo'-'.str_replace(",","<br> -",$cresultdataval['genre']);  ?>

        </p>
    </div>
    <div class="tab-pane show " id="profile-b1">
        <p>     
        <?php $genre = '- '.str_replace(",","<br> -",$cresultdataval['contributor']); echo substr($genre ,0,-2);?>
        </p>
    </div>
    <div class="tab-pane show " id="comments">
        <div class="comment-block" id='commentdata'>
            
        </div>
        <?php if(isset($_SESSION['musicusername'])) {  ?>
        <div class="input-group">
            <input type="text" id='commentval' class="form-control" placeholder="Write a comment" aria-label="Write a comment">
            <button class="btn btn-info" id='addcomments' type="button">Post</button>
        </div>
        <?php } else { ?>

        <div class="input-group">
            <input type="text" id='showlogin' data-bs-toggle="modal" data-bs-target="#loginmodal2" disabled class="form-control" placeholder="Write a comment" aria-label="Write a comment">
            <button class="btn btn-info"  id='showlogin' data-bs-toggle="modal" data-bs-target="#loginmodal2" type="button">Post</button>
        </div>
        <?php } ?>
    </div>
</div>
