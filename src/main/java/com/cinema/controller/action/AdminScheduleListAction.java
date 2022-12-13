package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.vo.MovieVO;

public class AdminScheduleListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin/scheduleList.jsp";
		
		MovieDAO movieDao = MovieDAO.getInstance();
		List<MovieVO> movieList = movieDao.selectAllMovie();
		
		request.setAttribute("schedule", movieList);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}
}
