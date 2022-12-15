package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.ScheduleDAO;
import com.cinema.vo.SchduleVO;

public class ScheduleCorrNowAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int scheduleCode = Integer.parseInt(request.getParameter("scheduleCode"));
		String movietitle = request.getParameter("movietitle");
		String onDate = request.getParameter("onDate");
		String onTime = request.getParameter("onTime");
		int price = Integer.parseInt(request.getParameter("price"));
		
		
		SchduleVO svo = new SchduleVO();
		svo.setScheduleCode(scheduleCode);
		svo.setMovietitle(movietitle);
		svo.setOnDate(onDate);
		svo.setOnTime(onTime);
		svo.setPrice(price);
		
		
		ScheduleDAO sdao = ScheduleDAO.getInstance();
		sdao.updateSchedule(svo);
		
		new ScheduleListWriteAction().execute(request, response);
		
	}

}
