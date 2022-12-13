<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<div class="container adminCon">
	<div class="jumbotron">
		<h1>Cinema</h1>
		<p>영화관을 등록하고 관리하는 페이지 입니다.</p>
		<p><a class="btn btn-primary btn-lg" href="CinemaServlet?command=scheduleList_write" role="button" >신규 영화관 등록</a></p>
	</div>
	<div class="page-header">
		<h2>영화관 목록</h2>
	</div>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>상열날짜</th>
				<th>상열시간</th>
				<th>가격</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="schedule" items="${schedule}">
			<tr>
			
<%-- 				<td>${schedule.scheduleCode }</td> --%>
				<td></td>
				<td></td>
				<td></td>
				<td class="text-center"><button type="button" class="btn btn-sm btn-primary">수정</button></td>
				<td class="text-center"><button type="button" class="btn btn-sm btn-danger">삭제</button></td>
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
<%@ include file="/include/admin_footer.jsp"%>