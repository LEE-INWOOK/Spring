<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// String id=세션값 가져와서 저장
String id=(String)session.getAttribute("id");
// MemberDAO 객체생성(기억장소)
// MemberDAO mdao=new MemberDAO();
// MemberBean mb= getMember(id)메서드 호출
// MemberBean mb=mdao.getMember(id);
	%>
<!-- 내용을 보여주고 내용중에 수정할 부분 수정하기  -->
<h1>member/updateForm.jsp</h1>
<form action="./updatePro" method="post">
아이디 : <input type="text" name="id" value="${mb.id}" readonly><br>
비밀번호 : <input type="password" name="pass" value="${mb.pass}"><br>
이름 : <input type="text" name="name" value="${mb.name}"><br>
<input type="submit" value="회원정보수정">
</form>	
</html>


