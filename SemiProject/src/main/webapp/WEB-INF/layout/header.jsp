<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
/* $(function(){
	$(".subnav").hide();
	
	$(".topnav").click(function(){
		$(".topnav > .subnav").slideDown();
	});
});  */
</script>
</head>

<body>
	<div class="single-page-nav">
	<div id="logo"><a href="/">
	    <img class="nav01" src="../images/main.jpg" alt="logo">
	</a>
	</div>
	
	<div id="gnb">
		<ul>
			<!-- navigation -->
			<!--네비게이션의 섹션 갯수(메뉴)를 늘이거나 줄이려면 li 리스트를 추가하면 됩니다.-->
			<li class="topnav"><a href="/"><b>HOME</b></a></li>
			<li class="topnav"><a href="#"><b>MENU</b></a>
				<ul>
					<li class="subnav"><a href="/recommend1"><b>MENU1</b></a></li>
				</ul>
			</li>
			<li class="topnav"><a href="/review"><b>BOARD</b></a></li>
			<li class="topnav"><a href="#"><b>MY PAGE</b></a>
				<ul>
					<li class="subnav"><a href="/mypage"><b>MY PAGE</b></a></li>
					<li class="subnav"><a href="/mypage/rank"><b>MY MENU LIST</b></a></li>
				</ul>
			</li>
			<li class="topnav"><a href="#section7"><b>JOIN</b></a></li>
		</ul>
	  </div>
	</div>
</body>
</html>