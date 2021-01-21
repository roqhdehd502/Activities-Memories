<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Activities Memories - Main</title>
</head>
<body>
	<table border="1" width="600">
		<tr>
			<td>글번호</td>
			<td>글쓴이</td>
			<td>글제목</td>
			<td>날 짜</td>
			<td>조 회</td>
			<td>추 천</td>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.bId}</td>
	         	<td>${dto.bName}</td>
	         	<td>${dto.bTitle}</td>
	         	<td>${dto.bDate}</td>
	         	<td>${dto.bHit}</td>
	         	<td>${dto.bLike}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6"><button>글작성</button></td>
		</tr>
	</table>
</body>
</html>