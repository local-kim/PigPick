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
</head>
<body>

	<br><br><br><br><br><br><br>리뷰쓰기폼

	<c:if test="${sessionScope.loggedIn==null }">
	<script type="text/javascript">
		alert("로그인 후 글쓰기를 시도해주세요");
		location.href='../login';
	</script>
	</c:if>
<form action="insert" method="post" enctype="multipart/form-data">

	
	<table class="table table-bordered reviewform" style="width: 800px;">
		
		<tr>
			<th class="text-center" style="width: 100px; background-color: #ffc">나의 맛집</th>
			<td>
				<input type="text" name="subject" class="form-control"
					required="required" autofocus="autofocus"
					placeholder="식당 이름을 작성하세요">
			</td>
		</tr>
		<tr>
  			<th style="width:300px; background-color:#ddd">★★★★★</th>
				<td>
  				<select name="stars" style="width: 500px; height: 50px;">
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
			<th class="text-center" style="width: 100px; background-color: #ffc">리뷰 사진</th>
			<td>
				<input type="file" name="upload" class="form-control"
				    multiple="multiple">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea style="width: 100%; height: 300px;" name="content"
				class="form-control" required="required"
				placeholder="리뷰를 작성해주세요"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" onclick="location.href='/review/insert'"
				style="width: 100px;background-color: orange">저장</button>
			
			</td>
		</tr>
	</table>
</form>
</body>
</html>