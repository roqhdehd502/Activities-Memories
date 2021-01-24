<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Activities Memories - ConetentView</title>
	<link href="bulma/css/bulma.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form action="modify.do" method="post">
		<table class="table" border="1">
			<input type="hidden" name="bId" value="${contentView.bId}">
			<tr>
				<td>번호</td>
				<td>${contentView.bId}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${contentView.bHit}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input class="input is-medium" type="text" name="bName" value="${contentView.bName}"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input class="input" type="text" name="bTitle" value="${contentView.bTitle}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea class="textarea" cols="20" rows="10" name="bContent">${contentView.bContent}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="button" type="submit" value="수정">&nbsp;&nbsp;				
					<button class="button" onclick="location.href='boardList.do'">목록</button>&nbsp;&nbsp;
					<button class="button" onclick="location.href='delete.do?bId=${contentView.bId}'">삭제</button>&nbsp;&nbsp;
					<button class="button" onclick="location.href='likeAction.do?bId=${contentView.bId}'">추천</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>