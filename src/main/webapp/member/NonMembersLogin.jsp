<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href="css/member.css">
<section class="subcon wid loginPage">
	<h2>비회원 예매</h2>
	<ul class="loginLink clear">
		<li><a href="JoinForm.jsp">로그인</a></li>
		<li class="on"><a href="NonMembersLogin.jsp">비회원 예매</a></li>
		<li><a href="">비회원 예매확인</a></li>
	</ul>
	<form action="" method="post" name="nonMemberLoin_frm">
		<div class="login_con01">
			<h4><span class="mainColor">STEP 1.</span> 개인정보 수집 및 이용동의</h4>
			<p>비회원 예매 고객께서는 먼저 개인정보 수집 및 이용 동의 정책에 동의해 주셔야 합니다.</p>
			<table class="privacy_table">
				<thead>
					<tr>
						<th>항목</th>
						<th>이용목적</th>
						<th>보유기간</th>
						<th>동의여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>법정생년월일, 휴대폰번호, 비밀번호</td>
						<td>
							<ul>
								<li>비회원 예매서비스 제공</li>
								<li>이용자식별, 요금정산, 추심, 신규서비스 개발, 접속빈도 파악 등</li>
							</ul>
						</td>
						<td>관람 또는 취소 후 1주일 까지</td>
						<td>
							<input type="radio" name="privacy_arg" value="yes"> 동의함
							<input type="radio" name="privacy_arg" value="no"> 동의안함
						</td>
					</tr>
				</tbody>
			</table>
			<p>※ CGV 비회원 예매서비스 제공을 위해 필요한 최소한의 개인정보이므로 입력(수집)에 동의하시지 않을 경우 서비스를 이용하실 수 없습니다.</p>
		</div>
		<div class="login_con01">
			<h4><span class="mainColor">STEP 2.</span> 개인정보(휴대폰번호,법정생년월일,비밀번호) 입력</h4>
			<p>개인정보를 잘못 입력하시면 예매내역 확인/취소 및 티켓 발권이 어려울 수 있으니, 입력하신 정보를 다시 한번 확인해주시기 바랍니다.</p>
			<div class="login_box mBorderColor">
				<h4>개인정보 입력</h4>
				<div class="input_ul">
					<div class="input_li">
						<label for="txtBirth">법정생년월일(8자리)</label>
						<input type="text" name="birth" id="txtBirth" class="input_box" required="required">
					</div>
					<div class="input_li">
						<label for="txtPhone">휴대폰번호</label>
						<input type="text" name="phone" id="txtPhone" class="input_box" required="required">
					</div>
					<div class="input_li">
						비밀번호(4자리)
						<input type="password" name="pwd" class="input_box" required="required">
					</div>
					<div class="input_li">
						비밀번호확인
						<input type="password" name="pwd_chk" class="input_box" required="required">
					</div>
					<input type="submit" value="비회원 예매하기" class="bt_submit mainBgColor">
				</div>
			</div>
		</div>
	</form>
	<div class="warning_box mBorderColor">
		<ul>
			<li>위 정보 수집 및 이용에 동의하지 않을 경우, 비회원 예매 서비스를 이용하실 수 없습니다.</li>
			<li>비회원 예매 시 청소년 관람불가 영화는 예매가 제한됩니다.</li>
			<li>만 14세 미만 고객은 비회원으로 예매하실 수 없습니다.</li>
			<li>비회원 예매 결제수단은 신용카드만 가능하며 모든 제휴상품권, 쿠폰, 영화예매권 등은 회원 예매 서비스 이용 시 사용 가능합니다.</li>
			<li>ARS에서는 취소가 불가능하며, 홈페이지/모바일을 이용하여 취소 처리하실 수 있습니다.</li>
			<li>비회원 예매 및 예매 확인/취소 메뉴만 이용 가능합니다. 그 외 서비스는 회원 가입 후 이용해 주십시오.</li>
			<li>문의 사항은 CGV고객센터(1544-1122)로 문의해 주시기 바랍니다. (평일 9:00~18:00)</li>
		</ul>
	</div>
</section>
<%@ include file="/include/footer.jsp" %>