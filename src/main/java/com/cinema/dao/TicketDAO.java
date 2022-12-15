package com.cinema.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cinema.util.DBManager;
import com.cinema.vo.SchduleVO;

public class TicketDAO {
	private String tbl_schedule = "schedule";
	private TicketDAO(){};
	private static TicketDAO instance = new TicketDAO();
	public static TicketDAO getInstance() {
		return instance;
	}
	
	//코드로 값 Select하는 메소드
	public SchduleVO selectMovie(String movieCode){
		String sql = "select * from " + tbl_schedule + " where movieCode=?";
		//다형성
		SchduleVO scheduleVo = null;
		
		try {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, movieCode);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					scheduleVo = new SchduleVO();
					scheduleVo.setScheduleCode(rs.getInt("scheduleCode"));
					scheduleVo.setMovietitle(rs.getString("movietitle"));
					scheduleVo.setOnTime(rs.getString("onDate"));
					scheduleVo.setOnTime(rs.getString("onTime"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return scheduleVo;
	}
}
