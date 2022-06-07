$(function(){
    $("#main_form").on('submit', function(e){
        e.preventDefault();
        $(".loading-icon").show();

        $.ajax({
            url:$(this).attr('action'),
            method:$(this).attr('method'),
            data:new FormData(this),
            processData:false,
            dataType:'json',
            contentType:false,
            beforeSend:function(){
                $(document).find('span.error-text').text('');
            },
            success:function(data){
                if(data.status == 0){
                    $.each(data.error, function(prefix, val){
                        $('span.'+prefix+'_error').text(val[0]);
                    });
                }else{
                    $('#main_form')[0].reset();

                    $.notify(data.msg, "success");
                }

                $(".loading-icon").hide();
            },
            error: function (err) {
                $(".loading-icon").hide();
                $.notify("Error occurred while sending your email, please try later.", "error");
            }
        });
    });
});



