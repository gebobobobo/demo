<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="a" value="hello"></c:set>
	<c:if test="${not empty a}">
		<c:out value="${a}"></c:out>
	</c:if>

	<c:set var="name" value="admin" scope="request"></c:set>
	<c:if test="${requestScope.name=='admin'}">
		<c:out value="${requestScope.name}"></c:out>
	</c:if>
	<c:set var="score" value="90"></c:set>
	<c:choose>
		<c:when test="${score>100||score<0}">错误的份数：${score}</c:when>
		<c:when test="${score>=90}">A级</c:when>
		<c:when test="${score>=80}">b级</c:when>
		<c:when test="${score>=70}">c级</c:when>
		<c:when test="${score>=60}">d级</c:when>
		<c:otherwise>e级</c:otherwise>
	</c:choose>
	<c:forEach var="i" begin="0" end="5">
        ${i}</br>
	</c:forEach>
	<c:forEach var="i" begin="1" end="10">
		<c:set var="sum" value="${sum + i}" />
	</c:forEach>
	<c:out value="sum = ${sum}" />

	<c:forEach var="i" begin="1" end="10">
		<c:set var="sum" value="${sum+i}"></c:set>
	</c:forEach>
	${sum}
	<%
		ArrayList<String> list = new ArrayList<String>();
		list.add("a");
		list.add("b");
		list.add("c");
		// 集合存入域中
		request.setAttribute("lists", list);
	%>
	<c:forEach items="${requestScope.lists}" var="x">
	    <c:out value="${x}"></c:out></br>
	</c:forEach>
<%
			
// 			    ArrayList<User>  listUser = new ArrayList<User>();
// 			        User  u1 = new User("z1");
// 			        User  u2 = new User("z2");
// 			        User  u3 = new User("z3");
// 		       		listUser.add(u1);
// 		       		listUser.add(u2);
// 		       		listUser.add(u3);
// 		       // 集合存入域中
// 		         request.setAttribute("listUser", listUser);
			 %>
   

</body>
</html>