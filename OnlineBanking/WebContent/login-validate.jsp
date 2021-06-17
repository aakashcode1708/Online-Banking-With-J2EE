<%@page import="dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="beans.Users"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
boolean status=UsersDao.loginValidate(user.getEmail(),user.getPassword());
if(status)
{
session.setAttribute("user",user.getEmail());
response.sendRedirect("home.jsp");
}
else
{
	response.sendRedirect("login-error.jsp");
}
%>
</body>
</html>