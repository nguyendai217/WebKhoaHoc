
 $(document).ready(function(){
	
    //validate login
    //
    //ẩn các thông báo
    $("#name_error").hide();
    $("#email_error").hide();
    $("#topic_error").hide();
    $("#message_error").hide();
    var error_name = false;
    var error_email = false;
    var error_topic = false;
    var error_message = false;
    
    $("#name").focusout(function() {

        check_name();
    });
    $("#email").focusout(function() {

        check_email();
    });
     $("#topic").focusout(function() {

        check_topic();
    });
    $("#message").focusout(function() {

        check_message();
    });

    function check_name() {
    
        var name_length = $("#name").val().length;
        if($("#name").val()=="")
        {
            $("#name_error").html("Hãy nhập tên của bạn!");
            $("#name_error").show(); 
            //$("#username_error").css("color","red");
            error_name = false;
        }
        else {
            $("#name_error").hide();
            error_name = true;
        }
    
    }
    
    function check_email() {

        var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
    
        if(pattern.test($("#email").val())) {
            $("#email_error").hide();
            error_email = true;
        } else {
            $("#email_error").html("Hãy nhập địa chỉ email hợp lệ!");
            $("#email_error").show();
            error_email = false;
        }
    
    }
    function check_topic() {
    
        var topic_length = $("#topic").val().length;
        if($("#topic").val()=="")
        {
            $("#topic_error").html("Hãy điền vào trường này!");
            $("#topic_error").show(); 
            error_topic = false;
        }
        else {
            $("#topic_error").hide();
            error_topic = true;
        }
    
    }
    function check_message() {
    
        var message_length = $("#message").val().length;
        if($("#message").val()=="")
        {
            $("#message_error").html("Hãy điền vào trường này!");
            $("#message_error").show(); 
            error_message = false;
        }
        else {
            $("#message_error").hide();
            error_message = true;
        }
    
    }

    
    $("#btnSendMessage").click(function() {

        check_name();
        check_email();
        check_topic();//#db8686
        check_message();
        
        if(error_name == true && error_email == true && error_topic == true && error_message == true) {
			$("#PassMail").css('display','block');
			$('#Send').css('display','block');
            //return true;
			$('#btnSendMessage').css('background','#db8686');
        }     
        return false;
    });
});
