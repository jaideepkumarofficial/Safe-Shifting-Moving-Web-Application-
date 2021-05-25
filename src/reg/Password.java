package reg;

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



/**
 * Servlet implementation class Password
 */
@WebServlet("/Password")
public class Password extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 String mobile = request.getParameter("mobile");
		     String password = request.getParameter("password");
		     PrintWriter out = response.getWriter();
		     try {
		        	String connectionURL = "jdbc:mysql://localhost:3306/safeshifting"; // students is my database name
		            Connection connection = null;
		            Class.forName("com.mysql.jdbc.Driver");
		            connection = DriverManager.getConnection(connectionURL, "root", "root");
		            PreparedStatement ps = connection.prepareStatement("select mobile,password from user where mobile=? and password=?");
		           
		            ps.setString(1, mobile);
		            ps.setString(2, password);
		            ResultSet rs = ps.executeQuery();
		            while (rs.next()) {
		                response.sendRedirect("Calculates.jsp");
		                return;
		            }
		            out.print("Wrong Id or Password");
		            return;
		        } 
		     	catch (Exception e) {
		            e.printStackTrace();
		     	}
		            
		     }
}


