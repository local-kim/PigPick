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
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<br><br><br><br><br><br><br>

		<table style="width: 1000px;border:1px solid black; background-image:url('images/mypage1.png');
		z-index:111;">
		<tr>
			<td>
			<h3><b style="background: #ffc;">${name}</b>님의 기록</h3>
			</td>
		</tr>
		<tr>
			<td>
			<button type="button" class="btn_rank"  id="btn_mypage1" onclick="location.href='/mypage/rank'">
			<img src="images/mymenulist.png" class="mymenulist" id="mymenulist" title="순위"></button>
			</td>
		</tr>
		<tr>
			<td>
			<button type="button" class="btn_review" id="btn_mypage1" onclick="location.href='/mypage/review'">
			<img src="images/myreview.png" class="myreview" id="myreview" title="리뷰"></button>
			</td>
		</tr>
		<tr>
			<td>
			<button type="button" class="btn_mypage" id="btn_mypage1" onclick="location.href='/mypage/info'">
			<img src="images/myprofile.png" class="mypage_img" id="mypage" title="내정보"></button>
			</td>
		</tr>
		
		</table>
		
	
	
	
</body>
</html>