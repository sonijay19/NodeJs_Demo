function patins() {
	console.log('in js');
    $.ajax({
        method: 'post',
        url: '/jay/reg/patinfo',
        data:({
        	pName : $('#pName').val(),
        	pGender : $('#pGender').val(),
        	pDate : $('#pDate').val(),
        	pmobNo : $('#pmobNo').val(),
        	pEmail : $('#pEmail').val(),
        	pAddress : $('#pAddress').val(),
        	pCity : $('#pCity').val(),
        	pState : $('#pState').val(),
        	pPincode : $('#pPincode').val(),
        	domain : $('#domain_pat_sign').val(),
            pHeight : $('#pHeight').val(),
            pWeight : $('#pWeight').val(),
            pBlood : $('#pBlood').val(),
        }),
        success: function(responseText) {
            if(responseText == "1"){
            	window.location.assign("/jay/table");
            }
            else{
            	$("#jay_pat_sign").html(responseText);
            }
        }
    });
    return false;
};


function search() {
	console.log('in js');
    $.ajax({
        method: 'post',
        url: '/Health1/PSearch',
        data:({
        	id : $('#search').val(),
        }),
        success: function(responseText) {
            if(responseText == "1"){
            	window.location.assign("table.jsp");
            }
            else{
            	$("#jay_search").html(responseText);
            }
        }
    });
    return false;
};

function search1() {
	console.log('in js');
    $.ajax({
        method: 'post',
        url: '/jay/search',
        dataType : 'json',
        data:({
        	id : $('#search').val(),
        }),
        success: function(data) {
            console.log(data.pName);
            document.getElementById("pName").value = data.pName.toString();
            //document.getElementById("pGender").value = data.myobj.pGender;
            document.getElementById("pDate").value = data.pDate;
            document.getElementById("pName").value = data.pName;
            document.getElementById("pmobNo").value = data._id;
            document.getElementById("pEmail").value = data.pEmail;
            document.getElementById("pAddress").value = data.pAddress;
            document.getElementById("pCity").value = data.pCity;
            document.getElementById("pState").value = data.pState;
            document.getElementById("pPincode").value = data.pPincode;
            // document.getElementById("pHeight").value = data.pHeight;
            // document.getElementById("pWeight").value = data.pWeight;
            // document.getElementById("pBlood").value = data.pBlood;
            var elem = document.getElementById("btn11");
            if (elem.value=="Create Patient") elem.value = "Update Patient";
            else elem.value = "Update Patient";
            $('#myselect').val(data.myobj.pGender);
        }
    });
};


function add_his() {
	console.log('in js');
    $.ajax({
        method: 'post',
        url: '/Health1/InsertHistory',
        data:({
        	pat_date : $('#pat_date').val(),
        	add_dis : $('#add_dis').val(),
        	add_med : $('#add_med').val(),
        	add_con : $('#add_con').val()

        }),
        success: function(responseText) {
            if(responseText == "1"){
            	window.location.assign("history.jsp");
            }
            else{
            	$("#jay_add_his").html(responseText);
            }
        }
    });
    return false;
};


function display() {
	console.log('in js');
	window.location.assign("display.jsp");
}











