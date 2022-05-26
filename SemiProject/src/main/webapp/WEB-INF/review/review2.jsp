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
	<link href="../css/board_table.css" rel="stylesheet" type="text/css" />
</head>
<body>

	

	<c:if test="${sessionScope.loggedIn==null }">
	<script type="text/javascript">
		alert("로그인 후 글쓰기를 시도해주세요");
		location.href='../login';
	</script>
	</c:if>

	
 
	<section>
	<div class="tbl-header" style="width: 800px;">
		<table>
			<tr>
				<td style="text-align: center;width: 800px;">리뷰 쓰기</td>
			</tr>
		</table>
	</div>
	<div class="tbl-content" style="width: 800px;">
	
	<form action="insert" method="post" enctype="multipart/form-data">
    <table>
     
		<tr>
			<th class="text-center">나의 맛집</th>
			<td>
				<input type="text" name="subject" class="form-control"
					required="required" autofocus="autofocus"
					placeholder="식당 이름을 작성하세요">
			</td>
		</tr>
		<tr>
  			<th>★★★★★</th>
				<td>
  				<select name="stars" style="width: 500px; height: 50px; color: black;">
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
				<input type="file" name="upload" class="form-control"
				    multiple="multiple">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea style="height: 300px;" name="content"
				class="form-control" required="required"
				placeholder="리뷰를 작성해주세요"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn_review_save" onclick="location.href='/review/insert'"
				>Save</button>
			
			</td>
		</tr>
		
		
	</table>
</form>
</div>
</section>
</body>
</html>