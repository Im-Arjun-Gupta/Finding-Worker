<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Finding Worker
	</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<!--  <meta charset="utf-8">  -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />

	<title>Home</title>

	<link rel="stylesheet" href="css/demo.css">
	<link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
</head>
<body>
    <header>
    
    <%  
         if(session.getAttribute("phone") != null)
         {
    %>
		<div class="main">
			<ul>
				<li class="active"><a href="HomeAfterLogin.html">Home</a></li>
				<li><a href="aboutus.html">About us</a></li>
				<li><a href="contactus.html">Contact us</a></li>
				<li><a href="ourteam.html">Our Team</a></li>
				<li><a href="RegisterWorker.jsp">Register as worker</a></li>
				<li><a href="getworker.jsp">Get Worker</a></li>
				<li><a href="LogOut.jsp">Log out</a></li>

			</ul>
		</div>
		<div class="title">
			<h1>Finding Worker</h1>
		</div>
		<div class="button">
			<a href="#" class="btn">
				Welcome
			</a>
			
		</div>
	
	</header>

     		<footer class="footer-distributed" id="footer">

			<div class="footer-left">

				<h3>Finding<span>Worker</span></h3>

				<p class="footer-links">
					<a href="HomeAfterLogin.html">Home</a>
					·
					<a href="aboutus.html">About Us</a>
					·
					<a href="ourteam.html">Our Team</a>
					·
					<a href="contactus.html">Contact Us</a>
					·
					<a href="#">Review</a>
				</p>

				<p class="footer-company-name">Finding Worker &copy; 2019</p>
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>111 bhawarkuwa</span> Indore, India</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+91 9990000000</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">support@findingworker.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Finding Worker is a modern recruitment agency that is taking an innovative and revolutionary approach to recruitment.
				</p>

				<!--<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>-->

			</div>

		</footer>
   <%
         }
         else
         {
        	 response.sendRedirect("Login.html");
         }
   %>
</body>
</html>