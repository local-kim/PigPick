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
	<link href="../css/table_style.css" rel="stylesheet" type="text/css" />
</head>
<style>

</style>
<body>
	<br><br><br><br><br><br>
	<h1 class="mypage4_title" style="position:relative; left:70px;">My profile</h1>
	<%-- <h3>${info}</h3> --%>

	<div>
		<br><br>
		
		<table class="container" style="width:700px; height:255.5px;">
			 <tr>
			 <th rowspan="2" class="text-center" style=" width:200px; height:300px;">
			 <c:if test="${info.photo!='null' }">
			  <img src="${info.photo}">
			 </c:if>
			 <img src="../images/user.png" class="user_img" title="내사진"
		     style="width: 100px;">
			
			 </th>
			 <!-- <th class="text-center" style="height: 100px;">Name</th> -->
			 <td style="width: 400px;">
				${info.name}
			<tr>
			 </td>
			 <!-- <th class="text-center" style="height: 100px;">ID</th> -->
			 <td style="width: 400px;">
				${info.id}
			</td>
			</tr>
			<%-- <c:if test="">
		
			</c:if>
				<th class="text-center" style="height: 100px;">
				<img src="../images/user.png" class="user_img" title="내사진"
				 style="width: 50px;"></th>
				<td>${info.photo}</td> --%>
				
			</tr>
			
			
			<tr>
				<th class="text-center">Tel</th>
				<td colspan="3">
				${info.tel}
				</td>
			</tr>
			<tr>
				<th class="text-center">E-Mail</th>
				<td colspan="3">
				${info.email}
				</td>
			</tr>
			<tr>
				<th class="text-center" style="height: 200px;">Address</th>
				<td colspan="3">
				${info.address}
				</td>
			</tr>
				
		</table>
		<br><br><br>
			<div style="position: absolute; left: 45%;">
				<button type="button" class=btnedit onclick="location.href='/mypage/editinfo'">Edit</button>
				&nbsp;&nbsp;
				<button type="button" class=btnedit onclick="history.back()">Before</button>
			</div>
		</div>	
</body>
</html>