<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Payment Checkout Form</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
	<link rel="stylesheet" href="styles1.css">
	<link rel="stylesheet" href="styles2.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">

</head>
<body>
	<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/safeshifting";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
	if(session.getAttribute("mobile")==null)
	{
		response.sendRedirect("Login.jsp");
	}
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<form method="post" action="Pay.jsp">
<div class="wrapper">
  <div class="payment">
    <div class="payment-logo">
      <p>p</p>
    </div>
    
    
    <h2>Payment Gateway</h2>
    <div class="form">
      <div class="card space icon-relative">
        <label class="label">Card holder:</label>
        <input  type="text" class="input" pattern="[a-zA-Z0-9\s]+" placeholder="Card holder Name" required>
        <i class="fas fa-user"></i>
      </div>
      <div class="card space icon-relative">
        <label class="label">Card number:</label>
        <input type="text" class="input" id="card" data-mask="0000 0000 0000 0000" placeholder="Card Number" required>
        <div id="logo"></div>
      </div>
      <div class="card-grp space">
        <div class="card-item icon-relative">
          <label class="label">Expiry date:</label>
          <input type="text"  title="Enter a date in this format MM/YY" name="expiry-data" class="input" data-mask="00 / 00"  placeholder="00 / 00" required>
          <i class="far fa-calendar-alt"></i>
        </div>
        <div class="card-item icon-relative">
          <label class="label">CVC:</label>
          <input type="password" class="input" data-mask="000" placeholder="000" required>
          <i class="fas fa-lock"></i>
        </div>
      </div>
        
      <label style="color:gray;margin-left:27%;">Total Amt.&nbsp-&nbsp<%= session.getAttribute("adv1")%></label>
      <button style="width: 100%; border: 0px;" class="btn" value="Submit" type="submit" >
        Pay
        </button> 
        
    </div>
  </div>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
	<script src="card-validator.js"></script>
	<script src="https://www.validcreditcardnumber.com/"></script>
	<script src="https://code.jquery.com/"></script>
	
	<script src="https://www.cssscript.com/credit-card-validator-vanilla-javascript/"></script>
</form>
</body>
</html>