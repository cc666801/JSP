<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>員工資料</title></head>
<body>
<div>
<h2>員工資料</h2>
<c:if test="${updateCount > 0}" var="condition" > 
	    ${updateCount} 
	</c:if><br>	 
	 ${updateCount}  
	執行結果為${condition}
</div>
</body>
</html>
