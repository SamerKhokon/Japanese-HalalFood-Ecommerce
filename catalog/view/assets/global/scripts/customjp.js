$(document).ready(function () {
    
    $("#btnregister").click(function () {

        if ($("#aspnetForm").valid()) {
            
            this.style.visibility = 'hidden';
            this.style.display = 'none';
            //workingButton.style.visibility = 'visible';
            //workingButton.style.display = 'inline';
            $.post("register.aspx", function (result) {


            });
        }

    });
    $("#btnlogin").click(function () {

        if ($("#aspnetForm").valid()) {
            this.style.visibility = 'hidden';
            this.style.display = 'none';
            //workingButton.style.visibility = 'visible';
            workingButton.style.display = 'inline';
            $.post("login.aspx", function (result) {


            });
        }

    });

    $("#btnupdate").click(function () {

        if ($("#aspnetForm").valid()) {
            this.style.visibility = 'hidden';
            this.style.display = 'none';
            //workingButton.style.visibility = 'visible';
            workingButton.style.display = 'inline';
            $.post("membersinfo.aspx", function (result) {


            });
        }

    });
    
    $("#btnsenduserid").click(function () {

        if ($("#useridpanel").valid()) {
            this.style.visibility = 'hidden';
            this.style.display = 'none';
            //workingButton.style.visibility = 'visible';
            workingButton.style.display = 'inline';
            $.post("forgot-id-password.aspx", function (result) {


            });
        }

    });

    $("#btnsendpassword").click(function () {

        if ($("#passwordpanel").valid()) {
            this.style.visibility = 'hidden';
            this.style.display = 'none';
            //workingButton.style.visibility = 'visible';
            workingButton1.style.display = 'inline';
            $.post("forgot-id-password.aspx", function (result) {


            });
        }

    });

    $("#btnupdatepassword").click(function () {

        if ($("#aspnetForm").valid()) {
            this.style.visibility = 'hidden';
            this.style.display = 'none';
            //workingButton.style.visibility = 'visible';
            workingButton.style.display = 'inline';
            $.post("generatenewpassword.aspx", function (result) {


            });
        }

    });

    
    //$("#aspnetForm").validate({
    //    onkeyup: false,
    //    rules: {
    //        "username": {
    //            required: true,
    //            minlength: 5,
    //            maxlength: 20,
    //            validChars: true,
    //            //usernameCheck: true    // remote check for duplicate username
    //        },
    //        "tos": {
    //            required: true
    //        }
    //    },
    //    messages: {
    //        "username": {
    //            required: "username is required.",
    //            minlength: $.format("username must be at least {0} characters in length."),
    //            maxlength: $.format("username can not exceed {0} characters in length."),
    //            validChars: "please supply valid characters only.",
    //            //usernameCheck: "this username is already in use."
    //        },
    //        "tos": {
    //            required: "In order to register, agreeing to the Terms and Conditions is required."
    //        }
    //    }
    //});


});


//function deletItemsFromCart(id, t) {
//    var pathArray1 = window.location.pathname.split('/');
//    var newPathname1 = "";
//    for (i = 0; i < pathArray1.length; i++) {
//        newPathname1 = pathArray1[i];
//    }
//    if (id != "" && t != "") {
//        $.ajax({
//            type: "POST",
//            url: newPathname1 + "/deleteItemsfromcart",
//            data: "{'id': '" + id + "', 'stype': '" + t + "'}",
//            contentType: "application/json; charset=utf-8",
//            dataType: "json",
//            success: function (msg) {
//                $("#strmsg").html(msg.d);
//            }
//        });

//    }
//}
