<!-- <div id="datahere">

</div>

<script src="../assets/js/jquery.min.js"></script>

<script>
    let facebook = () =>{
    fetch(`http://localhost/Music/test.json`)
    .then(response =>{
        return response.json()
    })
    .then (data =>{
            var lenght = data.length;

            console.log(data);
            for(i=0;i<lenght;i++){

                var title = data[i].title_short;
                var version = data[i].title_version;
                var album = data[i].album.title ;
                var img = data[i].album.cover_big;
                var dur = data[i].duration;
                var artist = data[i].artist.name;
                var artistid = data[i].artist.id;

                var preview = data[i].preview;

                var contr = data[i].contributors
                var contrb = contr.length;
                var countribut = '';


                for(j=0 ; j < contrb ; j++){
                    countribut += data[i].contributors[j].name+`, `;
                }
                $.ajax({
                    url: "s.php",
                    type: "POST",
                    data: {
                        "title" : title,
                        "version" : version,
                        "album" : album,
                        "img" : img,
                        "dur" : dur,
                        "artistid":artistid,
                        "artist" : artist,
                        "preview" : preview,
                        "countribut" : countribut,
                    },
                    success:function(response){
                        var result = $.trim(response);
                       if(result == 'sucess'){
                            document.getElementById('datahere').innerHTML += id+`<br> name : `+nm+`<br>   Image : `+img+`<br> `;                                       
                        }
                        else{
                            $('#datahere').html(response );
                        }
                    }
                });
                document.getElementById('datahere').innerHTML += countribut+`<br>`;
                            // $('#datahere').html(countribut );

            }
    })
}

facebook();
</script> -->