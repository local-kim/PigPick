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

<div class="section" id="section6">
	<br><br><br>
	<h1>리뷰 관리</h1>

	<br><br><br>
	
    <table class="container_3">
	
	

      <thead>
		<tr>
			<th>리뷰번호</th>
			<th>이름</th>
			<th>장소</th>
			<th>카테고리</th>
			<th>별점</th>
			<th>내용</th>
			<th>사진</th>
			<th>날짜</th>
			<th><button type="button" onclick="location.href='/review/delete'">삭제</button></th>
			
		</tr>
	
		 </thead>
		
	
	     <tbody>
	        
				
						<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.num}</td>
							<td>${dto.member_name}</td>
							<td>${dto.place_name}</td>
							<td>${dto.category}</td>
							<td>${dto.stars}</td>
							<td>${dto.content}</td>
							<td>${dto.photos}</td>
							<td>${dto.created_at}</td>
							<td><input type="checkbox" name="" value="${dto.num}"></td>
							
						</tr>
						</c:forEach>
				
					</tbody>
		</table>
	
		
	</div>

  
  
  
	
	</section>
</body>
</html>