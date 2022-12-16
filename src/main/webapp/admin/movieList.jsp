<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp" %>
<script type="text/javascript" src="js/movie.js"></script>
	<div class="container adminCon">
		<div class="jumbotron">
			<h1>Movie</h1>
			<p>영화를 등록하고 관리하는 페이지 입니다.</p>
			<p><a class="btn btn-primary btn-lg" href="CinemaServlet?command=admin_movie_wirte" role="button">신규 영화 등록</a></p>
		</div>
		<div class="page-header">
			<h2>상영영화 목록</h2>
		</div>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>코드</th>
					<th>제목</th>
					<th>포스터</th>
					<th>장르</th>
					<th>영화감독</th>
					<th>상영일</th>
					<th>관람자수</th>
					<th>관람가등급나이</th>
					<th>러닝타임</th>
					<th>평점</th>
					<th>상영여부</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="movie" items="${movieList}">
				<tr>
					<td></td>
					<td>${movie.movieCode}</td>
					<td><a href="CinemaServlet?command=admin_movie_view&movieCode=${movie.movieCode}">${movie.title}</a></td>
					<td class="trPoster">
						<c:choose>
							<c:when test="${empty movie.poster}">
								<img alt="" src="upload/noimage.gif">
							</c:when>
							<c:otherwise>
								<img alt="" src="upload/${movie.poster}">
							</c:otherwise>
						</c:choose>
					</td>
					<td>${movie.genre}</td>
					<td>${movie.director}</td>
					<td>${movie.openDate}</td>
					<td>${movie.spectators}</td>
					<td>${movie.filmRate}</td>
					<td>${movie.runningTime}</td>
					<td>${movie.grade}</td>
					<td>
						<c:choose>
							<c:when test="${movie.screening eq 1}">
								상영중
							</c:when>
							<c:otherwise>
								상영중지								
							</c:otherwise>
						</c:choose>
					
					</td>
					<td class="text-center">
						<a href="CinemaServlet?command=admin_movie_update&movieCode=${movie.movieCode}" class="btn btn-primary btn-sm">수정</a>
					</td>
					<td class="text-center">
						<td class="text-center"><button type="button" class="btn btn-sm btn-danger" id="delete" onclick="return (DeleteCheck()); location.href=('CinemaServlet?command=admin_movie_delete_now&movieCode=${movie.movieCode}'); ">삭제</button></td>
					</td>
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
<%@ include file="/include/admin_footer.jsp" %>