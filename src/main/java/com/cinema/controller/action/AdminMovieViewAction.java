package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.vo.MovieVO;

public class AdminMovieViewAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin/movieView.jsp";
		String movieCode = request.getParameter("movieCode");
		
		MovieDAO movieDao = MovieDAO.getInstance();
		MovieVO movieVo = movieDao.selectByCode(movieCode);
		
		request.setAttribute("movie", movieVo);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);		
	}
}