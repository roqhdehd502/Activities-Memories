<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 세션에 유효한 유저가 존재할 때, 로그인 과정을 거치지 않고 main 페이지로 forward -->    
<% if(session.getAttribute("ValidUser") != null) { %>
	<jsp:forward page="main.jsp"></jsp:forward>
<% } %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
</head>
<body>
	<form action="loginOk.jsp" method="post">
		<!-- 이전에 로그인을 했다면 세션의 id 속성 값을 가져옴. -->
		아이디 : <input type="text" name="id" value="<% if(session.getAttribute("id") != null) out.println(session.getAttribute("id")); %>"><br>
		비밀번호 : <input type="password" name="pw"><br>
		<input type="submit" value="로그인"> &nbsp;&nbsp;
		<!-- 자바스크립트를 이용해 회원가입 페이지로 이동 -->
		<input type="button" value="회원가입" onclick="javascript:window.location='join.jsp'">
	</form>
</body>
</html>