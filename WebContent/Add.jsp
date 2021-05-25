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
    <title>Add Truck</title>
    <link rel="stylesheet" href="nicepage1.css" media="screen">
<link rel="stylesheet" href="Home1.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery1.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage1.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.10.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"url": "index.html"
}</script>
    <meta property="og:title" content="Home">
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
  <form method="post" action="http://localhost:8080/SafeShifting/Add" >
    <div class="u-body"><header class="u-clearfix u-header u-sticky u-header" id="sec-5bc3"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1.25rem;">
            <a class="u-button-style u-custom-text-shadow u-nav-link" href="#" style="color: rgb(17, 17, 17) !important;">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 58.365 58.365" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9c4a"></use></svg>
              <svg class="u-svg-content" viewBox="0 0 58.365 58.365" x="0px" y="0px" id="svg-9c4a" style="enable-background:new 0 0 58.365 58.365;"><path d="M57.863,26.632L29.182,0L0.502,26.632c-0.404,0.376-0.428,1.009-0.052,1.414c0.374,0.404,1.009,0.427,1.413,0.052  l4.319-4.011v3.278v31h16v-18c0-3.866,3.134-7,7-7s7,3.134,7,7v18h16v-31v-3.278l4.319,4.011c0.192,0.179,0.437,0.267,0.681,0.267  c0.269,0,0.536-0.107,0.732-0.319C58.291,27.641,58.267,27.008,57.863,26.632z"></path></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 30px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 30px;" href="Logout1.jsp">Logout</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 30px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" style="padding: 10px 30px;">Logout</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-6bf6">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-round u-radius-50 u-image-1" data-image-width="500" data-image-height="500" src="images/191.jpg" data-animation-name="zoomIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
        <img src="images/20.jpg" alt="" class="u-image u-image-round u-radius-50 u-image-2" data-image-width="600" data-image-height="338" data-animation-name="zoomIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
        <h3 class="u-text u-text-1">Tata Ace/pickup</h3>
        <h3 class="u-text u-text-2">EICHER 19</h3>
        <p class="u-text u-text-palette-5-dark-1 u-text-3">Max Load 850 Kgs</p>
        <p class="u-text u-text-palette-5-dark-1 u-text-4">Max Load 7 Ton</p>
        <img src="images/181.jpg" alt="" class="u-image u-image-round u-radius-50 u-image-3" data-image-width="231" data-image-height="147" data-animation-name="zoomIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="">
        <img src="images/211.jpg" alt="" class="u-image u-image-round u-radius-50 u-image-4" data-image-width="500" data-image-height="500" data-animation-name="zoomIn" data-animation-duration="1000" data-animation-delay="0" data-animation-direction="Down">
        <h3 class="u-text u-text-5">TATA TAURUS 21 T</h3>
        <h3 class="u-text u-text-6" >Container 32ft</h3>
        <p class="u-text u-text-palette-5-dark-1 u-text-7">Max Load 21 Ton</p>
        <p class="u-text u-text-palette-5-dark-1 u-text-8" style="line-height:0.2;">Max Load 7 Ton</p>
      </div>
    </section>
	   <p style="font-size:28px;text-align:center;">Add Trucks here</p>
    
     <table class="center" style=" margin-left:38%; border-collapse:separate; border-spacing:0px 30px;">
    	
    	
    	
    
    	<tr>
    		<td style="width:140px;">
    			<label>Truck Type : </label>
    		</td>
    		<td>
    			<select name="ttype" style="width:190px;">
    			<option value="Tata Ace / pickup">Tata Ace / pickup</option>
   				<option value="EICHER 19">EICHER 19</option>
    			<option value="TATA TAURUS 21 T">TATA TAURUS 21 T</option>
    			<option value="Container 32 ft">Container 32 ft</option>
  				</select>
    		</td>
    		
    	</tr>
    	<tr>
    		<td style="width:140px;">
    			<a style="color:black; ">Truck No. :</a>	
    		</td>
    		<td>
    			<input type="text" name="tno" required /><br/>
    		</td>
    	</tr>
    	
    	<tr>
    		<td style="width:140px;">
    			<a style="color:black;">Driver Name :</a>
    		</td>
    		<td>
    			<input type="text" name="dname" required /><br/>
    		</td>
    	</tr>
    	 	<td>
    	 		<a style="color:black;">chassis number</a>
    	 	</td>
    	
    		<td>
    			<input type="text" name="cno"  required /><br/>
    		</td>
    	</tr>
    	
    </table>
   
    			<div style="text-align:center;">
    			<input style="background-color: SteelBlue;  border: none; color: white;  padding: 8px;text-align: center;font-size: 16px;  margin: 1px 1px;  opacity: 1;  transition: 0.3s;  border-radius: 25px;  width:120px;" type="submit" value="Submit" class="btn"/>
    			</div>
    </form>
    
    <br><br>
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
		<br><br><br><br><br><br>
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