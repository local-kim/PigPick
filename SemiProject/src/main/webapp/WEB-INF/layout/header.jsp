<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script>
/* $(function(){
	$("li#mypage").css("display","none");
	
	
	$("")
	
	 $(".topnav").click(function(){
		$(".topnav > .subnav").slideDown(); 
	});
});  */
	function logout(){
		$.ajax({
			type: "get",
			dataType: "text",
			url: "${root}/logout",	// ../login/logout 도 가능
			success: function(){
				location.reload();
			}
		});
	}
</script>
</head>

<body>
	<div class="single-page-nav">
	<div id="logo"><a href="/">
	    <img class="nav01" src="../images/logo_pigpick.jpg" alt="logo">
	</a>
	</div>
	
	<div id="gnb">
		<ul>
			<!-- navigation -->
			<!--네비게이션의 섹션 갯수(메뉴)를 늘이거나 줄이려면 li 리스트를 추가하면 됩니다.-->
			<li class="topnav"><a href="/"><b>HOME</b></a></li>
			<li class="topnav"><a href="#"><b>MENU</b></a>
				<ul>
					<li class="subnav"><a href="/recommend1"><b>MENU1</b></a></li>
				</ul>
			</li>
			<li class="topnav"><a href="/review"><b>BOARD</b></a></li>
			<li class="topnav" id="mypage"><a href="#"><b>MY PAGE</b></a>
				<ul>
					<li class="subnav"><a href="/mypage"><b>MY PAGE</b></a></li>
					<li class="subnav"><a href="/mypage/rank"><b>MY MENU LIST</b></a></li>
				</ul>
			</li>
			<li class="topnav" id="join"><a href="/join"><b>JOIN</b></a></li>
		</ul>
	  </div>
	</div>
	
	<div class="login" style="z-index:9999999999999999">
		<c:set var="root" value="<%=request.getContextPath()%>"/>
		
		<c:if test="${sessionScope.isLoggedIn == null}">
			<button type="button" class="btn btn-info btnlogin" style="background-color: transparent;
			border:0; width:100px" onclick="location.href='${root}/login'">
			<img src="../images/key.png" class="login_icon" title="login"
				 style="width: 100px;border: 0;"></button>
		<script>
		
		$("li#mypage").css("display","none");
		</script>
		</c:if>
		
		<c:if test="${sessionScope.isLoggedIn != null}">
			<span>${sessionScope.member_name}(${sessionScope.member_id})님</span>
			&nbsp;
			<button type="button" class="btn btn-danger btnlogout" style="background-color: transparent;
			border:0; width:100px" onclick="logout()">
			<img src="../images/bye.png" class="logout_icon" title="logout"
				 style="width: 100px;"></button>
			<script>
			$("li#mypage").css("display","inline-block");
			$("li#join").css("display","none");
			</script>
		</c:if>
	</div>
</body>
</html>