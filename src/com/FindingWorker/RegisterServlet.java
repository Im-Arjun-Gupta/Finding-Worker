package com.FindingWorker;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		int birth_day = Integer.parseInt(request.getParameter("birth_day"));
		String birth_month = request.getParameter("birth_month");
		String birth_year = request.getParameter("birth_year");
		String gender = request.getParameter("gender");
		String maritalstatus = request.getParameter("maritalstatus");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		String state = request.getParameter("state");
		String table_name = request.getParameter("table_name");
		
		try
		  {   PrintWriter out = response.getWriter();
			  Class.forName("com.mysql.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindingWorker","root","root");
			  String insertQuery = "insert into "+table_name+" (name,email,phone,birth_day,birth_month,birth_year"
			  		+ ",gender,maritalstatus,address,city,pincode,state) values('"+name+"','"+email+"'"
			  				+ ",'"+phone+"','"+birth_day+"','"+birth_month+"','"+birth_year+"','"+gender+"'"
			  						+ ",'"+maritalstatus+"','"+address+"','"+city+"','"+pincode+"','"+state+"')";
			  Statement statement = con.createStatement();
			  statement.executeUpdate(insertQuery);
			  response.sendRedirect("HomeAfterLogin.jsp");
			  out.print(insertQuery);
		  }
		catch(Exception e)
	      {
			 System.out.println(e);
		  }
	}

}
