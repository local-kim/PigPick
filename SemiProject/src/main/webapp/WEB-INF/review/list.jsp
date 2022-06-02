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
<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">


$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
	
</script>

<style>
a:hover{text-decoration:none;}

 .star-rating{width:174px; height:35.6px; }
.null{width:auto; height:35.6px; z-index:99; background:url(../images/nullstar5.png)no-repeat; background-size: cover;}
.full{height:35.6px; backgorund-position:left;z-index:1;  background:url(../images/fullstar4.png) no-repeat; background-size:cover; margin:0;}

</style>
<body>
	
	<section>
	
	<div class="section" id="section6">
	<br><br><br>
	
	<h1>Review</h1>
	<br><br><br><br>
	<button type="button" class="btn_write" onclick="location.href='/review/new'">Write</button>
    <table class="container">
	
	

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
		
	
	     <tbody>
	        
					<c:set var="no" value="${no }"/>
					<c:if test="${totalCount>0}"> <!-- 글이 있을때 -->
						<c:forEach var="dto" items="${list}" varStatus="i">
						<tr>
							<input type="hidden" value="${dto.num}" />
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
							
							<td width="550px"><a href="/review/content?num=${dto.num}">${dto.content}</a></td>
							
							<td class="star-rating" style="text-align:center;">
   								 <div class="null">
   								 <input type="hidden" value="${dto.stars}" name="${no+1}">
   									<div class="full">
   									 <script type="text/javascript">
   									var star= ${dto.stars};
   									/*console.log("star:"+star); */
   									
   									var fstar = parseInt(star);
   									/*console.log(typeof(fstar));*/
   									
   									var onstarfix=20; //fixstar
   									var starwidth = (fstar * onstarfix);
   									/*var ss=String(starwidth).val();*/
   									var inpt1 = $("input[name=${no+1}]");
   									/*console.log("inpt:"+inpt1);*/
   									var test=$(inpt1).next().css("width",starwidth+"%"); //full
   									console.log(test);
   									</script>
   									</div>   							
   								</div>			 
							</td>
							
							<td>${dto.member_name}</td>
							<td><fmt:formatDate value="${dto.created_at}" pattern="yyyy-MM-dd" /></td>
						</tr>
						</c:forEach>
					</c:if>
					</tbody>
		</table>
		<div class="paging">
			<ul class="pagination">
			<!-- 이전 -->
			<c:if test="${startPage > 1}">
				<li><a href="review?currentPage=${startPage - 1}">&lt;</a></li>
			</c:if>
			
			<c:forEach var="pp" begin="${startPage}" end="${endPage}">
				<c:if test="${pp == currentPage}">
					<li class="active"><a href="review?currentPage=${pp}">${pp}</a></li>
				</c:if>
				<c:if test="${pp != currentPage}">
					<li><a href="review?currentPage=${pp}">${pp}</a></li>
				</c:if>
			</c:forEach>
			
			<!-- 다음 -->
			<c:if test="${endPage < totalPage}">
				<li><a href="review?currentPage=${endPage + 1}">&gt;</a></li>
			</c:if>
		</ul>
	</div>
  </div>
  
  
  
	
	</section>
</body>
</html>