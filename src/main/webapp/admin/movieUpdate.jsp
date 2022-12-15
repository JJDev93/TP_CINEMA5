<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
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
							<option value="액션" <c:if test="${movie.genre eq '액션'}">selected</c:if>>액션</option>
							<option value="범죄" <c:if test="${movie.genre eq '범죄'}">selected</c:if>>범죄</option>
							<option value="SF" <c:if test="${movie.genre eq 'SF'}">selected</c:if>>SF</option>
							<option value="코미디" <c:if test="${movie.genre eq '코미디'}">selected</c:if>>코미디</option>
							<option value="슬랩스틱 코미디" <c:if test="${movie.genre eq '슬랩스틱 코미디'}">selected</c:if>>슬랩스틱 코미디</option>
							<option value="로맨스 코미디" <c:if test="${movie.genre eq '로맨스 코미디'}">selected</c:if>>로맨스 코미디</option>
							<option value="스릴러" <c:if test="${movie.genre eq '스릴러'}">selected</c:if>>스릴러</option>
							<option value="공포" <c:if test="${movie.genre eq '공포'}">selected</c:if>>공포</option>
							<option value="전쟁" <c:if test="${movie.genre eq '전쟁'}">selected</c:if>>전쟁</option>
							<option value="스포츠" <c:if test="${movie.genre eq '스포츠'}">selected</c:if>>스포츠</option>
							<option value="판타지" <c:if test="${movie.genre eq '판타지'}">selected</c:if>>판타지</option>
							<option value="음악" <c:if test="${movie.genre eq '음악'}">selected</c:if>>음악</option>
							<option value="뮤지컬" <c:if test="${movie.genre eq '뮤지컬'}">selected</c:if>>뮤지컬</option>
							<option value="멜로" <c:if test="${movie.genre eq '멜로'}">selected</c:if>>멜로</option>
							<option value="기타" <c:if test="${movie.genre eq '기타'}">selected</c:if>>기타</option>
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
							<option value="0" <c:if test="${movie.filmRate eq 0}">selected</c:if>>전체관람가</option>
							<option value="12" <c:if test="${movie.filmRate eq 12}">selected</c:if>>12세 이상 관람가</option>
							<option value="15" <c:if test="${movie.filmRate eq 15}">selected</c:if>>15세 이상 관람가</option>
							<option value="17" <c:if test="${movie.filmRate eq 17}">selected</c:if>>청소년 관람불가</option>
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
						    <input type="radio" name="movieScreening" id="movieScreening1" value="1" <c:if test="${movie.screening eq 1}">checked</c:if>>
						    상영
						  </label>
						  &nbsp;&nbsp;&nbsp;
						  <label>
						    <input type="radio" name="movieScreening" id="movieScreening1" value="0" <c:if test="${movie.screening eq 0}">checked</c:if>>
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