package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class MypageNowAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pwed2");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone= request.getParameter("phoneNo");
		
		MemberVO mvo = new MemberVO();
		mvo.setId(id);
		mvo.setPass(pass);
		mvo.setName(name);
		mvo.setEmail(email);
		mvo.setPhone(phone);
		
		MemberDAO mdao = MemberDAO.getInstance();
		mdao.updateMember(mvo);
		
		new MemberLogoutAction().execute(request, response);
		
	}

}
