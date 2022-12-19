package com.cinema.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cinema.util.DBManager;
import com.cinema.vo.MemberVO;
import com.cinema.vo.SchduleVO;

public class MemberDAO {
   private MemberDAO() {}
   private static MemberDAO instance = new MemberDAO();
   public static MemberDAO getInstance() {
      return instance;
   }

   public List<MemberVO> selectAllMember() {
      String sql = "select * from member order by regdate desc";

      List<MemberVO> list = new ArrayList<>();

      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         rs = pstmt.executeQuery();

         while (rs.next()) {
            MemberVO mvo = new MemberVO();
            mvo.setId(rs.getString("id"));
            mvo.setPass(rs.getString("pass"));
            mvo.setName(rs.getString("name"));
            mvo.setBirth(rs.getString("birth"));
            mvo.setLev(rs.getString("lev"));
            mvo.setGender(rs.getString("gender"));
            mvo.setEmail(rs.getString("email"));
            mvo.setPhone(rs.getString("phone"));
            mvo.setRegdate(rs.getDate("regdate"));
            list.add(mvo);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt, rs);
      }
      return list;
   }
   
   //회원가입 메소드
   public void insertMbo(MemberVO mvo) {
      String sql = "insert into member(id,pass,name,birth,gender,email,phone) values(?,?,?,?,?,?,?)";

      Connection conn = null;
      PreparedStatement pstmt = null;

      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, mvo.getId());
         pstmt.setString(2, mvo.getPass());
         pstmt.setString(3, mvo.getName());
         pstmt.setString(4, mvo.getBirth());
         pstmt.setString(5, mvo.getGender());
         pstmt.setString(6, mvo.getEmail());
         pstmt.setString(7, mvo.getPhone());
         pstmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         DBManager.close(conn, pstmt);
      }
   }

   //사용자 인증시 사용하느 메소드
   public int userCheck(String id , String pass) {
      int result = 1;
      String sql = "select pass from member where id=?";
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      
      try {
         conn = DBManager.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, id);
         rs = pstmt.executeQuery();
         
         if(rs.next()) {
            if(rs.getString("pass")!= null && rs.getString("pass").equals(pass)) {
               result = 1; //아이디와 패스워드 일치
            }else {
               result = 0; //패스워드 오류 일때
            }
         }else {
            result = -1; // 해당 ID가 없을때
         }
      }catch (Exception e) {
         e.printStackTrace();
      }finally {
         DBManager.close(conn, pstmt, rs);
      }
      return result;      
   }   
   
   // 아이디로 회원 정보 가져오는 메소드
   public MemberVO MemberVO(String id) {
	   MemberVO mvo = null;
	   String sql = "select * from member where id =?";

	   Connection conn = null;
	   ResultSet rs = null;
	   PreparedStatement pstmt = null;
	   try {
		   conn = DBManager.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   rs = pstmt.executeQuery();

		   if (rs.next()) {
			   mvo = new MemberVO();
			   mvo.setId(rs.getString("id"));
			   mvo.setPass(rs.getString("pass"));
			   mvo.setName(rs.getString("name"));
			   mvo.setBirth(rs.getString("birth"));
			   mvo.setEmail(rs.getString("email"));
			   mvo.setPhone(rs.getString("phone"));
			   mvo.setLev(rs.getString("lev"));
		   }
	   } catch (Exception e) {
		   e.printStackTrace();
	   } finally {
		   DBManager.close(conn, pstmt, rs);
	   }
	   return mvo;
   }

   //회원 정보 수정
   public int updateMember(MemberVO mvo) {
	   int result = -1;
	   String sql ="update member set pass=? , name=? , email=? , phone=? where id=?";

	   Connection conn = null;
	   PreparedStatement pstmt = null;

	   try {
		   conn = DBManager.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, mvo.getPass());
		   pstmt.setString(2, mvo.getName());
		   pstmt.setString(3, mvo.getEmail());
		   pstmt.setString(4, mvo.getPhone());
		   pstmt.setString(5, mvo.getId());

		   result = pstmt.executeUpdate();
	   }catch (Exception e) {
		   e.printStackTrace();
	   }finally {
		   DBManager.close(conn, pstmt);
	   }
	   return result;
   }

   public int confrmID(String id) {
	   int result = 1;
	   String sql = "select id from member where id=?";
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;

	   try {
		   conn = DBManager.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);
		   rs = pstmt.executeQuery();
		   if(rs.next()) {
			   result = 1; //아이디 있음
		   }else {
			   result = -1; //아이디 없음
		   }

	   }catch (Exception e) {
		   e.printStackTrace();
	   }finally {
		   DBManager.close(conn, pstmt, rs);
	   }
	   return result;
   }
   
   public int deleteID(String id , String pass) {
	   int result = 1;
	   String sql = "delete from member where id=? and pass=?  ";
	   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   
	   try {
		   conn = DBManager.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, id);	
		   pstmt.setString(2, pass);
		   result= pstmt.executeUpdate();
	   }catch (Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(conn, pstmt);
	}
	return result;  
   }


   public MemberVO FindID(String name , String phone) {
	   String sql = "select * from member where name=? and phone=?";   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   MemberVO mvo = null;
	  
	   try {
		   conn = DBManager.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, name);
		   pstmt.setString(2, phone);
		   
		   rs = pstmt.executeQuery();
		   
		   if(rs.next()) {
			 mvo = new MemberVO();
			 mvo.setName(rs.getString("name"));
			 mvo.setPhone(rs.getString("phone"));
			 mvo.setId(rs.getString("id"));
		   }
	   }catch (Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(conn, pstmt, rs);
	}
	return mvo;
	
   }
   
   public MemberVO FindPW(String name , String phone) {
	   String sql = "select * from member where name=? and phone=?";   
	   Connection conn = null;
	   PreparedStatement pstmt = null;
	   ResultSet rs = null;
	   MemberVO mvo = null;
	  
	   try {
		   conn = DBManager.getConnection();
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1, name);
		   pstmt.setString(2, phone);
		   
		   rs = pstmt.executeQuery();
		   
		   if(rs.next()) {
			 mvo = new MemberVO();
			 mvo.setName(rs.getString("name"));
			 mvo.setPhone(rs.getString("phone"));
			 mvo.setPass(rs.getString("pass"));
		   }
	   }catch (Exception e) {
		e.printStackTrace();
	}finally {
		DBManager.close(conn, pstmt, rs);
	}
	return mvo;
	
   }
   
   
   

   	 
}