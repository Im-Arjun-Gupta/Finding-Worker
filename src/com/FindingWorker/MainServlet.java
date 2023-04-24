// This Servlet is for getting data from html form and storing in database(signup table);
package com.FindingWorker;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Signup.html");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		//Connect To DataBase
		 try
		   {
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindingWorker","root","root");
		   Statement ps = con.createStatement();
		   String query="select * from signup where phone='"+phone+"'";
		ResultSet rs=ps.executeQuery(query);
		if(rs.next())
		{
			PrintWriter out=response.getWriter();
		
	
			   out.println("<script type=\"text/javascript\">");
			   out.println("location='Signup.html';");
			   out.println("alert('Phone number is already register');");   
			   out.println("</script>");
		 
			
		}	
		else
		{

			   String insertQuery = "insert into signup (name,phone,password)values('"+name+"','"+phone+"','"+password+"')";
			   Statement statement = con.createStatement();
			   statement.executeUpdate(insertQuery);
			   response.sendRedirect("Login.html");
		}
		
		   
		   }
		   catch(Exception e)
		   {
			   System.out.println(e);
		   }
		// doGet(request, response);
	}

}
