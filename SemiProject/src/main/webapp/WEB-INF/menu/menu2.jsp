<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="section" id="section2">
		<br><br><br><br><br><br><br><br>
		<h1>추천된 메뉴 나오는 곳</h1>
		<h1>${list}</h1>
     
		<img src="images/menu_pick.png" alt=""
         class="menupicktag">
         
		<img src="images/tape.png" alt="" class="tape">
		<button type="submit" onclick="location.href='/recommend/list'">좋아요</button>
		<button type="button" onclick="">다시</button>
         
		<div class="round"></div>
	</div>
</body>
</html>