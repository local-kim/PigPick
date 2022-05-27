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
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script>
 Kakao.init('36c307f0fb98bc4996b2dda55651fee5'); //발급받은 키 중 javascript키를 사용해준다.
 console.log(Kakao.isInitialized()); // sdk초기화여부판단

  var kid; //카카오 내 id(토큰)
  var kemail; //카카오 내 email
  var knickname; //카카오 내 닉네임
  var kp;	//카카오 내 프로필이미지
  var kb; //카카오 내생일
  
//카카오로그인
 function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  /* alert("1:"+response);
        	  alert(kid+"로그인성공"); */
        	  
        	  $("#kakao_id").text(response.id);
        	  kid = response.id;       	  
        	  console.log(typeof(kid));
        	  $("#kakao_id").val(kid);
        	  
        	  $("#kakao_email").text(response.kakao_account.email);
        	  kemail=response.kakao_account.email;
        	  
        	  $("#kakao_email").val(kemail);
        	  
        	  $("#kakao_nickname").text(response.properties['nickname']);
        	  knickname=response.properties['nickname'];
        	  
        	  $("#kakao_nickname").val(knickname);
        	  
        	  $("#kakao_profile_image").text(response.properties['profile_image']);
        	  $("#kpi").attr("src",response.properties['profile_image']);
        	  
        	  kp=response.properties['profile_image'];
        	  $("#kakao_profile_image").val(kp);
        	  
        	  $("#kakao_birthday").text(response.kakao_account.birthday);
        	  kb=response.kakao_account.birthday;
        	  $("#kakao_birthday").val(kb);
        	  
        	  $.ajax({
        			type:"get",
        			dataType:"text",
        			url:"kakaoinsert",
        			data:{"kid": kid, "kemail" : kemail, "knickname" : knickname, "kp": kp, "kb": kb},
        			success:function(){
        				location.href = "/";
        			}
        		});
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
  
  
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        	
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }   
  
  //네이버로그인
 /*  var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "vKPM2ucOKYWj529k0spY", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:9001", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
}*/

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
						<input type="text" name="id" class="form-control" required autofocus placeholder="아이디" value="${loginid}" id="lid">
						<!-- <label><input type="checkbox" name="chkid">&nbsp;아이디 저장</label> -->
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="password" class="form-control" required placeholder="비밀번호" id="lpw">
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
	
	<!-- 네이버 로그인 자리 -->
	<!--  <ul>
	<li>
      아래와같이 아이디를 꼭 써준다.
      <a id="naverIdLogin_loginButton" href="javascript:void(0)">
          <span>네이버 로그인</span>
      </a>
	</li>
	<li onclick="naverLogout(); return false;">
      <a href="javascript:void(0)">
          <span>네이버 로그아웃</span>
      </a>
	</li>
</ul> -->
  
  
	<!-- 카카오 로그인 자리 -->
	
	 <ul>
	<li onclick="kakaoLogin(); kakaoSession();">
      <a href="javascript:void(0)">
          <span><img src="../images/kakaologin.png"></span>
      </a>
	</li>
	
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul> 
</body>
</html>