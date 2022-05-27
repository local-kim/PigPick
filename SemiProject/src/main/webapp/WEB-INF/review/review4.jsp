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
</head>
<body>
<section>
	<div class="section" id="section6">
	<br><br>
	<h1>리뷰 수정/삭제</h1>
	<br><br><br><br><br><br>
	 <button type="submit" class="btnreview_update" 
	   onclick="location.href='/review/update?num=${review.num}'">Update</button>
		<form action="update" method="get">
    	<table class="container">
   		 
      		
			<tr>
				<th>식당</th>
				<input type="hidden" name="num" value="${review.num}">
				<td>
							<!-- <input type="text" name="" class="form-control" style="color: black;"
							required="required"  
							value="${review.place_name}"> -->
							<span>${review.place_name}</span>
				</td>
			<tr>
			
				<th>★★★★★</th>
				<td>
							<select name="stars" style="color: black;">
					  			<option>별점을 선택하세요</option>
					  			<option value="01">☆☆☆☆★</option>
					  			<option value="02">☆☆☆★★</option>
					  			<option value="03">☆☆★★★</option>
					  			<option value="04">☆★★★★</option>
					  			<option value="05">★★★★★</option>
		  				</select>
		  			</td>
			</tr>
			<tr>
				<th>리뷰</th>
				<td>
					
					
					<textarea style="width: 100%; height: 300px;" name="content"
					class="form-control"
					>${review.content}</textarea>
						</td>
			</tr>
	
			
    	
	   </table>
		</form>
	   </div>
	  

</section>
</body>
</html>