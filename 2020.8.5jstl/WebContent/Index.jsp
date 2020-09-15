<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
   <c:if test="${sessionScope.name=='abc'&&sessionScope.pass=='123'}">
   <h2>会员姓名:${sessionScope.name}</h2>
   </c:if>
    <c:if test="${sessionScope.name!='abc'}">
    <a href="Login.jsp">你好登录</a>
    <a>我的订单</a>
    </c:if>
   
 
 
</body>
</html>