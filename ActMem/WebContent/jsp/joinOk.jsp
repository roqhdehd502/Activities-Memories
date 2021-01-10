<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.Timestamp" %>
<%@ page import="user.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dto" class="user.UserDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
	dto.setrDate(new Timestamp(System.currentTimeMillis())); // 리얼타임 기준으로 가입일 활성화
	UserDAO dao = UserDAO.getInstance();
	if(dao.confirmId(dto.getId()) == UserDAO.USER_EXISTENT) { // 유저 정보가 존재
%>
	<script type="text/javascript">
		alert("아이디가 이미 존재 합니다.");
		history.back();
	</script>
<%
	} else { // 유저 정보가 존재x
		int ri = dao.insertUser(dto);
		if(ri == UserDAO.USER_JOIN_SUCCESS) {
			session.setAttribute("id", dto.getId());
%>
		<script type="text/javascript">
			alert("회원가입을 축하 합니다.");
			document.location.href = "login.jsp";
		</script>
<% 			
		} else {
%>
		<script type="text/javascript">
			alert("회원가입에 실패했습니다.");
			document.location.href = "login.jsp";
		</script>
<% 
		}
	}
%>	

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Join Access</title>
</head>
<body>

</body>
</html>