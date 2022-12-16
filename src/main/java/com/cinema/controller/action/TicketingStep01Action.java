package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.dao.ScheduleDAO;
import com.cinema.dao.TheaterDAO;
import com.cinema.vo.MovieVO;
import com.cinema.vo.SchduleVO;
import com.cinema.vo.TheaterVO;

public class TicketingStep01Action implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/ticket/ticketStep01.jsp";
		
		String movieCode = request.getParameter("movieCode");
		String theaterCode = request.getParameter("theaterCode");
		String dateCode = request.getParameter("dateCode");
		
		MovieDAO movieDao = MovieDAO.getInstance();
		List<MovieVO> movieList = movieDao.selectAllMovie();
		
		TheaterDAO theaterDao = TheaterDAO.getInstance();
		List<TheaterVO> theaterList = theaterDao.selectAllTheater();		

		ScheduleDAO scheduleDao = ScheduleDAO.getInstance();
		
		//영화코드만 선택했을 때
		if(movieCode != null && theaterCode == null && dateCode == null) {
			List<SchduleVO> schduleList = scheduleDao.selectByMovie(Integer.parseInt(movieCode));	
			request.setAttribute("schduleList", schduleList);		
		//극장코드만 선택했을 때
		}else if(movieCode == null && theaterCode != null && dateCode == null) {
			List<SchduleVO> schduleList = scheduleDao.selectByTheaterCode(Integer.parseInt(theaterCode));
			request.setAttribute("schduleList", schduleList);		
		//영화, 극장코드 선택했을 때
		}else if(movieCode != null && theaterCode != null && dateCode == null) {
			List<SchduleVO> schduleList = scheduleDao.selectByMovieTh(Integer.parseInt(movieCode), Integer.parseInt(theaterCode));
			request.setAttribute("schduleList", schduleList);
			//System.out.println("schduleList : " + schduleList);
		// 아루것도 선택하지 않았을 때
		}else{
			List<SchduleVO> schduleList = scheduleDao.selectAllschedule();
			request.setAttribute("schduleList", schduleList);
		}
		
		System.out.println("movieCode : " + movieCode);
		System.out.println("theaterCode : " + theaterCode);
		System.out.println("dateCode : " + dateCode);
		System.out.println("=================================================================");
		
		request.setAttribute("movieList", movieList);
		request.setAttribute("theaterList", theaterList);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}