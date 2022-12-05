<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<div class="container adminCon">
	<div class="page-header">
		<h2>상영영화 등록</h2>
	</div>
	<form action="CinemaServlet?command=admin_movie_wirte_now" method="post" enctype="multipart/form-data">
		<table class="table table-bordered table-hover">
		    <colgroup>
		       <col style="width:200px;">
		       <col>
		    </colgroup>
			<tbody>
				<tr>
					<th><label for="movieTitle">영화제목</label></th>
					<td><input type="text" class="form-control" id="movieTitle" name="movieTitle"></td>
				</tr>
				<tr>
					<th><label for="moviePoster">포스터</label></th>
					<td><input type="file" class="form-control" id="moviePoster" name="movieTitle"></td>
				</tr>
				<tr>
					<th><label for="movieScenario">시나리오</label></th>
					<td><textarea class="form-control" rows="3" id="movieScenario" name="movieScenario"></textarea></td>
				</tr>
				<tr>
					<th><label for="movieGenre">장르</label></th>
					<td>
						<select class="form-control" id="movieGenre" name="movieGenre" style="width:150px">
							<option value="액션">액션</option>
							<option value="범죄">범죄</option>
							<option value="SF">SF</option>
							<option value="코미디">코미디</option>
							<option value="슬랩스틱 코미디">슬랩스틱 코미디</option>
							<option value="로맨스 코미디">로맨스 코미디</option>
							<option value="스릴러">스릴러</option>
							<option value="공포">공포</option>
							<option value="전쟁">전쟁</option>
							<option value="스포츠">스포츠</option>
							<option value="판타지">판타지</option>
							<option value="음악">음악</option>
							<option value="뮤지컬">뮤지컬</option>
							<option value="멜로">멜로</option>
							<option value="기타">기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="movieDirector">영화감독</label></th>
					<td><input type="text" class="form-control" id="movieDirector" name="movieDirector"></td>
				</tr>
				<tr>
					<th><label for="movieCast">캐스팅</label></th>
					<td><input type="text" class="form-control" id="movieCast" name="movieCast"></td>
				</tr>
				<tr>
					<th><label for="movieOpenDate">상영일</label></th>
					<td><input type="date" class="form-control" id="movieOpenDate" name="movieOpenDate" style="width:150px"></td>
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
					<td><input type="text" class="form-control" id="movieRunningTime" name="movieRunningTime" style="width:150px; display: inline-block;"> 분</td>
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
						<input multiple="multiple" type="file" class="form-control" id="movieStillcut" name="movieStillcut[]">
					</td>
				</tr>
			</tbody>
		</table>

		<div class="text-center">
			<div class="pull-left">
				<input class="btn btn-default" type="reset" value="목록" onclick="location.href='CinemaServlet?command=admin_movie_list'">
			</div>
			<div class="pull-right">
				<input class="btn btn-primary" type="submit" value="등록"> 
			</div>
		</div>
	</form>
</div>
<%@ include file="/include/admin_footer.jsp"%>