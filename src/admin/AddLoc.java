package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddLoc")
public class AddLoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddLoc() {
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
		
		String ttype=request.getParameter("ttype");         
		String source=request.getParameter("source");  
		String dest=request.getParameter("dest");  
		String price=request.getParameter("price");
		String td=request.getParameter("td");
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting","root","root");
			Statement st=con.createStatement();
			int id=0;
			PreparedStatement ps=con.prepareStatement("select max(id) from location");
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				id=rs.getInt(1);
				id++;
			}  
			PreparedStatement ps1=con.prepareStatement("insert into location values(?,?,?,?,?,?)");  
			ps1.setInt(1, id);
			ps1.setString(2,ttype);
			ps1.setString(3,source);  
			ps1.setString(4,dest);  
			ps1.setString(5,price); 
			ps1.setString(6,td); 

			
			int i=ps1.executeUpdate();  
			if(i>0)  
			out.print("Submitted successfully...");  
			      response.sendRedirect("AdminHome.jsp");
			          
			}catch (Exception e2) {System.out.println(e2);}  
			          
			out.close();  
	}

}
