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

	<button type="button" onclick="location.href='/review/new'">글쓰기</button>
	<button type="button" onclick="location.href='/review/content'">내용보기</button>
	<table>
	<tr>
		<td>번호</td>
		<td>장소명</td>
		<td>내용</td>
		<td>별점</td>
		<td>작성자</td>
		<td>작성일</td>
	</tr>
	<c:if test="${totalCount==0}"> <!-- 글이 없을때 -->
			<tr>
			<td colspan="6" align="center">
			<b>등록된 글이 없습니다.</b>
			</td>
			</tr>
			</c:if>
			
			<c:if test="${totalCount>0}"> <!-- 글이 있을때 -->
				<c:forEach var="dto" items="${list}">
				<tr>
					<td>${no}</td>
					<c:set var="no" value="${no-1}"/>
					
					<!-- 음식점명 -->
					<td>${dto.place_id}</td>
					
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
					
					<td>${dto.content}</td>
					<td>${dto.name}</td>
					<td>${dto.stars}</td>
					<td><fmt:formatDate value="${dto.created_at}" pattern="yyyy-MM-dd" /></td>
				</tr>
				</c:forEach>
			</c:if>
		</table>

</body>
</html>