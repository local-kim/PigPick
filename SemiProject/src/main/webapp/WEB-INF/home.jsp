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
<link href="css/style.css"  rel="stylesheet" type="text/css" />
<title>x SEMI PROJECT MENUx</title>
</head>
 <body>
 	<!-- push -->
      <div class="single-page-nav">
          <div id="logo"><a href="#section1">
              <img class="nav01" src="images/main.jpg" alt="logo">
          </a></div>

      <div id="gnb">
        <ul>
               <!--네비게이션의 섹션 갯수(메뉴)를 늘이거나 줄이려면 li 리스트를 추가하면 됩니다.-->
                <li><a href="#section1">
                <b class="nav02">HOME</b></a></li>
                <li><a href="#section2"><b class="nav03">MENU</b></a></li>
                <li><a href="#section3"><b class="nav04">BOARD</b></a></li>
                <li><a href="#section4"><b class="nav05">MY PAGE</b></a></li>
                <!--<li><a href="#section6"><b class="nav06">메뉴5</b></a></li>-->
       
         </ul>
         </div>
       </div>

         <div class="section" id="section1">
             <a href="#section2"><img src="images/logo-01.png" alt="피그램" id="menupick"></a>
         </div> 
         
         <div class="section" id="section2">
         
     
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
					required="required" autofocus="autofocus"
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
         
         
         
         
      
        <!-- <div class="section" id="section6">
   
        </div>-->
    </body>
</html>