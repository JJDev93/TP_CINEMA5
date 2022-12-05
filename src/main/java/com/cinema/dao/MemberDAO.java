package com.cinema.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cinema.util.DBManager;
import com.cinema.vo.MemberVO;

public class MemberDAO {

	private MemberDAO() {}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	public List<MemberVO> selectAllMember(){
		String sql = "select * from member order by regdate desc";

		List<MemberVO> list = new ArrayList<>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				MemberVO mvo = new MemberVO();
				mvo.setId(rs.getString("id"));
				mvo.setPass(rs.getString("pass"));
				mvo.setName(rs.getString("name"));
				mvo.setBirth(rs.getDate("birth"));
				mvo.setLev(rs.getString("lev"));
				mvo.setGender(rs.getString("gender"));
				mvo.setEmail(rs.getString("email"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setRegdate(rs.getDate("regdate"));
			}

		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;

	}

	public void insertMbo(MemberVO mvo) {
		String sql = "insert into member(id,pass,name,lev,gender,email,phone)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPass());
			pstmt.setString(3, mvo.getName());
			pstmt.setString(4, mvo.getLev());
			pstmt.setString(5, mvo.getGender());
			pstmt.setString(6, mvo.getEmail());
			pstmt.setString(7, mvo.getPhone());

			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}

	}
}