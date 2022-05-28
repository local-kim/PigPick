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
<br><br><br><br><br><br><br><br><br><br>
<style type="text/css">

div.login_info{
	border:3px solid white;
	background: white;
	border-radius: 70px;
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	
	
	position:fixed;
	height: 100;
	width: 100;
	padding: 20px;
	
	
}


div.box1{
	border:3px solid white;
	background: white;
	border-radius: 70px;
	
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	height: 200;
	width: 200;
	
	position:absolute;
	
	transform: translate(0, 15%);
	padding: 80px;
}

div.menu_info{
	border:3px solid white;
	background: white;
	border-radius: 70px;
	
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	
	
	position:absolute;
	
	transform: translate(0, 840%);
	padding: 20px;
		
}

div.box2{
	border:3px solid white;
	background: white;
	border-radius: 70px;
	
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	
	position:absolute;
	transform: translate(0, 170%);
	height: 200;
	width: 200;
	padding: 80px;
	
}



div.box3{ 
	border:3px solid white;
	background: white;
	border-radius: 70px;

	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	
	position:absolute;
	
	transform: translate(0, 230%);
	height: 200;
	width: 200;
	padding: 80px;
	
}





div.mypage_info{
	border:3px solid white;
	background: white;
	border-radius: 70px;

	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	position:absolute;
	
	transform: translate(0, 1750%);
	height: 200;
	width: 200;
	padding: 20px;
}

div.box4{ 
	border:3px solid white;
	background: white;
	border-radius: 70px;
	
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;

		position:absolute;
	
	transform: translate(0, 320%);
	height: 200;
	width: 200;
	padding: 80px;
}
div.board_info{
	border:3px solid white;
	background: white;
	border-radius: 70px;
	
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	
	position:absolute;
	
	transform: translate(0, 2300%);
	height: 200;
	width: 200;
	padding: 20px;
}


div.box5{ 
	border:3px solid white;
	background: white;
	border-radius: 70px;
	
	font-size : 40px;
	font-family : GmarketSansTTFMedium;
	text-shadow : #99A3A4 1px 1px;
	border-style: outset;
	text-align: center;
	box-shadow: #99A3A4 1px 1px;
	left:35%;
	
		position:absolute;
	
	transform: translate(0, 500%);
	height: 200;
	width: 200;
	padding: 80px;
	
	
}

#key{
 
	top: 40px;
	padding: 20px;

}
#join_img{

	top: 50px;
	right: 50px;
	padding: 20px;
}
</style>

</head>
<body>



<button type="button" class="login_info" id="login_info" style="width:100px;
        margin:auto;
        display:block;">
	<strong>Log In</strong>
</button>

<div class="box1" id="box1" > <!--  style="display: none">-->
	<img src="../images/key.png" id="key" style="width:200px; height:200px;">
	<strong>상단 오른쪽그림을 클릭해서<br>
	<strong style="color: blue">로그인</strong>&ensp;해주세요</strong><br><br>
	<strong><img src="../images/join.png" id="join_img" style="width:200px; height:200px;">
	회원가입을 하지 않으셨다면 <br> <strong style="color: blue">&ensp;JOIN</strong> 을 눌러서 가입해 주세요</strong>
</div>

<!--  
<script>
$(document).ready(function () {
	$("#login_info").click( function() {
			$("div#box1").show();
		$("div#box1").click(function () {
			$("div#box1").hide();
			
			});
		});
	});
</script>-->

	

<div class="menu_info">
	<strong>MENU</strong></div>

<br><br><br><br><br><br><br>
<div class="box2" id="box2">
	<strong style="color: red">PIG PICK-PICK MENU</strong><strong>&ensp;를 눌러 <br><br> 원하는 메뉴를 골라주세요 </strong><br><br>
	<strong>고른 후</strong>
	&ensp;<img src="../images/find.png" style="width:100px; height:100px;"><strong>&ensp;를 눌러주세요 </strong>
</div>
<br><br><br><br><br><br><br>
<div class="box3" id="box3">
	<strong>원하는 메뉴가 나오면</strong>
	<img src="../images/kpop.png" style="width:100px; height:100px;"><strong>를 눌러서<br><br>식당리스트를 볼 수 있어요</strong><br><br>
	<strong>다른 메뉴를 추천받고 싶다면</strong>
	&ensp;<img src="../images/reset.png" style="width:100px; height:100px;"><strong>&ensp;를 눌러주세요</strong>
</div>

<div class="mypage_info">
	<strong>My Page</strong></div>
	
<br><br><br><br><br><br><br>
<div class="box4" id="box4">
	<strong style="color: red">My Menu List</strong><strong>는<br><br> 내가 먹은 음식과 먹은 횟수를 볼 수 있어요</strong><br><br>
	<strong style="color: red">My Page Review</strong><strong>에서는 <br><br>내가 남긴 리뷰를 모아볼 수 있어요</strong>
	
</div>

<div class="board_info">
	<strong>Board</strong></div>


<div class="box5" id="box5">
	<strong style="color: red">Board</strong><strong>게시판에서는<br><br> 내가 먹은 음식의 식당에 대해<br><br> 후기를 남길 수 있어요</strong><br><br>

	
</div>
</body>
</html>








