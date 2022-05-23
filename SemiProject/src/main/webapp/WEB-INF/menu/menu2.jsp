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
		
		
		<h1>${list}</h1>
	
     
		<img src="images/menu_pick.png" alt=""
         class="menupicktag">
         
		<img src="images/tape.png" alt="" class="tape">
		<img src="images/dish.png" alt="" class="dish">
	
         
		<div class="round"></div>
	</div>
	<div class="menuname">
		<c:forEach var="dto" items="${list }">
			<h3>추천메뉴는&nbsp;<b style="background: #ffc;">${dto.name}</b> 입니다</h3>
		</c:forEach>
	</div>
		
	<button type="button" style="background-color: none;" class="likeit" onclick="location.href='/recommend/list'">
	<img src="images/kpop.png" class="menu_img4" id="menu2" title="좋아요"></button>
		
	<button type="button" class="reset" onclick="">
	<img src="images/reset.png" class="menu_img4" id="menu2" title="다시찾기"></button>
</body>
</html>