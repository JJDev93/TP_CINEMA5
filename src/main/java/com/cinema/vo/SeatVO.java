package com.cinema.vo;

public class SeatVO {
	private int seatCode, audiCode, theaterCode;
	private String seatName;
	private boolean seatUse;
	public int getSeatCode() {
		return seatCode;
	}
	public void setSeatCode(int seatCode) {
		this.seatCode = seatCode;
	}
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
	public String getSeatName() {
		return seatName;
	}
	public void setSeatName(String seatName) {
		this.seatName = seatName;
	}
	public boolean isSeatUse() {
		return seatUse;
	}
	public void setSeatUse(boolean seatUse) {
		this.seatUse = seatUse;
	}
	@Override
	public String toString() {
		return "SeatVO [seatCode=" + seatCode + ", audiCode=" + audiCode + ", theaterCode=" + theaterCode
				+ ", seatName=" + seatName + ", seatUse=" + seatUse + "]";
	}
}