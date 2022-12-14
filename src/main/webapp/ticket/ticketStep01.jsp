<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp"%>
<section class="subcon wid">
	<h2>빠른예매</h2>
	<div class="ticketDiv clear">
		<div class="ticketTab">
			<div class="ticketHd">영화</div>
			<div class="ticketList">
				<ul>
					<c:forEach var="movie" items="${movieList}">
					
						<c:choose>
							<c:when test="${movie.filmRate == 12}"><li><span class="filmRate rate12">${movie.filmRate}</span> ${movie.movieCode}, ${movie.title}</li></c:when>
							<c:when test="${movie.filmRate == 15}"><li><span class="filmRate rate15">${movie.filmRate}</span> ${movie.movieCode}, ${movie.title}</li></c:when>
							<c:when test="${movie.filmRate == 18}"><li><span class="filmRate rate18">${movie.filmRate}</span> ${movie.movieCode}, ${movie.title}</li></c:when>
							<c:otherwise><li><span class="filmRate all">ALL</span> ${movie.movieCode}, ${movie.title}</li></c:otherwise>
						</c:choose>	
											
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="ticketTab">
			<div class="ticketHd">극장</div>
			<div class="ticketList">
				<ul>
					<li></li>
				</ul>
			</div>
		</div>
		<div class="ticketTab date">
			<div class="ticketHd">날짜</div>
			<div class="ticketList">
				<ul>
					<li></li>
				</ul>
			</div>
		</div>
		<div class="ticketTab">
			<div class="ticketHd">시간</div>
			<div class="ticketList">
				<ul>
					<li></li>
				</ul>
			</div>
		</div>
	</div>
</section>
<%@ include file="/include/footer.jsp"%>