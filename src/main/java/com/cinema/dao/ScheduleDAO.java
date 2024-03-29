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
		String sql = "insert into schedule(scheduleCode,Movietitle,onDate,onTime,theaterCode,audicode,movieCode,price) values(null,?,?,?,1,1,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, svo.getMovietitle());
			pstmt.setString(2, svo.getOnDate());
			pstmt.setString(3, svo.getOnTime());
			pstmt.setInt(4, svo.getMovieCode());
			pstmt.setInt(5, svo.getPrice());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}		
	}
	
	public void updateSchedule(SchduleVO svo) {
		String sql ="update schedule set onDate=?, onTime=?, price=? where scheduleCode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);			
			pstmt.setString(1, svo.getOnDate());
			pstmt.setString(2, svo.getOnTime());
			pstmt.setInt(3, svo.getPrice());
			pstmt.setInt(4, svo.getScheduleCode());
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
	
	
	//영화코드로 선택
	public List<SchduleVO> selectByMovie(int movieCode) {
		List<SchduleVO> list  = new ArrayList<>();
		String sql = "select * from schedule where movieCode=?";
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieCode);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SchduleVO scheduleVo = new SchduleVO();
				scheduleVo.setScheduleCode(rs.getInt("scheduleCode"));
				scheduleVo.setMovietitle(rs.getString("movietitle"));
				scheduleVo.setOnDate(rs.getString("onDate"));
				scheduleVo.setOnTime(rs.getString("onTime"));
				scheduleVo.setAudicode(rs.getInt("audicode"));
				scheduleVo.setMovieCode(rs.getInt("movieCode"));
				scheduleVo.setPrice(rs.getInt("price"));
				list.add(scheduleVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	//극장코드만 선택했을 때
	public List<SchduleVO> selectByTheaterCode(int theaterCode) {
		List<SchduleVO> list  = new ArrayList<>();
		String sql = "select * from schedule where audicode=?";
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, theaterCode);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SchduleVO scheduleVo = new SchduleVO();
				scheduleVo.setScheduleCode(rs.getInt("scheduleCode"));
				scheduleVo.setMovietitle(rs.getString("movietitle"));
				scheduleVo.setOnDate(rs.getString("onDate"));
				scheduleVo.setOnTime(rs.getString("onTime"));
				scheduleVo.setAudicode(rs.getInt("audicode"));
				scheduleVo.setMovieCode(rs.getInt("movieCode"));
				scheduleVo.setPrice(rs.getInt("price"));
				list.add(scheduleVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	//영화, 극장코드 선택했을 때
	public List<SchduleVO> selectByMovieTh(int movieCode, int theaterCode) {
		List<SchduleVO> list  = new ArrayList<>();
		String sql = "select * from schedule where movieCode=? and audicode=?";
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieCode);
			pstmt.setInt(2, theaterCode);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				SchduleVO scheduleVo = new SchduleVO();
				scheduleVo.setScheduleCode(rs.getInt("scheduleCode"));
				scheduleVo.setMovietitle(rs.getString("movietitle"));
				scheduleVo.setOnDate(rs.getString("onDate"));
				scheduleVo.setOnTime(rs.getString("onTime"));
				scheduleVo.setAudicode(rs.getInt("audicode"));
				scheduleVo.setMovieCode(rs.getInt("movieCode"));
				scheduleVo.setPrice(rs.getInt("price"));
				list.add(scheduleVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

}
