package reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String mobile=request.getParameter("mobile");  
		String uname=request.getParameter("uname");  
		String password=request.getParameter("passw");  
		          
		try{  
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting","root","root");
		  
		PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?)");  
		  
		ps.setString(1,mobile);  
		ps.setString(2,uname);  
		ps.setString(3,password); 
		          
		int i=ps.executeUpdate();  
		if(i>0)  
		out.print("You are successfully registered...");  
		      response.sendRedirect("Login.jsp");
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
	}

}
