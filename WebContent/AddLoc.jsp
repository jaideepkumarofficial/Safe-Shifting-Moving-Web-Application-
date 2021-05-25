<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<meta charset="ISO-8859-1">
<title>Add Location</title>
<link rel="stylesheet" href="nicepage1.css" media="screen">
<link rel="stylesheet" href="Home1.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery1.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage1.js" defer=""></script>
<style>
.pointer {cursor: pointer;}
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

input[type=text], input[type=password], input[type=number] {
  width: 100%;
  padding: 10px;
  border: none;
  background: white;
  border-radius:15px;
}

input[type=text]:focus, input[type=password]:focus, input[type=number]:focus {
  background-color: #ddd;
  outline: none;
}

li a {
  display: block;
  color: gray;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
</style>
</head>
<body>
<%
	if(session.getAttribute("id")==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
    %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/safeshifting";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<form method="post"action="http://localhost:8080/SafeShifting/AddLoc">
<div>
	<ul>
  <li><a href="#news">Logout</a></li>
  <li><a class="active" href="#home">Home</a></li>
</ul>
</div>

<center style="background-color:PowderBlue; margin-right:2%;margin-left:2%;border-radius:15px;">
 <table  style="  border-collapse:separate; border-spacing:0px 30px;">
<img src="images/42_1_MovingBoxes.jpg" alt="Paris" width="600" height="560" style="border-radius: 8px; float:right;">
<br>

<p style="color:steelblue;font-size:25px;">Adding location / Price :</p>
<tr>
<td style="width:140px;">
    			<a style="color:black; ">Source : </a>	
    		</td>
    		<td>
    			<input type="text" name="source" required /><br/>
    		</td>
</tr>
<tr>
    		<td style="width:140px;">
    			<a style="color:black;">Destination :</a>
    		</td>
    		<td>
    			<input type="text" name="dest" required /><br/>
    		</td>
</tr>
<tr>
    		<td style="width:140px;">
    			<a style="color:black; ">Truck Type </a>	
    		</td>
    		<td>
    			<%
    			Connection con = null;
    			PreparedStatement ps = null;
    			try
    			{
    			Class.forName(driverName);
    			con = DriverManager.getConnection(url,user,psw);
    			String sql = "SELECT DISTINCT ttype FROM truck";
    			ps = con.prepareStatement(sql);
    			ResultSet rs = ps.executeQuery(); 
    			%>
    			<select name="ttype" style="width: 100%;  padding: 10px;border: none;background: white;border-radius:15px;color:gray;">>
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:20px;">Select Truck</option>
    			<%
    			while(rs.next())
    			{
    			String ttype = rs.getString("ttype"); 
    			%>
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:15px;color:gray;" value="<%=ttype %>"><%=ttype %></option>
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
    		</td>
</tr>

<tr>
    		<td style="width:160px;">
    			<a style="color:black; ">Total Distance : </a>	
    		</td>
    		<td>
    			<input type="number" name="td" required /><br/>
    		</td>
</tr>

<tr>
    		<td style="width:160px;">
    			<a style="color:black; ">Total Price : </a>	
    		</td>
    		<td>
    			<input type="number" name="price" required /><br/>
    		</td>
</tr>
 
</table>
<div style="text-align:center;">
    			<input class="pointer" style="background-color: SteelBlue;  border: none; color: white;  padding: 8px;text-align: center;font-size: 16px;  margin: 1px 1px;  opacity: 1;  transition: 0.3s;  border-radius: 25px;  width:120px;" type="submit" value="Submit" class="btn"/>
    			</div>
<br><br><br>
</center>
<br><br><br>
<section>
    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.6465237142484!2d77.64067241438615!3d13.058157290799176!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae17578c79da7d%3A0xe96dcd8e2b982f8e!2sKristu%20Jayanti%20College%2C%20Autonomous!5e0!3m2!1sen!2sin!4v1619114654037!5m2!1sen!2sin"  width="1293" height="400" style="border:0; margin-left:2%; border-radius:15px;" allowfullscreen="" loading="lazy"></iframe>
    </section>
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