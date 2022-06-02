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
<style>
.btnfindid{
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
		<h1>아이디 찾기</h1>
	
		<br><br><br>
		
	    
	<form action="/findId/result" method="post">
		<table class="container_3" style="width: 600px;">
			<tr>
				<th>회원명</th>
				<td><input type="text" name="name" style="width: 200px;" placeholder="이름을 입력해주세요"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" style="width: 200px;" placeholder="이메일을 입력해주세요"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit" class="btnfindid">아이디 찾기</button></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>