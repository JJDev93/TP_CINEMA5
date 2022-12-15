<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<%
	ArrayList<String> genreList = new ArrayList<String>();
	genreList.add("액션");
	genreList.add("범죄");
	genreList.add("SF");
	genreList.add("코미디");
	genreList.add("슬랩스틱 코미디");
	genreList.add("로맨스 코미디");
	genreList.add("스릴러");
	genreList.add("공포");
	genreList.add("전쟁");
	genreList.add("스포츠");
	genreList.add("판타지");
	genreList.add("음악");
	genreList.add("뮤지컬");
	genreList.add("멜로");
	genreList.add("기타");
%>
<script type="text/javascript" src="js/movie.js"></script>
<div class="container adminCon">
	<div class="page-header">
		<h2>영화정보 수정</h2>
	</div>
	<form name="frm" method="post" enctype="multipart/form-data" action="CinemaServlet?command=admin_movie_update_now">
		<input type="hidden" name="movieCode" value="${movie.movieCode}">
		<table class="table table-bordered table-hover">
		    <colgroup>
		       <col style="width:200px;">
		       <col>
		    </colgroup>
			<tbody>
				<tr>
					<th><label for="movieTitle">영화제목</label></th>
					<td><input type="text" class="form-control" id="movieTitle" name="movieTitle" value="${movie.title}"></td>
				</tr>
				<tr>
					<th><label for="moviePoster">포스터</label></th>
					<td>
						<input type="file" class="form-control" id="moviePosterInput">
						<input type="text" class="form-control" id="moviePoster" name="moviePoster" value="${movie.poster}">
					</td>
				</tr>
				<tr>
					<th><label for="movieScenario">시나리오</label></th>
					<td><textarea class="form-control" rows="3" id="movieScenario" name="movieScenario">${movie.scenario}</textarea></td>
				</tr>
				<tr>
					<th><label for="movieGenre">장르</label></th>
					<td>
						<select class="form-control" id="movieGenre" name="movieGenre" style="width:150px">
							<% 
								for (int i=0; i<genreList.size(); i++){ 
							%>
								<option value="<%=genreList.get(i)%>" <c:if test="${movie.genre eq 'genreList.get(i)'}">selected</c:if>><%=genreList.get(i)%></option>
							<% } %>
						</select>			
					</td>
				</tr>
				<tr>
					<th><label for="movieDirector">영화감독</label></th>
					<td><input type="text" class="form-control" id="movieDirector" name="movieDirector" value="${movie.director}"></td>
				</tr>
				<tr>
					<th><label for="movieCast">캐스팅</label></th>
					<td><input type="text" class="form-control" id="movieCast" name="movieCast" value="${movie.cast}"></td>
				</tr>
				<tr>
					<th><label for="movieOpenDate">상영일</label></th>
					<td><input type="date" class="form-control" id="movieOpenDate" name="movieOpenDate" style="width:150px" value="${movie.openDate}"></td>
				</tr>
				<tr>
					<th><label for="movieFilmRate">관람가등급나이</label></th>
					<td>
						<select class="form-control" id="movieFilmRate" name="movieFilmRate" style="width:150px">
							<option value="all">전체관람가</option>
							<option value="12">12세 이상 관람가</option>
							<option value="15">15세 이상 관람가</option>
							<option value="17">청소년 관람불가</option>
						</select>						
					</td>
				</tr>
				<tr>
					<th><label for="movieRunningTime">러닝타임</label></th>
					<td><input type="number" class="form-control" id="movieRunningTime" name="movieRunningTime" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="숫자만 입력" min='0' max='500' style="width:150px; display: inline-block;" value="${movie.runningTime}"> 분</td>
				</tr>
				<tr>
					<th><label for="movieScreening">상영여부</label></th>
					<td>
						<div class="radio">
						  <label>
						    <input type="radio" name="movieScreening" id="movieScreening1" value="1" checked>
						    상영
						  </label>
						  &nbsp;&nbsp;&nbsp;
						  <label>
						    <input type="radio" name="movieScreening" id="movieScreening1" value="0">
						    종료
						  </label>
						</div>
					</td>
				</tr>
				<tr>
					<th><label for="movieStillcut">스틸컷</label></th>
					<td>
						<input multiple="multiple" type="file" class="form-control" name="stillcut[]" id="movieStillcut">
						<input type="text" class="form-control" name="stillcutList" id="stillcutList" value="${movie.stillcut}">
					</td>
				</tr>
			</tbody>
		</table>
		<div class="text-center">
			<div class="pull-left">
				<input class="btn btn-default" type="reset" value="목록" onclick="location.href='CinemaServlet?command=admin_movie_list'">
			</div>
			<div class="pull-right">
				<input class="btn btn-primary" type="submit" value="등록" onclick="return movieUpdateCheck()"> 
			</div>
		</div>
	</form>
</div>
<%@ include file="/include/admin_footer.jsp"%>
<script>
	$(document).ready( function() {
		$("#moviePosterInput").change(function () {
	        var InputPoster = document.getElementById("moviePosterInput");     
	        var Posterfile = InputPoster.files[0].name;
            $('#moviePoster').val(Posterfile);
	    });
	    $("#movieStillcut").change(function () {
	        var InputStillcut = document.getElementById("movieStillcut");        
	        var files = InputStillcut.files;
	        var file;
	        var StillcutNameList = "";
	        for (var i = 0; i < files.length; i++) {
	            file = files[i];
	            StillcutNameList += "," + file.name;
	        }
	        var StillcutName = StillcutNameList.substring(1); //맨앞에 , 빼기
            //alert(StillcutName);
            $('#stillcutList').val(StillcutName);
	    });
	}); 
</script>