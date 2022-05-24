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
<!-- <meta name ="google-signin-client_id" content="OAuth 2.0 클라이언트 ID"> -->
<style>
	body{
		font-size: 2rem;
		font-family: -apple-system, BlinkMacSystemFont;
	}
</style>
</head>
<body>
	<br><br><br><br><br><br><br>
	<img src="../images/login.png" class="login_img" title="login"
				 style="width: 300px;">
	<div class="loginform">
		<form action="process" method="post" class="form-inline">
			<table class="table" style="width: 450px">
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="id" class="form-control" required autofocus placeholder="아이디" value="${loginid}">
						<!-- <label><input type="checkbox" name="chkid">&nbsp;아이디 저장</label> -->
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="password" class="form-control" required placeholder="비밀번호">
					</td>
				</tr>
				<tr>
					<td align="center">
					<button id="GgCustomLogin" style="background-color: transparent;
					border:0;width: 40px;">
					&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/google-symbol.png" class="google" title="google"
				 	style="background-color: transparent;
					border:0;width: 40px;"></button><!-- onclick="javascript:void(0)" -->
					</td>
					<td align="center">
					<button type="submit" class="btn btn-info" style="float:left; background-color: transparent;
					border:0;width: 100px;">
					&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/log-in.png" class="log-in-btn" title="login"
				 	style="width: 100px;"></button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- <script>

//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'google login api 키', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}
</script>
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script> -->
</body>
</html>