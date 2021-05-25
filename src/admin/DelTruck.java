package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DelTruck1")
public class DelTruck extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DelTruck() {
        super();
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
		          
		String tno=request.getParameter("tno"); 
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting","root","root");
			Statement st=con.createStatement();
			int i=st.executeUpdate("DELETE FROM truckdetail WHERE tno='"+tno+"'");
			  
			
			if(i!=0)
			out.println("Deleting row...");
			else if (i==0)
			{
			out.println("<br>Row has been deleted successfully.");
			}
			}
			catch(SQLException sx)
			{
			out.println(sx);
			}
			catch(ClassNotFoundException cx)
			{
			out.println(cx);
			} 
		
	}

}
