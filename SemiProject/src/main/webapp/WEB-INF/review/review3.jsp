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

	<h1>글 내용확인 폼</h1>
	
	<table>
		<tr>
			<th>Name</th>
			<td>${dto.member_name}</td>
		</tr>
		<tr>
			<th>★★★★★</th>
			<td>${dto.stars}</td>
		</tr>
		<tr>
			<th>Date</th>
			<td>${dto.created_at}</td>
		</tr>
		<tr>
			<td colspan="2">
			${dto.content}
		    </td>
		</tr>
	
	</table>
	<button type="button" onclick="location.href='/review/edit'">Edit</button>
	
</body>
</html>