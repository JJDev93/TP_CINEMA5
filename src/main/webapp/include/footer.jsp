<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<footer id="footer">
    <div class="ftTop">
      <ul class="wid clear">
        <li><a href="" onclick="return noPage()">회사소개</a></li>
        <li><a href="" onclick="return noPage()">IR</a></li>
        <li><a href="" onclick="return noPage()">광고/제휴/출점문의</a></li>
        <li><a href="" onclick="return noPage()">이용약관</a></li>
        <li><a href="" onclick="return noPage()">편성기준</a></li>
        <li><a href="" onclick="return noPage()">개인정보처리방침</a></li>
        <li><a href="" onclick="return noPage()">법적고지</a></li>
        <li><a href="" onclick="return noPage()">이메일주소무단수집거부</a></li>
        <li><a href="" onclick="return noPage()">윤리경영</a></li>
        <li><a href="" onclick="return noPage()">사이버감사실</a></li>
      </ul>
    </div>
    <div class="ftDown">
      <div class="wid">
        <address>
          <div><p>(03163)서울특별시 종로구 인사동길 12 대일빌딩 7층, 15층</p></div>
          <div class="info">
            <p><span class="spanTxt">대표이사</span><span>5조</span></p>
            <p><span class="spanTxt">사업자등록번호</span><span>123-45-67890</span></p>
            <p><span class="spanTxt">통신판매업신고번호</span><span>1234-서울종각-1234 <a href="" onclick="return noPage()">사업자정보확인</a></span></p>
            <p><span class="spanTxt">호스팅사업자</span><span>CJ올리브네트웍스</span></p>
            <p><span class="spanTxt">개인정보보호 책임자</span><span>최욱진</span></p>
            <p><span class="spanTxt">대표이메일</span><span>cine5@cine5.net</span></p>
<!--             <p><a href="CinemaServlet?command=admin_member_list">관리자</a></p> -->
            <c:if test="${loginUser.lev == 'B'}">
            	<p><a href="CinemaServlet?command=admin_member_list">관리자</a></p>
            </c:if>         
          </div>
          <div><p>&copy; CINE5. All Rights Reserved</p></div>
        </address>
      </div>
    </div>
  </footer>
  <script type="text/javascript" src="js/common.js"></script>
</body>
</html>