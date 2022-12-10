package com.cinema.controller.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class JoinNowAction implements Action{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      MemberVO mvo = new MemberVO();
      
      mvo.setId(request.getParameter("id"));
      mvo.setPass(request.getParameter("pwed1"));
      mvo.setName(request.getParameter("name"));
//      SimpleDateFormat formatter = new SimpleDateFormat("birth");
      mvo.setBirth(request.getParameter("birth"));
      mvo.setLev(request.getParameter("lev"));
      mvo.setGender(request.getParameter("gender"));
      mvo.setEmail(request.getParameter("email"));
      mvo.setPhone(request.getParameter("phoneNo"));
      
      System.out.println(mvo);

      MemberDAO mdao = MemberDAO.getInstance();
      mdao.insertMbo(mvo);
      
      new MemberloginAction().execute(request, response);
   }
}