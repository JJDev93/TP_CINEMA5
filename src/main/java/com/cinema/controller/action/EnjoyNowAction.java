package com.cinema.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class EnjoyNowAction implements Action{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String userid = request.getParameter("id");
      String pwd = request.getParameter("pwed1");
      
      MemberDAO mdao = MemberDAO.getInstance();
      int result = mdao.userCheck(userid,pwd);
      if(result == 1) {
         
         MemberVO mvo = mdao.MemberVO(userid);

         request.setAttribute("message", "회원 가입에 성공했습니다");
      }else if(result ==0) {
         
         request.setAttribute("message", "비밀번호가 맞지 않습니다");
      }else if(result ==-1) {
         request.setAttribute("message", "존재하지 않는 아이다입나다");
      }
      
   }

}