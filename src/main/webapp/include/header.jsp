<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> 
	<title>영화 그 이상의 감동. CGV</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="css/slick.css">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/hdft.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/member.css">
</head>
<body>
  <header id="header" >
    <div class="hdTop">
      <div class="wid str">
        <h1><a href="CinemaServlet?command=main_page" class="logo"><img src="images/header/logoRed.png" alt=""></a></h1>
        <div class="topLink">
          <ul class="topLinkUl clear">
            <li><a href="CinemaServlet?command=main_page"><span class="material-symbols-outlined">login</span><span class="spanTxt">로그인</span></a></li>
            <li><a href="CinemaServlet?command=member_join"><span class="material-symbols-outlined">person_add</span><span class="spanTxt">회원가입</span></a></li>
            <li><a href="CinemaServlet?command=mypage_view"><span class="material-symbols-outlined">person</span><span class="spanTxt">MY CGV</span></a></li>
            <li><a href="CinemaServlet?command=main_page"><span class="material-symbols-outlined">support_agent</span><span class="spanTxt">고객센터</span></a></li>
          </ul>
        </div>
        <form action="" id="searchTop">
          <input type="text">
          <button><span class="material-symbols-outlined">search</span></button>
        </form>
      </div>
    </div>
    <div class="hdDown">
      <div class="wid">
        <nav>
          <ul class="clear depth01">
            <li><a href="CinemaServlet?command=main_page" data-text="영화"></a>
              <ul class="depth02">
                <li><a href="CinemaServlet?command=main_page">무비차트</a></li>
                <li><a href="CinemaServlet?command=main_page">아트하우스</a></li>
                <li><a href="CinemaServlet?command=main_page">ICECON</a></li>
              </ul>
            </li>
            <li><a href="CinemaServlet?command=main_page" data-text="극장"></a>
              <ul class="depth02">
                <li><a href="CinemaServlet?command=main_page">CGV 극장</a></li>
                <li><a href="CinemaServlet?command=main_page">특별관</a></li>
              </ul>
            </li>
            <li><a href="CinemaServlet?command=main_page" data-text="예매"></a>
              <ul class="depth02">
                <li><a href="CinemaServlet?command=main_page">빠른예매</a></li>
                <li><a href="CinemaServlet?command=main_page">상영스케쥴</a></li>
                <li><a href="CinemaServlet?command=main_page">English Ticketing</a></li>
                <li><a href="CinemaServlet?command=main_page">English Schedule</a></li>
              </ul>
            </li>
            <li><a href="CinemaServlet?command=main_page" data-text="스토어"></a>
              <ul class="depth02">
                <li><a href="CinemaServlet?command=main_page">영화관람권</a></li>
                <li><a href="CinemaServlet?command=main_page">기프트카드</a></li>
                <li><a href="CinemaServlet?command=main_page">콤보</a></li>
                <li><a href="CinemaServlet?command=main_page">팝콘</a></li>
                <li><a href="CinemaServlet?command=main_page">음료</a></li>
                <li><a href="CinemaServlet?command=main_page">스낵</a></li>
                <li><a href="CinemaServlet?command=main_page">플레이존</a></li>
                <li><a href="CinemaServlet?command=main_page">씨네샵</a></li>
              </ul>
            </li>
            <li><a href="CinemaServlet?command=main_page" data-text="이벤트"></a>
              <ul class="depth02">
                <li><a href="CinemaServlet?command=main_page">SPECIAL</a></li>
                <li><a href="CinemaServlet?command=main_page">영화/예매</a></li>
                <li><a href="CinemaServlet?command=main_page">멤버십/CLUB</a></li>
                <li><a href="CinemaServlet?command=main_page">CGV 극장별</a></li>
                <li><a href="CinemaServlet?command=main_page">제휴할인</a></li>
                <li><a href="CinemaServlet?command=main_page">당첨자 발표</a></li>
                <li><a href="CinemaServlet?command=main_page">종료된 이벤트</a></li>
              </ul>
            </li>
            <li><a href="CinemaServlet?command=main_page" data-text="혜택"></a>
              <ul class="depth02">
                <li><a href="CinemaServlet?command=main_page">CGV 할인정보</a></li>
                <li><a href="CinemaServlet?command=main_page">CLUB 서비스</a></li>
                <li><a href="CinemaServlet?command=main_page">VIP 라운지</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </header>