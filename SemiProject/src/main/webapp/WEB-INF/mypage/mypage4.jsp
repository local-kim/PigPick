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

</style>
<body>
	<br><br><br><br><br>
	<h1 class="mypage4_title">My profile</h1>
	<h3>${info}</h3>

	<div>
		<br><br>
		
		<table class="table table-bordered mytable" style="width: 1100px; background-color: white;">
			<tr>
				<td align="center"  style="width: 100px; background-color:#ffc;">
				<img src="../images/user.png" class="user_img" title="내사진"
				 style="width: 50px;"></td>
				<td>${info.photo}</td>
				
			</tr>
			<tr>
				
				<th class="text-center" style="width: 100px; background-color:#ffc;">Name(ID)</th>
				<td>
				${info.name}(${info.id})
				</td>
				
			</tr>
			<tr>
				<th class="text-center" style="width: 100px; background-color:#ffc;">Tel</th>
				<td>
				${info.tel}
				</td>
			</tr>
			<tr>
				<th class="text-center" style="width: 100px; background-color:#ffc;">E-Mail</th>
				<td>
				${info.email}
				</td>
			</tr>
			<tr>
				<th class="text-center" style="width: 100px; background-color:#ffc;">Address</th>
				<td>
				${info.address}
				</td>
			</tr>
				
		</table>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<div style="position: absolute; left: 30%;">
				<button type="button" onclick="location.href='/mypage/editinfo'"
					style="width: 100px;background-color: orange" >Edit</button>
					
				<button type="button" class="btn-btn-default"
					style="width: 100px;background-color: orange" onclick="history.back()">Before</button>
			</div>
		</div>	
	</div>
</body>
</html>