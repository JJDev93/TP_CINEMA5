package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MemberDAO;

public class MemberIdcheckAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		
		MemberDAO mdao = MemberDAO.getInstance();
		
		int result = mdao.confrmID(id);
		
		request.setAttribute("id", id);
		request.setAttribute("result", result);
		
		RequestDispatcher rd = request.getRequestDispatcher("member/idcheck.jsp");
		rd.forward(request, response);
		
		
	}

}
