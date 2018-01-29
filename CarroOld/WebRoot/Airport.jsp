<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="css/chocolat.css" type="text/css">
<link rel="icon" href="images/final_logo.ico" type="image/x-icon">
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta property="og:title" content="Vide" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---->
<script src="js/bootstrap.min.js"></script>
<!---->
<link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<script src="js/jquery.chocolat.js"></script>
		<!--lightboxfiles-->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
<!--script-->
<!--startsmothscrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>

<script src="js/modernizr.custom.97074.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
  <!------- for local server only 
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
 
--------->
  <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyBIlH_TuJz0-9BJIsYsEXw6QLRIaRQ03Ms&sensor=false&libraries=places" type="text/javascript"></script>

<meta name="title" content="Carro cabs">
<meta name="description" content="carro cabs for outstation and trip packages and airport pick up and drop.">
<meta name="keywords" content="carro, bangalore cabs, bangalore airpost cabs, bangalore to outstation cabs , taxi services , india taxi service , outstation taxi, local taxi services,  local cabs, 560001 to 560100 bangalore services , kempegowda international airport cabs services, bangalore airport cabs services ,  Kial cabs services, mysore cabs trip packages, trip packages , madikeri trip packages , coorg trip packages , kerala trip planner packages  carto cabs , charriot partner ,">
<meta name="robots" content="index, follow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<meta name="revisit-after" content="5 days">
<meta name="author" content="Renuka prasad">
</head>
<body>

<div class="banner-section">
	<div class="header">
		<div class="container">
			<div class="header-menu">
				<nav class="navbar navbar-default">
					<div class="container-fluid" STYLE="background-color: #f8f8f8">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
						  <div class="navbar-brand logo" style="background-color:white;">
								<h1><a href="index.html"><img src="images/cp-logo.png" alt="img" style="margin-top: -27%;"></a></h1>
							</div>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav cl-effect-11">
							<li class="active"><a href="index.html">Home </a></li>
							<li><a href="index.html#about"  >About</a></li>
							<li><a href="index.html#services"  > Services</a></li>
							
							  <li><a  href="index.html#guides" >Drivers</a></li>
							
							 <li><a  href="index.html#contact" >Contact</a></li>
							 
							 
						  </ul>
						</div><!-- /.navbar-collapse -->
						
					</div><!-- /.container-fluid -->
					
				</nav>
			<div class="clearfix"></div>
			</div>	
			
		</div> 
	</div>
	<form action="AirportTrip" method="post">
	<div class="container">
	<div style="margin-top: 10%;">
			<style>
input[type=text], select, textarea {
    width: 50%;
    padding: 2px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}
input[type=date] {
    width: 50%;
    padding: -4px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}


