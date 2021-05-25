<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Admin Home</title>
    <link rel="stylesheet" href="nicepage2.css" media="screen">
	<link rel="stylesheet" href="Admin_Home2.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery2.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage2.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.10.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    <style>
    ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
   margin-right:3%;
   margin-top:10px;
}

li {
  float: right;
 
}

li a {
  display: block;
  color: gray;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
    </style>
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html",
		"logo": "images/default-logo.png"
}</script>
    <meta property="og:title" content="Admin_Home">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
  </head>
  <body>
  	<%
	if(session.getAttribute("id")==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
  	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    %>
      <form method="post" action="http://localhost:8080/SafeShifting/AdminHome">
        <div class="u-body"><header class="u-clearfix u-header u-header" id="sec-65d8">
        <div>
			<ul>
  				<li><a href="Logout1.jsp">Logout</a></li>
  				
			</ul>
</div>	</header>
    <section class="u-clearfix u-section-1" id="sec-b388">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img src="images/841122677-0.jpeg" alt="" class="u-image u-image-circle u-preserve-proportions u-image-1"  data-animation-name="pulse" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" data-href="http://localhost:8080/SafeShifting/Trucks.jsp">
        <img src="images/841122677-01.jpeg" alt="" class="u-image u-image-circle u-image-2" data-image-width="500" data-image-height="300" data-animation-name="pulse" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" data-href="http://localhost:8080/SafeShifting/Add.jsp">
        <img src="images/0b3ddbf47078dcfe848b849728e53b91092dd41f59aa1f54d88f324d316f40e9dfd9b020376be1975e514ee85bf1ea6d3558eddd05852c6cf37b62_1280.jpg" alt="" class="u-image u-image-circle u-preserve-proportions u-image-3" data-image-width="150" data-image-height="150" data-animation-name="pulse" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" data-href="http://localhost:8080/SafeShifting/AddLoc.jsp">
        <img src="images/7c4d00e94663498f3cd6b8861b69e8669421bcf0ba1e42acaeb085650049f57310c44f3cf15fa42a0e06feee991781639623ae6ef67e262693aec0_1280.jpg" alt="" class="u-image u-image-circle u-preserve-proportions u-image-4" data-image-width="150" data-image-height="82" data-animation-name="pulse" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" data-href="http://localhost:8080/SafeShifting/Bookings.jsp">
        <p  class="u-align-center u-text u-text-palette-5-dark-2 u-text-1">Add&nbsp;Truck&nbsp;<span class="u-text-palette-5-dark-1"></span>
        </p>
        <p class="u-align-center u-text u-text-palette-5-dark-1 u-text-2">Trucks</p>
        <p class="u-align-center u-text u-text-palette-5-dark-1 u-text-3">Add Location&nbsp;</p>
        <p class="u-align-center u-text u-text-palette-5-dark-1 u-text-4">View Records</p>
        <img src="images/841122677-02.jpeg" alt="" class="u-image u-image-circle u-preserve-proportions u-image-5" data-animation-name="pulse" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" data-href="http://localhost:8080/SafeShifting/DelTruck.jsp">
        <img src="images/0725d505173c0e6bdd97b7068309bed7216d160c9d07e4f5f65d83bdb92b8fabfc50d36460c7d643165c1355807ea9305f19371b1d9bf5e3c9e066_1280.png" alt="" class="u-image u-image-circle u-image-6" data-image-width="1280" data-image-height="1280" data-animation-name="pulse" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="" data-href="http://localhost:8080/SafeShifting/DelLoc.jsp">
        <p class="u-align-center u-text u-text-palette-5-dark-1 u-text-5">Delete Truck</p>
        <p class="u-align-center u-text u-text-palette-5-dark-1 u-text-6">Delete Location</p>
      </div>
    </section>
    
    <div style="background-color:AliceBlue;"><br><br><br>
		<table style="width:100%;border-collapse: separate;border-spacing:150px 0px;">
			
			<tr>
				<td style="text-align:center;padding:5px;">
					 <p style="font-size:18px;color:#5F9EA0;position:center; line-height:2.8";>Company</p>
					 <p style="font-size:14px;color:gray;position:center;line-height:1.8;">About Us</p>
					 <p style="color:gray;position:center;line-height:1.8;">Services</p>
				</td>
				
				<td style="text-align:center;padding:5px;">
					 <p style="font-size:18px;color:#5F9EA0;line-height:2.8;">Help</p>
					 <p style="font-size:14px;color:gray;line-height:1.8;">Contact<p>
					 <p style="font-size:14px;color:gray;line-height:1.8;">FAQs</p>
				</td>
				
				<td style="text-align:center;padding:5px;">
				<p style="font-size:18px;color:#5F9EA0;line-height:2.8;">Legal</p>
				<p style="font-size:14px;color:gray;line-height:1.8;">Privacy Policy</p>
				<p style="font-size:14px;color:gray;line-height:1.8;">Terms & Condition</p>
				</td>
				
				<td style="text-align:center;padding:5px;">
					 <p style="font-size:18px;color:#5F9EA0;line-height:2.8;">Connect with us</p>
					 <p style="font-size:14px;color:gray;line-height:1.8;">dwd<p>
					  <p style="font-size:14px;color:gray;line-height:1.8;">dwd<p>
				</td>
			</tr>
			
			
			</table>
		<br><br><br><br><br><br><br><br><br><br><br><br>
		<div style="text-align:center;">
		<h3 style="color:gray;line-height:2.8;">Safe-Shifting</h3>
		<p style="color:gray;">Copyright © 2021 Safe-Shifting. All rights reserved.</p>
		<p style="color:gray;">Version 2.14.0</p>
		<br><br>
		</div>
		</div>
    </form>
  </body>
</html>