<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp" %>
	<div class="container adminCon">
		<div class="page-header">
			<h1>회원 관리</h1>
		</div>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>id</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cinema" items="${cinematList}">
					<tr class="record">
						<td> ${cinema.id}</td> 
						<td> ${cinema.name}</td>
						<td> ${cinema.phone}</td>
						<td> <fmt:formatDate value="${cinema.regdate}"/> </td>
						<td> <a href="cinemaUpdate.do?id=${cinematList.code}">수정</a></td>
						<td> <a href="cinemaDelete.do?id=${cinematList.code}">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<nav class="text-center">
			<ul class="pagination">
				<li class="disabled"><a href="#" aria-label="previous"><span aria-hidden="true">&laquo;</span></a></li>
				<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
				<li class="disabled"><a href="#" aria-label="next"><span aria-hidden="true">&raquo;</span></a></li>
			</ul>
		</nav>
	</div>
<%@ include file="/include/admin_footer.jsp" %>