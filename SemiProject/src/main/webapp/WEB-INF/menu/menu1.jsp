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
</head>
<body>
 <div class="section" id="section2">
        
     
         <img src="images/menu_pick.png" alt=""
         class="menupicktag">
         
         <img src="images/tape.png" alt="" class="tape">
         <div class="menu">
         	<form action="recommend" method="post">
         	<div class="menu_choose1">
         	 <button class="menu_btn"><img src="images/koreanfood.jpg" class="menu_img" id="menu1" title="한식"></button>
         	
         	 <button class="menu_btn"><img src="images/japanesefood.jpg" class="menu_img" id="menu1" title="일식"></button>
    
         	 <button class="menu_btn"><img src="images/chinesefood.jpg" class="menu_img" id="menu1" title="중식"></button>
         	 
         	 <button class="menu_btn"><img src="images/italianfood.jpg" class="menu_img" id="menu1" title="양식"></button>
         	 
    
         	 <button class="menu_btn"><img src="images/asianfood.jpg" class="menu_img" id="menu1" title="아시아"></button>
         	 
         	 <button class="menu_btn"><img src="images/taco.jpg" class="menu_img" id="menu1" title="기타"></button>
	
		       
		     </div>
		     <div class="menu_choose2">
		     	 <button class="menu_btn2"><img src="images/rice.jpg" class="menu_img2" id="menu2" title="밥"></button>
				 <button class="menu_btn2"><img src="images/noodle.jpg" class="menu_img2" id="menu2" title="면"></button>
				 <button class="menu_btn2"><img src="images/bread.jpg" class="menu_img2" id="menu2" title="빵"></button>
		         <button class="menu_btn2"><img src="images/meat.jpg" class="menu_img2" id="menu2" title="고기"></button>
		         <button class="menu_btn2"><img src="images/fish.jpg" class="menu_img2" id="menu2" title="해산물"></button>
		         <button class="menu_btn2"><img src="images/salad.jpg" class="menu_img2" id="menu2" title="채소"></button>
		         <button class="menu_btn2"><img src="images/cake.jpg" class="menu_img2" id="menu2" title="디저트"></button>
		      </div>
		      
		      <div class="menu_choose3">
		    
		      <button class="menu_btn3"><img src="images/spicy.jpg" class="menu_img3" id="menu3" title="매운맛"></button>
		      
		      </div>
		       <button type="submit" id="like">메뉴 추천</button>
		       
         	</form>
       	 
        
         </div>

         
         <div class="round"></div>
         </div>
</body>
</html>