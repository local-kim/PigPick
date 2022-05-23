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
</head>
<body>
	<br><br><br><br><br>
	<h1 class="mypage3_title">리뷰 모아보기</h1>
	<h3>${list}</h3>
		<div>
		<br><br>
		
		<table class="table table-bordered mytable" style="width: 1100px;">
			<tr style="background-color:#ffc;">
				<th class="text-center" style="width: 50px">No.</th>
				<th class="text-center" style="width: 100px">Place</th>
				<th class="text-center" style="width: 500px">contents</th>
				<th class="text-center" style="width: 70x">★★★★★</th>
				<th class="text-center" style="width: 200px">
				<span class="glyphicon glyphicon-calendar" style="color: green;"></span></th>
			
			</tr>
			<c:forEach var="dto" items="${list}" varStatus="i">
				<tr>
					<td>${i.count}</td>
					
					<!-- 식당이름 -->
					<td>${dto.place_id}</td>
					<!-- 후기내용 -->
					<td>${dto.content}</td>
					<!-- 별점 -->
					<td>${dto.stars}</td>
					<!-- 작성날짜 -->
					<td><fmt:formatDate value="${dto.created_at}"
							pattern="yyyy-MM-dd"/></td>
					
				</tr>
			</c:forEach>	
		</table>
		</div>	
	</div>
</body>
</html>