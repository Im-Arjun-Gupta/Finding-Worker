//Servlet for validating phone and password
package com.FindingWorker;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logininput")
public class LoginInput extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		
		if(LoginValidate.validate(phone,password)){  
			HttpSession session=request.getSession();  
	        session.setAttribute("phone",phone);
			response.sendRedirect("HomeAfterLogin.jsp");
	    }  
	    else{  
	    	   out.println("<script type=\"text/javascript\">");
			   out.println("location='Login.html';");
			   out.println("alert('Incorrect Phone or Password !');");   
			   out.println("</script>");
	    } 
	//	out.close();  
	}

}
