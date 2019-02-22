<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sp.entity.Student"%>
<%@ page import="java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<pre>
<form action="sortName">
<input type="submit" value="SORT BY NAME">
</form>
<form action="sortId">
<input type="submit" value="SORT BY ID">
</form>
<form action="sortDept">
<input type="submit" value="SORT BY DEPT">
</form>
<form action="sortDoj">
<input type="submit" value="SORT BY DOJ">
</form>

</pre>
	<%
		Student s = new Student();
		HashMap<Integer, Student> a = (HashMap<Integer, Student>) request.getAttribute("students");
	%>
	<table border="1" bordercolor="black">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Department</th>
				<th>Date of Joining</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < a.size(); i++) {
					s = (Student) a.get(i);
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getDept()%></td>
				<td><%=s.getDoj()%></td>
			</tr>
			<%
				}
			%>
		</tbody>
</body>
</html>