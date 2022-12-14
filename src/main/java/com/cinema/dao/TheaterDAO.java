package com.cinema.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cinema.util.DBManager;
import com.cinema.vo.TheaterVO;

public class TheaterDAO {
	private String tbl_name = "tbl_theater";
	private TheaterDAO(){};
	private static TheaterDAO instance = new TheaterDAO();
	public static TheaterDAO getInstance() {
		return instance;
	}
	public List<TheaterVO> selectAllTheater(){
		String sql = "select * from " + tbl_name + " order by theaterName desc";
		//다형성
		List<TheaterVO> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TheaterVO theaterVo = new TheaterVO();
				theaterVo.setTheaterCode(rs.getInt("theaterCode"));
				theaterVo.setTheaterName(rs.getString("theaterName"));
				list.add(theaterVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
}
