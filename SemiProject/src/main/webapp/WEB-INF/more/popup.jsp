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
<style>
.INTRODUCE{
	border:5px solid orange;
	background: white;
	border-radius: 90px;
	position:absolute;
	top:280px;
	left:680px;
}
#logo_img{
	display:block;
	margin:auto;
}

</style>

<body>
<br>
<div class="INTRODUCE">
<img src="images/logo_pigpick.jpg" id="logo_img">
<br><br>
<input type="button" value="PIGPICK이란?"  style=" margin:auto;
        display:block;  background-color:orange; padding:20px; color: #0a0a23; font-size : 40px;
	font-family : GmarketSansTTFMedium;  border:none;
    border-radius:10px;" onclick="location.href='/popup/picintro'"></input>




<!--  
	<h1 id="test">test</h1>
	<script>
		function func() {
			document.write("new 페이지")
		}
	</script>
	<button type="button" onclick="func()">클릭</button>
	
	-->
	
	
	
	
	<input type="button" value="PIGPICK 이용방법" style=" margin:auto;
        display:block;  background-color:orange; color: #0a0a23; padding:20px; border:none;
    border-radius:10px; font-size : 40px;
	font-family : GmarketSansTTFMedium;" onclick="location.href='/popup/intro'"></input>
	
    
   
    
    
}
	<br>

	
	<img src="../images/logop.gif">
		<!--  
		<div   class="row align-items-center justify-content-center text-center">
		<img id="score" src="images/ggulggul.png"/>
		<label>zzzzz</label>
		</div>
		-->
		
	<!-- 	<script>
		$(document).ready(function() {
			$('div#score').hide('src','images/ggulggul.png');
		});
		</script>
		
		<script>
		$(document).on('click', '#score', function(e){
		$('div#score').show();
		$('label#score').text('변경')
	
		}); 
		</script> -->
		


<canvas id="myCanvas" width="200" height="100"></canvas>
</div>
</body>
</html>











