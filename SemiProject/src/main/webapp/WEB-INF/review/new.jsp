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
	<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
	
	<style>
	li{list-style:none;}
	
	/* div#menu_wrap{
	
	} */
 	div#menu_wrap div.info{
    height: 80px;
    
}

ul.placesList{
 height: 157px;
 /*  overflow: auto; */
}

li.item {
    height: 85px;
}
div.info:hover{
	cursor:pointer;
	background-color: #dbdffd;
	-webkit-box-shadow: 0 6px 6px -6px #0E1119;
    -moz-box-shadow: 0 6px 6px -6px #0E1119;
    box-shadow: 0 6px 6px -6px #0E1119;
}

.search_place_name{
	font-weight:bold;
}
	</style>
</head>
<body>

<section>
	<div class="section" id="section6">
		<br><br>
		<h1>Write</h1>
		<br><br><br>
		<c:if test="${sessionScope.loggedIn==null }">
			<script type="text/javascript">
				alert("로그인 후 글쓰기를 시도해주세요");
				location.href='../login';
			</script>
		</c:if>

		<form action="insert" method="post" enctype="multipart/form-data">
			<table class="container" style="width: 1000px;">
				<tr>
					<th class="text-center">식당 찾기</th>
					<td>
		  			<div class="map_wrap">
							<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
							<div id="menu_wrap" class="bg_white">
								<div class="option">
								<!-- 추가2 -->
		       				<input type="text" value="" id="keyword" size="20" onkeypress="javascript:if(event.keyCode==13){event.preventDefault(); searchPlaces();}">
		       				<button type="button" id="searchbtn" onclick="searchPlaces()">검색하기</button>
								</div>
								<ul id="placesList"></ul>
								<div id="pagination">
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th class="text-center" >나의 맛집</th>
					<td>
						<input type="text" value="" id="place_name" name="place_name">
						<input type="hidden" value="" id="place_id" name="place_id">
						<input type="hidden" value="" id="place_category_name" name="place_category_name">
						<input type="hidden" value="" id="place_phone" name="place_phone">
						<input type="hidden" value="" id="place_x" name="place_x">
						<input type="hidden" value="" id="place_y" name="place_y">
						<input type="hidden" value="" id="place_address_name" name="place_address_name">
					</td>
				</tr>
				<tr>
	  			<th class="text-center" >★★★★★</th>
					<td>
	  				<select name="stars">
				  			<option value="">별점을 선택하세요</option>
				  			<option value="01">☆☆☆☆★</option>
				  			<option value="02">☆☆☆★★</option>
				  			<option value="03">☆☆★★★</option>
				  			<option value="04">☆★★★★</option>
				  			<option value="05">★★★★★</option>
	  				</select> 
					</td>
	   		</tr>
				<tr>
					<th class="text-center">리뷰 사진</th>
					<td>
						<input type="file" name="upload" class="form-control" multiple>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea style="width: 100%; height: 300px;" name="content" class="form-control" required
						placeholder="리뷰를 작성해주세요"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" onclick="location.href='/review/insert'"
						class="btn_review_save">저장</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</section>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=462602bfbf3fad68a3a7744b60ee4c02&libraries=services,clusterer,drawing"></script>
	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();  

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {
	    var keyword = document.getElementById('keyword').value;
	    
	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
	    }
	    
	 		// 검색 옵션 객체
	 		var searchOption = {
        size: 3
	    };

	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch(keyword, placesSearchCB, searchOption);
		}

		

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);
	    }
	    else if (status === kakao.maps.services.Status.ZERO_RESULT) {
        alert('검색 결과가 존재하지 않습니다.');
        return;
	    }
	    else if (status === kakao.maps.services.Status.ERROR) {
        alert('검색 결과 중 오류가 발생했습니다.');
        return;
	    }
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {
			var listEl = document.getElementById('placesList'),
			    menuEl = document.getElementById('menu_wrap'),
			    fragment = document.createDocumentFragment(),
			    bounds = new kakao.maps.LatLngBounds(),
			    listStr = '';
			
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);
	    
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    /* bounds.extend(currentPos); */
	    
	    for (var i = 0; i < places.length; i++) {
	    	// 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x);
        var marker = addMarker(placePosition, i);
        var itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
	        kakao.maps.event.addListener(marker, 'mouseover', function() {
	        		displayInfowindow(marker, title);
	        });
	
	        kakao.maps.event.addListener(marker, 'mouseout', function() {
	        		infowindow.close();
	        });
	
	        itemEl.onmouseover =  function () {
	        		displayInfowindow(marker, title);
	        };
	
	        itemEl.onmouseout =  function () {
	        		infowindow.close();
	        };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
	    }

	    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;

	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

	    var el = document.createElement('li'),
	    		itemStr = "<span class='markerbg marker_" + (index+1) + "'></span>" +
	                		"<div class='info'>" +
	                		"	<h4 class='search_place_name'>" + places.place_name + "</h4>" +
	    							"	<span class='search_category_name'>" + places.category_name + "</span><br>" +
	                		"	<input type='hidden' value=" + places.id + " class='search_id'>" +
	    							"	<input type='hidden' value=" + places.phone + " class='search_phone'>" +
	    							"	<input type='hidden' value=" + places.x + " class='search_x'>" +
	    							"	<input type='hidden' value=" + places.y + " class='search_y'>";

	    if (places.road_address_name) {
      	itemStr += "    <span class='search_address_name'>" + places.road_address_name + "</span>";
	    } else {
	    	itemStr += "    <span class='search_address_name'>" + places.address_name + "</span>";
	    }
	                 
    		itemStr += '</div>';

	    el.innerHTML = itemStr;
	    el.className = 'item';

	    return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions = {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
        marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
	        });

	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

	    return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
	    for (var i = 0; i < markers.length; i++) {
	    	markers[i].setMap(null);
	    }   
	    markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 

	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild (paginationEl.lastChild);
	    }

	    for (i = 1; i <= pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i === pagination.current) {
        		el.className = 'on';
        } else {
	        el.onclick = (function(i) {
	        		return function() {
	          		pagination.gotoPage(i);
	          }
	        })(i);
        }

        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

	    infowindow.setContent(content);
	    infowindow.open(map, marker);
		}

		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	    	el.removeChild (el.lastChild);
	    }
		}
		
		$(function(){
			$(document).on("click", ".search_place_name", function () {
		    $("#place_name").val($(this).text());
		    $("#place_id").val($(this).siblings(".search_id").val());
		    $("#place_category_name").val($(this).siblings(".search_category_name").text());
		    $("#place_phone").val($(this).siblings(".search_phone").val());
		    $("#place_x").val($(this).siblings(".search_x").val());
		    $("#place_y").val($(this).siblings(".search_y").val());
		    $("#place_address_name").val($(this).siblings(".search_address_name").text());
		  });
		});
	</script>
</body>
</html>