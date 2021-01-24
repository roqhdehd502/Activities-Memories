<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Activities Memories - List</title>
	<link href="bulma/css/bulma.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<table class="table" border="1">
		<tr>
			<td>글번호</td>
			<td>글쓴이</td>
			<td>글제목</td>
			<td>날 짜</td>
			<td>조 회</td>
			<td>추 천</td>
		</tr>
		<c:forEach items="${boardList}" var="dto">
			<tr>
				<td>${dto.bId}</td>
	         	<td>${dto.bName}</td>
	         	<td>
	         		<a href="contentView.do?bId=${dto.bId}">${dto.bTitle}</a>
	         	</td>
	         	<td>
	         		<fmt:formatDate value="${dto.bDate}" pattern="YYYY-MM-DD"/>
	         	</td>
	         	<td>${dto.bHit}</td>
	         	<td>${dto.bLike}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6">
				<button class="button" onclick="location.href='writeView.do'">글작성</button>&nbsp;&nbsp;
				<button class="button" onclick="location.href='main.do'">메인으로 이동</button>
			</td>
		</tr>
	</table>
</body>
</html>