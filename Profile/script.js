
$('#newpw').keyup(function(){
    var n = $('#newpw').val();
    var c = $('#confpw').val();
    if( n != '' && c != ''){

    if( n==c ){
        $('#msg').html('*Password matched*');
        $('#msg').removeClass('text-danger');
        $('#msg').addClass('text-success');

    }else{
        $('#msg').html('Password not matched');
        $('#msg').addClass('text-danger');
        $('#msg').removeClass('text-success');
    }
}else{
        $('#msg').html('');

    }

});
$('#confpw').keyup(function(){
    var n = $('#newpw').val();
    var c = $('#confpw').val();
    if( n != '' && c != ''){
        if( n==c ){
            $('#msg').html('Password matched');
            $('#msg').removeClass('text-danger');
            $('#msg').addClass('text-success');
        }
        else{
            $('#msg').html('Password not matched');
            $('#msg').addClass('text-danger');
            $('#msg').removeClass('text-success');
        }
    }else{
        $('#msg').html('');

    }
});


function deletecomment(id,c){
    $.ajax({
        url: "backends/delete.php",
        type: "POST",
        data: { 'deletecomment' : id , "c":c},
        success:function(response){
        // alert(response);
        var result = $.trim(response);
        if(result == 'deleted'){
            document.getElementById('tr_coment_'+id).style.display = 'none';
        }else{
            alert(response);
        }
        }
    });
}

function deleterating(id,c,r){
    $.ajax({
        url: "backends/delete.php",
        type: "POST",
        data: { 'deleterating' : id , "c":c ,"rating":r},
        success:function(response){
        // alert(response);
        var result = $.trim(response);
        if(result == 'deleted'){
            document.getElementById('tr_rating_'+id).style.display = 'none';
        }else{
            alert(response);
        }
        }
    });
}

$('#changeuserpw').click(function(){
    var o = $('#oldpw').val();
    var n = $('#newpw').val();
    var c = $('#confpw').val();
    if( n != '' && c != '' && o !=''){
        $.ajax({
            url: "backends/update.php",
            type: "POST",
            data: { 'o':o , 'n' : n, 'c':c},
            success:function(response){
            // alert(response);
            var result = $.trim(response);

            if(result == 'oldwrong'){
                $('#msg').html('Old Password Wrong');
                $('#msg').removeClass('text-success');
                $('#msg').addClass('text-danger');
                $('#oldpw').val('');
            }
            else if(result == 'sucess'){
                $('#msg').html('Password Changed');
                $('#msg').removeClass('text-danger');
                $('#msg').addClass('text-success');
                $('#oldpw').val('');
                $('#newpw').val('');
                $('#confpw').val('');
                setTimeout(() => {
                    $('#msg').html('');  
                }, 3000);
                
            }
            else{
                $('#msg').html(response );
            }
            }
        });
    }
});

