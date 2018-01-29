<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
  <!------- for local server only 
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
 
--------->
    <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyDFYDHDhik5Hi_6Ts4F3ZnbhmJixclWSIw&sensor=false&libraries=places" type="text/javascript"></script>
 <link rel="icon" href="images/final_logo.ico" type="image/x-icon">
<meta name="title" content="Carro cabs">
<meta name="description" content="carro cabs for outstation and trip packages and airport pick up and drop.">
<meta name="keywords" content="carro, bangalore cabs, bangalore airpost cabs, bangalore to outstation cabs , taxi services , india taxi service , outstation taxi, local taxi services,  local cabs, 560001 to 560100 bangalore services , kempegowda international airport cabs services, bangalore airport cabs services ,  Kial cabs services, mysore cabs trip packages, trip packages , madikeri trip packages , coorg trip packages , kerala trip planner packages  carto cabs , charriot partner ,">
<meta name="robots" content="index, follow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<meta name="revisit-after" content="5 days">
<meta name="author" content="Renuka prasad">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="css/chocolat.css" type="text/css">

<!--//theme-style-->

<meta property="og:title" content="Vide" />
<meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body onload="get_rout()">
	<div class="">
	<div class="header" style="margin-top: -20%;">
		<div class="container">
			<div class="header-menu" style="margin-bottom: 1%;">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						  </button>
						  <div class="navbar-brand logo" style="background-color:white">
								<h1><a href="index.html"><img src="images/cp-logo.png" alt="img"></a></h1>
							</div>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav cl-effect-11">
							<li class="active"><a href="index.html">Home </a></li>
							<li><a href="index.html#about">About</a></li>
							<li><a href="index.html#services"> Services</a></li>
							
							  <li><a  href="index.html#guides">Drivers</a></li>
							
							 <li><a  href="index.html#contact">Contact</a></li>
							 
						  </ul>
						</div><!-- /.navbar-collapse -->
						
					</div><!-- /.container-fluid -->
					
				</nav>
			<div class="clearfix"></div>
			</div>	
			
		</div> 
	</div>
		
		<!-- <img src="images/gg.gif" alt="img" style="margin-top:22%"> -->
	</div>
    <div class="content" style="margin-top:20%;margin-bottom:10%;">
	<div class="col-md-5" style="background-color:#d6e0e4;border: 2px solid #6691bd;margin-left:5%;margin-top:-13%;">
	<center><h1 style="color:maroon">BOOKING CONFIRMATION</h1></center><hr style="border: 2px solid #6691bd;">
	
	
<%!String pick;
String way;
String date;
String days;
String sourcepoint;
String cartype;
String car;
String price;
String  perday;
String driverbata;
String fullname;
String email;
String phonenumber;
String address;
String destination;
String distance;
double price1;
double bata1;
double perday1;
double distance1;
double basicamt;
String sdistance=null;
int days1;
double gst;
double grandtotal;
double printdist;
String subject;
String content;

%>


	<%
pick = session.getAttribute("pick").toString();
way = session.getAttribute("way").toString();
date = session.getAttribute("date").toString();
days=session.getAttribute("days").toString();
days=days.substring(0,1);
System.out.println("days is is  " +days);
sourcepoint = session.getAttribute("sourcepoint").toString();
destination= session.getAttribute("destination").toString();

cartype=session.getAttribute("cartype").toString();
car =session.getAttribute("car").toString();
price = session.getAttribute("price").toString();
perday=session.getAttribute("perday").toString();
driverbata =session.getAttribute("driverbata").toString();

fullname=session.getAttribute("fullname").toString();
email =session.getAttribute("email").toString();
address=session.getAttribute("address").toString();
phonenumber=session.getAttribute("phonenumber").toString();
distance=session.getAttribute("distance").toString();
subject="Booking confrmation Mail";
content="Your Booking conformation request accpected our exceutive will contact u shortly";

int i=distance.length();
switch(i)
{
case 4:
	sdistance=distance.substring(0,1);
	break;
case 5:
	sdistance=distance.substring(0,2);
	break;
case 6:
	sdistance=distance.substring(0,3);
	break;
case 8:
	distance=distance.replace(",","");
	sdistance=distance.substring(0,4);
	break;
case 9:
	distance=distance.replace(",","");
	sdistance=distance.substring(0,5);
	break;
default:break;
}
price1 =Float.valueOf(price.substring(0,3));
perday1 =Float.valueOf(perday.substring(0, 3));
bata1 =Float.valueOf(driverbata.substring(0, 3));
distance1=Float.parseFloat(sdistance);
System.out.println("distacnce1 is" +distance1);
days1=Integer.parseInt(days);

if(way.equals("Round Trip"))
{

distance1=distance1*2;


}

