function deletItemsFromCart(id, t,rowid) {
    var pathArray1 = window.location.pathname.split('/');
    var newPathname1 = "";
    for (i = 0; i < pathArray1.length; i++) {
        newPathname1 = pathArray1[i];
    }
    if (id != "" && t != "") {
        $.ajax({
            type: "POST",
            url: newPathname1 + "/deleteItemsfromcart",
            data: "{'id': '" + id + "', 'stype': '" + t + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#strmsg").html(msg.d);
                refreshShoppingCart(rowid, newPathname1);
            }
        });

    }
}

function refreshcartitemtotal(totalitems) {
    $("[name='spnqtyShopping']").html(totalitems);
}

function refreshShoppingCart(rowid, newPathname1) {
    //alert(rowid);
    $.ajax({
        type: "POST",
        url: newPathname1 + "/generatesmallShoppingCartStatic",
        data: "{'rowid': '" + rowid + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg1) {
            //alert(msg1.d);
            $("#ulshopping").html(msg1.d);
            //$('#' + rowid).remove();

        }
    });

}