package com.cinema.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.dao.MemberDAO;
import com.cinema.vo.MemberVO;

public class AdminMemberListAction implements Action{
   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "/admin/memberList.jsp";
      
      MemberDAO mdao = MemberDAO.getInstance();
         
       List<MemberVO> cinematList = mdao.selectAllMember();
         
       request.setAttribute("cinematList",cinematList);
      RequestDispatcher rd = request.getRequestDispatcher(url);
      rd.forward(request, response);
      
   }
}