if(way.equals("One Way"))
{
if(distance1>perday1)
{

		basicamt=distance1*price1;
		Math.round(basicamt);
		bata1=bata1*days1;
		Math.round(bata1);
		gst=((basicamt+bata1)*0.05);
		Math.round(gst);
		grandtotal=(basicamt+bata1+gst);
		Math.round(grandtotal);

}
else if(distance1<perday1)
{
	basicamt=perday1*price1;
	Math.round(basicamt);
	bata1=bata1*days1;
	Math.round(bata1);
	gst=((basicamt+bata1)*0.05);
	Math.round(gst);
	grandtotal=(basicamt+bata1+gst);
	Math.round(grandtotal);
}

}
else if(way.equals("Round Trip"))
{
	basicamt=perday1*price1*days1;
	Math.round(basicamt);
	bata1=bata1*days1;
	Math.round(bata1);
	gst=((basicamt+bata1)*0.05);
	Math.round(gst);
	grandtotal=(basicamt+bata1+gst);
  	Math.round(grandtotal);
}

/* if(way.equals("One Way"))
{
	if(distance1>perday1)
	{
		basicamt=distance1*price1;
		bata1=bata1*days1;
		gst=((basicamt+bata1)*0.05);
		grandtotal=(basicamt+bata1+gst);
		
		
	}
	else if(distance1<perday1)
	{
		
	basicamt=perday1*price1;
	bata1=bata1*days1;
	gst=((basicamt+bata1)*0.05);
	grandtotal=(basicamt+bata1+gst);
	
	}
	
}



else if(way.equals("Round Trip"))
{
	distance1=(distance1*2);
	
	if(distance1<perday1)
	{
		basicamt=perday1*price1;
		bata1=bata1*days1;
		gst=((basicamt+bata1)*0.05);
		grandtotal=(basicamt+bata1+gst);
	
	
	}
	else if(distance1>perday1)
	{
		
	basicamt=((distance1)*price1);
	bata1=bata1*days1;
	gst=((basicamt+bata1)*0.05);
	grandtotal=(basicamt+bata1+gst);
	
	}
}

 */
out.println("<form action='PdfServlet' method='post'>");

out.println("<table class='table' style='margin-top:-4%;'>");
out.println("<tr>");
out.println("<th>Selected Vechile Type:</th>" );
out.println("<td>" +car+"</td>");
out.println("</tr>");
out.println("<br>");

out.println("<tr>");
out.println("<th>Selected Vechile:</th>" );
out.println("<td>" +cartype+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th>Price:</th>" );
out.println("<td>" +price+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th>Per Day:</th>" );
out.println("<td>" +perday+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th>Driver Bata:</th>" );
out.println("<td>" +driverbata+"</td>");
out.println("</tr>");







out.println("<tr>");
out.println("<th>Pickup Point:</th>" );
out.println("<td>" +pick+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th>Distination Point:</th>" );
out.println("<td>" +destination+"</td>");
out.println("</tr>");






out.println("<tr>");
out.println("<th>Distance:</th>" );
out.println("<td>"+distance1 +"</td>");
out.println("</tr>");




if(way.equals("Round Trip"))
{
out.println("<tr>");
out.println("<th>Number of Travelling Days:</th>" );
out.println("<td>" +days+"</td>");
out.println("</tr>"); 
}

out.println("<tr>");
out.println("<th>Basic Amount:</th>" );
out.println("<td>" +basicamt+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th>Driver Bata:</th>" );
out.println("<td>" +bata1+"</td>");
out.println("</tr>");

out.println("<tr>");
out.println("<th>Gst Amount:</th>" );
out.println("<td>" +gst+"</td>");
out.println("</tr>");


out.println("<tr>");
out.println("<th>Toatl <b>Approx.</b> Amount:</th>" );
out.println("<td>" +grandtotal+"</td>");
out.println("</tr>");
out.println("</table>");

out.println("<input type='submit' value='SUBMIT'class='btn btn-primary' style='margin-top:-3%;margin-left:38%'>");

out.println("<input type='hidden' name='source' id='source'  value='" +pick+"'/>");
out.println("<input type='hidden' name='destination' id='destination'  value='" +destination+"'/>");

session.setAttribute("basicamt", basicamt);
session.setAttribute("finalbata", bata1);
session.setAttribute("gst", gst);
session.setAttribute("appxamt", grandtotal);
session.setAttribute("recipient", email);
session.setAttribute("subject",subject);
session.setAttribute("content", content);
session.setAttribute("numdistance", distance1);

out.println("</form>");



%>



<br>
	</div>
	<div class="col-md-3" id="maplocation" style="height:350px;background-color:#d6e0e4;border: 2px solid #6691bd;margin-top:-6.5%;">
	
	
	
	</div>
	
	</div>


			
		
			
			
			
			
			<script type="text/javascript">
	        var source, destination;
	        var darection = new google.maps.DirectionsRenderer;
	        var directionsService = new google.maps.DirectionsService;
	        google.maps.event.addDomListener(window, 'load', function () {
	            new google.maps.places.SearchBox(document.getElementById('source'));
	            new google.maps.places.SearchBox(document.getElementById('destination'));
	            
	        });

	        function get_rout() {
	        	var source1=document.getElementById('source').value;
	        	var destination1=document.getElementById("destination").value;
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
	 var prefix = 'INDIA, ';
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

	<%-- <%!
	
	public float getDistance()
	{
		
		printdist=0.0f;
		printdist=distance1;
		
		if(way.equals("One Way"))
		{
			return printdist;
		}
		
		return (printdist*2);
		
				
		
		
	}
	
	
	
	
	%>
		
		 --%>
			
		
			
			
			
</body>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113218669-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113218669-1');
</script>
	
</html>
