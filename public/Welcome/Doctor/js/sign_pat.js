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
        url: '/Health1/PSearch1',
        dataType : 'json',
        data:({
        	id : $('#search').val(),
        }),
        success: function(data) {
            document.getElementById("pName").value = data.myobj.pName;
            //document.getElementById("pGender").value = data.myobj.pGender;
            document.getElementById("pDate").value = data.myobj.pDate;
            document.getElementById("pName").value = data.myobj.pName;
            document.getElementById("pmobNo").value = data.myobj.pmobNo;
            document.getElementById("pEmail").value = data.myobj.pEmail;
            document.getElementById("pAddress").value = data.myobj.pAddress;
            document.getElementById("pCity").value = data.myobj.pCity;
            document.getElementById("pState").value = data.myobj.pState;
            document.getElementById("pPincode").value = data.myobj.pPincode;
            document.getElementById("pHeight").value = data.myobj.pHeight;
            document.getElementById("pWeight").value = data.myobj.pWeight;
            document.getElementById("pBlood").value = data.myobj.pBlood;
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











