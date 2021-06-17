<%@page import="dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="mailer.*" %>
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
int balance=Integer.parseInt(request.getParameter("min"));
user.setBalance(balance);
long l=System.currentTimeMillis();
String acc_no=String.valueOf(l);
String finalacc_no=acc_no.substring(0,12);
user.setAcc_no(finalacc_no);
int i=UsersDao.saveUsers(user);
if(i>0)
{
	Mailer.sendMail("your email","your password",user.getEmail(),"Thanks for Registering with us Your Account No is:","Account No: "+finalacc_no);
	response.sendRedirect("signup-success.jsp");
}
else
{
response.sendRedirect("signup-error.jsp");	
}

%>
</body>
</html>