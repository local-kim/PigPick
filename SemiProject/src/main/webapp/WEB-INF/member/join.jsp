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
	<link href="css/join_style.css"  rel="stylesheet" type="text/css" />
	
<script>
	$(function(){
		
		//비밀번호 체크
		$("#pass2").keyup(function(){
			var p1=$("#pass1").val();
			var p2=$(this).val();
			if(p1==p2){
				$("b.passok").html("ok").css("color","green");
			}else{
				$("b.passok").html("fail").css("color","red");
				
			}
		});
		
		//이메일
		$("#email3").change(function(){
			var s=$(this).val();
			if(s=='-'){
				$("#email2").val("");
				$("#email2").focus();
			}else{
				$("#email2").val(s);
			}
		});
		
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
	
	function check(){
		if($("b.idok").text()!='ok'){
		alert("아이디체크 버튼을 눌러서 중복확인해주세요");
		return false;
		}
		else if(a!='ok'){
			alert("비밀번호를 제대로 입력해 주세요");
			$("#pass1").val("");
			$("#pass2").val("");
			$("#pass1").focus();
			return false; //action 호출되지 않음
		}else{
			return true;
			alert("회원가입되셨습니다.");
		}	
	}
</script>
</head>
<body>
	<div class="section" id="section7">
		<form action="insert" method="post" style="bakckground-color:#ff0000; position:absolute; top:30%; left:30%;" enctype="multipart/form-data" class="joinform"  onsubmit="return check()">
		
			<!-- 회원가입 -->
			<table class="tbljoin" style="width: 1100px;">
				<tr>
					<th>프로필사진</th>
					<td>
						<img src="../images/user.png" alt="미리보기" id="preview" style="max-width:100px;"><br><br>
						<input type="file" name="upload" id="photo" style="width:300px;float: left" class="form-control jogin-control" accept="image/*">
						
					</td>
					<td colspan="2">
						
					</td>
					
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" id="name" name="name" style="width:400px;" class="form-control jogin-control"
						required placeholder="이름을 입력해주세요.">
					</td>
					<th>생년월일</th>
					<td>
						<input type="text" name="month" style="width:110px;border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
						월&nbsp;
						<input type="text" name="day" style="width:110px;border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
						일&nbsp;
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
						<b class="idok"></b>
						<input type="text" name="id" id="id" style="width:400px;" class="form-control jogin-control" required>
						<button type="button" class="btn btn-sm btn-danger" id="idcheck">중복 체크</button>
					</td>
					<th>전화번호</th>
					<td><input type="text" id="phone" name="tel1"  style="width:120px; border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
						&nbsp;-&nbsp;
						<input type="text" id="phone" name="tel2"  style="width:120px; border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
						&nbsp;-&nbsp;
						<input type="text" id="phone" name="tel3"  style="width:120px; border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="password" id="pass1" style="width:400px;" class="form-control jogin-control pass" required placeholder="비밀번호">
					</td>
					<th>이메일</th>
					<td>
						<input type="text" name="email1" style="width:120px;border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
						<b>@</b>
						<input type="text" name="email2" id="email2" style="width:130px;border:1px solid #ccc; border-radius: 4px;font-size:14px;line-height:1.42857143;color:#555;height:34px;" required>
						<select id="email3" style="width:115px;line-height:1.42857143;color:#555;height:34px;border:1px solid #ccc; margin-left:10px;">
							<option value="-">직접입력</option>
							<option value="naver.com">네이버</option>
							<option value="nate.com">네이트</option>
							<option value="google.com">구글</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td>
						<b class="passok"></b>
						<input type="password" id="pass2" style="width:400px;" required class="form-control jogin-control pass" placeholder="한 번 더 입력">
					</td>
					<th>주소</th>
					<td>
						<input type="text" name="address" style="width:400px;" class="form-control jogin-control" placeholder="주소">
					</td>
				</tr>
				<tr>
					<td colspan="4" style="background-color: transparent;">
						<button type="submit" id="join" class="btn btn-info joinbtn">
							<img src="../images/signup.png" class="sign_up" id="sign_up" title="sign_up">
						</button>
					</td>
				</tr>
			</table>
				</form>
	</div>
		
		
			<script>
			function readURL(input)
			{
			   if (input.files && input.files[0])
			   {
			      var reader = new FileReader();
			      reader.onload = function (e)
			      {
			         $("#preview").attr('src', e.target.result); 
			      }

			      reader.readAsDataURL(input.files[0]);
			   }
			}

			$("#photo").change(function(){
			   readURL(this); 
			});
			</script>

	
</body>
</html>