package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MovieDAO;
import com.cinema.dao.ScheduleDAO;
import com.cinema.vo.MovieVO;
import com.cinema.vo.SchduleVO;

public class AdminScheduleListAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin/scheduleList.jsp";
		
		ScheduleDAO scdao = ScheduleDAO.getInstance();
		List<SchduleVO> SchList = scdao.selectAllschedule();
		
		request.setAttribute("schedule", SchList);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}
}
