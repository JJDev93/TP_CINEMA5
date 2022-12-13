package com.cinema.vo;

public class AudiVO {
	private int audiCode, theaterCode;
	private String audiName;
	public int getAudiCode() {
		return audiCode;
	}
	public void setAudiCode(int audiCode) {
		this.audiCode = audiCode;
	}
	public int getTheaterCode() {
		return theaterCode;
	}
	public void setTheaterCode(int theaterCode) {
		this.theaterCode = theaterCode;
	}
	public String getAudiName() {
		return audiName;
	}
	public void setAudiName(String audiName) {
		this.audiName = audiName;
	}
	@Override
	public String toString() {
		return "AudiVO [audiCode=" + audiCode + ", theaterCode=" + theaterCode + ", audiName=" + audiName + "]";
	}
}