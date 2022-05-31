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
<!-- <link href="../css/style.css" rel="stylesheet" type="text/css" /> -->
</head>

<style type="text/css">
body{
/* width:500px;
height:800px;
overflow:scroll; */
}
div.popup_all_info *{
	width:inherit;
	height:inherit;
	background-color: white;
	font-size : 30px;
	font-family : GmarketSansTTFMedium;
	border-radius: 50px;
	display: table-cell;
	/* border-style: outset; */
	/* box-shadow: #99A3A4 1px 1px; */
	position: relative;
	text-align: center;
	padding: 100px;
	top:-200px;
}



</style>
<script type="text/javascript">
$("div.header").css("display","none");
</script>
<br><br><br><br><br><br><br><br><br><br>
<body>

<div class="popup_all_info">

<!--  	<button type="button" class="login_info" id="login_info" style="width:100px;
	        margin:auto;
	        display:block;">
			<strong>Log In</strong>
		</button>
	
-->
	<div>
		<p style="background-color: #98B5B7; border-radius: 50px;">LOGIN</p></div>
		<br>

	<div> <!--  style="display: none">-->
		<img src="../images/key.png" id="key" style="width:150px; height:150px; position:relative; top: 50px;">
		&ensp;&ensp;&ensp;<strong>상단 오른쪽그림을 클릭해서<br>
		<strong style="color: #2626C2;">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;로그인</strong>&ensp;해주세요</strong><br><br>
		<strong><img src="../images/join.png" id="join_img" style="width:140px; height:140px; position:relative; top: 50px;">
		&ensp;&ensp;&ensp;&ensp;회원가입을 하지 않으셨다면 <br> 
		<strong style="color: #2626C2;">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
		JOIN</strong> 을 눌러서 가입해 주세요</strong>
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
	<br><br>
	
<div>
		<p style="background-color: #98B5B7; border-radius: 50px;">MENU</p></div>
		<br><br>

	<div>
		<strong style="color: #E62B00;">PIG PICK-PICK MENU</strong><strong>&ensp;를 눌러 <br><br> 원하는 메뉴를 골라주세요 </strong><br><br>
		<strong>고른 후</strong>
		&ensp;<img src="../images/find.png" style="width:100px; height:100px;"><strong>&ensp;를 눌러주세요 </strong>
	</div>
	<br><br>
	<div>
		<strong>원하는 메뉴가 나오면</strong>
		<img src="../images/kpop.png" style="width:100px; height:100px;"><strong>를 눌러서<br><br>식당리스트를 볼 수 있어요</strong><br><br><br><br>
		<strong>다른 메뉴를 추천받고 싶다면</strong><br><br>
		&ensp;<img src="../images/reset.png" style="width:100px; height:100px;"><strong>&ensp;를 눌러주세요</strong>
	</div>
<br><br>
	<div>
		<p style="background-color: #98B5B7; border-radius: 50px;">MY PAGE</p></div>
		<br><br>
		
	
	<div>
		<strong style="color: #E62B00;">My Menu List</strong><strong>&ensp;는
		
		<br><br> 내가 먹은 음식과 먹은 횟수를 볼 수 있어요</strong><br><br> <br>
		
		<strong style="color: #E62B00;">My Page Review&ensp;</strong><strong>에서는 
		
		<br><br>내가 남긴 리뷰를 모아 볼 수 있어요</strong>
		
	</div>

	<br><br>
	<div>
		<p style="background-color: #98B5B7; border-radius: 50px;">BOARD</p></div>
		<br><br>
	
	
	<div>
		<strong style="color: #E62B00;">Board</strong><strong>&ensp;게시판에서는<br><br> 내가 먹은 음식의 식당에 대해<br><br> 별점과 후기를 남길 수 있어요</strong><br><br>

	
	</div>
</div>
</body>
</html>