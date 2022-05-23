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
<style>
	body{
		font-size: 2rem;
		font-family: -apple-system, BlinkMacSystemFont;
	}
</style>
<script></script>
</head>
<body>
	<br><br><br><br><br><br><br>
	<h1>로그인</h1>
	<div class="loginform">
		<form action="process" method="post" class="form-inline">
			<table class="table" style="width: 450px">
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="id" class="form-control" required autofocus placeholder="아이디">
						<!-- <label><input type="checkbox" name="chkid">&nbsp;아이디 저장</label> -->
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="password" class="form-control" required placeholder="비밀번호">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button type="submit" class="btn btn-info">로그인</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>