<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong">
<title>Check Shifting Price</title>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/1.jpg");
	
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  margin:0;
  
}

/* Add styles to the form container */
.container1 {
  position: absolute;
  right: 0;
  margin: 20px;
  margin-top:190px;
  margin-right: 128px;
  width: 450px;
  max-height:450px;
  padding: 16px;
  background-color: AliceBlue;
  border-radius:25px;
}
.container {
  position: absolute;
  left: 0;
 margin-right:3px;
  margin-top:670px;
  margin-left:10%;
  width:100%;
  height:250px;
  padding: 16px;
  
  
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 10px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: steelblue;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius:25px;
}

.btn:hover {
  opacity: 1;
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
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/safeshifting";%>
<%!String user = "root";%>
<%!String psw = "root";%>

<div class="bg-img">
	<div class="hero-text">
   <h1 id="Safe" style="line-height:0.2;">Safe-Shifting</h1>
  </div>
	<div id="mySidenav" class="sidenav">
  	<a href="Home.html" id="Home" style="font-size:15px;">Home</a>
  	<a href="Logout.jsp" id="About" style="font-size:15px;">Logout</a>
  	</div>
  <form>
  <div class="container1">
  <br>
    <h3 align="center" style="color:gray;">Checking Price</h3>
<br>
   <%
    			Connection con = null;
    			PreparedStatement ps = null;
    			try
    			{
    			Class.forName(driverName);
    			con = DriverManager.getConnection(url,user,psw);
    			String sql = "SELECT DISTINCT source FROM location";
    			ps = con.prepareStatement(sql);
    			ResultSet rs = ps.executeQuery(); 
    			%>
  <select name="source"  style="width: 100%;  padding: 10px;margin: 5px 0 22px 0;border: none;background: white;border-radius:15px;color:gray;" required/>
    <option style="padding:10px;margin:5px 0 22px 0;font-size:16px;" value="">Select Source</option>
    <%
    			while(rs.next())
    			{
    			String source = rs.getString("source"); 
    			%>
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:16px;" value="<%=source %>"><%=source %></option>
    			<%
    			}
    			%>
    			
    </select>
	<%
    			}
    			catch(SQLException sqe)
    			{ 
    			out.println(sqe);
    			}
    			%>
     
      <%
    			Connection con1 = null;
    			PreparedStatement ps1 = null;
    			try
    			{
    			Class.forName(driverName);
    			con1 = DriverManager.getConnection(url,user,psw);
    			String sql1 = "SELECT DISTINCT dest FROM location";
    			ps1 = con.prepareStatement(sql1);
    			ResultSet rs1 = ps1.executeQuery(); 
    			%>
  <select name="dest"  style="width: 100%;  padding: 10px;margin: 5px 0 22px 0;border: none;background: white;border-radius:15px;color:gray;" required/>
    <option style="padding:10px;margin:5px 0 22px 0;font-size:16px;" value="">Select Destination</option>
    <%
    			while(rs1.next())
    			{
    			String dest = rs1.getString("dest"); 
    			%>
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:16px;" value="<%=dest %>"><%=dest %></option>
    			<%
    			}
    			%>
    			
    </select>
	<%
    			}
    			catch(SQLException sqe)
    			{ 
    			out.println(sqe);
    			}
    			%>
	
	 <%
    			Connection con2 = null;
    			PreparedStatement ps2 = null;
    			try
    			{
    			Class.forName(driverName);
    			con2 = DriverManager.getConnection(url,user,psw);
    			String sql2 = "SELECT DISTINCT ttype FROM truck";
    			ps2 = con2.prepareStatement(sql2);
    			ResultSet rs2 = ps2.executeQuery(); 
    			%>
     <select name="ttype"  style="width: 100%;  padding: 10px;  margin: 5px 0 22px 0;  border: none;  background: white;  border-radius:15px;  color:gray;" required/>
    
      <option style="padding:10px;margin:5px 0 22px 0;font-size:16px;">Truck Type</option>
    <%
    			while(rs2.next())
    			{
    			String ttype = rs2.getString("ttype"); 
    			%>
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:16px;" value="<%=ttype %>"><%=ttype %></option>
    			<%
    			}
    			%>
    			
    </select>
	<%
    			}
    			catch(SQLException sqe)
    			{ 
    			out.println(sqe);
    			}
    			%>
    <button type="submit" class="btn">Check Price</button>
    </div>
   </form>
  <form action="Request.jsp" method="get">
  <div class="container">
  <br>
    <p align="center" style="text-decoration: underline;color:gray; font-size:20px;letter-spacing:1px;line-height:0.01;">Details</p>

<div>
<center>
<table style="width:80%;" >
<%
try {
	Connection con3;
    PreparedStatement ps3;
    ResultSet rs3;
Class.forName("com.mysql.jdbc.Driver");
con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting", "root", "root");
String source = request.getParameter("source");
String dest = request.getParameter("dest");
String ttype = request.getParameter("ttype");


session.setAttribute("source",source);
session.setAttribute("dest",dest);
session.setAttribute("ttype",ttype);


ps3 = con3.prepareStatement("select * from location where source=? and dest=? and ttype=?");
ps3.setString(1, source);
ps3.setString(2, dest);
ps3.setString(3, ttype);
rs3 = ps3.executeQuery();
if(rs3.next()){
%>
<tr>
<td>
	<img alt="" src="images/23.png" style="height:30px;width:20px">
</td>
<td>
	<input type="text" name="source" value="<%=rs3.getString("source")%>" style="background-color:white;color:gray;height:1px;" readonly>
</td>
<td>
	<a>Truck Type :</a>
</td>
<td>
	<input type="text" name="ttype" value="<%=rs3.getString("ttype")%>" style="background-color:white;color:gray;height:1px;" readonly>
</td>
<td>
	<a>Kms :</a>
</td>
<td>
	<input type="text" name="td" value="<%=rs3.getString("td")%>" style="background-color:white;color:gray;height:1px;width:50px" readonly>
</td>
</tr>
<tr>
<td>
	<img alt="" src="images/24.png" style="height:30px;width:20px">
</td>
<td>
	<input type="text" name="source" value="<%=rs3.getString("dest")%>" style="background-color:white;color:gray;height:1px;" readonly>
</td>
<td>
	<a>Price :</a>
</td>
<td>
	<input type="text" name="price" value="<%=rs3.getString("price")%>" style="background-color:white;color:gray;height:1px;" readonly>
</td>

</tr>
<%


session.setAttribute("td",rs3.getString("td"));
session.setAttribute("price",rs3.getString("price"));
%>

</table>
<br>
<a>Note : <a style="color:Red;letter-spacing:1px;">we have given sufficient km if km exceed then it will be charged Rs30/per km.</a></a><br><br>
 <button style="width:100px;height:40px;line-height:0.8;" type="submit" class="btn" >Proceed</button>

<%

}
else
{
	%>
	<label style="color:gray;"><%= session.getAttribute("ttype")%> is not available for that location.</label>
	<%
}
}
catch(Exception e){
	out.print(e);
}
%>
</form>
</center>
 
 </div>
  </div>
  </div>
  <div style="background-color:AliceBlue;margin-top:280px;"><br><br><br>
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
		
		
		
</body>
</html>