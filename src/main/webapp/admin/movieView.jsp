<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<div class="container adminCon">
	<c:choose>
		<c:when test="${empty movie.poster}"></c:when>
		<c:otherwise>
			<div class="thumbnail" style="max-width:500px"><img alt="" src="upload/${movie.poster}"></div>
		</c:otherwise>
	</c:choose>
	<div class="page-header">
		<h2>영화 상세정보</h2>
	</div>
	<table class="table table-bordered table-hover">
	    <colgroup>
	       <col style="width:200px;">
	       <col>
	    </colgroup>
		<tbody>
			<tr>
				<th><label for="movieTitle">영화제목</label></th>
				<td>${movie.title}</td>
			</tr>
			<tr>
				<th><label for="movieScenario">시나리오</label></th>
				<td>${movie.scenario}</td>
			</tr>
			<tr>
				<th><label for="movieGenre">장르</label></th>
				<td>${movie.genre}</td>
			</tr>
			<tr>
				<th><label for="movieDirector">영화감독</label></th>
				<td>${movie.director}</td>
			</tr>
			<tr>
				<th><label for="movieCast">캐스팅</label></th>
				<td>${movie.cast}</td>
			</tr>
			<tr>
				<th><label for="movieOpenDate">상영일</label></th>
				<td>${movie.openDate}</td>
			</tr>
			<tr>
				<th><label for="movieFilmRate">관람가등급나이</label></th>
				<td>
					<c:choose>
						<c:when test="${movie.filmRate == 12}">12세 이상 관람가</c:when>
						<c:when test="${movie.filmRate == 15}">15세 이상 관람가</c:when>
						<c:when test="${movie.filmRate == 17}">청소년 관람불가</c:when>
						<c:otherwise>전체관람가</c:otherwise>
					</c:choose>					
				</td>
			</tr>
			<tr>
				<th><label for="movieRunningTime">러닝타임</label></th>
				<td>${movie.runningTime} 분</td>
			</tr>
			<tr>
				<th><label for="movieScreening">상영여부</label></th>
				<td>
					<c:choose>
						<c:when test="${movie.screening == true}">상영중</c:when>
						<c:otherwise>상영종료</c:otherwise>
					</c:choose>			
				</td>
			</tr>	
			<tr>
				<th>관람자수</th>
				<td>${movie.spectators}</td>
			</tr>	
			<tr>
				<th>평점</th>
				<td>${movie.grade}</td>
			</tr>			
			<c:choose>
				<c:when test="${empty movie.stillcut}"></c:when>
				<c:otherwise>
					<tr>
						<th colspan="2">스틸컷</th>
					</tr>
					<tr>
						<td colspan="2">
							<div class="stillcutDiv">
							<script>
								var stillCutList = "${movie.stillcut}";
								var stillCutWords = stillCutList.split(',');
								for (var i = 0; i < stillCutWords.length; i++) {
									document.write("<div class=\"stillcutItem\">");
									document.write("<img src=\"upload/" + stillCutWords[i] + "\">");
									document.write("</div>");
								}
							</script>
							</div>
						</td>
					</tr>
				</c:otherwise>
			</c:choose>	
		</tbody>
	</table>
	<div class="text-center">
		<div class="pull-left">
			<input class="btn btn-default" type="reset" value="목록" onclick="location.href='CinemaServlet?command=admin_movie_list'">
		</div>
		<div class="pull-right">
			<a href="CinemaServlet?command=admin_movie_update&movieCode=${movie.movieCode}" class="btn btn-primary">수정</a>
			<a href="CinemaServlet?command=admin_movie_delete_now&movieCode=${movie.movieCode};" class="btn btn-danger">삭제</a>
		</div>
	</div>
</div>
<%@ include file="/include/admin_footer.jsp"%>