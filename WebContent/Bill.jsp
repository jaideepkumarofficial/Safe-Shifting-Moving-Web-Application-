<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet" type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong">

<title>Bill</title>
<style>

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

button {
	position:center;
  background-color: #4682B4;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 150px;
  margin-left:46%;
  border-radius:45px;
}

button:hover {
  opacity: 0.8;
}
#Safe {
  margin : auto;
  position : center;
  border-radius: 25px;
  border: 1px solid Steelblue;
  padding: 5px; 
  top : 10%;
  width: 160px;
  height: 30px;
  text-align : center;
  color : Steelblue;
  font-size: 20px;
  
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 7%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: Steelblue;
}
</style>
</head>
<body>
<%
	if(session.getAttribute("mobile")==null)
	{
		response.sendRedirect("Login.jsp");
	}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<form action="">
 <div id="mySidenav" class="sidenav">
  	<a href="Home.html" id="Home" style="font-size:15px;">Home</a>
  	<a href="Logout.jsp" id="About" style="font-size:15px;">Logout</a>
  	</div>
<div class="hero-text">
   <h1 id="Safe" style="line-height:1.4;">Safe-Shifting</h1>
  </div>
  <div style="margin-top:100px;">
  <label style="margin-left:3%;color:Steelblue;font-size:18px;">Booking Id - <%=session.getAttribute("bk")%></label>
   <hr style="margin-left:3%;margin-right:3%;">
   <table style="margin-left:3%;">
   	<tr>
   		<td style=" padding: 8px;"><img alt="" src="images/23.png" style="height:30px;width:20px;"></td>
   		<td style=" padding: 8px;"><label style="color:gray;font-size:17px; ">&nbsp&nbsp<%= session.getAttribute("fadd1")%>&nbsp&nbsp<%= session.getAttribute("fadd2")%>&nbsp&nbsp<%= session.getAttribute("source")%> &nbsp&nbsp<%= session.getAttribute("fstate")%>&nbsp&nbsp<%= session.getAttribute("fpincode")%>.</label></td>
   </tr>
   
   <tr>
   		<td  style=" padding: 8px;"><img alt="" src="images/24.png" style="height:30px;width:20px;"></td>
   		<td style=" padding: 8px;"><label style="color:gray; font-size:17px;">&nbsp&nbsp<%= session.getAttribute("tadd1")%>&nbsp&nbsp<%= session.getAttribute("tadd2")%>&nbsp&nbsp<%= session.getAttribute("dest")%> &nbsp&nbsp<%= session.getAttribute("tstate")%>&nbsp&nbsp<%= session.getAttribute("tpincode")%>.</label></td>
   </tr>
   </table>
   <hr style="margin-left:3%;margin-right:3%;">
   <table style="width:100%; margin-left:3%;">
   <tr>
   <td><label style="font-size:20px; color:SlateGrey;">Customer Name :&nbsp&nbsp<label style="color:steelblue; font-size:20px;"><%= session.getAttribute("fname")%>&nbsp&nbsp&nbsp<%= session.getAttribute("lname")%></label></label></td>
   </tr>
   
   <tr>
   <td><label style="font-size:20px; color:SlateGrey;">Mobile no :&nbsp&nbsp<label style="color:steelblue; font-size:20px;"><%= session.getAttribute("mobile")%>,&nbsp&nbsp&nbsp<%= session.getAttribute("amobile")%></label></label></td>
   
   </tr>
   
   <tr>
   <td><label style="font-size:20px; color:SlateGrey;">Email :&nbsp&nbsp<label style="color:steelblue; font-size:20px;"><%= session.getAttribute("email")%></label></label></td>   
   </tr>
	
	<tr><td><br><br></td>
	</tr>
	
	<tr>
	<td><label style="font-size:20px; color:SlateGrey;">Total Distance Allowed :&nbsp&nbsp<label style="color:steelblue; font-size:20px;"><%= session.getAttribute("td")%> Kms.</label></label></td>
	</tr>
	
	<tr><td><label style="font-size:20px; color:SlateGrey;">Truck Type :&nbsp&nbsp<label style="color:steelblue; font-size:20px;"><%= session.getAttribute("ttype")%></label></label></td>
	</tr>
	
	<tr><td><label style="font-size:20px; color:SlateGrey;">Date of Moving :&nbsp&nbsp<label style="color:steelblue; font-size:20px;"><%= session.getAttribute("date")%></label></label></td>
	</tr>
   </table>
   <br>
   <hr style="margin-right:3%;margin-left:3%;">
   <br>
   <table style="margin-left:70%;width:350px;">
   <tr><td><label style="font-size:18px; color:SlateGrey; ">Total Price :</label></td>
	<td style="text-align:right;"><label style="color:slateGrey; font-size:18px; text-align:right;"><%= session.getAttribute("price")%></label></td>
	</tr>
	
	<tr><td><label style="font-size:18px; color:SlateGrey; ">Advance Paid :</label></td>
	<td style="text-align:right;"><label style="color:slateGrey; font-size:18px; "><%= session.getAttribute("adv1")%></label></td>
	</tr>
	<%
	String a=(String)session.getAttribute("price");
	String b=(String)session.getAttribute("adv1");
	int p=Integer.parseInt(a);
	Float ad=Float.parseFloat(b);
	float du = p-ad;
	
	%>
	<tr><td><label style="font-size:18px; color:SlateGrey; ">Dues Amount :</label></td>
	<td style="text-align:right;"><label style="color:slateGrey; font-size:18px; "><%=du%></label></td>
	</tr>
   </table>
    <br>
   <hr style="margin-right:3%;margin-left:3%;">
   <br>
   <p style="font-size:20px; margin-left:3%; color:red;" >Note* : </p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">1.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">2.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">3.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">4.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">5.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">6.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">7.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">8.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">9.</p>
   <p style="font-size:15px; margin-left:9%; color:slategray;">10.</p>
   </div>
   <button type="submit" class="btn" onclick="window.print();" >Print</button>
</form>   
  </body>
</html>