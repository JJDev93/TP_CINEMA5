package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class LoginNowAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="member/LoginForm.jsp";
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        
        MemberDAO mdao = MemberDAO.getInstance();
        int result = mdao.userCheck(id,pass);
        System.out.println("인증 성공 : " + result);
        if(result == 1) {
       	 
           MemberVO mvo = mdao.MemberVO(id);
           HttpSession session = request.getSession();
           
           session.setAttribute("loginUser", mvo);
           request.setAttribute("message", "로그인에 성공했습니다");
           
           new MainPageAction().execute(request, response);
        }else if(result ==0) {
           
           request.setAttribute("message", "비밀번호가 맞지 않습니다");
           new MemberloginAction().execute(request, response);
        }else if(result ==-1) {
           request.setAttribute("message", "존재하지 않는 아이디입나다");
           new MemberloginAction().execute(request, response);
        }
		
	}

}
