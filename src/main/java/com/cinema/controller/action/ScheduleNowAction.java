package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.dao.ScheduleDAO;
import com.cinema.vo.MovieVO;
import com.cinema.vo.SchduleVO;

public class ScheduleNowAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SchduleVO svo = new SchduleVO();		
		String movieCode = request.getParameter("movietitle");
		
		MovieDAO movieDao = MovieDAO.getInstance();
		MovieVO movieVo = movieDao.selectByCode(movieCode);
		String movieTit = movieVo.getTitle();
		
		svo.setMovietitle(movieTit);
		svo.setOnDate(request.getParameter("onDate"));
		svo.setOnTime(request.getParameter("onTime"));
		svo.setPrice(Integer.parseInt(request.getParameter("price")));
		svo.setMovieCode(Integer.parseInt(movieCode));
		
		ScheduleDAO sdao = ScheduleDAO.getInstance();
		sdao.insertSbo(svo);
		
		new AdminScheduleListAction().execute(request, response);
	}

}
