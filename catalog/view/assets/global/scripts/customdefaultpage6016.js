var pathArray = window.location.pathname.split('/');
var newPathname = "";
for (i = 0; i < pathArray.length; i++) {
    newPathname = pathArray[i];
}
if (newPathname == "")
    newPathname = "index.aspx";

function addToCart(id, qtyid, rowid) {
    if (qtyid != "" && id != "") {
        
        $.ajax({
            type: "POST",
            url: newPathname+"/add_to_cart",
            data: "{'strid': '" + id + "','qty': '" + qtyid + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                
                refreshShoppingCart1(rowid);
                //alert(msg.d);
                $("#" + rowid).html(msg.d);

                topShoppingcartScroll();

            }
        });
    }
}

function refreshShoppingCart1(rowid) {
    //alert(rowid);
    $.ajax({
        type: "POST",
        url: newPathname + "/generatesmallShoppingCartStatic",
        data: "{'rowid': '" + rowid + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg1) {
            //alert(msg1.d);
            $("#ulshopping").html(msg1.d);

        }
    });

}
function refreshcartitemtotal1(totalitems) {
    $("[name='spnqtyShopping']").html(totalitems);
}

function disableClicks(element) {
    element.onclick = function () { return false; };
}

function deletItemsFromCart(id, t) {
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
            }
        });

    }
}