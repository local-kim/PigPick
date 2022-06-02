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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style>
	/* HIDE RADIO */
	[type=radio], [type=checkbox] { 
	  position: absolute;
	  opacity: 0;
	  width: 0;
	  height: 0;
	}
	
	/* IMAGE STYLES */
	[type=radio] + img, [type=checkbox] + img {
	  cursor: pointer;
	}
	
	/* CHECKED STYLES */
	[type=radio]:checked + img, [type=checkbox]:checked + img {
	  outline: 2px solid #ddd;
	  border-radius: 20px;
	}
</style>
<script>
$(function(){
	//soon display:none; background-color: rgba(0,0,0,0.6);
	//script finish
	$(document).ready(function() {
	    // 로딩되기 시작할때
		$("input:radio[name='type']").attr("disabled",true);
		 $(".menu_choose2").css("display","none"); 
		$("input:checkbox[name='spicy']").attr("disabled",true);
		 $("#menu3").css("display","none");
		 $("#like").css("display","none"); 


	});
	
	$("input[name='category']").change(function(){
		var category = $("input[name='category']:checked").val();
		var type = $("input[name='type']:checked").val();
		
		if(category != null){
			$("input:radio[name='type']").attr("disabled",false);
			$(".menu_choose2").css("display","block");
		}
	});
	$("input[name='type']").change(function(){
		var type = $("input[name='type']:checked").val();
		var spicy = $("input[name='spicy']:checked").val();
		$("#like").css("display","block");
		
		switch(type){
		case "0":
			$("input:checkbox[name='spicy']").attr("disabled",false);
			$("#menu3").css("display","block");
			break;
		case "1":
			$("input:checkbox[name='spicy']").attr("disabled",false);
			$("#menu3").css("display","block");
			break;
		case "2":
			$("input:checkbox[name='spicy']").attr("disabled",false);
			$("#menu3").css("display","block");
			break;
		case "3":
			$("input:checkbox[name='spicy']").attr("disabled",false);
			$("#menu3").css("display","block");
			break;
		case "4":
			$("input:checkbox[name='spicy']").attr("disabled",false);
			$("#menu3").css("display","block");
			break;
		case "5":
			$("input:checkbox[name='spicy']").attr("disabled",false);
			$("#menu3").css("display","block");
			break;
		default:
			$("input:checkbox[name='spicy']").attr("disabled",true);
			$("#menu3").css("display","none");
			break;
		}

	});
	
	
})
</script>
</head>
<body>
	<div class="section" id="section2">
		<img src="images/menu_pick.png" alt="" class="menupicktag">
		
		<img src="images/tape.png" alt="" class="tape">
		
		<div class="menu">
			<form action="recommend/result" method="post">
				<div class="menu_choose1">
					<label>
						<input type="radio" name="category" value="0">
						<img src="images/koreanfood.jpg" class="menu_img" id="menu1">
					</label>
					<label>
						<input type="radio" name="category" value="1">
						<img src="images/japanesefood.jpg" class="menu_img" id="menu1">
					</label>
					<label>
						<input type="radio" name="category" value="2">
						<img src="images/chinesefood.jpg" class="menu_img" id="menu1">
					</label>
					<label>
						<input type="radio" name="category" value="3">
						<img src="images/italianfood.jpg" class="menu_img" id="menu1">
					</label>
					<label>
						<input type="radio" name="category" value="4">
						<img src="images/asianfood.jpg" class="menu_img" id="menu1">
					</label>
					<label>
						<input type="radio" name="category" value="5">
						<img src="images/taco.jpg" class="menu_img" id="menu1">
					</label>
				</div>
				 
				<div class="menu_choose2">
					<label>
						<input type="radio" name="type" value="0">
						<img src="images/rice.jpg" class="menu_img2" id="menu2">
					</label>
					<label>
						<input type="radio" name="type" value="1">
						<img src="images/noodle.jpg" class="menu_img2" id="menu2">
					</label>
					<label>
						<input type="radio" name="type" value="2">
						<img src="images/bread.jpg" class="menu_img2" id="menu2">
					</label>
					<label>
						<input type="radio" name="type" value="3">
						<img src="images/meat.jpg" class="menu_img2" id="menu2">
					</label>
					<label>
						<input type="radio" name="type" value="4">
						<img src="images/fish.jpg" class="menu_img2" id="menu2">
					</label>
					<label>
						<input type="radio" name="type" value="5">
						<img src="images/salad.jpg" class="menu_img2" id="menu2">
					</label>
					<label>
						<input type="radio" name="type" value="6">
						<img src="images/cake.jpg" class="menu_img2" id="menu2">
					</label>
				</div>
				
				<div class="menu_choose3">
					<label>
						<input type="checkbox" name="spicy" value="1">
						<img src="images/spicy_01.jpg" class="menu_img3" id="menu3">
					</label>
				</div>
				
				<button type="submit" id="like" >
				추천 받기</button>
			</form>
		</div>

		<div class="round"></div>
	</div>
</body>
</html>