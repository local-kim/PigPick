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
         	<div class="menu-choose">
         	 <button class="menu_btn"><img src="images/testmenubtn.jpg" class="menu_img" id="menu1" title="한식"></button>
         	
         	 <button class="menu_btn"><img src="images/testmenubtn.jpg" class="menu_img" id="menu1" title="일식"></button>
    
         	 <button class="menu_btn"><img src="images/testmenubtn.jpg" class="menu_img" id="menu1" title="중식"></button>
    
         	 <button class="menu_btn"><img src="images/testmenubtn.jpg" class="menu_img" id="menu1" title="아시아"></button>
	
		       
		       </div>
		       <button type="submit" id="like">메뉴 추천</button>
		       
         	</form>
       	 
        
         </div>

         
         <div class="round"></div>
         </div>
</body>
</html>