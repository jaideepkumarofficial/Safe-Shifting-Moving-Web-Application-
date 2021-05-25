<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Details</title>
 <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet"
        type="text/css" />
      
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
   <script>
   $(document).ready(function(){
	   
       var dtToday = new Date();
       
       var month = dtToday.getMonth() + 1;
       var day = dtToday.getDate();
       var year = dtToday.getFullYear();
       if(month < 10)
           month = '0' + month.toString();
       if(day < 10)
           day = '0' + day.toString();
       
       var maxDate = year + '-' + month + '-' + day;

       // or instead:
       // var maxDate = dtToday.toISOString().substr(0, 10);

     
       $('#dateControl').attr('min', maxDate);
   });

   </script>
    <style>
    
    table, th, td {
  
  	border-collapse: collapse;
  	
		}
    table.center{
	 margin-left: auto;
 	 margin-right: auto;
		}
		input{
			letter-spacing: 1px;  word-spacing: 3px;text-align:center; color:gray; font-size: 15px;font-family: verdana;height:30px;border-radius:25px;border-width:thin;width:200px;background-color:MintCream;border: 1px solid lightgray;}
		.bk{
		background-image: url("images//25.jpg");
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		height:100%;
  		 background-size: cover;
  		 
		}
	.btn {
  background-color: SteelBlue;
  border: none;
  color: white;
  padding: 15px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 1;
  transition: 0.3s;
  border-radius: 25px;
  width:150px;
}

.btn:hover {opacity: 0.6}
#mySidenav a {
  position: fixed;
  right: -100px;
  transition: 0.3s;
  padding: 15px;
  width: 100px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
  text-align:center;
  border-radius: 25px;
  width : 150px;
}

#mySidenav a:hover {
  right: 0;
}

#Home {
  top: 140px;
  background-color: #2F4F4F;
}

#About {
  top: 200px;
  background-color: #2196F3;
}
.container1 {
  position: fixed;
  right: 0;
  margin: 20px;
  margin-top:60px;
  margin-right: 128px;
  width: 350px;
  max-height:450px;
  padding: 16px;
  background-color: AliceBlue;
  border-radius:25px;
  opacity:0.9;
  
}
    </style>
</head>

<body class="bk">
<%
	if(session.getAttribute("mobile")==null)
	{
		response.sendRedirect("Login.jsp");
	}

%>
<div  style="margin-top:80px;">
 <form  method="get" action="New.jsp">
    <div id="mySidenav" class="sidenav">
  	<a href="Home.html" id="Home" style="font-size:15px;">Home</a>
  	<a href="Logout.jsp" id="About" style="font-size:15px;">Logout</a>
  	</div>
    
    <p style="font-size:24px; position:center;line-height:0.02; margin-left:45%; color:#4682B4;">Moving Details</p>
   
    <div class="container1">
  
    <h3 align="center" style="color:gray;">Booking Request Detail</h3>
<br>
<table style="width:100%">
<tr>
<td><img alt="" src="images/23.png" style="height:30px;width:20px">
</td>
<td><input type="text" name="source" value="<%=session.getAttribute("source")%>" style="border: 1px solid AliceBlue;background-color:AliceBlue;color:gray;height:30px;width:150px;" readonly>
</td>
</tr>

<tr>
<td><img alt="" src="images/24.png" style="height:30px;width:20px">
</td>
<td><input type="text" name="dest" value="<%=session.getAttribute("dest")%>" style="border: 1px solid AliceBlue;background-color:AliceBlue;color:gray;height:30px;width:150px;" readonly>
</td>
</tr>

<tr>
<td><a>Truck Type :</a>
</td>
<td><input type="text" name="ttype" value="<%=session.getAttribute("ttype")%>" style="border: 1px solid AliceBlue;background-color:AliceBlue;color:gray;height:30px;width:200px;" readonly>
</td>
</tr>
</table>
<table>

<tr>
<td><a>Kms :</a>
</td>
<td><input type="text" name="td" value="<%=session.getAttribute("td")%>" style="border: 1px solid AliceBlue;background-color:AliceBlue;color:gray;height:30px;width:100px;" readonly>

</td>
<td><a>Total Price :</a>
</td>
<td><input type="text" name="price" value="<%=session.getAttribute("price")%>" style="border: 1px solid AliceBlue;background-color:AliceBlue;color:gray;height:30px;width:100px;" readonly>
</td>
</tr>
</table>
<br>
<table style="margin-left:18%;">
<tr>
<%

String a=(String)session.getAttribute("price");
float adv=555.5f;
if(a==null)
	
{
	 out.println("alert('You have already logged out');");
	
}else
{
int ad=Integer.parseInt(a);
 adv=ad*0.4f;
//F is the suffix for float  
String adv1=String.valueOf(adv);
session.setAttribute("adv1", adv1);
}
%>
<td>Advance Payment :
</td>
<td><input type="text" name="adv" value="<%=adv%>" style="border: 1px solid AliceBlue;background-color:AliceBlue;color:gray;height:30px;width:100px;" readonly>
<%



