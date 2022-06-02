<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
	<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
</head>
<style>
#star-btn, #date-btn{
	position:relative;
	background-color: white;
	color:#2d35af;
	border:2px solid #2d35af;
	width: 100px;
	height:50px;
	font-size:15px;
	border-radius: 10px;
	left: 80%;
}

</style>
<script>
	$(function(){
		$("#star-btn").click(function() {
			$("#star-table").css("display", "");
			$("#date-table").css("display", "none");
			$(this).css("color", "red");
			$("#date-btn").css("color", "black");
		});
		
		$("#date-btn").click(function() {
			$("#star-table").css("display", "none");
			$("#date-table").css("display", "");
			$(this).css("color", "red");
			$("#star-btn").css("color", "black");
		});
	});
</script>
<body>
<br><br>
	<div class="section" id="section6">
	
		<h1>My Review</h1>
		<br><br><br>
		<button type="button" onclick="byStars()" id="star-btn">별점순</button>&nbsp;&nbsp;
		<button type="button" onclick="byDate()" id="date-btn">최신순</button>
		
		<table class="container" id="date-table">
			<tr>
				<th class="text-center">No.</th>
				<th class="text-center">Place</th>
				<th class="text-center" >contents</th>
				<th class="text-center" >★★★★★</th>
				<th class="text-center" >
				<span class="glyphicon glyphicon-calendar"></span></th>
			</tr>
			<c:forEach var="dto" items="${dateList}" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<!-- 식당이름 -->
					<td><a href="/review/place?id=${dto.place_id}">${dto.place_name}</a></td>
					<!-- 후기내용 -->
					<td><a href="/review/content?num=${dto.num}">${dto.content}</a></td>
					<!-- 별점 -->
					<td>${dto.stars}</td>
					<!-- 작성날짜 -->
					<td><fmt:formatDate value="${dto.created_at}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>	
		</table>
		
		<table class="container" id="star-table" style="display:none">
			<tr>
				<th class="text-center">No.</th>
				<th class="text-center">Place</th>
				<th class="text-center" >contents</th>
				<th class="text-center" >★★★★★</th>
				<th class="text-center" >
				<span class="glyphicon glyphicon-calendar"></span></th>
			</tr>
			<c:forEach var="dto" items="${starList}" varStatus="i">
				<tr>
					<td>${i.count}</td>
					<!-- 식당이름 -->
					<td>${dto.place_name}</td>
					<!-- 후기내용 -->
					<td>${dto.content}</td>
					<!-- 별점 -->
					<td>${dto.stars}</td>
					<!-- 작성날짜 -->
					<td><fmt:formatDate value="${dto.created_at}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>	
		</table>
		
	</div>
</body>
</html>