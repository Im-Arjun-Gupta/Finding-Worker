<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Worker</title>
 <link rel="stylesheet" type="text/css" href="searchworkercss.css">
</head>
<body background="theme.jpg">
    <%
        String table_name = request.getParameter("table_name");
        String city = request.getParameter("city");
        try
        {
        	PrintWriter wr = response.getWriter();
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindingWorker","root","root");
        	Statement statement = con.createStatement();
   		    ResultSet rs = statement.executeQuery("select * from "+table_name+" where city='"+city+"'");
   		    
    		if(rs != null)
    	     {
     %>
          <center>
            <h1>Worker Details</h1>
    	    <table  class="table table-bordered " border="5px">
    	    
    	      <tr>
    	         <th>Name</th>
    	         <th>Phone</th>
    	         <th>Address</th>
    	         <th>City</th>
    	         <th>Pincode</th>
    	         <th>State</th>
    	         <th>Email</th>
    	         <th>Gender</th>
    	         <th>Marital Status</th>     
    	         <th>Action</th>
    	      </tr>
    	      
    	      <%
    	      while(rs.next())
    	      {
    	    	  
    	    	  %>
    	    	  <tr>
    	    	     <td><%= rs.getString("name") %></td>
    	    	     <td><%= rs.getString("phone") %></td>
    	    	     <td><%= rs.getString("address") %></td>
    	    	     <td><%= rs.getString("city") %></td>
    	    	     <td><%= rs.getString("pincode") %></td>
    	    	     <td><%= rs.getString("state") %></td>
    	    	     <td><%= rs.getString("email") %></td>
    	    	     <td><%= rs.getString("gender") %></td>
    	    	     <td><%= rs.getString("maritalstatus") %></td>
    	    	     <td><a href="Book.html">Book</a>
    	    	  </tr>
    	    	  <% 
    	      }
            %>
    	    </table>
    	    </center>
    	    <%	 
    	     }
    		else
    		{
               %>   			<h1>Result Not Found.........!</h1>
               <%   		
    		}
    	     }
    	   catch(Exception e)
    	   {
    		   System.out.println(e);
    	   }
    	   %>
</body>
</html>