%>
</td>
</tr>
</table><br>
<a>Note:&nbsp&nbsp&nbsp&nbsp<label style="color:red;">Advance Payment is the 40% of Total Price</label></a>
<button style="width:100%;" type="submit" value="Submit" class="btn" >submit</button>
</div>

    <table class="center" style=" margin-left:6%; border-collapse:separate; border-spacing:0px 20px;">
    	
    	<tr>
    		<td>
    			<a style="font-size:18px;line-height:0.2;">&nbsp&nbsp&nbspName</a><br><br>
    			<input type="text" name="fname" required/><br/>
    			<p style="font-size:11.004px;  margin:3px 0px; color:gray;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFirst Name</p>
    			<%String fname = request.getParameter("fname");
    	    	session.setAttribute("fname",fname); %>
    		</td>
    		<td>
    			 <br><br>
    			  <input type="text" name="lname" required/><br/>
    			  <p style="font-size:11.004px; text-align:center; margin:3px 0px; color:gray;">Last Name</p>
    		</td>
    	</tr>
    	<tr>
    		<td>
    			<a>&nbsp&nbsp&nbspE-mail</a><br>
    			 <input type="email" name="email"   required/><br/>
    		</td>
    	</tr>
    	<tr>
    		<td>
    			<a>&nbsp&nbsp&nbspMobile No.</a><br>
    			<input type="text" value="<%=session.getAttribute("mobile")%>" name="mobile" pattern="[789][0-9]{9}" required/><br/>
    		</td>
    		<td>
    			<a>&nbsp&nbsp&nbspAlternate Mobile No.</a><br>
    			<input type="text" value="" name="amobile" pattern="[789][0-9]{9}" /><br/>
    		</td>
    	</tr>
    	<tr>
    		<td>
    			<a>&nbsp&nbsp&nbspMoving Date </a><br>
    			   <input id="dateControl" type="date" name="date">
    		</td>
    	</tr>
    	<tr>
    		<td>
    			<a>&nbsp&nbsp&nbspMoving From :</a><br><br>
    			<input type="text" name="fadd1" required style="width:300px;"/><br/>
    			<p style="font-size:11.004px; text-align:center; margin:3px 0px; color:gray;">Street Address 1</p><br>
    			<input type="text" name="fadd2"  style="width:300px;"/><br/>
    			<p style="font-size:11.004px; text-align:center; margin:3px 0px; color:gray;">Street Address 2</p>
    			
    		</td>
    	</tr>
    	<tr>              
    			<td>
    				<input type="text" name="fcity" value="<%=session.getAttribute("source")%>" required style="width:150px;text-alignment:center;" readonly/>
    				<input type="text" name="fstate" required style="width:150px;" /><br>
    				<p style="font-size:11.004px;  margin:3px 0px; color:gray;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCity&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspState</p><br>
    				<input type="text" name="fpincode" pattern="^[1-9][0-9]{5}$"  required style="width:120px;"/><br/>
    				<p style="font-size:11.004px;  margin:3px 0px; color:gray;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPincode/zipcode</p>
    			</td>
    	</tr>
    	
    	<tr>
    		<td>
    			<a>&nbsp&nbsp&nbspMoving To :</a><br><br>
    			<input type="text" name="tadd1" required style="width:300px;"/><br/>
    			<p style="font-size:11.004px; text-align:center; margin:3px 0px; color:gray; ">Street Address 1</p><br>
    			<input type="text" name="tadd2"  style="width:300px;"/><br/>
    			<p style="font-size:11.004px; text-align:center; margin:3px 0px; color:gray;">Street Address 2</p>
    			
    		</td>
    	</tr>
    	<tr>              
    			<td>
    				<input type="text" name="tcity" value="<%=session.getAttribute("dest")%>" required readonly style="width:150px;text-alignment:center;" />
    				<input type="text" name="tstate" required style="width:150px;" /><br>
    				<p style="font-size:11.004px;  margin:3px 0px; color:gray;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCity&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspState</p><br>
    				<input type="text" name="tpincode" pattern="^[1-9][0-9]{5}$"  required style="width:120px;"/><br/>
    				<p style="font-size:11.004px;  margin:3px 0px; color:gray;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPincode/zipcode</p>
    			</td>
    	</tr>	
    	<tr>
    		<td>
    			<a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspInstructions.</a><br><br>
    			<input type="text" name="ins"  style="width:300px;height:120px;"/><br/>
    			<p style="font-size:11.004px; text-align:center; margin:3px 0px; color:gray; ">(Optional)</p>
    		</td>		
    	</tr>
    	
  
    </table>
   
    
    </form>  
    </div>
    </body>
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

</html>
