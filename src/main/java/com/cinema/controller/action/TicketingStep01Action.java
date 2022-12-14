package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.dao.TheaterDAO;
import com.cinema.vo.MovieVO;
import com.cinema.vo.TheaterVO;

public class TicketingStep01Action implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/ticket/ticketStep01.jsp";
		
		MovieDAO movieDao = MovieDAO.getInstance();
		List<MovieVO> movieList = movieDao.selectAllMovie();
		
		TheaterDAO theaterDao = TheaterDAO.getInstance();
		List<TheaterVO> theaterList = theaterDao.selectAllTheater();
		
		request.setAttribute("movieList", movieList);
		request.setAttribute("theaterList", theaterList);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}