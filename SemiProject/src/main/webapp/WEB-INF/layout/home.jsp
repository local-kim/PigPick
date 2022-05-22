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
</head>
<body>
	<div class="section" id="section1">
    <a href="/recommend1"><img src="images/logo-01.png" alt="피그램" id="menupick"></a>
	</div>
 
	<!-- <div class="section" id="section2">
	
		<img src="images/menu_pick.png" alt=""
		 class="menupicktag">
		 
		<img src="images/tape.png" alt="" class="tape">
		<div class="menu">
			<input type="checkbox" name="morning" value="morning" checked>아침
			<input type="checkbox" name="morning" value="morning" checked>점심
			<input type="checkbox" name="morning" value="morning" checked>저녁
			<input type="checkbox" name="morning" value="morning" checked>야식
			<input type="checkbox" name="morning" value="morning" checked>간식
		</div>


		<div class="round"></div>
	</div> -->
 
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
	<div class="section" id="section7">
	<div class="joinform" style="left: 20%;">
		<!-- 회원가입 -->
		<p>이름</p>
		<input type="text" name="name" style="width:400px;" class="form-control jogin-control" required="required" placeholder="이름을 입력해주세요.">
		<p>아이디</p>
		<input type="text" name="id" id="id" style="width:400px;" class="form-control jogin-control" required="required">
		<p>비밀번호</p>
		<input type="password" name="pass" id="pass1" style="width:400px;" class="form-control jogin-control"required="required" placeholder="비밀번호">
		<p>비밀번호 확인</p>
		<input type="password" id="pass2" style="width:400px;" required="required" class="form-control jogin-control" placeholder="한번더 입력">
		<p>전화번호</p>
		<input type="text" name="hp" style="width:400px;" class="form-control jogin-control" required="required">
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
		</div>
		<br><br><br><br>
		<button><img src="images/googleloginbtn.png"></button>
		<br><br><br><br>
		<button type="submit" class="btn btn-info joinbtn" style="width:400px; background-color:#94d5fe; line-height:1.42857143; height:34px; ">회원가입</button>
	</div>
	</div>
</body>
</html>