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
	<h1>메뉴 통계</h1>
	<br><br><br>

	
    <table class="container_3">
	
	

      <thead>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>메뉴</th>
			<th>카테고리</th>
			<th>횟수</th>
			
		</tr>
	
		 </thead>
		
	
	     <tbody>
	        
				
						<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.member_num}</td>
							<td>${dto.member_name}</td>
							<td>${dto.menu_name}</td>
							<td>${dto.category}</td>
							<td>${dto.count}</td>
					
							
						</tr>
						</c:forEach>
				
					</tbody>
		</table>
	
		
	</div>

  
  
  

</body>
</html>