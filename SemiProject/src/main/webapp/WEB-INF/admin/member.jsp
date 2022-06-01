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
			console.log(chk);
			if(chk){
				$(".member_del").prop("checked",true); //속성변경(true/false일 경우는 prop사용)
				
			}else{
				$(".member_del").prop("checked",true); //속성 변경 (true/false 일 경우는 prop 사용)
				$(".member_del").prop("checked",false);
			}
			
		});
		//delete 버튼
		$("#btnmemdel").click(function () {
			//체크한 인원수 구하기
			var len=$(".member_del:checked").length;
			//0명일 경우 "먼저 삭제할 회원을 선택해주세요"
			if(len==0){
				alert("삭제할 회원을 선택해주세요");
				return;
			}
			//체크한 곳의 num값 가져오기
			var nums="";
			$(".member_del:checked").each(function (i,element) {
				var num=$(this).attr("num");
				console.log(num);
				nums+=num+",";
				
			});
			//마지막 컴마 제거
			nums=nums.substring(0,nums.length-1);
			//alert(nums);
			
			$.ajax({
				type:"get",
				dataType:"text",
				data:{"nums":nums},
				url:"/member/delete",
				success:function(data){
					alert("삭제 완료!")
					//새로고침
					location.reload();
				}
			});
			
		});
		
	});
</script>
</head>
<body>
	

<section>
	
	<div class="section" id="section6">
	<br><br><br>
	<h1>회원 관리</h1>

	<br><br><br>
	<button type="button" id="btnmemdel">Delete</button>
    <table class="container_3">
	
	

      <thead>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>ID</th>
			<th>사진</th>
			<th>Email</th>
			<th>연락처</th>
			<th>주소</th>
			<th>생일</th>
			<th><input type="checkbox" id="allcheck">
				전체선택
			</th>
		</tr>
	
		 </thead>
		
	
	     <tbody>
	        
				
						<c:forEach var="dto" items="${list}">
						<tr>
							
							<td>${dto.num}</td>
						
							<!-- 회원이름 -->
							<td>${dto.name}</td>
							
							
							<td>${dto.id}</td>
							
							
							
							<td>${dto.photo}</td>
							<td>${dto.email}</td>
							<td>${dto.tel}</td>
							<td>${dto.address}</td>
							<td>${dto.birthday}</td>
							<td><input type="checkbox" class="member_del" value="${dto.num}"></td>
						</tr>
						</c:forEach>
				
					</tbody>
		</table>
	
		
	</div>

  
  
  
	
	</section>
</html>