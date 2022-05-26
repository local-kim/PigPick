<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/board_table.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<br><br><br><br><br><br><br><br><br><br>
	<h3>식당별 후기</h3>
	${list}
	<table>
		<tr>
			<td>작성자</td>
			<td>내용</td>
			<td>별점</td>
			<td>작성 시간</td>
		</tr>
		<c:forEach var="review" items="${list}">
			<tr>
				<td>${review.member_name}</td>
				<td>${review.content}</td>
				<td>${review.stars}</td>
				<td><fmt:formatDate value="${review.created_at}" pattern="yyyy-MM-dd HH:mm" /></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>