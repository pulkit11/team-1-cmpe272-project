<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<jsp:useBean class="com.bean.signup" id="s"/>
   
    <jsp:setProperty property="*" name="s"/>


<% 


String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String  pass=request.getParameter("pass"); 


s.setFname(fname);
s.setLname(lname);
s.setEmail(email);
s.setPass(pass);

boolean flag=s.insert();
if(flag)
{
	response.sendRedirect("contactUs.html");
	}
else

{
	response.sendRedirect("error.html");
	
	}

%>
