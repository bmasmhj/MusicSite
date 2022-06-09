window.onscroll = function() {myFunction()};

var header = document.getElementById("fixattop");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("fix-top");
  } else {
    header.classList.remove("fix-top");
  }
}

var owl = $('.owl-carousel');
let scren = screen.width;
if(scren > 963) {
            var item = 5;
        }else if( scren > 521)
        
        {
            var item = 3;
        }else {
            var item = 2;
        }
    owl.owlCarousel({
       
        items:item,
        loop:true,
        autoplay:true,
        autoplayTimeout:2500,
        autoplayHoverPause:true
    });

    $('.play').on('click',function(){
        owl.trigger('play.owl.autoplay',[2500])
    })
    $('.stop').on('click',function(){
        owl.trigger('stop.owl.autoplay')
    })



    $('#top-search').keyup(function(){ 
        var inpdat = $('#top-search').val();
        $('#searchkley').html(inpdat);

        $.ajax({
            url: "bodyparts/searchdata.php",
            type: "POST",
            data: { "searchkey" : inpdat },
            success:function(response){
                $('#searchresult').html(response);                
            }
        });
    });

    



// for(i = 2023 ; i>1973 ; i--){
//     document.getElementById('release_date').innerHTML += `<li><a href="">`+i+`</a></li>`;       

// }

// for(i = 0 ; i<10; i++){
//     document.getElementById('latest_music').innerHTML += `<div class="row mt-2 latestsmall">
//                         <div class="m-0 p-0 col-3">
//                             <img src="./assets/image/music_demo.jpg" class="w-100 smallimg" alt="">
//                         </div>
//                         <div class="col-9">
//                             <div class="m-0 p-0">
//                                 <h4 class="p-0 text-white mt-1 m-0">Music name</h4>
//                                 <small>2021 06 01</small>
//                             </div>
//                         </div>
//                     </div>`;       

// }


// let genrelis = () =>{
//     fetch(`https://api.deezer.com/artist/40`)
//     .then(response =>{
//         return response.json()
//     })
//     .then (data =>{
//         console.log(data);
        // var lenght = data.length;
        // for(i=0;i<lenght;i++){
        // var messages = data[i].name;
        // document.getElementById('genrelists').innerHTML += `<p>${messages}<span class="float-end smt">${data[i].nb_album}</span></p>`;
    // }

// })
// }

// genrelis();