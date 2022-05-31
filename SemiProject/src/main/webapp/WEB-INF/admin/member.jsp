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
	

<section>
	
	<div class="section" id="section6">
	<br><br><br>
	<h1>회원 관리</h1>

	<br><br><br>
	
    <table class="container_3">
	
	

      <thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>ID</th>
			<th>사진</th>
			<th>Email</th>
			<th>연락처</th>
			<th>주소</th>
			<th>생일</th>
			<th><button type="button" onclick="location.href='/member/delete'">삭제</button></th>
		</tr>
	
		 </thead>
		
	
	     <tbody>
	        
				
						<c:forEach var="dto" items="${list}">
						<tr>
							
							<td>${dto.num}</td>
						
							<!-- 회원이름 -->
							<td>${dto.name}</td>
							
							
							<td>${dto.id}</td>
							
							
							
							<td>${dto.photo}</td>
							<td>${dto.email}</td>
							<td>${dto.tel}</td>
							<td>${dto.address}</td>
							<td>${dto.birthday}</td>
							<td><input type="checkbox" name="" value="${dto.num}"></td>
						</tr>
						</c:forEach>
				
					</tbody>
		</table>
	
		
	</div>

  
  
  
	
	</section>
</html>