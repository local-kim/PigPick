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
<link href="../css/board_table.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<br><br><br><br><br><br><br><br><br><br>
	<h1>${place.name}</h1>
	<h3>${place.category}</h3>
	<h3>${place.phone}</h3>
	<h3>${place.address}</h3>
	
	<div id="map" style="width:1000px;height:500px;"></div>
	
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
		
		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null);
	</script>
	
	<h4>${fn:length(list)}개의 후기가 있습니다.	</h4>
	<table>
		<tr>
			<td>작성자</td>
			<td>내용</td>
			<td>별점</td>
			<td>작성 시간</td>
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
</body>
</html>