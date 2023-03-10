<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head><title>員工資料</title></head>
<body>
<div>
<h2>修改員工資料</h2>
<form method="get" action="UpdateEmp">
<jsp:useBean id="emp" scope="request" class="com.lcpan.bean.EmpBean"></jsp:useBean>
<!-- 不能設定disabled 會null -->
員工編號<input type="text" readonly value=<%=emp.getEmpno() %> name="empno"/>
姓名<input type="text" value=<%=emp.getEname() %> name="ename"/>
到職日<input type="text" value=<%=emp.getHiredate() %> name="hiredate"/>
薪水<input type="text" value=<%=emp.getSalary() %> name="salary" />
部門編號<input type="text" value=<%=emp.getDeptno() %> name="deptno"/>
職稱<input type="text" value=<%=emp.getTitle() %> name="title" />
<input type="submit" value="確定" />

</form>
</div>
</body>
</html>
