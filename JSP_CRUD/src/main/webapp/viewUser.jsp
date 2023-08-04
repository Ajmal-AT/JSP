<%@page import="com.crud.jsp.DAO.EmpDAO"%>
<%@page import="com.crud.jsp.Bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER DETAILS</title>
</head>
<body style="background:#8B8989;">
	
	<center>
		<div style="display: block;">
			<div><h1>User Details</h1></div>
			<% List<User> li=EmpDAO.ViewEmployees(); %>
			<div>
				<table border="1" width="100%">
					<tr>
						<th style="font-style: oblique;"> Employee Id </th>
						<th style="font-style: oblique;"> Employee Name </th>
						<th style="font-style: oblique;"> Employee Password </th>
						<th style="font-style: oblique;"> Employee Email </th>
						<th style="font-style: oblique;"> Employee Country </th>
						<th style="font-style: oblique;" colspan="2"> Employee Updation </th>
					</tr>
					<%  for(User c:li) { %>
					<tr>
						<td><%= c.getId() %></td>
						<td><%= c.getName() %></td>
						<td><%= c.getPsd() %></td>
						<td><%= c.getEmail() %></td>
						<td><%= c.getCtry()%></td>
						<td><a href="editView.jsp?id=<%= c.getId()%>">Edit</a></td>
						<td><a href="deleteUserEmp.jsp?id=<%= c.getId()%>">Delete</a></td>
					</tr>
					<%} %>
				</table>
			</div>
		</div>
	</center>
</body>
</html>