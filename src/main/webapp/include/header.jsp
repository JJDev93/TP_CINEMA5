<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화 그 이상의 감동. CGV</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/hdft.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/member.css">
	<link rel="stylesheet" href="css/ticket.css">
</head>
<body>
	<header id="header">
		<div class="hdTop">
			<div class="wid str">
				<h1><a href="CinemaServlet?command=main_page" class="logo"><img src="images/header/logoRed.png" alt=""></a></h1>
				<div class="topLink_left">
					<ul class="topLinkUl clear">
						<c:if test="${!empty loginUser.id}">
							<li class="userName">반갑습니다. ${loginUser.name}(<span>${loginUser.id}</span>)님</li>
						</c:if>
					</ul>
				</div>
				<div class="topLink">
					<ul class="topLinkUl clear">
						<c:if test="${empty loginUser.id}">
							<li><a href="CinemaServlet?command=member_login"><span class="material-symbols-outlined">login</span><span class="spanTxt">로그인</span></a></li>
							<li><a href="CinemaServlet?command=member_join"><span class="material-symbols-outlined">person_add</span><span class="spanTxt">회원가입</span></a></li>
						</c:if>
						<c:if test="${!empty loginUser.id}">
							<li><a href="CinemaServlet?command=member_logout"><span class="material-symbols-outlined"> logout </span><span class="spanTxt">로그아웃</span></a></li>
							<li><a href="CinemaServlet?command=mypage_view"><span class="material-symbols-outlined">person</span><span class="spanTxt">MY CGV</span></a></li>
						</c:if>
						<li><a href="" onclick="return noPage()"><span class="material-symbols-outlined">support_agent</span><span class="spanTxt">고객센터</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="hdDown">
			<div class="wid">
				<nav>
					<ul class="clear depth01">
						<li><a href="" onclick="return noPage()" data-text="영화"></a>
							<ul class="depth02">
								<li><a href="" onclick="return noPage()">무비차트</a></li>
								<li><a href="" onclick="return noPage()">아트하우스</a></li>
								<li><a href="" onclick="return noPage()">ICECON</a></li>
							</ul>
						</li>
						<li><a href="" onclick="return noPage()" data-text="극장"></a>
							<ul class="depth02">
								<li><a href="" onclick="return noPage()">CGV 극장</a></li>
								<li><a href="" onclick="return noPage()">특별관</a></li>
							</ul>
						</li>
						<li><a href="CinemaServlet?command=ticketing_step1&theaterCode=1" data-text="예매"></a>
							<ul class="depth02">
								<li><a href="CinemaServlet?command=ticketing_step1&theaterCode=1">빠른예매</a></li>
								<li><a href="" onclick="return noPage()">상영스케쥴</a></li>
								<li><a href="" onclick="return noPage()">English Ticketing</a></li>
								<li><a href="" onclick="return noPage()">English Schedule</a></li>
							</ul>
						</li>
						<li><a href="" onclick="return noPage()" data-text="스토어"></a>
							<ul class="depth02">
								<li><a href="" onclick="return noPage()">영화관람권</a></li>
								<li><a href="" onclick="return noPage()">기프트카드</a></li>
								<li><a href="" onclick="return noPage()">콤보</a></li>
								<li><a href="" onclick="return noPage()">팝콘</a></li>
								<li><a href="" onclick="return noPage()">음료</a></li>
								<li><a href="" onclick="return noPage()">스낵</a></li>
								<li><a href="" onclick="return noPage()">플레이존</a></li>
								<li><a href="" onclick="return noPage()">씨네샵</a></li>
							</ul>
						</li>
						<li><a href="" onclick="return noPage()" data-text="이벤트"></a>
							<ul class="depth02">
								<li><a href="" onclick="return noPage()">SPECIAL</a></li>
								<li><a href="" onclick="return noPage()">영화/예매</a></li>
								<li><a href="" onclick="return noPage()">멤버십/CLUB</a></li>
								<li><a href="" onclick="return noPage()">CGV 극장별</a></li>
								<li><a href="" onclick="return noPage()">제휴할인</a></li>
								<li><a href="" onclick="return noPage()">당첨자 발표</a></li>
								<li><a href="" onclick="return noPage()">종료된 이벤트</a></li>
							</ul>
						</li>
						<li><a href="" onclick="return noPage()" data-text="혜택"></a>
							<ul class="depth02">
								<li><a href="" onclick="return noPage()">CGV 할인정보</a></li>
								<li><a href="" onclick="return noPage()">CLUB 서비스</a></li>
								<li><a href="" onclick="return noPage()">VIP 라운지</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>