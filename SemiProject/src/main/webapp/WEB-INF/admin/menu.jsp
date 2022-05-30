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
</head>
<body>
	<br><br><br><br><br><br>
	<h1>메뉴 추가</h1>
	<form action="insert" method="get">
		<table>
			<tr>
				<td>메뉴 이름</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
					<label>
						<input type="radio" value="0" name="category">한식
					</label>
					<label>
						<input type="radio" value="1" name="category">일식
					</label>
					<label>
						<input type="radio" value="2" name="category">중식
					</label>
					<label>
						<input type="radio" value="3" name="category">양식
					</label>
					<label>
						<input type="radio" value="4" name="category">아시아
					</label>
					<label>
						<input type="radio" value="5" name="category">기타
					</label>
				</td>
			</tr>
			<tr>
				<td>타입</td>
				<td>
					<label>
						<input type="radio" value="0" name="type">밥
					</label>
					<label>
						<input type="radio" value="1" name="type">면
					</label>
					<label>
						<input type="radio" value="2" name="type">빵
					</label>
					<label>
						<input type="radio" value="3" name="type">고기
					</label>
					<label>
						<input type="radio" value="4" name="type">해산물
					</label>
					<label>
						<input type="radio" value="5" name="type">채소
					</label>
					<label>
						<input type="radio" value="6" name="type">디저트
					</label>
				</td>
			</tr>
			<tr>
				<td>맵기</td>
				<td>
					<label>
						<input type="checkbox" value="1" name="spicy"> 매운거
					</label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">추가하기</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>