<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="dao.DAO"%>
<%@ page import="java.io.PrintWriter"%>

<%
	DAO dao = new DAO();

	String bId = null;
	String bLike = null;
	
	if(request.getParameter("bId") != null) {
		bId = request.getParameter("bId");
	}
	if(request.getParameter("bLike") != null) {
		bLike = request.getParameter("bLike");
	}
	
	int result = Integer.parseInt(bLike);
	
	if (result == 1) {
		result = dao.upLike(bId);
		if (result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('추천이 완료되었습니다.');");
			script.println("location.href='boardList.do'");
			script.println("</script>");
			script.close();
			return;
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다.');");
			script.println("history.back();");
			script.println("</script>");
			script.close();
			return;
		}
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 추천을 누른 글입니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
%>