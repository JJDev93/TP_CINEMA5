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
	
	public void updateSchedule(SchduleVO svo) {
		String sql ="update schedule set movietitle=?, onDate=? , onTime=? , price=? where scheduleCode=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, svo.getMovietitle());
			pstmt.setString(2, svo.getOnDate());
			pstmt.setString(3, svo.getOnTime());
			pstmt.setInt(4, svo.getPrice());
			pstmt.setInt(5, svo.getScheduleCode());

			pstmt.executeUpdate();
		}catch (Exception e) {
			 e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	
	public SchduleVO selectScheduleByCode(int scheduleCode) {
		String sql = "select * from schedule where scheduleCode=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		SchduleVO svo = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, scheduleCode);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				svo = new SchduleVO();
				
				svo.setScheduleCode(rs.getInt("scheduleCode"));
				svo.setMovietitle(rs.getString("movietitle"));
				svo.setOnDate(rs.getString("onDate"));
				svo.setOnTime(rs.getString("onTime"));
				svo.setAudicode(rs.getInt("audicode"));
				svo.setMovieCode(rs.getInt("movieCode"));
				svo.setPrice(rs.getInt("price"));
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return svo;
	}
	
	public void deleteSchedule(int scheduleCode) {
		String sql = "delete from schedule where scheduleCode=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn =DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, scheduleCode);
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	

}