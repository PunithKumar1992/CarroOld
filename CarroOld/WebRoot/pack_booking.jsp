<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
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
<link rel="icon" href="images/final_logo.ico" type="image/x-icon">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="css/chocolat.css" type="text/css">

<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <div class="content" style="margin-top:20%;margin-bottom:05%;">
	<div class="col-md-5" style="margin-top:-12%;background-color:#d6e0e4;border: 2px solid #6691bd;margin-left:25%;">
	<center><h1 style="color:maroon">BOOKING CONFIRMATION</h1></center><hr style="border: 2px solid #6691bd;">
	
	<%!String  car ;
	  String pack_package;
	   String price;
	   String fullname;
	   String email;
	   String phone;
	   String address;
	   String pick;   		
	   float price1;
	   float basicamt;
	   double gst;
	   double grandtotal;
	   String subject;
	   String content;
	   String date;

	%>
	<%
	
	car =session.getAttribute("pack_car").toString();
	pack_package=session.getAttribute("pack_package").toString();
	price =session.getAttribute("pack_price").toString();
	fullname=session.getAttribute("pack_fullname").toString();
	email=session.getAttribute("pack_email").toString();
	phone=session.getAttribute("pack_phone").toString();
	address=session.getAttribute("pack_address").toString();
	pick=session.getAttribute("pack_pick").toString();
	price1=Float.parseFloat(price);
	date =session.getAttribute("pack_date").toString();
	out.println("<form action='PackpdfServlet' method='post' style='margin-bottom:-28%;'>");
	subject="Booking confrmation Mail";
	content="Your Booking conformation request accpected our exceutive will contact u shortly";

	
	out.println("<table class='table' style='margin-top:-33%'>");
	out.println("<tr>");
	out.println("<th> Selected Car:</th>" );
	out.println("<td>" +car+"</td>");
	out.println("</tr>");
	out.println("<br>");

	
	out.println("<tr>");
	out.println("<th> Selected Package:</th>" );
	out.println("<td>" +pack_package+"</td>");
	out.println("</tr>");
	out.println("<br>");

	out.println("<tr>");
	out.println("<th> Price:</th>" );
	out.println("<td>" +price+"</td>");
	out.println("</tr>");
	out.println("<br>");
	
	out.println("<tr>");
	out.println("<th> Pickup Point:</th>" );
	out.println("<td>" +pick+"</td>");
	out.println("</tr>");
	out.println("<br>");
	
	out.println("<tr>");
	out.println("<th> Travelling Date:</th>" );
	out.println("<td>" +date+"</td>");
	out.println("</tr>");
	out.println("<br>");
	
	if(pack_package.equals("Mysore Coorg 3Days 2Night Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Mysore :Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills," +"\n" 
			+"Nandi statue,Zoo, Mysore palace, Jaganmohan palace, Church, Old st, marry chruch," +"\n"
			+"Brundavan garden."+"<br/>" +"<br>" 
			+" Coorg :Golden temple, Nisargadhama, Dubare falls, Raja seat, Thalakaveri, Habbi falls, Fort."		+"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	else if(pack_package.equals("Mysore Ooty 3 Night 4Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Mysore :Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo,<br>" 
	 +"Mysore palace, Jaganmohan palace, Church, Old st, marry chruch, Brundavan garden.<br>"
	 +"Ooty :Pykara falls,shooting spot,boat house, botanical garden, doddabetta, tea factory,<br>"
	  +"coonor dolphine nose,lamb rock,sims park."+"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	else if(pack_package.equals("Mysore Ooty and Kodaikanal 5Night 6Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Mysore :Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,"
	+"Zoo, Mysore palace, <br>Jaganmohan palace, Church, Old st, marry chruch, <br>Brundavan garden."+"<br>"
	+"Ooty :  Pykara falls,shooting spot,boat house, botanical garden, doddabetta, tea factory, coonor dolphine nose," +"<br>"
	+"lamb rock,sims park." 
	+" Kodaikanal : Kodaikanal lake,kurinjiandavar temple,briyant park,cocker walk, silver cascade falls, pillar rocks, green valley."+"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	else if(pack_package.equals("Mysore Waynad 3Night 4Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Mysore :Tippu summer palace, Gumbaz,Ranganathatemple, Chamundi hills, Nandi statue,Zoo," +"<br>" 
			+"Mysore palace, Jaganmohan palace, Church, Old st, marry chruch, Brundavan garden."
	+"Waynad : Kuruv island, chembra peak, edakkal cave, muthanga wildlife sanctuary, pazhassi raja tomb, lakkidi, soochippara water falls."+"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	
	else if(pack_package.equals("Pondycherry 1Night 2Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td> Bessilica heart church, botanical garden, paradise beach,gandhi statue, arbindo ashram, museam, aralimugumanukulavinayagar temple, boat house, aurovile."+"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	
	else if(pack_package.equals("Munnar and Allephy 4Night 5Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Munnar :Devikulam, mettupety dam, anamudi, pothemadu point, hydel park, munnar tea museam."+"<br>"
	+" Allephy : Marari beach, boat one night stay"  +"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	
	else if(pack_package.equals("Goa 2Night 3Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Goa"  +"</td>");
	out.println("</tr>");
	out.println("<br>");
	}
	else if(pack_package.equals("Shirdi 2Night 3Days Package"))
	{
	out.println("<tr>");
	out.println("<th> Sight Seen:</th>" );
	out.println("<td>Shirdi :hampi, badaami, Haihole, pattadakallu, koodalasangama, allamatti dam, bijapur golgumbaz, pandarapura, shirdi." +"</td>");
	out.println("</tr>");
	out.println("<br>");
	}


	
	 basicamt=price1;
	gst=(basicamt*0.05);
	grandtotal=(basicamt+gst);
 
	out.println("<tr>");
	out.println("<th> Basic amount:</th>" );
	out.println("<td>" +basicamt+"</td>");
	out.println("</tr>");
	out.println("<br>");
	
	
	out.println("<tr>");
	out.println("<th> Gst amount:</th>" );
	out.println("<td>" +gst+"</td>");
	out.println("</tr>");
	out.println("<br>");
	
	out.println("<tr>");
	out.println("<th> Total:</th>" );
	out.println("<td>" +grandtotal+"</td>");
	out.println("</tr>");
	out.println("<br>");
	out.println("</table>");
	
	
	out.println("<input type='submit' value='SUBMIT'class='btn btn-primary' style='margin-bottom:30%;margin-left:40%;'>");
	
	out.println("</form>");
	session.setAttribute("pack_basicamt", basicamt);
	session.setAttribute("pack_gst", gst);
	session.setAttribute("pack_grand", grandtotal);
	session.setAttribute("pack_recipient", email);



	%>


</div>
</div>

			
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