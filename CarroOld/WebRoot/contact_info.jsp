<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
 <head>
 <link rel="icon" href="images/final_logo.ico" type="image/x-icon">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
  <!------- for local server only 
 <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
 
--------->
    <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyDFYDHDhik5Hi_6Ts4F3ZnbhmJixclWSIw&sensor=false&libraries=places" type="text/javascript"></script>
 
 <meta name="title" content="Carro cabs">
<meta name="description" content="carro cabs for outstation and trip packages and airport pick up and drop.">
<meta name="keywords" content="carro, bangalore cabs, bangalore airpost cabs, bangalore to outstation cabs , taxi services , india taxi service , outstation taxi, local taxi services,  local cabs, 560001 to 560100 bangalore services , kempegowda international airport cabs services, bangalore airport cabs services ,  Kial cabs services, mysore cabs trip packages, trip packages , madikeri trip packages , coorg trip packages , kerala trip planner packages  carto cabs , charriot partner ,">
<meta name="robots" content="index, follow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<meta name="revisit-after" content="5 days">
<meta name="author" content="Renuka prasad">
  <style type="text/css">
  body {
    padding-top:50px;
}
fieldset {
    border: thin solid #ccc; 
    border-radius: 4px;
    padding: 20px;
    padding-left: 40px;
    background: #fbfbfb;
}
legend {
   color: #678;
}
.form-control {
    width: 95%;
}
label small {
    color: #678 !important;
}
span.req {
    color:maroon;
    font-size: 112%;
}
  
  
  
  
  
  </style>
 </head>
 <body onload="get_rout()">
 <jsp:include page="/header.html"></jsp:include>
  <div class="container">
	<div class="row">
        <div class="col-md-12" style="margin-left: 25%;width: 40%;margin-top:15%">
            <form action="Contactserv" method="post" id="fileForm" role="form">
            <fieldset><legend class="text-center">CONTACT DETAILS<span class="req"></span></legend>
               <div class="form-group"> 	 
                <label for="firstname"><span class="req">* </span> Full name: </label>
                    <input class="form-control" type="text" name="fullname" id = "txt"  required /> 
                        <div id="errFirst"></div>    
            </div>
			 <div class="form-group">
                <label for="email"><span class="req">* </span> Email Address: </label> 
                    <input class="form-control" required type="text" name="email" id = "email"  onchange="email_validate(this.value);" />   
                        <div class="status" id="status"></div>
            </div>
            <div class="form-group">
			
            <label for="phonenumber"><span class="req">* </span> Phone Number: </label>
                    <input required type="text" name="phonenumber" id="phone" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="not used for marketing"/> 
            </div>

           

            <div class="form-group">
                <label for="lastname"><span class="req">* </span> Address </label> 
                    <textarea class="form-control"   name="Address" rows="5" cols="5"  placeholder="Address" required> </textarea> 
                      
            </div>

           
		<input type='hidden' name='distance' id='distance'  value=''/>
            <div class="form-group">
              <center> <input class="btn btn-success" type="submit" name="submit_reg" value="Register"></center> 
            </div>
            </fieldset>
            </form><!-- ends register form -->

<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
        </div><!-- ends col-6 -->
   
           

	</div>
</div>

<script>
function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
} 
function validatephone(phone) 
{
    var maintainplus = '';
    var numval = phone.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    phone.value = maintainplus + curphonevar;
    var maintainplus = '';
    phone.focus;
}
// validates text only
function Validate(txt) {
    txt.value = txt.value.replace( /^[a-zA-Z 0-9\s]*$/);
}
// validate email
function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

    if(regMail.test(email) == false)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("status").innerHTML	= "<span class='valid'>Thanks, you have entered a valid Email address!</span>";	
    }
}
// validate date of birth

// validate address
function add_validate(address)
{
var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;
  
    if(regAdd.test(address) == false)
    {
    document.getElementById("statusAdd").innerHTML	= "<span class='warning'>Address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("statusAdd").innerHTML	= "<span class='valid'>Thanks, Address looks valid!</span>";	
    }
}

</script>

<%

String source= session.getAttribute("pick").toString();
String destination= session.getAttribute("destination").toString();

out.println("<input type='hidden'  id='source'  value='" +source+"'/>");
out.println("<input type='hidden'  id='destination'  value='" +destination+"'/>");

%>

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
	        	var destination1=document.getElementById('destination').value;
	            var mapOptions = {
	                mapTypeControl: false,
	                center: {lat: -33.8688, lng: 151.2195},
	                zoom: 13
	            };
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
	                   	console.log(distance);
	                    document.getElementById('distance').value=distance;
	                    document.getElementById('distance1').innerHTML =distance;
	                    
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

			
						
 </body>
 <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-113218669-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-113218669-1');
</script>
 <jsp:include page="/footer.html"></jsp:include>
</html>
