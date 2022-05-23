<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link href="css/style.css"  rel="stylesheet" type="text/css" />
<script>
	$(function(){
		//아이디 중복 체크
		$("#idcheck").click(function(){
			$.ajax({
				type: "get",
				dataType: "json",
				url: "checkId",
				data: {"id": $("#id").val()},
				success: function(data){
					if(data.count == 0){
						$("b.idok").text("ok");
					}
					else{
						alert("이미 존재하는 아이디입니다.\n다른 아이디로 입력해주세요");
						$("#id").val("");
						$("#id").focus();
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="section" id="section7">
		<form action="insert" method="post" enctype="multipart/form-data" class="joinform" style="left: 20%;">
			<!-- 회원가입 -->
			<p>이름</p>
			<input type="text" name="name" style="width:400px;" class="form-control jogin-control" required placeholder="이름을 입력해주세요.">
			<p>아이디</p>
			<input type="text" name="id" id="id" style="width:400px;" class="form-control jogin-control" required>
			<button type="button" class="btn btn-sm btn-danger" id="idcheck">중복 체크</button>
			&nbsp;
			<b class="idok"></b>
			<p>비밀번호</p>
			<input type="password" name="password" id="pass1" style="width:400px;" class="form-control jogin-control" required placeholder="비밀번호">
			<p>비밀번호 확인</p>
			<input type="password" id="pass2" style="width:400px;" required class="form-control jogin-control" placeholder="한 번 더 입력">
			<p>전화번호</p>
			<input type="text" name="tel" style="width:400px;" class="form-control jogin-control" required>
			<p>이메일</p>
			<div class="jogin-control">
			<input type="text" name="email1" style="width:120px;border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;">
			<b>@</b>
			<input type="text" name="email2" id="email2" style="width:130px;border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;">
			<select id="email3" style="width:115px;line-height:1.42857143;color:#555;height:34px;border:1px solid #ccc; margin-left:10px;">
				<option value="-">직접입력</option>
				<option value="naver.com">네이버</option>
				<option value="nate.com">네이트</option>
				<option value="google.com">구글</option>
			</select>
			<p>주소</p>
			<input type="text" name="address" style="width:400px;" class="form-control jogin-control" placeholder="주소">
			<p>프로필 사진</p>
			<input type="file" name="upload" id="photo" style="width:400px;" class="form-control jogin-control" accept="image/*">
			</div>
			<br><br><br><br>
			<button><img src="images/googleloginbtn.png"></button>
			<br><br><br><br>
			<button type="submit" class="btn btn-info joinbtn" style="width:400px; background-color:#94d5fe; line-height:1.42857143; height:34px; ">회원가입</button>
		</form>
	</div>
</body>
</html>