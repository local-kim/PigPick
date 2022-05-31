<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href=" ">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<style>
*{
	padding: 0px;
	margin: 0px;
}

div.body {
 background-color: #FFFFFF;
 font-family : GmarketSansTTFMedium;
}

div.header {
	height: 60px;
	margin: 10px;
}

div.h1 {
	margin: 0px;

}

div.main {
	display: table-cell;
	background-color: #FFFFFF;
	padding: 15px;
}

div.nav	{
	display: table-cell;
	background-color: #FFFFFF;
	padding: 15px;
}

div.footer {
	background-color: #bebebe;
	color: red;
	text-align: center;
	padding: 10px;
	margin: 0px 0px 0px 0px;
	font-size: 90%;
}

#aside {
	width: 175px;
	margin-top: 20px;
	float: left; 
}

#left h1{
 font-family: GmarketSansTTFMedium;
 font-size: 20px;
}

#left ul{
	font-family: GmarketSansTTFMedium;
	font-size: 15px;
	color:FFF;
	list-style: none;
	text-indent: 15px;
}
#left ul li{
	background-color: #3f3f3f;
	line-height: 28px;
	border-bottom:  1px solid #333;
}

#left ul li a {
	text-decoration: none;
	color: #FFF;
	display: block;
}

#left ul li a:hover {
	background: #d40203;
}
#left ul li#active{
	background: #d40203;
}

#main {
	font-family: GmarketSansTTFMedium;
	font-size: 12px;
	color: #464646;
	overflow: hidden;
	float: left;
	width: 430px;
	
}

</style>
<body>
 	<br><br><br><br><br><br>
	<div class="body">
		
	<div class="header">
		<header>
			<h1>관리자 페이지</h1>
		</header>
	</div>
	
	
	<!-- /header -->
	
	<div id="left"> 
		
			<aside id="aside">
			<h1>시스템 관리</h1>
				<ul>
					<li><a target="iframe1" onclick="location.href='/admin/member'">회원 관리</a></li>
					<li><a target="iframe1" onclick="location.href='/admin/review'">리뷰 관리</a></li>
					<li><a target="iframe1" onclick="location.href='/admin/stats'">메뉴 통계</a></li>
					<li><a target="iframe1" onclick="location.href='/admin/menu'">메뉴 추가</a></li>		
				</ul>
			</aside>
		</div>
		
		<div id="main">
		<a href="/admin/member" target="_blank">
			<img src="../images/key.png" alt="flag" style="width:320px; height:214px; border: 1px soild black">
		</a>
		<p>회원 관리</p>
		</div>
		
			
		<div id="main">
		<a href="admin/review" target="_blank">
			<img src="../images/key.png" alt="flag" style="width:320px; height:214px; border: 1px soild black">
		</a>
		<p>리뷰 관리</p>
		</div>
		
		
			
		<div id="main">
		<a href="/admin/stats" target="_blank">
			<img src="../images/key.png" alt="flag" style="width:320px; height:214px; border: 1px soild black">
		</a>
		<p>메뉴 통계</p>
		</div>
		
		
				
		<div id="main">
		<a href="/admin/menu" target="_blank">
			<img src="../images/key.png" alt="flag" style="width:320px; height:214px; border: 1px soild black">
		</a>
		<p>메뉴 추가</p>
		</div>
	
	<!-- 
	<div class="nav">
		<nav>
		<h1>Links</h1>
		<ul>
			<li><button type="button" onclick="location.href='/admin/member'">회원 관리</button></li>
			<li><button type="button" onclick="location.href='/admin/review'">리뷰 관리</button></li>
			<li><button type="button" onclick="location.href='/admin/stats'">메뉴 통계</button></li>
			<li><button type="button" onclick="location.href='/admin/menu'">메뉴 추가</button></li>
		</ul>
		<figure>
			<img>
			
			<figcaption>dddd</figcaption>
		</figure>
		
		</nav>
	</div> 
	-->
	
	<!--  
	<div class="main">
		<section>
			<article>
				<h1>simentic Tags</h1>
				<p> 시멘틱요소는 브라우저에게 요소의 의미나 목적을 명확하게 알려주는 요소이다.dddddddddddddddddddddddddddddd</p>
			</article>
				<h1>div와 span</h1>
			<p>
			 	div는 divide의 약자로서 ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
			</p>
		</section>
	</div>-->
	
	<!-- 
	<div id="main">
		<section id="section">
			<article id="article">
				<iframe name="iframe1" src="../images/key.png"
				width="440" height="300" seamless></iframe>
			</article>
		</section>
	</div>
	

	 -->

	
		<div class="footer">
		<footer>copyright</footer>
		</div>
		
		
		
			
		
 
</div>	








</body>
</html>