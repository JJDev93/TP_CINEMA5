package com.cinema.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.cinema.util.DBManager;
import com.cinema.vo.MovieVO;


public class MovieDAO {
	private String tbl_name = "tbl_movieInfo";
	private MovieDAO(){};
	private static MovieDAO instance = new MovieDAO();
	public static MovieDAO getInstance() {
		return instance;
	}
	
	public List<MovieVO> selectAllMovie(){
		String sql = "select * from " + tbl_name + " order by movieCode desc";
		//다형성
		List<MovieVO> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MovieVO movieVo = new MovieVO();
				movieVo.setMovieCode(rs.getInt("movieCode"));
				movieVo.setTitle(rs.getString("title"));
				movieVo.setPoster(rs.getString("poster"));
				movieVo.setStillcut(rs.getString("stillcut"));
				movieVo.setScenario(rs.getString("scenario"));
				movieVo.setGenre(rs.getString("genre"));
				movieVo.setDirector(rs.getString("director"));
				movieVo.setCast(rs.getString("cast"));
				movieVo.setOpenDate(rs.getString("openDate"));
				movieVo.setSpectators(rs.getInt("spectators"));
				movieVo.setFilmRate(rs.getInt("filmRate"));
				movieVo.setRunningTime(rs.getInt("runningTime"));
				movieVo.setGrade(rs.getFloat("grade"));
				movieVo.setScreening(rs.getInt("screening"));
				list.add(movieVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	//코드로 값 Select하는 메소드
	public MovieVO selectByCode(String movieCode){
		String sql = "select * from " + tbl_name + " where movieCode=?";
		//다형성
		MovieVO movieVo = null;
		
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
					movieVo = new MovieVO();
					movieVo.setMovieCode(rs.getInt("movieCode"));
					movieVo.setTitle(rs.getString("title"));
					movieVo.setPoster(rs.getString("poster"));
					movieVo.setStillcut(rs.getString("stillcut"));
					movieVo.setScenario(rs.getString("scenario"));
					movieVo.setGenre(rs.getString("genre"));
					movieVo.setDirector(rs.getString("director"));
					movieVo.setCast(rs.getString("cast"));
					movieVo.setOpenDate(rs.getString("openDate"));
					movieVo.setSpectators(rs.getInt("spectators"));
					movieVo.setFilmRate(rs.getInt("filmRate"));
					movieVo.setRunningTime(rs.getInt("runningTime"));
					movieVo.setGrade(rs.getFloat("grade"));
					movieVo.setScreening(rs.getInt("screening"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return movieVo;
	}
	
	//하나의 게시글을 삽입하는 메소드
	public void insertMovie(MovieVO movieVo){
		String sql="insert into "+ tbl_name +"(movieCode, title, poster, stillcut, scenario, genre, director, cast, openDate, filmRate, runningTime, screening) values(null,?,?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movieVo.getTitle());
			pstmt.setString(2, movieVo.getPoster());
			pstmt.setString(3, movieVo.getStillcut());
			pstmt.setString(4, movieVo.getScenario());
			pstmt.setString(5, movieVo.getGenre());
			pstmt.setString(6, movieVo.getDirector());
			pstmt.setString(7, movieVo.getCast());
			pstmt.setString(8, movieVo.getOpenDate());
			pstmt.setInt(9, movieVo.getFilmRate());
			pstmt.setInt(10, movieVo.getRunningTime());
			pstmt.setInt(11, movieVo.getScreening());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);			
		}		
	}
	
	//update문
	public void updateMovie(MovieVO movieVo) {
		String sql = "update "+ tbl_name +" set title=?, poster=?, stillcut=?, scenario=?, genre=?, director=?, cast=?, openDate=?, filmRate=?, runningTime=?, screening=? where movieCode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movieVo.getTitle());
			pstmt.setString(2, movieVo.getPoster());
			pstmt.setString(3, movieVo.getStillcut());
			pstmt.setString(4, movieVo.getScenario());
			pstmt.setString(5, movieVo.getGenre());
			pstmt.setString(6, movieVo.getDirector());
			pstmt.setString(7, movieVo.getCast());
			pstmt.setString(8, movieVo.getOpenDate());
			pstmt.setInt(9, movieVo.getFilmRate());
			pstmt.setInt(10, movieVo.getRunningTime());
			pstmt.setInt(11, movieVo.getScreening());
			pstmt.setInt(12, movieVo.getMovieCode());			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	
	//delete문
	public void deleteMovie(String movieCode) {
		String sql = "delete from " + tbl_name + " where movieCode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);			
			pstmt.setString(1, movieCode);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}
