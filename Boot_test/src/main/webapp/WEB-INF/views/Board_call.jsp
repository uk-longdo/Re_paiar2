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
	    <div class="col-md-2">
	    	<h4 style="text-align: center;">커뮤니티</h4>
	    	<hr class="my-2">
			<div class="list-group" style="text-align: center;">		  
			  <a href="Board_notice" class="list-group-item list-group-item-action">공지사항</a>
			  <a href="Board_call" class="list-group-item list-group-item-action active">고객센터</a>
			  <a href="Board_free" class="list-group-item list-group-item-action">자유 게시판</a>
			</div>
	    </div>
	    <div class="col-md-10">
    		<h4>고객센터</h4>
    		<hr class="my-2">
			<div class="container">
			  <div class="row" style="text-align: center; border: 1px solid black;">
			    <div class="col-6" style="align-items: center;">
			     <img alt="" src="./resources/img/ic_info.png">
			     <h5>Re_pair 고객센터 입니다.</h5> 
			     Re_pair 에서는 회원님들의 의견을 소중히 듣겠습니다.
			    </div>
			    <div class="col-6">
			     <img alt="" src="./resources/img/ic_call.png">
			     <h5> 000-000-000</h5>
			     평일 10:00 - 20:00 (주말/공휴일 제외)<br>
				 점심시간 12:00 ~ 13:30 
			    </div>
			    </div>
			  </div>
			</div>    		
    	</div>
  </div>
</section>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>