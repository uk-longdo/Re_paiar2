<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
	<div class="container">
		<a class="navbar-brand" href="./index">Re_pair</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">소개글</a>
					
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="Board_intro">인사말</a></li>
						<li><a class="dropdown-item" href="Board_intro2">오시는 길</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="Board_notice">공지사항</a></li>
						<li><a class="dropdown-item" href="Board_call">고객센터</a></li>
						<li><a class="dropdown-item" href="Board_free">자유 게시판</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">갤러리</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">밍크/모피</a></li>
						<li><a class="dropdown-item" href="#">남성코트/정장</a></li>
						<li><a class="dropdown-item" href="#">여성코트/정장</a></li>
						<li><a class="dropdown-item" href="#">가죽/무스탕</a></li>
						<li><a class="dropdown-item" href="#">청바지/캐주얼</a></li>
						<li><a class="dropdown-item" href="#">셔츠/바지/니트</a></li>
					</ul>
				</li>
				<li class="nav-item"><a class="nav-link" href="#" >온라인 접수</a></li>
				
					<li class="nav-item">
							<a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a>				
					</li>
				
				
				<c:if test="${sessionScope.login_te ne 1}">
					<li class="nav-item">
							<a class="nav-link">${sessionScope.user_name}님</a>				
					</li>
				</c:if>
				
				
				<li class="nav-item">
					<a class="nav-link" href="Sign_up">회원가입</a>
				</li>
				
				
				<c:if test="${sessionScope.login_te ne 1}">
					<a class="nav-link" href="login_out">로그아웃</a>
				</c:if>

			</ul>
		</div>
	</div>


</nav>


