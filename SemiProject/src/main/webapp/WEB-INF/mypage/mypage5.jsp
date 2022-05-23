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
	<br><br><br><br><br>
	<h1 class="mypage5_title"">My Profile Edit</h1>
	<h3>${info}</h3>

	<form action="update" method="post" enctype="multipart/form-data">
	<!-- hidden 2개 -->
	<!--  수정 완료후 내용보기나 목록으로 이동하기 위해선 원래 보던 페이지값이 필요함 -->
	<!--<input type="hidden" name="currentPage" value="${currentPage}">-->\
	
	<!--  Dto에서 값을 넘김 -->
	<input type="hidden" name="num" value="${dto.member_num}">
	<input type="hidden" name="num" value="${dto.tel}">
	<input type="hidden" name="num" value="${dto.address}">
	
	<div>
		<br><br>
		
		<table class="table table-bordered mytable" style="width: 1100px;">
			<tr>
				<th class="text-center" style="width: 100px; background-color:#ffc;">My Photo</th>
				<td><input type="file" name="" class="form-control"></td>
				
			</tr>
			<tr>
				
				<th class="text-center" style="width: 100px; background-color:#ffc;">Name(ID)</th>
				<td>
				<input type="text" name="" class="form-control"
					required="required" 
					value="${info.name}(${info.id})">
				</td>
				
			</tr>
			<tr>
				<th class="text-center" style="width: 100px; background-color:#ffc;">Tel</th>
				<td>
				<input type="text" name="" class="form-control"
					required="required" 
					value="${info.tel}">
				</td>
			</tr>
			<tr>
				<th class="text-center" style="width: 100px; background-color:#ffc;">E-Mail</th>
				<td>
				<input type="text" name="" class="form-control"
					required="required" 
					value="${info.email}">
				</td>
			</tr>
			<tr>
				<th class="text-center" style="width: 100px;background-color:#ffc;">Address</th>
				<td>
				<input type="text" name="" class="form-control"
					required="required" 
					value="${info.address}">
				</td>
			</tr>
			<tr>
			<td  colspan="2" align="center">
				<button type="submit" style="width: 100px;background-color: orange" 
				 onclick="location.href='/mypage/update'">SAVE</button>
				
			</td>
			</tr>
				
		</table>
		
		</div>	
	</div>
		
</body>
</html>