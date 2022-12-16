package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.dao.TheaterDAO;
import com.cinema.dao.TicketDAO;
import com.cinema.vo.MovieVO;
import com.cinema.vo.SchduleVO;
import com.cinema.vo.TheaterVO;

public class TicketingSelectAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/ticket/ticketStep01.jsp";
		String movieCode = request.getParameter("movieCode");
		
		MovieDAO movieDao = MovieDAO.getInstance();
		List<MovieVO> movieList = movieDao.selectAllMovie();
		
		TheaterDAO theaterDao = TheaterDAO.getInstance();
		List<TheaterVO> theaterList = theaterDao.selectAllTheater();
		
		TicketDAO ticketDao = TicketDAO.getInstance();
		SchduleVO schduleList = ticketDao.selectMovie(movieCode);
		System.out.println(schduleList);
		
		request.setAttribute("movieList", movieList);
		request.setAttribute("theaterList", theaterList);
		request.setAttribute("schduleList", schduleList);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}
}
