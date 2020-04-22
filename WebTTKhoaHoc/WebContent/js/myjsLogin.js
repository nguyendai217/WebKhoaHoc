$(document).ready(function(){    //validate login
    //
        //ẩn các thông báo
        $("#username_error").hide();
        $("#password_error").hide();
        $("#username1_error").hide();
        $("#password0_error").hide();
        $("#email_error").hide();
        $("#password1_error").hide();
        $("phone_error").hide();
        $("name_error").hide();
        var error_username = false;
        var error_password = false;
        var error_username1 = false;
        var error_password0 = false;
        var error_email = false;
        var error_password1 = false;
        var error_phone=false;
        var error_name=false;
        
        $("#username").focusout(function() {

            check_username();
        });
        $("#name").focusout(function() {

            check_name();
        });
        $("#password").focusout(function() {

            check_password();
        });
         $("#username1").focusout(function() {

            check_username1();
        });
        $("#password0").focusout(function() {

            check_password0();
        });
        $("#password1").focusout(function() {

            check_password1();
        });
        $("#email").focusout(function() {

            check_email();
        });
        $("#phonenumber").focusout(function() {

            check_phone();
        });

        function check_username() {
        
            var username_length = $("#username").val().length;
            var letterNumber = /[0-9a-zA-Z]+$/;
            if($("#username").val()=="")
            {
                $("#username_error").html("Không được để trống!!!");
                $("#username_error").show(); 
                error_username = true;
            }
            else {
            	if(!letterNumber.test($("#username").val())) {
	                $("#username_error").html("Tên không hợp lệ!");
                    $("#username_error").show();
                    error_username = true;
                }else{
	                $("#username_error").hide();
	                error_username=false;
                }
            }
        
        }

        function check_name() {
        
            var username_length = $("#name").val().length;
            var letterNumber = /[0-9a-zA-Z]+$/;
            if($("#name").val()=="")
            {
                $("#name_error").html("Không được để trống!!!");
                $("#name_error").show(); 
                error_name = true;
            }
            else {
            	if(!letterNumber.test($("#name").val())) {
	                $("#name_error").html("Tên không hợp lệ!");
                    $("#name_error").show();
                    error_name = true;
                }else{
	                $("#name_error").hide();
	                error_name = false;
                }
            }
        
        }
        
        function check_password() {
        
            var password_length = $("#password").val().length;
            
            if($("#password").val()=="")
            {
                $("#password_error").html("Không được để trống!!!");
                $("#password_error").show();
                //$("#password_error").css("color","red");
                error_password = true;
            }
            else if(password_length < 3) {
                $("#password_error").html("Mật khẩu phải lớn hơn 3 kí tự");
                $("#password_error").show();
                error_password = true;
            } else {
                $("#password_error").hide();
                error_password = false;
            }
        }
        
        function check_username1() {
        
            var username_length = $("#username1").val().length;
            
            var letterNumber = /[0-9a-zA-Z]+$/;
            if($("#username1").val()=="")
            {
                $("#username1_error").html("Không được để trống!!!");
                $("#username1_error").show(); 
                error_username1 = true;
            }
            else {
            	if(!letterNumber.test($("#username1").val())) {
	                $("#username1_error").html("Tên không hợp lệ!");
                    $("#username1_error").show();
                    error_username1 = true;
                }else{
                	$("#username1_error").hide();
                	error_username1 = false;
                }
            }
        
        }
        
        function check_password0() {
        
            var password_length = $("#password0").val().length;
            
            if($("#password0").val()=="")
            {
                $("#password0_error").html("Không được để trống!!!");
                $("#password0_error").show();
                error_password0 = true;
            }
            else if(password_length < 3) {
                $("#password0_error").html("Mật khẩu phải lớn hơn 3 kí tự");
                $("#password0_error").show();
                error_password0 = true;
            } else {
                $("#password0_error").hide();
                error_password0 = false;
            }
        }
        function check_password1() {
        
            var password_length = $("#password1").val().length;

            if($("#password1").val()!=$("#password0").val()) {
                $("#password1_error").html("Mật khẩu nhập lại phải khớp với mật khẩu trên");
                $("#password1_error").show();
                error_password1 = true;
            } else {
                $("#password1_error").hide();
                error_password1 = false;
            }
        }

        function check_email() {

            var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
        
            if(pattern.test($("#email").val())) {
                $("#email_error").hide();
                error_email = false;
            } else {
                $("#email_error").html("Hãy nhập địa chỉ email!");
                $("#email_error").show();
                error_email = true;
            }
        
        }

        function check_phone() {

            var phone_length = $("#phonenumber").val().length;
            if($("#phonenumber").val()=="")
            {
                $("#phone_error").html("Không được để trống!!!");
                $("#phone_error").show(); 
                error_phone = true;
            }
            else {
                $("#phone_error").hide();
                error_phone = false;
            }
        
        }

        $("#btnDangNhap").click(function() {
                                                
            var error_username = false;
            var error_password = false;
                                                
            check_username();
            check_password();
            
            if(error_username == false && error_password == false) {
                return true;
            } else {
                return false;   
            }
        });
        $("#btnDangKy").click(function() {
                                                
            var error_username1 = false;
            var error_password0 = false;
            var error_email = false;
            var error_password1 = false;
            var error_phone = false;
            var error_name=false;
                                                
            check_username1();
            check_password0();
            check_password1();
            check_email();
            check_phone();
            check_name();
            
            if(error_username1 == false && error_password0 == false && error_email == false && error_password1 == false && error_phone==false
                &&error_name==false) {
                return true;
            } else {
                return false;   
            }
        });
});