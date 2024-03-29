package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.ScheduleDAO;
import com.cinema.vo.SchduleVO;

public class ScheduleListColAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/admin/schedulecorrection.jsp";
		
		int scheduleCode = Integer.parseInt(request.getParameter("scheduleCode"));
		
		ScheduleDAO sdao = ScheduleDAO.getInstance();
		SchduleVO svo = sdao.selectScheduleByCode(scheduleCode);
		
		request.setAttribute("schedule", svo);
		
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
