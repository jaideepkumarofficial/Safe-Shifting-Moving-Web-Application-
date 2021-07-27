<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%

if(session.getAttribute("mobile")==null)
	{
		response.sendRedirect("Login.jsp");
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
<%
if(session.getAttribute("mobile")!=null)
{
	session.removeAttribute("mobile");
	request.getSession(false);
	session.setAttribute("mobile", null);
	session.invalidate();
	response.sendRedirect("Login.jsp");
}
%>
</body>
</html>