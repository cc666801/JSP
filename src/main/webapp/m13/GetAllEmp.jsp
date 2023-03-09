<%@page import="com.lcpan.bean.EmpBean"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>所有員工資料</title>
</head>
<body>
<div>
<h2>所有員工資料</h2>
<table>
<tr><th>員工編號<th>姓名<th>到職日<th>薪水<th>部門編號<th>職稱
<c:forEach items="${emps}" var="emp" varStatus="s">
	<tr><td>${emp.empno}
		<td>${emp.ename}
		<td>${emp.hiredate}
		<td>${emp.salary}
		<td>${emp.deptno}
		<td>${emp.title}
	
</c:forEach>
</table>
</div>	
</body>
</html>