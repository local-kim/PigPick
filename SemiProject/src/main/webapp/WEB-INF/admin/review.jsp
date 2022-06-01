<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/mypage_table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(function () {
		$("#allcheck").click(function () {
			var chk=$(this).is(":checked"); //체크상태확인
			// console.log(chk);
			if(chk){
				$(".review_del").prop("checked",true); //속성변경(true/false일 경우는 prop사용)
			}else{
				$(".review_del").prop("checked",true); //속성 변경 (true/false 일 경우는 prop 사용)
				$(".review_del").prop("checked",false);
			}
		});
		//delete 버튼
		$("#btnreviewdel").click(function () {
			//체크한 인원수 구하기
			var len=$(".review_del:checked").length;
			//0명일 경우 "먼저 삭제할 회원을 선택해주세요"
			if(len==0){
				alert("삭제할 리뷰를 선택해주세요");
				return;
			}
			//체크한 곳의 num값 가져오기
			var nums="";
			$(".review_del:checked").each(function (i,element) {
				var num=$(this).val();
				// console.log(num);
				nums+=num+",";
			});
			//마지막 컴마 제거
			nums=nums.substring(0,nums.length-1);
			//alert(nums);
			
			$.ajax({
				type:"get",
				dataType:"text",
				data:{"nums":nums},
				url:"review/delete",
				success:function(data){
					alert("삭제 완료");
					//새로고침
					location.reload();
				}
			});
		});
	});
</script>
</head>
<body>
<div class="section" id="section6">
	<br><br><br>
	<h1>리뷰 관리</h1>

	<br><br><br>
	<button type="button" id="btnreviewdel">Delete</button>
	<table class="container_3">
		<thead>
			<tr>
				<th>리뷰번호</th>
				<th>이름</th>
				<th>장소</th>
				<th>카테고리</th>
				<th>별점</th>
				<th>내용</th>
				<th>사진</th>
				<th>날짜</th>
				<th><input type="checkbox" id="allcheck">
					전체선택</th>
			</tr>
		</thead>
		<tbody>
	        <c:forEach var="dto" items="${list}" varStatus="i">
				<tr>
					<td>${dto.num}</td>
					<td>${dto.member_name}</td>
					<td>${dto.place_name}</td>
					<td>${dto.category}</td>
					<td>${dto.stars}</td>
					<td>${dto.content}</td>
					<td>${dto.photos}</td>
					<td>${dto.created_at}</td>
					<td><input type="checkbox" class="review_del" value="${dto.num}"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>