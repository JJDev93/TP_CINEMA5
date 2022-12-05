<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/include/header.jsp"%>
    <script type="text/javascript" src="js/member.js"></script>
<section class="subcon wid loginPage">

   <h2>로그인</h2>
   <ul class="loginLink clear">
      <li class="on"><a href="JoinForm.jsp">로그인</a></li>
      <li><a href="NonMembersLogin.jsp">비회원 예매</a></li>
      <li><a href="">비회원 예매확인</a></li>
   </ul>
   <form action="" method="post" id="Enjoy" name="Enjoy" class="member">
   
   <fieldset class="enjoy_member">
   <p>아이디 비밀번호를 입력하신 후,로그인 버튼을 클릭해주세요</p> <br>
   <div>
     <span>아이디:</span>
     <input type="text" title="아이디" id="id" name="id" value="${id}"> <br><br>
     <span>비밀번호:</span>
     <input type="password" title="비밀번호" id="pass" name="pass">
   </div>
   
   <input type="submit" value="로그인" class="enjoy_now" onclick="return LoginCheck()">
   
   </fieldset>
   
   </form>
   

</section>
<%@ include file="/include/footer.jsp"%>