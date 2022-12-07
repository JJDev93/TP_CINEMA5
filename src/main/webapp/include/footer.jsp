<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<footer id="footer">
    <div class="ftTop">
      <ul class="wid clear">
        <li><a href="#">회사소개</a></li>
        <li><a href="#">IR</a></li>
        <li><a href="#">광고/제휴/출점문의</a></li>
        <li><a href="#">이용약관</a></li>
        <li><a href="#">편성기준</a></li>
        <li><a href="#">개인정보처리방침</a></li>
        <li><a href="#">법적고지</a></li>
        <li><a href="#">이메일주소무단수집거부</a></li>
        <li><a href="#">윤리경영</a></li>
        <li><a href="#">사이버감사실</a></li>
      </ul>
    </div>
    <div class="ftDown">
      <div class="wid">
        <address>
          <div><p>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</p></div>
          <div class="info">
            <p><span class="spanTxt">대표이사</span><span>허민회</span></p>
            <p><span class="spanTxt">사업자등록번호</span><span>104-81-45690</span></p>
            <p><span class="spanTxt">통신판매업신고번호</span><span>2017-서울용산-0662 <a href="">사업자정보확인</a></span></p>
            <p><span class="spanTxt">호스팅사업자</span><span>CJ올리브네트웍스</span></p>
            <p><span class="spanTxt">개인정보보호 책임자</span><span>심준범</span></p>
            <p><span class="spanTxt">대표이메일</span><span>cjcgvmaster@cj.net</span></p>
            <p><a href="CinemaServlet?command=admin_member_list">관리자</a></p>
            <c:if test="${loginUser.lev == 'B'}">
            <p><a href="CinemaServlet?command=admin_member_list">관리자</a></p>
            </c:if>
            <c:if test="${loginUser.lev == 'A' || empty loginUser.id}">
            </c:if>            
          </div>
          <div><p>&copy; CJ CGV. All Rights Reserved</p></div>
        </address>
      </div>
    </div>
  </footer>
</body>
</html>