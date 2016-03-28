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
			       title: 'アンビカトレーディング株式会社',
		            infoWindow: {
		                content: "<b>アンビカトレーディング株式会社</b><br> 〒111-0051東京都台東区<br>蔵前3-19-2 アンビカハウス"
		            }
		        });

			   marker.infoWindow.open(map, marker);
			});
        }
    };

}();