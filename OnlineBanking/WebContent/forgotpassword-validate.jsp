<%@page import="mailer.Mailer"%>
<%@page import="dao.UsersDao"%>
<%@page import="beans.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
Users users=UsersDao.getUserByEmail(email);
if(users!=null)
{
	Mailer.sendMail("your email","your password",users.getEmail(),"Your password is:","password: "+users.getPassword());
	response.sendRedirect("password-succ.jsp");
	
}
else
{
response.sendRedirect("password-err.jsp");	
}
%>
</body>
</html>