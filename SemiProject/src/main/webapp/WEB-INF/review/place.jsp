<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
<script>
	$(function(){
		$("span.heart").click(function(){
			console.log("click");
			var placeId = $("#placeId").val();
			console.log(placeId);
			var c = $(this).attr("class");
			console.log(c);
			var checked;
			
			
			if(c == "glyphicon glyphicon-heart-empty heart"){
				$(this).attr("class", "glyphicon glyphicon-heart heart");
				checked = 1;
			}
			else{
				$(this).attr("class", "glyphicon glyphicon-heart-empty heart");
				checked = -1;
			}
			
			console.log("ajax");
			
			$.ajax({
				type: "get",
				dataType: "json",
				data: {"placeId" : placeId, "checked" : checked},
				url: "place/like",
				success: function(data){
					$("#likes").text(data);
					console.log("success");
				}
			});
		});
	});
	
</script>
</head>
<body>
<div class="section" id="section6">
	<br><br><br><br><br><br>
	<input type="hidden" value="${place.id}" id="placeId">
	
	<div style="position:absolute; left: 5%;top: 200px;">
		<h1 style="text-align: left;display: inline-block;">${place.name} (${stars})</h1>
		<c:if test="${like == 0}">
			<span class="glyphicon glyphicon-heart-empty heart" style="color:red;font-size:30px"></span>
		</c:if>
		<c:if test="${like == 1}">
			<span class="glyphicon glyphicon-heart heart" style="color:red;font-size:30px"></span>
		</c:if>
		
		<span id="likes">${likes}</span>
		<h3 style="color:  #97caEf;text-decoration: underline;">
		<b>${fn:length(list)}개</b>의 후기가 있습니다</h3>
		<br>
		<h3>${place.category}</h3>
		<h3>${place.phone}</h3>
		<h3>${place.address}</h3>
	</div>
	
	<div id="map" style="position:absolute; width:800px;height:700px; left: 55%;"></div>
		
		
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=462602bfbf3fad68a3a7744b60ee4c02&libraries=services,clusterer,drawing"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(${place.y}, ${place.x}), // 지도의 중심좌표
		        level: 2 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(${place.y}, ${place.x}); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	</script>
	
	
	<table class="container_2" style="position:absolute; left: 1%;background-color: white;">
	
		<tr>
			<th>작성자</th>
			<th>한줄평</th>
			<th>별점</th>
			<th>작성 시간</th>
		</tr>
		<c:forEach var="review" items="${list}">
			<tr>
				<td>${review.member_name}</td>
				<td>${review.content}</td>
				<td>${review.stars}</td>
				<td><fmt:formatDate value="${review.created_at}" pattern="yyyy-MM-dd HH:mm" /></td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
</body>
</html>