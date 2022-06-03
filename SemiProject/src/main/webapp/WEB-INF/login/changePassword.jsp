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
<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="section" id="section6">
		<br><br><br>
		<h1>아이디 찾기</h1>
	
		<br><br><br>
	
	<form action="/findPassword/result" method="post">
		<div>
			<span>변경할 비밀번호 입력</span>
			<input type="hidden" name="id" value="${id}">
			<input type="password" name="password" placeholder="새로운 비밀번호">
		</div>
		<button>변경하기</button>
	</form>
</div>
</body>
</html>