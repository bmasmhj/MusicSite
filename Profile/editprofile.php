<div class="tab-pane fade active show" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" >
    <p class="mb-0">
    <form action="backends/update.php" method='post'>
        <input type="text" class="form-control" name='fullname' placeholder="Full Name" value='<?php echo $fetch_info['name']?>'>
        <input type="text" class="disabled form-control mt-2" disabled placeholder="<?php echo $fetch_info['email']?>">
        <input type="submit" name='updatemusicname' class="mt-2 btn btn-success" value='Update'>
    </form>
        <h6 class="mt-3 mx-2 mb-2">Change Password
        <small id="msg"></small>
            </h6>
        <input type="password" id="oldpw" class="form-control mt-2" placeholder="Old Password" >
        <input type="password" id="newpw" class="form-control mt-2" placeholder="New Password" >
        <input type="password" id="confpw" class="form-control mt-2" placeholder="Confirm Password" >
        <button class="mt-2 btn btn-danger" id='changeuserpw' > Change Password </button>
    </p>
</div>