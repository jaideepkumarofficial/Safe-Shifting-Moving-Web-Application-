<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("mobile")==null)
{session.invalidate();
	response.sendRedirect("Login.jsp");
	
}

String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String amobile = request.getParameter("amobile");
String date = request.getParameter("date");
String fadd1 = request.getParameter("fadd1");
String fadd2 = request.getParameter("fadd2");

String fpincode = request.getParameter("fpincode");
String tadd1 = request.getParameter("tadd1");
String tadd2 = request.getParameter("tadd2");
String tstate = request.getParameter("tstate");
String tpincode = request.getParameter("tpincode");
String ins = request.getParameter("ins");

session.setAttribute("fname",fname);
session.setAttribute("lname",lname);
session.setAttribute("email",email);
session.setAttribute("amobile",amobile);
session.setAttribute("date",date);
session.setAttribute("fadd1",fadd1);
session.setAttribute("fadd2",fadd2);

session.setAttribute("fpincode",fpincode);
session.setAttribute("tadd1",tadd1);
session.setAttribute("tadd2",tadd2);
session.setAttribute("tstate",tstate);
session.setAttribute("tpincode",tpincode);
session.setAttribute("ins",ins);
response.sendRedirect("Payment.jsp");
%>
</body>
</html>