<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar"%>
<%
 	request.setCharacterEncoding("utf-8");
 	Calendar cal=Calendar.getInstance(); //현재 시스템이 가지고 있는 날짜 데이터 가지고 오기
 	int y=cal.get(Calendar.YEAR);
 	int m=cal.get(Calendar.MONTH)+1;
 	int d=cal.get(Calendar.DATE);
 	String _y=request.getParameter("y");
 	String _m=request.getParameter("m");
 	if(_y!=null)
 		y=Integer.parseInt(_y);
 	if(_m!=null)
 		m=Integer.parseInt(_m);
 	//y년 m월 1일의 요일
 	cal.set(y,m-1,1);
 	y=cal.get(Calendar.YEAR);
 	m=cal.get(Calendar.MONTH)+1;
 	int w=cal.get(Calendar.DAY_OF_WEEK); //1(일)~7(토) => 일요일일때 w에 1. 메소드를 외우면 된다.
 %>
<%@ include file="/include/header.jsp"%>
<section class="subcon wid">
	<h2>빠른예매</h2>
	<div class="ticketDiv clear">
		<div class="ticketTab">
			<div class="ticketHd">영화</div>
			<div class="ticketList">
				<ul>
					<c:forEach var="movie" items="${movieList}">
						<li class="" data-moivecode="${movie.movieCode}">
							<a href="CinemaServlet?command=ticketing_select&movieCode=${movie.movieCode}">
								<c:choose>
									<c:when test="${movie.filmRate == 12}"><span class="filmRate rate12">${movie.filmRate}</span></c:when>
									<c:when test="${movie.filmRate == 15}"><span class="filmRate rate15">${movie.filmRate}</span></c:when>
									<c:when test="${movie.filmRate == 18}"><span class="filmRate rate18">${movie.filmRate}</span></c:when>
									<c:otherwise><span class="filmRate all">ALL</span></c:otherwise>
								</c:choose>
								${movie.title}
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="ticketTab">
			<div class="ticketHd">극장</div>
			<div class="ticketList">
				<ul>
					<c:forEach var="theater" items="${theaterList}">
						<li class="" data-theaterCode="${theater.theaterCode}">
							${theater.theaterName}
						</li>									
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="ticketTab date">
			<div class="ticketHd">날짜</div>
			<div class="ticketList">
				<ul class="date">
					<%	
					//1~마지막일 계산
					String fontColor = "";
					String dayNum = "dayNum";
					for (int i = 1; i <= cal.getActualMaximum(Calendar.DATE); i++) {
						int DayName = w % 7; 
						fontColor = w % 7 == 1 ? "cRed" : (w % 7 == 0 ? "cBlue" : "cBack");	
						out.println("<li class='" + fontColor + "'>");
						if(DayName==0){
							out.print("<span>토</span>");	
						}else if(DayName==1){
							out.print("<span>일</span>");	
						}else if(DayName==2){
							out.print("<span>월</span>");	
						}else if(DayName==3){
							out.print("<span>화</span>");	
						}else if(DayName==4){
							out.print("<span>수</span>");	
						}else if(DayName==5){
							out.print("<span>목</span>");	
						}else if(DayName==6){
							out.print("<span>금</span>");	
						}
						out.print("<span class='" + dayNum + "'>" + i + "</span></li>");	
						w++;
					}	
					%>	
				</ul>
			</div>
		</div>
		<div class="ticketTab">
			<div class="ticketHd">시간</div>
			<div class="ticketList">
				<ul>
					<c:forEach var="schdule" items="${schduleList}">
						<li class="" data-theaterCode="${schdule.scheduleCode}">
							${schdule.movietitle}
							${schdule.onDate}
							${schdule.onTime}
						</li>									
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</section>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>	
	$(document).ready(function() {
		$(".ticketList li").each(function () {
			$(this).click(function () {
				$(this).addClass("selected");
				$(this).siblings().removeClass("selected");
			});
		});
	});
</script>
<%@ include file="/include/footer.jsp"%>