package com.cinema.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class MemberIDnowAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		MemberDAO mdao = MemberDAO.getInstance();
		MemberVO mvo = null;
		mvo = mdao.FindID(name,phone);
		
		if(mvo != null) {
			 out.println("<script>alert('"+name+"님의 아이디는 "+mvo.getId()+"입니다.');"
			            + "location.href='"+request.getContextPath()+"CinemaServlet?command=memberID_form'</script>");
		}else {
			out.println("<script>alert('아이디가 존재하지 않습니다.');"
		            + "location.href='"+request.getContextPath()+"이동할 컨트롤러'</script>");
		}
	}

}
