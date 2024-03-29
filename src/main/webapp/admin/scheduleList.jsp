<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<script type="text/javascript" src="js/schedule.js"></script>
<div class="container adminCon">
	<div class="jumbotron">
		<h1>Schedule</h1>
		<p>상영일정을 등록하고 관리하는 페이지 입니다.</p>
		<p><a class="btn btn-primary btn-lg" href="CinemaServlet?command=scheduleList_write" role="button" >상영일정 등록</a></p>
	</div>
	<div class="page-header">
		<h2>상영일정 목록</h2>
	</div>
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>영화제목</th>
				<th>상열날짜</th>
				<th>상영시간</th>
				<th>가격</th>
				<th>수정</th>
				<th>삭제</th>
				
			</tr>
		</thead>
		<tbody>
		<% int i=1; %>
		<c:forEach var="schedule" items="${schedule}">
			<tr>
				<td><%=i%></td>
				<td>${schedule.movietitle }</td>
				<td>${schedule.onDate }</td>
				<td>${schedule.onTime }</td>
				<td>${schedule.price }</td>
				<td class="text-center"><button type="button" class="btn btn-sm btn-primary"  onclick="location.href='CinemaServlet?command=schedule_list_col&scheduleCode=${schedule.scheduleCode}'">수정</button></td>
				<td class="text-center"><button type="button" class="btn btn-sm btn-danger" id="delete" onclick=" location.href=('CinemaServlet?command=schedule_delete&scheduleCode=${schedule.scheduleCode}');">삭제</button></td>
			</tr>
			<% i++; %>
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