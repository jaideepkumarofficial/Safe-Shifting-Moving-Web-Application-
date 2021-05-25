<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("mobile")==null)
	{
		response.sendRedirect("Login.jsp");
	}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<%

Class.forName("com.mysql.cj.jdbc.Driver");


	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting","root","root");
	Statement stmt = null;

	stmt = con.createStatement();

		try
		{
			 String fname = (String)session.getAttribute("fname");
			 String lname = (String)session.getAttribute("lname");
			 String email = (String)session.getAttribute("email");
			 Long mno = (Long)session.getAttribute("mobile");
			 String s=Long.toString(mno);

			 String amno = (String)session.getAttribute("amobile");
			 String date = (String)session.getAttribute("date");
			 String fadd1 = (String)session.getAttribute("fadd1");
			 String fadd2 = (String)session.getAttribute("fadd2");
			 String fcity = (String)session.getAttribute("source");
			 String fstate = (String)session.getAttribute("fstate");
			 String fpincode = (String)session.getAttribute("fpincode");
			 String tadd1 = (String)session.getAttribute("tadd1");
			 String tadd2 = (String)session.getAttribute("tadd2");
			 String tcity = (String)session.getAttribute("dest");
			 String tstate = (String)session.getAttribute("tstate");
			 String tpincode = (String)session.getAttribute("tpincode");
			 String instruction = (String)session.getAttribute("ins");
			 String ttype = (String)session.getAttribute("ttype");
			 String td = (String)session.getAttribute("td");
			 String adv1 = (String)session.getAttribute("adv1");
			 String price = (String)session.getAttribute("price");
			
			Statement stt=con.createStatement();

			int bk_id;
			PreparedStatement ps=con.prepareStatement("select MAX(bk_id) from booking");
			ResultSet rs=ps.executeQuery();
			
			
			if(rs.next())
			{
				bk_id=rs.getInt(1);
				bk_id++;
				
				String bk=String.valueOf(bk_id);
				session.setAttribute("bk", bk);
			 PreparedStatement ps1=con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
	            ps1.setInt(1, bk_id);
	            ps1.setString(2, fname);
	            ps1.setString(3, lname);
	            ps1.setString(4, email);
	            ps1.setString(5, s);
	            ps1.setString(6, amno);
	            ps1.setString(7, date);
	            ps1.setString(8, fadd1);
	            ps1.setString(9, fadd2);
	            ps1.setString(10, fcity);
	            ps1.setString(11, fstate);
	            ps1.setString(12, fpincode);
	            ps1.setString(13, tadd1);
	            ps1.setString(14, tadd2);
	            ps1.setString(15, tcity);
	            ps1.setString(16, tstate);
	            ps1.setString(17, tpincode);
	            ps1.setString(18, instruction);
	            ps1.setString(19, ttype);
	            ps1.setString(20, td);
	            ps1.setString(21, price);
	            ps1.setString(22, adv1);
	            
	            int i=ps1.executeUpdate();  
	    		if(i>0)  
	    		out.print("You are successfully registered...");  
	    		      response.sendRedirect("Bill.jsp");
	    		          
	    		
			
		}}
		catch(Exception e){
			out.print(e);
		}
      %>
      
</body>
</html>