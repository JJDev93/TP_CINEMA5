package com.cinema.vo;

public class TheaterVO {
	private int theaterCode;
	private String theaterName;
	public int getTheaterCode() {
		return theaterCode;
	}
	public void setTheaterCode(int theaterCode) {
		this.theaterCode = theaterCode;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	@Override
	public String toString() {
		return "TheaterVO [theaterCode=" + theaterCode + ", theaterName=" + theaterName + "]";
	}	
}
