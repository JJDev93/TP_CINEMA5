<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include/admin_header.jsp"%>
<script type="text/javascript" src="js/schedule.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<div class="container adminCon">
	<div class="page-header">
		<h2>상영영화 등록</h2>
	</div>
	<form name="frm" method="post" action="CinemaServlet">
		<input type="hidden" name="command" value="schedule_now">
		<table class="table table-bordered table-hover">
		    <colgroup>
		       <col style="width:200px;">
		       <col>
		    </colgroup>
			<tbody>
				<tr>				
					<th><label for="movieGenre">상영영화</label></th>
					<td>
						<select class="form-schedule" id="movietitle" name="movietitle" style="width:150px">
							<c:forEach var="movie" items="${movieList}">
								<option value="${movie.movieCode}">${movie.title}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th><label for="movieOpenDate">상영날짜</label></th>
					<td><input type="date" class="form-schedule" id="onDate" name="onDate" style="width:150px"></td>
					
				</tr>
				<tr>
					<th><label for="movieOpenDate">상영시간</label></th>
					<td><input type="time" class="form-schedule" id="onTime" name="onTime" style="width:150px"></td>
				</tr>
				
				<tr>
				   <th><label for="moviePrice">가격</label> </th>
				   <td><input type="text" class="form-schedule" id="price" name="price"> </td>
				</tr>	
			</tbody>
		</table>
		<div class="text-center">
			<div class="pull-left">
				<input class="btn btn-default" type="reset" value="목록" onclick="location.href='CinemaServlet?command=admin_schedule_list'">
			</div>
			<div class="pull-right">
				<input class="btn btn-primary" type="submit" value="등록" onclick="return moviescheduleCheck()"> 
			</div>
		</div>
	</form>
</div>
<%@ include file="/include/admin_footer.jsp"%>