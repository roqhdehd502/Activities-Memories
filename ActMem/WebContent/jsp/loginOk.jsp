<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	UserDAO dao = UserDAO.getInstance();
	int checkNum = dao.userCheck(id, pw);
	if(checkNum == -1) {
%>
		<script type="text/javascript">
			alert("아이디가 존재하지 않습니다.");
			history.go(-1); // login 페이지로 되돌리기
		</script>
<%
	} else if(checkNum == 0) {
%>		
		<script type="text/javascript">
			alert("비밀번호가 틀립니다.");
			history.go(-1);
		</script>	
<%		
	} else if(checkNum == 1) {
		UserDTO dto = dao.getUser(id);
		
		if(dto == null) {
%>
			<script type="text/javascript">
				alert("존재하지 않는 회원입니다.");
				history.go(-1);
			</script>
<%			
		} else {
			String name = dto.getName();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("ValidUser", "yes");
			response.sendRedirect("main.jsp");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Access</title>
</head>
<body>

</body>
</html>