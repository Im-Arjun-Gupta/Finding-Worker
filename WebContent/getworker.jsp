<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="getworkercss.css" rel="stylesheet" />
  </head>
  <body>
  <%
    if(session.getAttribute("phone") != null)
    {
  %>
    <div class="s01">
      <form action="searchworker.jsp">
        <fieldset>
          <legend>Search Worker</legend>
        </fieldset>
        <div class="inner-form">
          <div class="input-field first-wrap">
            <input id="search" type="text" name="table_name" placeholder="What are you looking for?"  required>
          </div>
          <div class="input-field second-wrap">
            <input id="location" name="city" type="text" placeholder="location"  required>
          </div>
          <div class="input-field third-wrap">
            <input class="btn-search" type="submit" value="Search">
          </div>
        </div>
      </form>
    </div>
    <%
    }
    else
    {
    	response.sendRedirect("Login.html");
    }
    %>
  </body>
</html>
