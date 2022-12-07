<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<script type="text/javascript" src="js/member.js"></script>
<section class="subcon wid loginPage">
   <h2>마이페이지</h2>
   <form action="CinemaServlet" method="post" id="Join" class="member" name="Join">
    <input type="hidden" name="command" value="join_now">
      <div class="login_con01">
         <div class="login_box mBorderColor">
            <h4>나의 개인정보</h4>
            <div class="input_ul join_member">
               <div class="row_group">
                  <div class="join_row">
                     <h5 class="join_title">
                        <label for="id">아이디</label>
                     </h5>
                     <span class="ps_box int_id"> <input type="text" id="id"
                        name="id" class="int" tilte="ID" maxlength="20">
                        <input type="button" value="중복체크" onclick="idCheck()">
                     </span>
                  </div>
                  <div class="join_row">
                     <h5 class="join_title">
                        <label for="pswd1">비밀번호</label>
                     </h5>
                     <span class="ps_box int_pass" id="pswdImg"> <input
                        type="password" id="pwed1" name="pwed1" class="int"
                        title="비밀번호 입력" maxlength="20" placeholder="현재비밀번호">
                        <input
                        type="password" id="pwed2" name="pwed2" class="int"
                        title="비밀번호 변경" maxlength="20" placeholder="변경할 비밀번호">
                        <input
                        type="password" id="pwed3" name="pwed3" class="int"
                        title="비밀번호 변경" maxlength="20" placeholder="변경한 비밀번호 재확인">
                     </span>

                  </div>
               </div>
               <div class="row_group">
                  <div class="join_row">
                     <h5 class="join_title">
                        <label for="name">이름</label>
                     </h5>
                     <span class="ps_box box_right_space"> <input type="text"
                        id="name" name="name" title="이름" class="int" maxlength="40">
                     </span>
                  </div>
                  <div class="join_row join_birthday">
                     <h5 calss="join_title">
                        <label for="yy">생년월일</label>
                     </h5>
                     <div class="bir_wrap">
                        <div class="bir_yy">
                           <span class="ps_box"> <input type="date" id="birth"
                              placeholder="년/일/월" aria-label="년/일/월" class="birth" name="birth"
                              maxlength="4">
                           </span>
                        </div>
                     </div>
                     <span class="error_next_box" id="birthMsg" style="display: none" aria-live="assertive"></span>
                  </div>
                  <div class="join_row join_email">
                     <h5 class="join_title">
                        <label for="email">이메일</label>
                     </h5>
                     <span class="ps_box int_email box_right_space"> 
                     <input
                        type="text" id="email" name="email" placeholder="이메일 변경"
                        aria-label="선택입력" class="email" maxlength="100">
                     </select>
                     </span>
                  </div>
               </div>
               <div class="join_row join_mobile" id="moDiv">
                  <h5 class="join_title">
                     <label for="phoneNo">휴대전화</label>
                  </h5>
                  <span class="ps_box mobile"> <input type="tel"
                     id="phoneNo" name="phoneNo" placeholder="전회번호 입력"
                     aria-label="전화번호입력" class="int" maxlength="16"> 
                  </span>
               </div>
               <input type="submit" value="변경하기" class="join_now bt_submit mainBgColor" onclick="return MemberChange()">
            </div>
         </div>
      </div>
   </form>



</section>
<%@ include file="/include/footer.jsp"%>