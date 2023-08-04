<%@page import="com.crud.jsp.DAO.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
</head>
<body>
<jsp:useBean id="us" class="com.crud.jsp.Bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="us"/>
	<% 
		String n = request.getParameter("id"); 
		int i= EmpDAO.UpdateEmployee(us,n); 
		if(i>0)	{
			response.sendRedirect("updatesuccess.jsp");
		}
		else	{
			response.sendRedirect("updatefailure.jsp");
		}
	%>
</body>
</html>