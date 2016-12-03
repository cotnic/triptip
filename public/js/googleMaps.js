//ZA UPROABO V HTML USTVARI <div id="map"></div>
//DODAJ SE <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDX1UwGQD4HC6zd2Kt1GU1IoiYW9DOBie0&callback=initMap" async defer/>

var map;
function initMap() {
	
	//Ustvari mapo
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 46.0552778, lng: 14.5144444},
        zoom: 10
    });
	
	//for(){ //za nastavljanje vseh markerjev
		//Ustvari marker
			var marker = new google.maps.Marker({
			position: {lat: 46.0552778, lng: 14.5144444},
			map: map,
			title: 'Hello World!'
		});
	
		//Vsebina okna, ki ga odpremo ob kliku na marker
		var contentString="<div id='Okno'>" +  "Vsebina</div>"; //
	/*		"<div><img id='slikaOkna' src="+  +" alt="+ +"/></div>" + //za sliko mesta 
			"<div>" +
			"<a id='naslovOkna' href='"+  +"'>"+ +"</a>" + //link do strani od mesta; naslov mesta
			"<div id='ocena'>"+  +"</div>" +
			"<div id='vsebinaOkna'>"+ +"<div/>" +
			"</div>" +
			"</div>" 
	*/
		//Okno ki se odpre ob kliku na marker
		var infowindow = new google.maps.InfoWindow({
			content: contentString
		});
		
		//Doda listener, ki se bo zgodil ob kliku
		marker.addListener('click', function() {
			 infowindow.open(map, marker);
		});
		
		//Marker ustvari na mapi
		marker.setMap(map);
	
	//}
}