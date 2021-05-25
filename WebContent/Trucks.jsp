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
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong">
<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet"
        type="text/css" />
      
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<title>Trucks Deatils</title>

<style>
.container1 {
  position: absolute;
  right: 36%;
  margin-top:50px;
 
  width: 350px;
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
<form action="Trucks.jsp" method="post">
<div>
	<ul>
  <li><a href="Logout1.jsp">Logout</a></li>
  <li><a  href="Home.html">Home</a></li>
	</ul>
</div>
<div class="container1">
<h3 style="letter-spacing: 1px;  word-spacing: 3px;font-family: verdana; color:gray;text-align:center;">Trucks availablity</h3>
<br>
<%
    			Connection con = null;
    			PreparedStatement ps = null;
    			try
    			{
    			Class.forName(driverName);
    			con = DriverManager.getConnection(url,user,psw);
    			String sql = "SELECT ttype FROM truck";
    			ps = con.prepareStatement(sql);
    			ResultSet rs = ps.executeQuery(); 
    			%>
    			<select name="ttype"  style="width: 100%;  padding: 10px;margin: 5px 0 22px 0;border: none;background: white;border-radius:15px;color:gray;" required/>
    <option style="padding:10px;margin:5px 0 22px 0;font-size:16px; text-align:center;" value="">Select Truck Type</option>
    <%
    			while(rs.next())
    			{
    			String ttype = rs.getString("ttype"); 
    			%>
    			<option style="padding:10px;margin:5px 0 22px 0;font-size:16px;text-align:center;" value="<%=ttype %>"><%=ttype %></option>
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
    			 <button type="submit" class="btn" style="border-radius:25px;">Check Truck</button>
</div>
</form>

<%
	
    PreparedStatement pst;
    ResultSet rs1;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting", "root", "root");
String ttype = request.getParameter("ttype");
%>

<div style="margin-top:300px;"><br><br>
<h4 style="text-align:center; word-spacing: 3px; padding: 13px 0px 13px 25px;color:gray;letter-spacing: 1px;font-family: verdana;">Truck Details</h4>
<%

out.print("");
out.print("<br>");
out.print("<center><Table border=0 text-align=center; bgcolor=lightgray cellpadding=2 border-spacing=15 cellspacing=2 width=1000 >");

out.print("<TR>");

out.print("<TD><center> " + "Truck Type" + "</center><TD>");
out.print("<TD><center>" + "Truck Number" + "</center><TD>");
out.print("<TD><center>" + "Driver Name" + "</center><TD>");
out.print("<TD><center>" + "Chassis Number" + "</center><TD>");
out.print("</TR>");
if (ttype == null || ttype.isEmpty()) 
{
	
  pst = con.prepareStatement("select * from truckdetail");
  rs1 = pst.executeQuery();
	
  while(rs1.next())
  {    
	  out.print("<TR>");
      out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("ttype") + "</center><TD>");
      out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("tno") + "</center><TD>");
      out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("dname") + "</center><TD>");
      out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("cno") + "</center><TD>");
      out.print("</TR>");
      
  }  
 }
else {
    pst = con.prepareStatement("select * from truckdetail where ttype =?");
    pst.setString(1, ttype);
    rs1 = pst.executeQuery();
    while(rs1.next())
    {   
    	out.print("<TR>");
        out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("ttype") + "</center><TD>");
        out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("tno") + "</center><TD>");
        out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("dname") + "</center><TD>");
        out.print("<TD bgcolor=Aliceblue><center>" + rs1.getString("cno") + "</center><TD>");
        out.print("</TR>");
        out.print("</Table></center>");
    }
   }
%>
</div>
</body>

</html>