function getConfirmation() {
	var comfirmBox;
	comfirmBox = confirm("Bạn có chắc chắn muốn xóa?");
	if (comfirmBox == true) {
		return true;
	} else {
		return false;
	}
}

function checkCheckBoxesCourse(theForm) {
	var test = document.getElementsByName("courseDel[]");
	for(var i =0; i<test.length; i++){
	    if (test[i].checked == true) 
	    {
	    	return true;
	    } 
	}
	alert ('Hãy chọn dòng để xóa!');
    return false;
}

function checkCheckBoxesAccount(theForm) {
	var test = document.getElementsByName("accountDel[]");
	for(var i =0; i<test.length; i++){
	    if (test[i].checked == true) 
	    {
	    	return true;
	    } 
	}
	alert ('Hãy chọn dòng để xóa!');
    return false;
}

function checkCheckBoxesNews(theForm) {
	var test = document.getElementsByName("newsDel[]");
	for(var i =0; i<test.length; i++){
	    if (test[i].checked == true) 
	    {
	    	return true;
	    } 
	}
	alert ('Hãy chọn dòng để xóa!');
    return false;
}

function showmessage() {
    var kk = document.getElementById('message').value;
    if (kk != "") {
        alert(kk);
    }
}