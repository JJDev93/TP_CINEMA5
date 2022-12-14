package com.cinema.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cinema.util.DBManager;
import com.cinema.vo.SchduleVO;

public class ScheduleDAO {
	private ScheduleDAO() {}
	private static ScheduleDAO instance = new ScheduleDAO();
	public static ScheduleDAO getInstance() {
		return instance;
	}
	
	public List<SchduleVO> selectAllschedule(){
		String sql = "select * from schedule order by onDate desc";
		
		  List<SchduleVO> list = new ArrayList<>();
		
		  Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      
	      try {
	    	  conn = DBManager.getConnection();
	          pstmt = conn.prepareStatement(sql);
	          rs = pstmt.executeQuery();
	          
	          while(rs.next()) {
	        	  SchduleVO svo = new SchduleVO();
	        	  svo.setScheduleCode(rs.getInt("scheduleCode"));
	        	  svo.setMovietitle(rs.getString("movietitle"));
	        	  svo.setOnDate(rs.getString("onDate"));
	        	  svo.setOnTime(rs.getString("onTime"));
	        	  svo.setAudicode(rs.getInt("audicode"));
	        	  svo.setMovieCode(rs.getInt("movieCode"));
	        	  svo.setPrice(rs.getInt("price"));
	        	  list.add(svo);
	          }
	    	  
	      }catch (Exception e) {
	    	  e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
		
	}
	
	public SchduleVO scheduleVO(int scheduleCode) {
		   SchduleVO svo = null;
		   String sql = "select * from schedule where scheduleCode=?";

		   Connection conn = null;
		   ResultSet rs = null;
		   PreparedStatement pstmt = null;
		   try {
			   conn = DBManager.getConnection();
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setInt(1, scheduleCode);
			   rs = pstmt.executeQuery();

			   if (rs.next()) {
				   svo = new SchduleVO();
				   svo.setScheduleCode(rs.getInt("scheduleCode"));
				   svo.setMovietitle(rs.getString("movietitle"));
				   svo.setOnTime(rs.getString("onDate"));
				   svo.setOnTime(rs.getString("onTime"));
			   }
		   } catch (Exception e) {
			   e.printStackTrace();
		   } finally {
			   DBManager.close(conn, pstmt, rs);
		   }
		   return svo;
	   }
	
	
	public void insertSbo(SchduleVO svo) {
		String sql = "insert into schedule(scheduleCode,Movietitle,onDate,onTime,audicode,movieCode,price) values(null,?,?,?,1,1,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, svo.getMovietitle());
			pstmt.setString(2, svo.getOnDate());
			pstmt.setString(3, svo.getOnTime());
			pstmt.setInt(4, svo.getPrice());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	public int updateSchedule(SchduleVO svo) {
		int result = -1;
		String sql ="update schedule set onDate=? ,onTime=? ,price=? where movietitle=? ";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, svo.getOnDate());
			pstmt.setString(2, svo.getOnTime());
			pstmt.setInt(3, svo.getPrice());
			pstmt.setString(4, svo.getMovietitle());
			
			result = pstmt.executeUpdate();
		}catch (Exception e) {
			 e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	

}
