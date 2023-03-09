<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head><title>員工資料</title></head>
<body>
<div>
<h2>員工資料</h2>
<form method="get" action="UpdateEmp">
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.EmpBean"></jsp:useBean>
員工編號<input type="text" disabled value=<%=emp.getEmpno() %>>
姓名<input type="text" value=<%=emp.getEname() %>>
到職日<input type="text" value=<%=emp.getHiredate() %>>
薪水<input type="text" value=<%=emp.getSalary() %>>
部門編號<input type="text" value=<%=emp.getDeptno() %>>
職稱<input type="text" value=<%=emp.getTitle() %>>
<input type="submit" value="確定" />

</form>
</div>
</body>
</html>
