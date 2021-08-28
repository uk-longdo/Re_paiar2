<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회사 소개</title>
<jsp:include page="Boot.jsp"></jsp:include>
</head>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<jsp:include page="Login.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>
<section class="py-5">
	<div class="container">
	  <div class="row">
	    <div class="col-sm-2">
	    	<h4 style="text-align: center;"> 회사소개</h4>
	    	<hr class="my-2">
			<div class="list-group" style="text-align: center;">		  
			  <a href="Board_intro" class="list-group-item list-group-item-action active">인사말</a>
			  <a href="Board_intro2" class="list-group-item list-group-item-action">오시는 길</a>
			</div>
	    </div>
	    <div class="col-sm-10">
	    	<h4>인사말</h4>
	    	<hr class="my-2">
	    	<p class="text-center"><span><strong>경력 30년 이상의 노하우를</strong></span> 바탕으로 고객님의 옷을 새롭게 만들어 드립니다.</p>
	    	<p style="text-align: center;">고객님의 개인적 취향과 디자인을 고려하여 만족하시는 제품을 만나보실 수 있습니다.</p>
	    	<img src="./resources/img/bgHome7.jpg" class="rounded mx-auto d-block" alt="...">
	    	<p style="text-align: center;">고객님과의 소통을 기본 바탕으로 <br>세상에 오직 하나뿐인 나만의 옷을 만들어 드립니다.<br>앞으로도 고객님들을 위해 창의적인 디자인으로 리폼발전을위해 최대한 노력할것 을 약속드립니다.</p>
	    </div>
	  </div>
	</div>
</section>
<!-- 푸터 -->
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>