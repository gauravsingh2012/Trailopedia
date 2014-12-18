function generateMapAddress() {

    var geocoder;
    var googleMap;
    geocoder = new google.maps.Geocoder();

    var mapOptions = {
        zoom: 18,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    googleMap = new google.maps.Map(document.getElementById("google-map-block"), mapOptions);

    var myAddress = $('.address-text').val();
    console.log(myAddress);
    geocoder.geocode({ 'address': myAddress }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            googleMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: googleMap,
                position: results[0].geometry.location
            });
        } else {
            alert("Geocode Exception Handled: " + status);
        }
    });
};