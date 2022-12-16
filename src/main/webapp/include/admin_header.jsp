<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="CinemaServlet?command=main_page"><img alt="brand" src="images/header/logoRed.png"></a>
			</div>
			<!-- collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="CinemaServlet?command=admin_movie_list">영화관리</a></li>
					<li><a href="CinemaServlet?command=admin_member_list">회원관리</a></li>
					<li><a href="CinemaServlet?command=admin_schedule_list">상영일정관리</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right btn-logout">
					<li><a href="CinemaServlet?command=member_logout" style="padding: 0;"><span class="btn btn-danger">로그아웃</span></a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>