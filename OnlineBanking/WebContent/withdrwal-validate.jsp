<%@page import="dao.TransactionDao"%>
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
<jsp:useBean id="tx" class="beans.Transaction"></jsp:useBean>
<jsp:setProperty property="*" name="tx"/>
<%
tx.setFrAccno(request.getParameter("acc_no"));
tx.setToAccno(request.getParameter("paynum"));
tx.setAmount(Integer.parseInt(request.getParameter("amt")));
tx.setBank("Paytm Wallet");
int debitAmount=Integer.parseInt(request.getParameter("amt"));
int balance=UsersDao.checkBalance(request.getParameter("acc_no"));
int updatebalance=balance-debitAmount;
int updateFinalBalance=UsersDao.updateBalance(request.getParameter("acc_no"),updatebalance);
int saveTrans=TransactionDao.saveTransaction(tx);
if(saveTrans>0&&updateFinalBalance>0)
{
	response.sendRedirect("withdrwal-succ.jsp");
}
else
{
response.sendRedirect("withdrwal-err.jsp");	
}
%>
</body>
</html>