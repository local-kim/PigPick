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
<body>

	<br><br><br>

	<div class="section" id="section6">
	<br><br><br>
	<h1>메뉴 추가</h1>
	<br><br><br><br><br><br>


	
	<form action="insert" method="get">
		<table class="container_3">
			<tr>
				<td><b>메뉴 이름</b></td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td><b>카테고리</b></td>
				<td>
					<label>
						<input type="radio" value="0" name="category">&nbsp;한식
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="1" name="category">&nbsp;일식
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="2" name="category">&nbsp;중식
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="3" name="category">&nbsp;양식
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="4" name="category">&nbsp;아시아
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="5" name="category">&nbsp;기타
					</label>
				</td>
			</tr>
			<tr>
				<td><b>타입</b></td>
				<td>
					<label>
						<input type="radio" value="0" name="type">&nbsp;밥
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="1" name="type">&nbsp;면
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="2" name="type">&nbsp;빵
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="3" name="type">&nbsp;고기
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="4" name="type">&nbsp;해산물
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="5" name="type">&nbsp;채소
					</label>
					&nbsp;&nbsp;
					<label>
						<input type="radio" value="6" name="type">&nbsp;디저트
					</label>
				</td>
			</tr>
			<tr>
				<td><b>맵기</b></td>
				<td>
					<label>
						<input type="checkbox" value="1" name="spicy">&nbsp;매운거
					</label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btnmenuadd">추가하기</button>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>