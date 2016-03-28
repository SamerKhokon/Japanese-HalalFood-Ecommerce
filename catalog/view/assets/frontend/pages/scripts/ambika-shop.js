var ContactUs = function () {

    return {
        //main function to initiate the module
        init: function () {
			var map;
			$(document).ready(function(){
			  map = new GMaps({
				div: '#map',
				lat: 35.7054503,
				lng: 139.7913076,
			  });
			   var marker = map.addMarker({
			       lat: 35.7054503,
			       lng: 139.7913076,
		            title: 'Ambika Shop',
		            infoWindow: {
		                content: "<b>Ambika Shop</b> 111-0051, Tokyo, Taito-ku<br>Kuramae,3-19-2, Ambika House"
		            }
		        });

			   marker.infoWindow.open(map, marker);
			});
        }
    };

}();