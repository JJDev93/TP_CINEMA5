<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<div class="container adminCon">
	<div class="jumbotron">
		<h1>Member</h1>
		<p>회원을 관리하는 페이지 입니다.</p>
	</div>
	<div class="page-header">
		<h2>회원 목록</h2>
	</div>
	<input type="hidden" name="command" value="admin_member_list">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>id</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>생일</th>
				<th>이메일</th>
				<th>가입일자</th>
				

			</tr>
		</thead>
		<tbody>
			<c:forEach var="cinema" items="${cinematList}">
				<tr class="record">
					<td>${cinema.id}</td>
					<td>${cinema.name}</td>
					<td>${cinema.phone}</td>
					<td>${cinema.birth } </td>
					<td>${cinema.email}</td>
					<td><fmt:formatDate value="${cinema.regdate}" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<nav class="text-center">
		<ul class="pagination">
			<li class="disabled"><a href="#" aria-label="previous"><span
					aria-hidden="true">&laquo;</span></a></li>
			<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
			<li class="disabled"><a href="#" aria-label="next"><span
					aria-hidden="true">&raquo;</span></a></li>
		</ul>
	</nav>
</div>
<%@ include file="/include/admin_footer.jsp"%>
