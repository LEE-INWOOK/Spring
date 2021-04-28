<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- ↑↑ <%="스파게티"%> 코드 없이 컨트롤에 관계된 문장을 태그처럼 사용할 수 있게 해줌 ↑↑  -->
<!-- c: 으로 태그를 시작하면 Expression Language를 사용할 수 있음! -->
<!-- Java의 if문 대신 JSP에서 제공하는 if문을 사용할 수 있게 됨! 스파게티 독립! -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty sessionScope.id}">			<!-- session 값이 없다면 -->
	<c:redirect url="./login"></c:redirect>		<!-- /login 으로 이동 -->
</c:if>
<h1>member/main.jsp</h1>
${sessionScope.id}님 로그인 하셨습니다.
<input type="button" value="로그아웃" 
onclick="location.href='./logout'"><br>
<a href="./info">회원정보조회</a><br>
<a href="./update">회원정보수정</a><br>
<a href="./delete">회원정보삭제</a><br>

<c:if test="${!empty sessionScope.id}">				<!-- session 값이 있고 -->
	<c:if test="${sessionScope.id eq 'admin'}">		<!-- session ID가 'admin'과 동일하다면 -->
		<a href="./list">회원목록</a><br>
	</c:if>
</c:if>

</body>
</html>



