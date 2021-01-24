<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Activities Memories - Write</title>
	<link href="bulma/css/bulma.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form action="write.do" method="post">
		<table class="table" border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="bName"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea cols="20" rows="10" placeholder="Write Your Comments."></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="게시">&nbsp;&nbsp;
					<button type="button" onclick="location.href='boardList.do'">목록</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>