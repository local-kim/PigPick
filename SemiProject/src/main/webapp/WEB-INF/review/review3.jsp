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
	<link href="../css/board_table.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript">
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<body>


<section>
	
	<h2>My Place</h2>
	<div class="tbl-header" style="width: 1200px;">
    <table>
      <thead>
		<tr>
			<th>No.</th>
			<th>내용</th>
			<th>★★★★★</th>
			<th>Date</th>
		</tr>
	  </thead>
	</table>
	</div>
	<div class="tbl-content" style="width: 1200px;">
    <table>
     <tbody>
        <tr>
			
			<td>${review.member_num}</td>
			<td>${review.content}</td>
			<td>${review.stars}</td>
			<td>${review.created_at}</td>
			
		</tr>
	</tbody>
	</table>
  </div>
  <button type="button" class="btn_review_edit" onclick="location.href='/review/edit'">수정</button>
  <button type="button" class="btn_review_delete" onclick="location.href='/review/delete'">삭제</button>
	
</section>
	
</body>
</html>