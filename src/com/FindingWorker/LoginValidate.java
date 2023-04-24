//Class which validate data from database
package com.FindingWorker;
import java.sql.*;
public class LoginValidate {
	
	public static boolean validate(String phone,String password){  
		boolean status=false;  
		try{  
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/FindingWorker","root","root");  
		      
		PreparedStatement ps = con.prepareStatement("select * from signup where phone=? and password=?");  
		ps.setString(1,phone);  
		ps.setString(2,password);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();         
		}
		catch(Exception e){
			  System.out.println(e);
		      }  
		return status;
		}

}
