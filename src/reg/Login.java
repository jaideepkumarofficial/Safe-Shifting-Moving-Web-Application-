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
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
        try {
        	String connectionURL = "jdbc:mysql://localhost:3306/safeshifting";
            Connection connection = null;
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL, "root", "root");
            long mobile=Long.parseLong(request.getParameter("mobile")); 
            String mob=String.valueOf(mobile);	
            PreparedStatement ps = connection.prepareStatement("select mobile from user where mobile=?");
            ps.setLong(1,mobile);
            ResultSet rs = ps.executeQuery();
            if (!rs.next()) {
            	HttpSession session = request.getSession();
            	session.setAttribute("mobile", mob);
            	response.sendRedirect("Register.jsp");   
            }
            else{
            	HttpSession session = request.getSession();
            	session.setAttribute("mobile", mobile);
            	response.sendRedirect("Password.jsp");
            	
            
            }
            out.println();
        }
	 catch (Exception ex) {
        out.println("Error ->" + ex.getMessage());
    } finally {
        out.close();
    } 
		  
	}

	

}
