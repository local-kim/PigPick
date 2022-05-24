<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF8">
<title>PigPick</title>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>  
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="706109636994-9ilc2rbf75k3418op5ho9shk10n4bon8.apps.googleusercontent.com">
  <script>
    function checkLoginStatus(){
      var loginBtn = document.querySelector('#loginBtn');
      var nameTxt = document.querySelector('#name');
      if(gauth.isSignedIn.get()){
        console.log('logined');
        loginBtn.value = 'Logout';
        var profile = gauth.currentUser.get().getBasicProfile();
        nameTxt.innerHTML = 'Welcome <strong>'+profile.getName()+'</strong> ';
      } else {
        console.log('logouted');
        loginBtn.value = 'Login';
        nameTxt.innerHTML = '';
      }
    }
    function init(){
      console.log('init');
      gapi.load('auth2', function() {
        console.log('auth2');
        window.gauth = gapi.auth2.init({
          client_id:'1069961247398-d5cpi17r74jaad01cf93gbilfnaf3mf4.apps.googleusercontent.com'
        })
        gauth.then(function(){
          console.log('googleAuth success');
          checkLoginStatus();
        }, function(){
          console.log('googleAuth fail');
        });
      });
    }
    
    function onSignIn(googleUser) {
  	  var profile = googleUser.getBasicProfile();
  	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  	  console.log('Name: ' + profile.getName());
  	  console.log('Image URL: ' + profile.getImageUrl());
  	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
  	}
  </script>
</head>
<body>
	<span id="name"></span><input type="button" id="loginBtn" value="checking..." onclick="
    if(this.value === 'Login'){
      gauth.signIn({
        scope:'https://www.googleapis.com/auth/calendar'
      }).then(function(){
        console.log('gauth.signIn()');
        checkLoginStatus();
      });
    } else {
      gauth.signOut().then(function(){
        console.log('gauth.signOut()');
        checkLoginStatus();
      });
    }
  " style="z-index:99999999; position:absolute; top:50%">
  
  <div class="g-signin2" data-onsuccess="onSignIn" style="z-index:99999999999999999;position:absolute;top:30%"></div>

	<!-- <a href="#" onclick="signOut();">Sign out</a>
	<script>
	  function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	      console.log('User signed out.');
	    });
	  }
	</script> -->


	<div class="section" id="section1">
    <a href="/recommend1"><img src="images/logo-01.png" alt="피그램" id="menupick"></a>
	</div>
 
	<div class="section" id="section3">
		<div id="con3"><a href="det_pt.html" target="_blank"><img class="hoverimg" src="images/det.png"></a></div>
		<div id="con4"><a href="fran_pt.html" target="_blank"><img class="hoverimg" src="images/fran.png"></a></div>
		<div id="con5"><a href="fort_pt.html" target="_blank"><img class="hoverimg" src="images/fortnum.png"></a></div>
	</div>
 
 
    
	<div class="section" id="section4">
	<!--
	<div id="con6"><a href="over_pt.html" target="_blank"><img class="hoverimg" src="images/over.png"></a></div>
	<div id="con7"><a href="poka_pt.html" target="_blank"><img class="hoverimg" src="images/poka.png"></a></div>
	<div id="con8"><a href="osaka_pt.html" target="_blank"><img class="hoverimg" src="images/osaka.png"></a></div>-->


			<!-- 로그인 폼 일단 임시로 여기에다가 만들면 될거가-->  
			<div class="loginform">
					<form action="process" method="post" class="form-inline">
							<table class="table table-bordered" style="width: 500px;">
									<tr>
											<th style="width: 150px; background-color:#ffc">ID</th>
											<td>
													<input type="text" name="id" class="form-control"
													required="required"
													style="width: 150px;"
													placeholder="ID" value=""><!-- value값 추가로 넣어주기 -->
											</td>
									</tr>
									<tr>
											<th style="width: 120px; background-color:#ffc">PASSWORD</th>
											<td>
													<input type="password" name="pass" class="form-control"
													required="required" 
													style="width: 150px;"
													placeholder="PASSWORD">
											</td>
									</tr>
									<tr>
											<td colspan="2" align="center">
													<button type="submit" class="btn btn-info"
													style="width:130px; border: 0; background-color: orange;">LOGIN</button>
													<input type="checkbox" name="">&nbsp;SAVE ID
											</td>
									</tr>
							</table>	
					</form>	
			</div>
	</div>  
         
     
     
     
	<div class="section" id="section5">       

		<div id="con9" style="background-color: #2a28b5"><a href="garden_pt.html" target="_blank"><img class="hoverimg" src="images/garden.png"></a></div>

		<div id="con10" style="background-color: #2a28b5"><a href="asobi_pt.html" target="_blank"><img class="hoverimg" src="images/asobi.png"></a></div>

		<div id="con11" style="background-color: #2a28b5"><a href="bulls_pt.html" target="_blank"><img class="hoverimg" src="images/bulls.png"></a></div>

		<div id="con12" style="background-color: #2a28b5"><a href="info_pt.html" target="_blank"><img class="hoverimg" src="images/info.png"></a></div>

		<div id="con13" style="background-color: #2a28b5"><a href="theo_pt.html" target="_blank"><img class="hoverimg" src="images/theo.png"></a></div>

		<div id="con14" style="background-color: #2a28b5"><a href="ham_pt.html" target="_blank"><img class="hoverimg" src="images/ham.png"></a></div>


	</div>
</body>
</html>