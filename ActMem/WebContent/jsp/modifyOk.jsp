<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="user.UserDAO"%>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dto" class="user.UserDTO" scope="page" />
<jsp:setProperty name="dto" property="*" />

<%
	String id = (String)session.getAttribute("id");
	dto.setId(id);
	
	UserDAO dao = UserDAO.getInstance();
	int ri = dao.updateUser(dto);
	
	if(ri == 1) {
%>
	<script type="text/javascript">
		alert("정보수정 되었습니다.");
		document.location.href="main.jsp";
	</script>
<%
	} else {
%>
	<script type="text/javascript">
		alert("정보수정을 실패하였습니다.");
		history.go(-1);
	</script>
<%
	}
%>    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>ModifyAccess</title>
</head>
<body>

</body>
</html>