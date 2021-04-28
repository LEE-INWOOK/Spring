<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>member/list.jsp</h1>

<c:choose>
	<c:when test="${empty sessionScope.id}">					<!-- 세션값이 없으면 -->
		<c:redirect url="./login"></c:redirect>
	</c:when>
	<c:otherwise>												<!-- 세션값이 없지 않으면 = 있으면 -->
		<c:if test="${!(sessionScope.id eq 'admin')}">			<!-- 그 세션값이 admin과 일치하지 않으면 -->
			<c:redirect url="./main"></c:redirect>
		</c:if>	
	</c:otherwise>	
</c:choose>

<table border="1">
<tr><td>아이디</td><td>비밀번호</td>
    <td>이름</td><td>가입날짜</td></tr>
    <%
//     for(int i=0;i<mbList.size();i++){
//     	MemberBean mb=(MemberBean)mbList.get(i);
    %>
<c:forEach var="mb" items="${mbList}">
	<tr>
	<td>${mb.id}</td>
    <td>${mb.pass}</td>
    <td>${mb.name}</td>
    <td>${mb.date}</td>
    </tr>
</c:forEach> 
</table>
</body>
</html>