
<div class="my-rating-4"></div>
<span id="messagerate" class='p-2'>

</span>

<?php $mus =  $_POST['c']; ?>
<script>
var musiccode = "c" ;
$(".my-rating-4").starRating({
    totalStars: 5,
    emptyColor: 'lightgray',
    hoverColor: 'salmon',
    activeColor: 'cornflowerblue',
    initialRating: 0,
    strokeWidth: 0,
    useGradient: false,
    callback: function(currentRating){
        // alert('rated ' + currentRating);
        $.ajax({
            url: "controller/rate.php",
            type: "POST",
            data: { "rating" : musiccode, 
                    "star" : currentRating,
                    "user" : "mhrznjuman" },
            success:function(response){
                $('#messagerate').html("Thanks for rating "+currentRating+ " Stars");
           
            }
        });

    }
});
</script>