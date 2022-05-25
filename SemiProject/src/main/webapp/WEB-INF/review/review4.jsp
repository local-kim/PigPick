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
	<h1>글 수정폼</h1>
	
	<table>
		<tr>
			<th>place</th>
			<td>${dto.place_id}</td>
		</tr>
		<tr>
			<th>★★★★★</th>
			<td>${dto.stars}</td>
		</tr>
		<tr>
			<th>후기</th>
			<td>${dto.content}</td>
		</tr>
	</table>
	<br>
		<div>
			<button type="submit" class="btnreview_update" style="position:absolute; left: 50%;"
				 onclick="location.href='/review/update'">Update</button>
		</div>	
</body>
</html>