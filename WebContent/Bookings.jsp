<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bookings</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
<script>
$( function() {
$( "#datepicker" ).datepicker({ changeMonth: true, changeYear: true });
$( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
} );
</script>
<script>
$( function() {
$( "#datepicker1" ).datepicker({ changeMonth: true, changeYear: true });
$( "#datepicker1" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
} );
</script>
<style>
.container1 {
  position: absolute;
  right: 36%;
  margin-top:50px;
 
  width: 450px;
  max-height:450px;
  padding: 16px;
  background-color: AliceBlue;
  border-radius:25px;
}
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
 input{
			letter-spacing: 1px;  word-spacing: 3px;text-align:center; color:gray; font-size: 15px;font-family: verdana;height:30px;border-radius:25px;border-width:thin;width:200px;background-color:MintCream;border: 1px solid lightgray;}
		
</style>
</head>
<body>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/safeshifting";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
	if(session.getAttribute("id")==null)
	{
		response.sendRedirect("AdminLogin.jsp");
	}
  	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    %>
<form action="Bookings.jsp" method="post">
<div>
	<ul>
  <li><a href="Logout1.jsp">Logout</a></li>
  <li><a  href="Home.html">Home</a></li>
	</ul>
</div>
<div class="container1">
<h3 style="letter-spacing: 1px;  word-spacing: 3px;font-family: verdana; color:gray;text-align:center;">Check Booking Records</h3>
<br>

    			<table>
    			<tr>
    			<td>&nbsp&nbsp&nbsp&nbspFrom</td>
    			<td>&nbsp&nbsp&nbsp&nbsp&nbspTo</td>
    			</tr>
    			<tr>
    			<td>
    			<input id="datepicker" type="text" name="fdate">
    			</td>
    			<td>
    			<input id="datepicker1" type="text" name="tdate">
    			</td></tr>
    			</table>
    			<button type="submit" class="btn" style="border-radius:25px;">View Record</button>
</div>
    			<%
    			Connection con = null;
    			PreparedStatement ps = null;
    			
    			try
    			{
    				
    			Class.forName(driverName);
    			con = DriverManager.getConnection(url,user,psw);
    			String fdate = request.getParameter("fdate");
   			 	String tdate = request.getParameter("tdate");
    			%>
    			<div style="margin-top:300px;">
				<h3 style="text-align:center;">Booking Records</h3>
				
				<div style="overflow-x:auto;">
				
				<table style="border-collapse: collapse;border-spacing: 0;width: 100%; border: 1px solid #ddd;">
				<tr>
				<th style="text-align: left;padding: 8px;">Booking ID
				</th>
				<th style="text-align: left;padding: 8px;">First Name
				</th>
				<th style="text-align: left;padding: 8px;">Last Name
				</th>
				<th style="text-align: left;padding: 8px;">Email
				</th>
				<th style="text-align: left;padding: 8px;">Mobile no.
				</th>
				<th style="text-align: left;padding: 8px;">Alternate Mobile no
				</th>
				<th style="text-align: left;padding: 8px;">Date
				</th>
				<th style="text-align: left;padding: 8px;">From AddLine1
				</th>
				<th style="text-align: left;padding: 8px;">From AddLine2
				</th>
				<th style="text-align: left;padding: 8px;">From City
				</th>
				<th style="text-align: left;padding: 8px;">From State
				</th>
				<th style="text-align: left;padding: 8px;">From pincode
				</th>
				<th style="text-align: left;padding: 8px;">To Address1
				</th>
				<th style="text-align: left;padding: 8px;">To Address2
				</th>
				<th style="text-align: left;padding: 8px;">To City
				</th>
				<th style="text-align: left;padding: 8px;">To State
				</th>
				<th style="text-align: left;padding: 8px;">To Pincode
				</th>
				<th style="text-align: left;padding: 8px;">Instruction
				</th>
				<th style="text-align: left;padding: 8px;">Truck Type
				</th>
				<th style="text-align: left;padding: 8px;">Total Distance
				</th>
				<th style="text-align: left;padding: 8px;">Total Price
				</th>
				<th style="text-align: left;padding: 8px;">Advance Payment
				</th>
				</tr>
				
				<%
    			String sql = "SELECT * FROM booking where date BETWEEN '"+fdate+"' and '"+tdate+"'";
    			ps = con.prepareStatement(sql);
    			ResultSet rs = ps.executeQuery(); 
    			
    			while(rs.next())
    			{
    				%>
    				<tbody>
    				<tr>
    				<td style="text-align: left;padding: 8px;"><%=rs.getInt("bk_id") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("fname") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("lname") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("email") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("mno") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("amno") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("date") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("fadd1") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("fadd2") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("fcity") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("fstate") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("fpincode") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("tadd1") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("tadd2") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("tcity") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("tstate") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("tpincode") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("instruction") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("ttype") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("td") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("price") %></td>
    				<td style="text-align: left;padding: 8px;"><%=rs.getString("adv1") %></td>
    				
    				</tr>
    				</tbody>
    				
    				
    				<%
    			}
    			}
    			catch(Exception e){
    				out.print(e);
    			}
    			%></table>
    			</div></div>

</body>
</html>