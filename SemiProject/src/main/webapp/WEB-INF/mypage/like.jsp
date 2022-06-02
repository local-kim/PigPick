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
	<br><br><br><br><br><br>
	<%-- ${list} --%>
	<table class="container" >
		<tr>
			<th class="text-center" style="width: 10px;">No.</th>
			<th class="text-center" style="width: 300px">Place</th>
			<th class="text-center" style="width: 70x">Category</th>
			<th class="text-center" style="width: 150x">Address</th>
			<th class="text-center" style="width: 100x">Phone</th>
		</tr>
		<c:forEach var="dto" items="${list}" varStatus="i">
			<tr>
				<td>${i.count}</td>
				<td><a href="/review/place?id=${dto.id}">${dto.name}</a></td>
				<td>${dto.category}</td>
				<td>${dto.address}</td>
				<td>${dto.phone}</td>
			</tr>
		</c:forEach>	
	</table>
</body>
</html>