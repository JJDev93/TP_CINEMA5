<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/member.js"></script>
</head>
<body>
<h2>아이디 중복</h2>
<form action="CinemaServlet" method="post" name="Join">
아이디 : <input type="text" name="id" value="${id}">
        <input type="submit" value="중복체크">
        <input type="hidden" name="command" value="member_idcheck">
         
        <br>
        
        <c:if test="${result == 1}">
          <script type="text/javascript">
              opener.document.Join.id.value="";
          </script>
          ${id}는 이미 사용중인 아이디입니다.
        </c:if>
        
        <c:if test="${result == -1}">
          ${id}는 사용가능한 아이디입니다.
          <input type="button" value="사용" class="cancel" onclick="idok()">
        </c:if>


</form>


</body>
</html>