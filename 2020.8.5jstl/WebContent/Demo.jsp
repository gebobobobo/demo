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
<% request.setAttribute("a", "b"); %>
     <c:out value="${a}" />
     <c:out value="aaa" ></c:out>
     <c:out value="${b}" default="xxx"></c:out>
     <c:set var="a" value="hello" scope="session"></c:set>
      <c:out value="${sessionScope.a}"></c:out>
     <c:set var="a" value="hellonihao" ></c:set>
     <c:out value="${a}"></c:out>
     
     <c:set var="a" value="hellonisile"></c:set>
     <c:if test="${not empty a}">
          <c:out value="${a}"></c:out>
     </c:if>
          
      <c:if test=""></c:if>    
          
          
</body>
</html>