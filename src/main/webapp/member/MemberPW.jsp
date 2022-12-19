<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script type="text/javascript" src="js/member.js"></script>
<section class="subcon wid loginPage">
   <h2>비밀번호 찾기</h2>
	<form action="CinemaServlet" method="post" id="Enjoy" name="Enjoy" class="memberpw_form">
	<input type="hidden" name="command" value="memberPW_now">
		<div class="login_con01">
			<div class="login_box mBorderColor">
				<h4>아이디와 전화번호를 입력해주십시오</h4>
				<div class="input_ul join_member">
					<input type="hidden" name="command" value="loginsearch_now">
					<div class="row_group">
						<div class="join_row">
							<h5 class="join_title">
								<label for="name">이름</label>
							</h5>
							<span class="ps_box int_id"> 
								<input type="text" title="이름" id="name" name="name"  class="int" placeholder="등록한 이름">
							</span>
						</div>
					</div>
					<div class="row_group">
						<div class="join_row">
							<h5 class="join_title">
								<label for="phone">전화번호</label>
							</h5>
							<span class="ps_box int_id"> 
								<input type="text" title="전화번호" id="phone" name="phone" class="int" placeholder="등록한 전화번호">
							</span>
						</div>
					</div>
					<input type="submit" value="찾기" class="enjoy_button join_now bt_submit mainBgColor" onclick="return IDSCheck()">
					<input type="reset" value="취소" class="enjoy_button join_now bt_submit mainBgColor" onclick="location.href='CinemaServlet?command=member_login'">
				</div>
			</div>
		</div>
	</form>
</section>
<%@ include file="/include/footer.jsp"%>