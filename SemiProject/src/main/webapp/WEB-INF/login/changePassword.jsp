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
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
</head>
<style>
.btn_changepass{
	background-color: #2d35af;
	color: white;
	border:0;
	border-radius:5px;
	width: 120px;
	height:35px;
	font-size:15px;
}
</style>
<body>

	<div class="section" id="section6">
		<br><br><br>

	

<br><br><br><br>
	<h1>비밀번호 변경</h1>

	<form action="/findPassword/result" method="post">
		<table class="container_3">
		<tr>
			<td><span>변경할 비밀번호 입력</span></td>
		</tr>
		<tr>
			<td><input type="hidden" name="id" value="${id}"></td>
		</tr>
		<tr>
			<td>새로운 비밀번호 : <input type="password" name="password" placeholder="새로운 비밀번호를 입력하세요"
				style="width: 200px;"></td>
		</tr>
		<tr>
			<td><button class="btn_changepass">변경하기</button></td>
		</tr>
		</table>
	</form>
</div>
</body>
</html>