<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%
String univ=request.getParameter("univ");

String dept=request.getParameter("dept");

out.println(univ);
out.println(dept);

if(univ.equals("San Jose State University") && dept.equals("Software Engg"))
{
	response.sendRedirect("sjsusedept.html");
	}
else if(univ.equals("San Jose State University") && dept.equals("Computer Science"))
{
	response.sendRedirect("sjsucsdept.html");
	}

else
{
	response.sendRedirect("error-pages.html");
	}

%>
