package com.cinema.dao;

public class TheaterDAO {
	private String tbl_name = "tbl_theater";
	private TheaterDAO(){};
	private static TheaterDAO instance = new TheaterDAO();
	public static TheaterDAO getInstance() {
		return instance;
	}

}
