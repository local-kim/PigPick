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
	<link href="../css/style.css"  rel="stylesheet" type="text/css" />
	<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<body>



	<div class="section" id="section6">
	<br><br>
	<h1>리뷰 상세보기</h1>
	<br><br>

<button type="button" class="btn_review_edit" onclick="location.href='/review/edit?num=${review.num}'">Edit</button>
<button type="button" class="btn_review_delete" onclick="location.href='/review/delete?num=${review.num}'">Delete</button>
    <table class="container">
   
		<tr>
			<th>식당</th>
			<td>${review.place_name}</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${review.member_name}</td>
		</tr>
		
		<tr>
			<th>★★★★★</th>
			<td>${review.stars}</td>
		</tr>
		<tr>	
			<th>Date</th>
			<td>${review.created_at}</td>
		</tr>
		<tr>	
			<th>photo</th>
			<td>
				<c:if test="${dto.photos!='no' }">
					<c:forTokens var="photo" items="${dto.photos }" delims="," varStatus="n">
				<a href="../review_img/${photo }" target="_new" style="cursor: pointer;">
				<img src="../review_img/${photo }"
				style="max-width: 200px; border: 0px solid orange;"></a>
				<c:if test="${n.count%2==0 }"><br><br></c:if>
				
					</c:forTokens>
				</c:if>
			</td>
		</tr>
		<tr>
			<th colspan="2">내용</th>
		
		</tr>
		<tr>
			<td colspan="2" style="background-color: white; height: 300px;">${review.content}</td>
		</tr>
	 

	
	

     	
	
	</table>
  </div>
 
	
</section>
	
</body>
</html>