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
  <script>
        function openWindowPop(){
            var url = "popup";
            var name = "popup";
            var option = "width = 800, height = 900, top = 100, left = 200, location = no, status=no, menubar=no, toolbar=no, scrollbars=yes;"
            window.open(url, name, option);
        }
    </script>
    <style type="text/css">
    a#pop {
    background-color: white;
    padding: 26px;
    border-radius: 45px;
    position: relative;
    left: 58%;
    top: 30%;
    font-weight: bold;
    color: black;
    /* width: 1000000000000000px; */
    font-size: 20px;
    </style>
</head>

<body>
	<div class="section" id="section1">
	<div  style="z-index:999999999; top:50%; position:absolute;">
	
	</div>
<!-- 	<a href="javascript:openWindowPop('more/popup.jsp', 'popup');" id="pop">팝업창 열기</a> -->
    <!-- <a href="/recommend"><img src="images/logo-01.png" alt="피그램" id="menupick"></a> -->
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