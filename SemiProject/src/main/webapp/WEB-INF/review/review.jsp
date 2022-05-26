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
<link href="../css/board_table.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<body>
	
	<button type="button" onclick="location.href='/review/new'">글쓰기</button>
	<button type="button" onclick="location.href='/review/content'">내용보기</button>
	<section>
	
	<h2>Review</h2>
	<div class="tbl-header" style="width: 1200px;">
    <table>
      <thead>
		<tr>
			<th>번호</th>
			<th>장소명</th>
			<th>내용</th>
			<th>별점</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:if test="${totalCount==0}"> <!-- 글이 없을때 -->
				<tr>
				<td colspan="6" align="center">
				<b>등록된 글이 없습니다.</b>
				</td>
				</tr>
				
		</c:if>
		 </thead>
		</table>
			
		</div>
		<div class="tbl-content" style="width: 1200px;">
    <table>
     <tbody>
        
				<c:set var="no" value="${totalCount}"/>
				<c:if test="${totalCount>0}"> <!-- 글이 있을때 -->
					<c:forEach var="dto" items="${list}">
					<tr>
						<input type="hidden" value="${dto.num}">
						<td>${no}</td>
						<c:set var="no" value="${no-1}"/>
						
						<!-- 음식점명 -->
						<td><a href="/review/place?id=${dto.place_id}">${dto.place_name}</a></td>
						
						<%-- <!-- 제목 -->
						<td class="title">
							<!-- 제목출력 -->
							<a href="content?num=${dto.num}&currentPage=${currentPage}">
							${dto.subject}
							</a> 
							
							<!-- 사진이 있는경우 아이콘 표시 -->
							<c:if test="${dto.photos!='no'}">
							<span class="glyphicon glyphicon-picture" style="color:gray; float:left;"></span>
							</c:if>
						</td>--%>
						
						<td><a href="/review/content?num=${dto.num}">${dto.content}</a></td>
						<td>${dto.stars}</td>
						<td>${dto.member_name}</td>
						<td><fmt:formatDate value="${dto.created_at}" pattern="yyyy-MM-dd" /></td>
					</tr>
					</c:forEach>
				</c:if>
				</tbody>
	</table>
  </div>
			<button type="button" class="btn_board_write" onclick="location.href='/review/new'">Write</button>
		</section>
			
					

</body>
</html>