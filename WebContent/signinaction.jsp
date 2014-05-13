<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean class="com.bean.signin" id="s"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%

String email=request.getParameter("email");
String pass=request.getParameter("pass");

s.setEmail(email);
s.setPass(pass);

boolean flag=s.chkuser();

if(flag)
{
	response.sendRedirect("contactUs.html");
	}
else{
	response.sendRedirect("Signin.html");
}

%>
