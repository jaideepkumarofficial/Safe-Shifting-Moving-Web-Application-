package admin;

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

@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Add() {
        
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String ttype=request.getParameter("ttype");  
		String tno=request.getParameter("tno");  
		String dname=request.getParameter("dname");  
		String cno=request.getParameter("cno");
		          
		try{  
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/safeshifting","root","root");
		  
		PreparedStatement ps=con.prepareStatement("insert into truckdetail values(?,?,?,?)");  
		  
		ps.setString(1,ttype);  
		ps.setString(2,tno);  
		ps.setString(3,dname); 
		ps.setString(4,cno);          
		int i=ps.executeUpdate();  
		if(i>0)  
		out.print("You are successfully registered...");  
		      response.sendRedirect("AdminHome.jsp");
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		
	}

}
