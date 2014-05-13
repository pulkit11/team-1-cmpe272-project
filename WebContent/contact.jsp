<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean class="com.bean.contact" id="c"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<% 

String cname=request.getParameter("cname");
String cemail=request.getParameter("cemail");
String csubject=request.getParameter("csubject");
String message=request.getParameter("message");

c.setCemail(cemail);
c.setCmessage(message);
c.setCname(cname);
c.setCsubject(csubject);

String flag=c.sentmailservice();

if(flag=="true")
{
	response.sendRedirect("thankyou.html");
	}
else
{
	response.sendRedirect("error-pages.html");
	}


%>
