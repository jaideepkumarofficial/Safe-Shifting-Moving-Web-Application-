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
<title>Delete Location</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
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
  	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/safeshifting";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
	if(session.getAttribute("id")==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
    %>
<form id="form" method="post" action="DelLoc.jsp" class="form-horizontal">
<div>
	<ul>
  <li><a style="text-decoration:none;" href="Logout1.jsp">Logout</a></li>
  <li><a style="text-decoration:none;" class="active" href="Home.html">Home</a></li>
</ul>
</div>

<center style="background-color:PowderBlue; margin-right:2%;margin-left:2%;border-radius:15px;">

 <table  style="  border-collapse:separate; border-spacing:0px 30px;">
<img src="images/42_1_MovingBoxes.jpg" alt="Paris" width="600" height="513" style="border-radius: 8px; float:right;">
<br>
<br>



<p style="color:steelblue;font-size:25px;">Delete location / Price :</p>
<tr>
<td style="width:140px;">
    			<a style="color:black; ">Source : </a>	
    	</td>
    		<td>
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
    			<select name="source" style="width: 200px;  padding: 10px;border: none;background: white;border-radius:15px;color:gray;">
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:20px;">Source</option>
    			<%
    			while(rs.next())
    			{
    			String source = rs.getString("source"); 
    			%>
    			<option value="<%=source %>"><%=source %></option>
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
    		<td style="width:140px;">
    			<a style="color:black;">Destination :</a>
    		</td>
    		<td>
    			<%
    			Connection con1 = null;
    			PreparedStatement ps1 = null;
    			try
    			{
    			Class.forName(driverName);
    			con1 = DriverManager.getConnection(url,user,psw);
    			String sql1 = "SELECT DISTINCT dest FROM location";
    			ps1 = con1.prepareStatement(sql1);
    			ResultSet rs1 = ps1.executeQuery(); 
    			%><br>
    			<select name="dest" style="width: 200px;  padding: 10px;border: none;background: white;border-radius:15px;color:gray;">
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:20px;">Destination</option>
    			<%
    			while(rs1.next())
    			{
    			String dest = rs1.getString("dest"); 
    			%>
    			<option value="<%=dest %>"><%=dest %></option>
    			<%
    			}
    			%>
    			</select>
    			</p>
    			<%
    			}
    			catch(SQLException sqe)
    			{ 
    			out.println(sqe);
    			}
    			%>
    		</td>
</tr>


 
</table>
<div style="text-align:center;">
    			
 
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
              
                        
    			<input style="background-color: SteelBlue;  border: none; color: white;  padding: 8px;text-align: center;font-size: 16px;  margin: 1px 1px;  opacity: 1;  transition: 0.3s;  border-radius: 25px;  width:120px;" type="submit" value="Delete" onclick="form.action='DelLoc';" class="btn"/>
    			
    			</div>
    			
<br><br><br><br><br>


</center>
</form>

<div class="container">
            <div class="form-group col-12 p-0">
             <%
            
                Connection con2;
                PreparedStatement pst2;
                ResultSet rs2;
                Class.forName("com.mysql.jdbc.Driver");
                con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting","root","root");
                String source = request.getParameter("source");
                String dest = request.getParameter("dest");
                out.print("<br><br><br>");
                
                 pst2 = con2.prepareStatement("select * from location where source=? and dest=?");
                 pst2.setString(1, source);
                 pst2.setString(2, dest);
                 rs2 = pst2.executeQuery();
                  if(rs2.next())
                  {   
                	  out.print("<center><h3>Location Details And Price</h3></center>");
                	  out.print("<br>");
                	  out.print("<center><Table border=0 bgcolor=lightgray cellpadding=2 border-spacing=15 cellspacing=2 width=1000 >");
                	  
                	  out.print("<TR>");
                	  out.print("<TD>" + "Truck Type" + "<TD>");
                      out.print("<TD>" + "Source" + "<TD>");
                      out.print("<TD>" + "Destination" + "<TD>");
                      out.print("<TD>" + "Price (Rs)" + "<TD>");
                      out.print("<TD>" + "Total Distance " + "<TD>");
                      out.print("</TR></center>");
                	  out.print("<TR>");
                	  out.print("<TD>" + rs2.getString("ttype") + "<TD>");
                      out.print("<TD>" + rs2.getString("source") + "<TD>");
                      out.print("<TD>" + rs2.getString("dest") + "<TD>");
                      out.print("<TD>" + rs2.getString("price") + "<TD>");
                      out.print("<TD>" + rs2.getString("td") + "<TD>");
                      
                      out.print("</TR>");
                      
                       out.print("</Table></center>");
                  }
                  else
                  {
                	  
                  }
           
             
               %>  
               </div>
               </div>            
    <br><br>

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
    
    
  </body>
</html>