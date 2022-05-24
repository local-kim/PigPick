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
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="706109636994-9ilc2rbf75k3418op5ho9shk10n4bon8.apps.googleusercontent.com">
<script type="text/javascript">
	/* function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();
	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	  console.log('Name: ' + profile.getName());
	  console.log('Image URL: ' + profile.getImageUrl());
	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	} */
</script>
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
					<button type="submit"  style="float:left; background-color: transparent;
					border:0;width: 100px;">
					&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/log-in.png" class="log-in-btn" title="login"
				 	style="width: 100px;border: 0;"></button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<!-- <div class="g-signin2" data-onsuccess="onSignIn"></div> -->
	
</body>
</html>