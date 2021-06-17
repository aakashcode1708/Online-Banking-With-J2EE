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
String acc_no=request.getParameter("acc_no");
int amount=Integer.parseInt(request.getParameter("amt"));

int oldBalance=UsersDao.checkBalance(acc_no);
int updateBalance=oldBalance+amount;
int update=UsersDao.updateBalance(acc_no,updateBalance);
if(update>0)
{
	response.sendRedirect("depositown-succ.jsp");
}
else
{
response.sendRedirect("depositown-err.jsp");	
}
%>
</body>
</html>