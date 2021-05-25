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
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String fnamee = request.getParameter("fnamee");
		 String lname = request.getParameter("lname");
		 String email = request.getParameter("email");
		 String mno = request.getParameter("mobile");
		 String amno = request.getParameter("amobile");
		 String date = request.getParameter("date");
		 String fadd1 = request.getParameter("fadd1");
		 String fadd2 = request.getParameter("fadd2");
		 String fcity = request.getParameter("fcity");
		 String fstate = request.getParameter("fstate");
		 String fpincode = request.getParameter("fpincode");
		 String tadd1 = request.getParameter("tadd1");
		 String tadd2 = request.getParameter("tadd2");
		 String tcity = request.getParameter("tcity");
		 String tstate = request.getParameter("tstate");
		 String tpincode = request.getParameter("tpincode");
		 String instruction = request.getParameter("ins");
		 String ttype = request.getParameter("ttype");
		 String td = request.getParameter("td");
		 String adv = request.getParameter("adv");
		 String price = request.getParameter("price");

		 

	     PrintWriter out = response.getWriter();
	     try {
	        	String connectionURL = "jdbc:mysql://localhost:3306/safeshifting"; // students is my database name
	            Connection con = null;
	            Class.forName("com.mysql.jdbc.Driver");
	            con = DriverManager.getConnection(connectionURL, "root", "root");
	            int bk_id=0;
				PreparedStatement ps=con.prepareStatement("select max(bk_id) from booking");
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
					bk_id=rs.getInt(1);
					bk_id++;
				}  
	            PreparedStatement ps1=con.prepareStatement("insert into booking values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
	            ps1.setInt(1, bk_id);
	            ps1.setString(2, fnamee);
	            ps1.setString(3, lname);
	            ps1.setString(4, email);
	            ps1.setString(5, mno);
	            ps1.setString(6, amno);
	            ps1.setString(7, date);
	            ps1.setString(8, fadd1);
	            ps1.setString(9, fadd2);
	            ps1.setString(10, fcity);
	            ps1.setString(11, fstate);
	            ps1.setString(12, fpincode);
	            ps1.setString(13, tadd1);
	            ps1.setString(14, tadd2);
	            ps1.setString(15, tcity);
	            ps1.setString(16, tstate);
	            ps1.setString(17, tpincode);
	            ps1.setString(18, instruction);
	            ps1.setString(19, ttype);
	            ps1.setString(20, td);
	            ps1.setString(21, price);
	            ps1.setString(22, adv);
	            
	            int i=ps1.executeUpdate();  
	    		if(i>0)  
	    		out.print("You are successfully registered...");  
	    		      response.sendRedirect("Login.jsp");
	    		          
	    		}catch (Exception e2) {System.out.println(e2);}  
	    		          
	    		out.close();  
	            
	     }
	}

