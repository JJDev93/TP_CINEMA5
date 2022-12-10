<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script type="text/javascript" src="js/member.js"></script>
<section class="subcon wid loginPage">
   <h2>로그인</h2>
	<ul class="loginLink clear">
		<li class="on"><a href="CinemaServlet?command=member_login">로그인</a></li>
		<li><a href="CinemaServlet?command=nonMember_login">비회원 예매</a></li>
		<li><a href="" onclick="return noPage()">비회원 예매확인</a></li>
	</ul>
	<form action="CinemaServlet" method="post" id="Enjoy" name="Enjoy" class="login_now">
		<div class="login_con01">
			<div class="login_box mBorderColor">
				<h4>아이디 비밀번호를 입력하신 후,로그인 버튼을 클릭해주세요</h4>
				<div class="input_ul join_member">
					<input type="hidden" name="command" value="login_now">
					<div class="row_group">
						<div class="join_row">
							<h5 class="join_title">
								<label for="id">아이디</label>
							</h5>
							<span class="ps_box int_id"> 
								<input type="text" title="아이디" id="id" name="id" value="${id}" class="int">
							</span>
						</div>
					</div>
					<div class="row_group">
						<div class="join_row">
							<h5 class="join_title">
								<label for="pass">비밀번호</label>
							</h5>
							<span class="ps_box int_id"> 
								<input type="password" title="비밀번호" id="pass" name="pass" class="int">
								<p>${message}</p>
							</span>
						</div>
					</div>
					<input type="submit" value="로그인" class="enjoy_button join_now bt_submit mainBgColor" onclick="return LoginCheck()">
				</div>
			</div>
		</div>
	</form>
</section>
<%@ include file="/include/footer.jsp"%>