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
tx.setFrAccno(request.getParameter("fracc_no"));
tx.setToAccno(request.getParameter("acc_no"));
int txAmount=Integer.parseInt(request.getParameter("amt"));
tx.setBank(request.getParameter("bank_name"));
tx.setAmount(txAmount);
int minusbalance=UsersDao.checkBalance(request.getParameter("fracc_no"));
int plusbalance=UsersDao.checkBalance(request.getParameter("acc_no"));

int updatefromBalance=minusbalance-txAmount;
int updatetoBalance=plusbalance+txAmount;
int updateFrom=UsersDao.updateBalance(request.getParameter("fracc_no"),updatefromBalance);
int updateTo=UsersDao.updateBalance(request.getParameter("acc_no"),updatetoBalance);
int saveTrans=TransactionDao.saveTransaction(tx);
if(saveTrans>0&&updateFrom>0&&updateTo>0)
{
response.sendRedirect("maindeposit-succ.jsp");	
}
else
{
response.sendRedirect("maindeposit-err.jsp");	
}
%>
</body>
</html>