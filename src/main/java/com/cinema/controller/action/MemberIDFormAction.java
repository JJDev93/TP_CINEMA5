package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class MemberIDFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/member/MemberID.jsp";
		
		String id = request.getParameter("id");
		
		MemberDAO mdao = MemberDAO.getInstance();
		
		request.setAttribute("id", id);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
