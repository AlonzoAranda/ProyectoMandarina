﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autoCompletar.aspx.cs" Inherits="ProyectoIntegrador.GUI.autoCompletar" %>


<!DOCTYPE html>
<html>
<!-- 
https://developers.google.com/maps/documentation/javascript/places#places_autocomplete
https://developers.google.com/maps/documentation/javascript/reference#Autocomplete
https://developers.google.com/maps/documentation/javascript/reference#PlaceResult
https://code.google.com/p/geo-autocomplete/
-->
<head runat ="server">
<title>Google Maps JavaScript API v3 Example: Places Autocomplete (no map, establishments only)</title>
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<style>
body,input {
  font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
  font-size: 16px !important;
}
input {
  border: 1px solid  rgba(0, 0, 0, 0.5);
  padding: 5px;
}
</style>
<script>
function initialize() {
  
  var input1 = document.getElementById('nearbyField');
  var autocomplete1 = new google.maps.places.Autocomplete(input1);
  autocomplete1.setTypes(['geocode']);
  
  var input2 = document.getElementById('searchTextField');
  var autocomplete2 = new google.maps.places.Autocomplete(input2);
  autocomplete2.setTypes(['establishment']);
  // search locality
  google.maps.event.addListener(autocomplete1, 'place_changed', function() {
    var place = autocomplete1.getPlace();
    console.log(place);
    if( place.geometry != null )
      autocomplete2.setBounds(place.geometry.viewport);
  });
  // restaurant
  google.maps.event.addListener(autocomplete2, 'place_changed', function() {
    var place = autocomplete2.getPlace();
    console.log(place);
    console.log('http://api.yelp.com/business_review_search?term='+encodeURIComponent(place.name)+'&lat='+place.geometry.location.hb+'&long='+place.geometry.location.ib+'&limit=1&ywsid=U9_z7hj_DUsLmei8bOJTdQ');
  });
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
    <form>
  <div>
    <input id="nearbyField" type="text" size="100"><br>
    <input id="searchTextField" type="text" size="100"><br>
  </div>
        </form>
</body>
</html>