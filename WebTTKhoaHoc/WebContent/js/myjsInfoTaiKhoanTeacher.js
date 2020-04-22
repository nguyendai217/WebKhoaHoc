// nút search tại table khóa học của bạn
function myFunction() {
	  var input, filter, table, tr, td, i, td2;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	  	// lấy vị trí cần search
	    td = tr[i].getElementsByTagName("td")[1];
	    if (td) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    } 
	    td2 = tr[i].getElementsByTagName("td")[4];
	    if (td2) {
	      if (td2.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
}

// sắp xếp table
function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable");
  switching = true;
  //Set the sorting direction to ascending:
  dir = "asc"; 
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.getElementsByTagName("TR");
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /*check if the two rows should switch place,
      based on the direction, asc or desc:*/
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      //Each time a switch is done, increase this count by 1:
      switchcount ++;      
    } else {
      /*If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again.*/
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}

function KiemTraPass()
	{
		var pthongbao = document.getElementById ("pthongbao");
		var TenTK = document.getElementById("TenTK");
		var MKCu = document.getElementById("MKCu");
		var MKCap1 = document.getElementById("MKCap1");
		var MKCap2 = document.getElementById("MKCap2");
		if(frmDoiMK.TenTK.value == "" || frmDoiMK.MKCu.value == "" || frmDoiMK.MKCap1.value == "" || frmDoiMK.MKCap2 == "")
		{
			frmDoiMK.TenTK.style.border="solid 1px red";
			frmDoiMK.MKCu.style.border ="solid 1px red";
			frmDoiMK.MKCap1.style.border ="solid 1px red";
			frmDoiMK.MKCap2.style.border ="solid 1px red";
			pthongbao.innerHTML = "Bạn phải nhập dữ liệu đầy đủ";
			pthongbao.style.color="red";
			return false;
		}
		else if(MKCap1.value.length<"7" || MKCap1.value.length> "20"){
			pthongbao.style.display = "block";
			pthongbao.innerHTML ="Nhập mật khẩu phải trên 6 kí tự";
			pthongbao.style.color="red";
			frmDoiMK.MKCap1.style.border = "solid 1px red";
			frmDoiMK.TenTK.style.border="none";
			frmDoiMK.MKCu.style.border ="none";
			frmDoiMK.MKCap2.style.border ="none";
			return false;
		}
		else if(frmDoiMK.MKCap1.value != frmDoiMK.MKCap2.value)
		{
			frmDoiMK.MKCap1.style.border = "none";
			frmDoiMK.MKCap2.style.border ="solid 1px red";
			pthongbao.innerHTML = "Bạn phải nhập đúng với mật khẩu cấp 1";
			pthongbao.style.color="red";
			return false;
		}
		else { 
			pthongbao.style.display ="none";
			frmDoiMK.MKCap1.style.border = "none";
			frmDoiMK.TenTK.style.border="none";
			frmDoiMK.MKCu.style.border ="none";
			frmDoiMK.MKCap2.style.border ="none";
			return true;
		}
	}