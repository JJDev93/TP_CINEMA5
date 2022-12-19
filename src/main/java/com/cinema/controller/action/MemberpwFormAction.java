package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MemberDAO;

public class MemberpwFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/member/MemberPW.jsp";
		
		String pass = request.getParameter("pass");
		
		MemberDAO mdao = MemberDAO.getInstance();
		
		request.setAttribute("pass", pass);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
