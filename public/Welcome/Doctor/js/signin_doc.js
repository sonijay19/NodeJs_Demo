//function patins() {
//	console.log('in js');
//    $.ajax({
//        method: 'post',
//        url: '/Health1/SignUp',
//        data:({
//        	pName : $('#pName').val(),
//        	pGender : $('#pGender').val(),
//        	pDate : $('#pDate').val(),
//        	pmobNo : $('#pmobNo').val(),
//        	pEmail : $('#pEmail').val(),
//        	pAddress : $('#pAddress').val(),
//        	pCity : $('#pCity').val(),
//        	pState : $('#pState').val(),
//        	pPincode : $('#pPincode').val(),
//        	domain : $('#domain_pat_sign').val()
//        }),
//        success: function(responseText) {
//            if(responseText == "1"){
//            	window.location.assign("table.jsp");
//            }
//            else{
//            	$("#jay_pat_sign").html(responseText);
//            }
//        }
//    });
//    return false;
//};


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











