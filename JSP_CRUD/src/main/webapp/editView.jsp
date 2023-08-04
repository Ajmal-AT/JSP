<%@page import="com.crud.jsp.Bean.User"%>
<%@page import="com.crud.jsp.DAO.EmpDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee Detais</title>
</head>
<body>
<body style="background:#8B8989;">
<% 
	String n = request.getParameter("id"); 
	List<User> li=EmpDAO.EditGetEmployees(n);
%>
<center>
	<div style=" position: absolute; top: 10%; width: 100%; height: 100%">
	<a href="viewUser.jsp" style="position: absolute; top: 10px; left: 50%; border:2px solid transparent; background:#ccc; border-radius: 10px; text-decoration: none; color: blue; padding: 5px">
		View Employees
	</a>
	<br><br>
	<br><br>
	<br><br>
	<h1>Add new Employee</h1>
	<% for(User c:li) {%>
	<form action="updateUser.jsp?id=<%= c.getId() %>" method="post">
		<table>
			<tr> <td><b>Name     :</b></td><td><input type="text" name="name" style="border-radius: 10px; padding:10px;" value="<%= c.getName()%>" ></td></tr>
			<tr> <td><b>Password :</b></td><td><input type="password" name="psd" style="border-radius: 10px; padding:10px;" value="<%= c.getPsd()%>" ></td></tr> 
			<tr> <td><b>Email    :</b></td><td><input type="email" name="email" style="border-radius: 10px; padding:10px;" value="<%= c.getEmail()%>" ></td></tr>
			<tr> <td><b>Country  :</b></td><td><select name="ctry" style="width: 185px; border-radius: 10px; padding:10px;"  >
				<option><%= c.getCtry()%></option>
				<option>INDIA</option>
				<option>USA</option>
				<option>CHINA</option>
				<option>USA</option>
				<option>CANADA</option>
				<option>RUSSIA</option>
				<option>UAE</option>
				<option>Other</option>
					</select></td></tr>
					<tr><th colspan="2"></th></tr>
					<tr><th colspan="2"></th></tr>
			<tr> <th colspan="2"><input type="submit" value="Save Employee" style="color: black; background: #127689; padding:10px; border-radius: 10px"></th></tr>
		</table>
		<% }%>
	</form>
	<br><br>
	</div>
</center>
</body>
</html>