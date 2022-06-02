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

</style>
<body>
<br><br>
<%-- <h3>${list}</h3> --%>
	<div class="section" id="section6">
	
		<h1>My Review</h1>
		<br><br><br>
		<table class="container">
			<tr>
				<th class="text-center">No.</th>
				<th class="text-center">Place</th>
				<th class="text-center" >contents</th>
				<th class="text-center" >★★★★★</th>
				<th class="text-center" >
				<span class="glyphicon glyphicon-calendar"></span></th>
			
			</tr>
			<c:forEach var="dto" items="${list}" varStatus="i">
				<tr>
					<td>${i.count}</td>
					
					<!-- 식당이름 -->
					<td><a href="/review/place?id=${dto.place_id}">${dto.place_name}</a></td>
					<!-- 후기내용 -->
					<td><a href="/review/content?num=${dto.num}">${dto.content}</a></td>
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