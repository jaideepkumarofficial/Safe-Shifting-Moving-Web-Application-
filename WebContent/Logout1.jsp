<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%


if(session.getAttribute("id")==null)
{
	response.sendRedirect("AdminLogin.jsp");
}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%if(session.getAttribute("id")!=null)
{
	session.removeAttribute("id");
	request.getSession(false);
	session.setAttribute("id", null);
	session.invalidate();
	response.sendRedirect("AdminLogin.jsp");
}
%>
</body>
</html>