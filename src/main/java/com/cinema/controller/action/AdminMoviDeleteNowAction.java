package com.cinema.controller.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cinema.dao.MovieDAO;

public class AdminMoviDeleteNowAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String movieCode = request.getParameter("movieCode");
		
		MovieDAO movieDao = MovieDAO.getInstance();
		movieDao.deleteMovie(movieCode);
		
		new AdminMovieListAction().execute(request, response);		
	}
}
