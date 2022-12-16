<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<script type="text/javascript" src="js/member.js"></script>
<section class="subcon wid loginPage">
   <h2>회원 탈퇴 페이지</h2>
   <form action="CinemaServlet" method="post" id="Join" class="member" name="Join">
    <input type="hidden" name="command" value="memberdelete_now">
      <div class="login_con01">
         <div class="login_box mBorderColor">
            <h4>회원 정보 변경</h4>
            <div class="input_ul join_member">
               <div class="row_group">
                  <div class="join_row">
                     <h5 class="join_title">
                        <label for="id">아이디</label>
                     </h5>
                     <span class="ps_box int_id"> <input type="text" id="id"
                        name="id" class="int" title="ID" maxlength="20" value="${loginUser.id}">
                        <p>${messag}</p>
                     </span>
                  </div>
                  <div class="join_row">
                     <h5 class="join_title">
                        <label for="pswd1">비밀번호</label>
                     </h5>
                     <span class="ps_box int_pass" id="pswdImg"> <input
                        type="password" id="pwed1" name="pwed1" class="pwed1"
                        title="비밀번호 입력" maxlength="20" placeholder="현재비밀번호" >
                        <input type="hidden" id="pwed4" name="pwed4" value="${loginUser.pass}">
                        <p>${message}</p> 
                     </span>
                  </div>
               </div>
               <input type="reset" value="취소하기" class="delete_now bt_submit mainBgColor" onclick="return MemberChange()">
               <input type="submit" value="탈퇴하기" class="delete_now bt_submit mainBgColor" onclick="return DeleteMember()">
            </div>
         </div>
      </div>
   </form>