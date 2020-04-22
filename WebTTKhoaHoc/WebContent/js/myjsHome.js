
$(document).ready(function(){
    // When the user clicks anywhere outside of the modal, close it
    $("#btnClose").click(function(){
        $("#idLogin").hide();
    });
    $("#btnCancel").click(function(){
        $("#idLogin").hide();
    });
    $("#btnClose1").click(function(){
        $("#idCreate").hide();
    });
    $("#btnCancel1").click(function(){
        $("#idCreate").hide();
    });
    $("#nutDN").click(function(){
        if(document.getElementById('idCreate').style.display=='block')
            document.getElementById('idCreate').style.display='none';
        $("#idLogin").show();
    });
    $("#nutDK").click(function(){
        if(document.getElementById('idLogin').style.display=='block')
            document.getElementById('idLogin').style.display='none';
        $("#idCreate").show();
    });
    //
    //
    //
    if($(".btn-top").length > 0){
        $(window).scroll(function () {
            var e = $(window).scrollTop();
            if (e > 300) {
                $(".btn-top").show()
            } else {
                $(".btn-top").hide()
            }
        });
        $(".btn-top").click(function () {
            $('body,html').animate({
                scrollTop: 0
            })
        })
    };
    
});

