<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
</head>
<body>
	<br><br><br><br><br><br>
	<h1>아이디 찾기</h1>
	<form action="/findId/result" method="post">
		<table>
			<tr>
				<th>회원명</th>
				<td><input type="text" name="name" placeholder="이름을 입력해주세요"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" placeholder="이메일을 입력해주세요"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">아이디 찾기</button></td>
			</tr>
		</table>
	</form>
</body>
</html>