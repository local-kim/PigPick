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
		
		
		<h1 style="opacity:0;">${list}</h1>
	
     
		<img src="images/menu_pick.png" alt=""
         class="menupicktag">
         
		<img src="images/tape.png" alt="" class="tape">
		<img src="images/dish.png" alt="" class="dish">
	
         
		<div class="round"></div>
	</div>
	<div class="menuname">
	 <h3>추천메뉴는&nbsp;<b style="background: #ffc;" id="rndmenu"></b> 입니다.</h3> 
	<script>
	var list = new Array();
		<c:forEach var="dto" items="${list}">
			list.push("${dto.name}");
			//<h3>추천메뉴는&nbsp;<b style="background: #ffc;">${dto.name}</b> 입니다.</h3>
		</c:forEach>
		
		var rand=Math.floor(Math.random()*list.length);
		var rValue = list[rand];
		console.log(rValue);
		
		document.getElementById("rndmenu").innerHTML=rValue;
		
		</script>
	</div>
		
	<button type="button" style="background-color: none;" class="likeit" onclick="rValue()">
	<script>
	 function rValue(){
		 //location.href='/recommend/list?menuName=+rValue'
			var rValue= document.getElementById("rndmenu").innerText;
		  window.location.href = "/recommend/list?menuName="+ rValue;
	 }
	</script>
	<img src="images/kpop.png" class="menu_img4" id="menu2" title="좋아요"></button>
		
	<button type="button" class="reset" onclick="window.location.reload()">
	<img src="images/reset.png" class="menu_img4" id="menu2" title="다시찾기">
	</button>
</body>
</html>