input[type=submit] {
width:25%;
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container10{
    
    border-radius: 5px;
    background-color: #2d322d7d;
    padding: 23px;
}
@media screen and (max-width: 320px) {
  /* comes into effect for screens less than or equal to 320 pixels */
  .container10 {
    width: 224px ;
	margin-top:32%;
  }
}
@media screen and (min-width: 321px) and (max-width: 480px) {
  /* comes into effect for screens between 321 and 480 pixels (inclusive) */
  .container10 {
    width: 320px ;
	margin-top:23%;
  }
}
@media screen and (min-width: 481px) {
  /* comes into effect for screens larger than or equal to 481 pixels */
  .container10 {
    width: 480px ;
  }
}
</style>
<div class="container10">
 <select  name="air_source"  id="sourceB">
<option value="Bangalore">Bangalore</option>
						
					</select>
  					<select onChange="myfunction()" id="way" name="air_way" >
					<option value="Trip Way" >Select Trip Way</option>
					<option value="Pick-Up" >Pick-Up</option>
					<option value="Drop">Drop</option>
					<option value="Both">Both</option>
  					
						</select>
				<input type="text"  name="air_pick"  id="source" placeholder="PickUp Point" required/><br>
				<input type="text"  name="air_destination"  id="destination" placeholder="Destination" required/>
				<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>

<input type="text" name="air_date"  placeholder="date" id="datepicker" required/>
				<!-- <input type="date" name="air_date" placeholder="date"  id="date1" required/> --><br>			
				<input type="submit"  value="GO">
	</div>
				</div>
				</div>
				</form>
				


</body>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113218669-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113218669-1');
</script>
<script type="text/javascript">


	function myfunction()
	{

	var way=document.getElementById('way').value;
	if(way==("Pick-Up"))
	{
		document.getElementById('source').value="Kempegowda International Airport, KIAL Road, Devanahalli, Bengaluru, Karnataka, India";
		document.getElementById('source').readOnly=true;
		document.getElementById('destination').readOnly=false;	
		document.getElementById('destination').value="";
		
	}
	

	
	else if(way==("Drop"))
		{
		document.getElementById('destination').value="Kempegowda International Airport, KIAL Road, Devanahalli, Bengaluru, Karnataka, India";
		document.getElementById('destination').readOnly=true;	
		document.getElementById('source').readOnly=false;	
		document.getElementById('source').value="";
		
		}
	else
		{
		
		document.getElementById('destination').value="";
		document.getElementById('source').value="";
		
		
		}
	
	}



</script>
<script type="text/javascript">
        var source, destination;
        var darection = new google.maps.DirectionsRenderer;
        var directionsService = new google.maps.DirectionsService;
        google.maps.event.addDomListener(window, 'load', function () {
            new google.maps.places.SearchBox(document.getElementById('source'));
            new google.maps.places.SearchBox(document.getElementById('destination'));
            
        });

        function get_rout() {
        	/*  var source11 = document.getElementById("source").value;
        	    document.getElementById("source1").value=source11;
        	 var destination11 = document.getElementById("destination").value;
        	    document.getElementById("destination1").value=destination11;
        	 var sourcebb = document.getElementById("sourceB").value;
        	    document.getElementById("sourceb").value=sourcebb; 
        	 var way1 = document.getElementById("way").value;
        	    document.getElementById("trip1").value=way1; 
        	 var date11 = document.getElementById("date1").value;
        	    document.getElementById("date3").value=date11; 
        	    var day1 = document.getElementById("days").value;
        	    document.getElementById("day").value=day1;  */
            var mapOptions = {
                mapTypeControl: false,
                center: {lat: -33.8688, lng: 151.2195},
                zoom: 13
            };
            
            map = new google.maps.Map(document.getElementById('maplocation'), mapOptions);
            darection.setMap(map);
            darection.setPanel(document.getElementById('panallocation'));


            source = document.getElementById("source").value;
            destination = document.getElementById("destination").value;

            var request = {
                origin: source,
                destination: destination,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    darection.setDirections(response);
                }
            });


            
            var service = new google.maps.DistanceMatrixService();
            service.getDistanceMatrix({
                origins: [source],
                destinations: [destination],
                travelMode: google.maps.TravelMode.DRIVING,
                unitSystem: google.maps.UnitSystem.METRIC,
                avoidHighways: false,
                avoidTolls: false
            }, function (response, status) {
                if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                    var distance = response.rows[0].elements[0].distance.text;
                    var duration = response.rows[0].elements[0].duration.text;
                    
                    distancefinel = distance.split(" ");
                    $('.distance').val(distancefinel[0]);
                    
                    
                    
                } else {
                    alert("Unable to find the distance via road.");
                }
            });
        }
        
        var input = document.getElementById('source');
var options = {
   componentRestrictions: {
       country: 'in'
   }
};

var autocomplete = new google.maps.places.Autocomplete(input, options);

$(input).on('input',function(){
var str = input.value;
 var prefix = 'BANGALORE, ';
if(str.indexOf(prefix) == 0) {
console.log(input.value);
} else {
if (prefix.indexOf(str) >= 0) {
   	input.value = prefix;
   } else {
 	input.value = prefix+str;
  }
}

});
    
var input1 = document.getElementById('destination');
var options1 = {
   componentRestrictions: {
       country: 'in'
   }
};

var autocomplete = new google.maps.places.Autocomplete(input, options1);

$(input1).on('input',function(){
var str = input1.value;
 var prefix = 'BANGALORE, ';
if(str.indexOf(prefix) == 0) {
console.log(input.value);
} else {
if (prefix.indexOf(str) >= 0) {
   	input1.value = prefix;
   } else {
 	input1.value = prefix+str;
  }
}

});    
        
    </script>
</html>