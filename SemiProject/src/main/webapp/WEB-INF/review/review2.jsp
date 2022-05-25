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
<!--<c:if test="${sessionScope.loginok==null}">
  <script type="text/javascript">
  alert("다시 로그인후 글쓰기를 시도해주세요");
  location.href='../review';
  </script>
  </c:if> !-->
	<br><br><br><br><br><br><br>
	<table class="table table-bordered boardform" style="width:700px;">
	<tr>
   <th style="width:300px; background-color:#ddd">나의 맛집</th>
   <td>
     <input type="text" name="subject" class="form-control"
     required="required" autofocus="autofocus"
     placeholder="맛집이름을 작성해주세요">
     </td>
 </tr>
 	<tr>
   <th style="width:300px; background-color:#ddd">리뷰</th>
   <td>
     <input type="text" name="subject" class="form-control"
     required="required" autofocus="autofocus"
     placeholder="간단한후기와 리뷰를 작성해주세요">
     </td>
 </tr>
 <tr>
   <th style="width:300px; background-color:#ddd">별점</th>
   <td>
  		<select name="fuckyou" style="width: 500px; height: 50px;">
  			<option value="">별점을 작성해주세요</option>
  			<option value="01">☆☆☆☆★</option>
  			<option value="02">☆☆☆★★</option>
  			<option value="03">☆☆★★★</option>
  			<option value="04">☆★★★★</option>
  			<option value="05">★★★★★</option>
  			
  		</select> 
   </td>
   
   </tr>
   
   <tr>
   <td colspan="2" align="center">
	<button type="submit" onclick="location.href='/review/insert'">저장</button>
	</td>
	</tr>
	</table>
</body>
</html>