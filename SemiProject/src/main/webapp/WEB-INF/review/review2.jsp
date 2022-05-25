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
			<th class="text-center" style="width: 100px; background-color: #ffc">Place select</th>
			<td>
				<input type="text" name="subject" class="form-control"
					required="required" autofocus="autofocus"
					placeholder="식당을 선택하세요">
			</td>
		</tr>
		<tr>
			<th class="text-center" style="width: 100px; background-color: #ffc">Pictures</th>
			<td>
				<input type="file" name="upload" class="form-control"
				    multiple="multiple">
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea style="width: 100%; height: 300px;" name="content"
				class="form-control" required="required"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" onclick="location.href='/review/insert'"
				style="width: 100px;background-color: orange">Save</button>
			
			</td>
		</tr>
	</table>
</body>
</html>