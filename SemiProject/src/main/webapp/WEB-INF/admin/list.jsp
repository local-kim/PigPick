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

div.header0 {
 	background-color: #000080;
	height: 60px;
	color: #ffff;
	text-align: center;
	font-family : GmarketSansTTFMedium;
}

div.h1 {
	margin: 0px;

}




div.nav	{
	display: table-cell;
	background-color: #F0F8FF;
	padding: 20px;
}


#aside {
	width: 175px;
	margin-top: 20px;
	float: left; 
}

#left h1{
 font-family: GmarketSansTTFMedium;
 font-size: 25px;
}

#left ul{
	font-family: GmarketSansTTFMedium;
	font-size: 20px;
	color:FFF;
	list-style: none;
	text-indent: 15px;
}
#left ul li{
	background-color: #F5F5F5;
	line-height: 28px;
	border-bottom:  1px solid #808080;
		
}

#left ul li a {
	text-decoration: none;
	color: #696969;
	display: block;
}

#left ul li a:hover {
	background: #d40203;
}
#left ul li#active{
	background: #d40203;
}

#main {
	font-family: HyhwpEq;
	font-size: 12px;
	color: #464646;
	overflow: hidden;
	float: left;
	margin:70px;
	border: 1px solid #ffff;
	
	
}


#navinavi {
	margin: 10px;
}
#navinavi ul{
	list-style: none;
	text-align: center;
	border-top: 1px solid red;
	border-bottom: 1px solid red;
	padding: 10px 0;
}

#navinavi ul li{
	display: inline;
	text-transform: uppercase;
	padding: 0 10px;
	letter-spacing: 10px;
	
}

#navinavi ul li a {
	text-decoration: none;
	color: black;
}

#navinavi ul a:hover {
	text-decoration:  underline;
}



#footer {
	width: 100%;
	height: 50px;
	clear: both;
}

</style>
<body>
 	<br><br><br><br><br><br>
	<div class="body">
		
	<div class="header0">
		<header style="background-color: #000080;
	height: 60px;
	color: #ffff;
	text-align: center;
	font-family : Segoe UI;">
			<h1 style="padding-top: 10px;">ADMIN PAGE</h1>
		</header>
	</div>
	
	
	<div id="navinavi">
	<nav>
		<ul>
			<li><a onclick="location.href='/'">HOME</a></li>
			<li><a onclick="location.href='/mypage/info'">My Profile</a></li>
			<li><a onclick="location.href='/mypage'">My Page</a></li>
			<li><a onclick="location.href='/mypage/review'">review</a></li>
			
			
		
		
		</ul>
	
	</nav>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- /header -->
	
	<div id="left"> 
		
			<aside id="aside">
			<h1 style="color:#696969">시스템 관리</h1>
				<ul>
				<li><a  onclick="location.href='/'">HOME</a></li>
					<li><a  onclick="location.href='/admin/member'">회원 관리</a></li>
					<li><a  onclick="location.href='/admin/review'">리뷰 관리</a></li>
					<li><a  onclick="location.href='/admin/stats'">메뉴 통계</a></li>
					<li><a  onclick="location.href='/admin/menu'">메뉴 추가</a></li>		
				</ul>
			</aside>
		</div>
		<div id="main">
		<a href="/admin/member" target="_blank">
			<img src="../images/basic_home.png" alt="flag" style="width:80px; height:80px;">
		</a>
		<p style="text-align: center; padding: 10px;">HOME</p>
		</div>
		
		
		<div id="main">
		<a href="/admin/member" target="_blank">
			<img src="../images/basic_webpage_img_txt.png" alt="flag" style="width:80px; height:80px;">
		</a>
		<p style="text-align: center; padding: 10px;">회원 관리</p>
		</div>
		
			
		<div id="main">
		<a href="admin/review" target="_blank">
			<img src="../images/basic_todo_txt.png" alt="flag" style="width:80px; height:80px;">
		</a>
		<p style="text-align: center; padding: 10px;">리뷰 관리</p>
		</div>
		
		
			
		<div id="main">
		<a href="/admin/stats" target="_blank">
			<img src="../images/basic_mixer2.png" alt="flag" style="width:80px; height:80px;">
		</a>
		<p style="text-align: center; padding: 10px;">메뉴 통계</p>
		</div>
		
		
				
		<div id="main">
		<a href="/admin/menu" target="_blank">
			<img src="../images/basic_magnifier_plus.png" alt="flag" style="width:80px; height:80px;">
		</a>
		<p style="text-align: center; padding: 10px;">메뉴 추가</p>
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

	
		<div id="footer">
		<footer style="background-color: #F5F5F5;">copyright (c) 2022 pigpick</footer>
		</div>
		
	

	<div>
		
</div>
</body>
</html>