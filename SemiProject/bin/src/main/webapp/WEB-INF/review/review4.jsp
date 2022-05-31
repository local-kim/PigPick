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
<section>
	
	<h1>나의 리뷰 수정</h1>
		<div class="tbl-header" style="width: 900px;">
   		 <table>
      		<thead>
			<tr>
				<th>식당</th>
			
				<th>★★★★★</th>
			
				<th>리뷰</th>
			</tr>
			</thead>
		</table>
		</div>
	<div class="tbl-content" style="width: 900px;">
 		<table>
    	 <tbody>
        	<tr>
				<td><input type="text" name="" class="form-control" style="color: black;"
					required="required"  
					value="${review.place_id}"></td>
				<td>
				<select name="stars" style="color: black;">
		  			<option value="${review.stars}">별점을 선택하세요</option>
		  			<option value="01">☆☆☆☆★</option>
		  			<option value="02">☆☆☆★★</option>
		  			<option value="03">☆☆★★★</option>
		  			<option value="04">☆★★★★</option>
		  			<option value="05">★★★★★</option>
  					</select>
  				</td>
				<td>
					<input type="text" name="" class="form-control" style="color: black;"
					required="required" value="${review.content}">
				</td>
			</tr>
		</tbody>
	   </table>
  	</div>
	<button type="submit" class="btnreview_update" 
		onclick="location.href='/review/update'">Update</button>
</section>
</body>
</html>