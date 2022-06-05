<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<title>PigPick</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script>
	$(function(){
		var list = new Array();
		<c:forEach var="menu" items="${list}">
			list.push("${menu.name}");
		</c:forEach>
		
		$("#random").click(function(){
			var idx = Math.floor(Math.random() * list.length);
			/* console.log(list[idx]); */
			$("#random-menu").text(list[idx]);
		});
	});
	
	function openWindowPop(){
    var url = "popup";
    var name = "popup";
    var option = "width = 800, height = 900, top = 100, left = 200, location = no, status=no, menubar=no, toolbar=no, scrollbars=yes;"
    window.open(url, name, option);
	}
</script>
<style type="text/css">
	a#pop {
		background-color: white;
		padding: 26px;
		border-radius: 45px;
		position: relative;
		left: 58%;
		top: 30%;
		font-weight: bold;
		color: black;
		/* width: 1000000000000000px; */
		font-size: 20px;
	}
	
	button#random{
		position: relative;
		left: 260%;
	}
	
	div#random-menu{
		font-size: 50px;
		color: white;
		width: 500px;
		position: relative;
		left: 260%;
		margin-top: 70px;
	}
</style>
</head>
<body>
	<div class="section" id="section1">
		<div  style="z-index:999999999; top:50%; position:absolute;">
			<button type="button" id="random" class="btn btn-lg">오늘 뭐 먹지?</button>
			<div id="random-menu"></div>
		</div>
		<!-- <a href="javascript:openWindowPop('more/popup.jsp', 'popup');" id="pop">팝업창 열기</a> -->
    <!-- <a href="/recommend"><img src="images/logo-01.png" alt="피그램" id="menupick"></a> -->
	</div>
</body>
</html>