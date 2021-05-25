package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
	     String password = request.getParameter("password");
	     PrintWriter out = response.getWriter();
	     try {
	        	String connectionURL = "jdbc:mysql://localhost:3306/safeshifting"; // students is my database name
	            Connection connection = null;
	            Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection(connectionURL, "root", "root");
	            PreparedStatement ps = connection.prepareStatement("select id,password from admin where id=? and password=?");
	           
	            ps.setString(1, id);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	            	HttpSession session = request.getSession();
	            	session.setAttribute("id", id);
	                response.sendRedirect("AdminHome.jsp");
	                return;
	            }
	            out.print("Worng Id or Password");
	            return;
	        } 
	     	catch (Exception e) {
	            e.printStackTrace();
	     	}
	            
	     
	}

}
