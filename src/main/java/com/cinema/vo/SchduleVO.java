package com.cinema.vo;

public class SchduleVO {
	private int scheduleCode, theaterCode, audicode , movieCode , price;
	private String movietitle, onDate, onTime;
	public int getScheduleCode() {
		return scheduleCode;
	}
	public void setScheduleCode(int scheduleCode) {
		this.scheduleCode = scheduleCode;
	}
	public int getTheaterCode() {
		return theaterCode;
	}
	public void setTheaterCode(int theaterCode) {
		this.theaterCode = theaterCode;
	}
	public int getAudicode() {
		return audicode;
	}
	public void setAudicode(int audicode) {
		this.audicode = audicode;
	}
	public int getMovieCode() {
		return movieCode;
	}
	public void setMovieCode(int movieCode) {
		this.movieCode = movieCode;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMovietitle() {
		return movietitle;
	}
	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}
	public String getOnDate() {
		return onDate;
	}
	public void setOnDate(String onDate) {
		this.onDate = onDate;
	}
	public String getOnTime() {
		return onTime;
	}
	public void setOnTime(String onTime) {
		this.onTime = onTime;
	}
	@Override
	public String toString() {
		return "SchduleVO [scheduleCode=" + scheduleCode + ", theaterCode=" + theaterCode + ", audicode=" + audicode
				+ ", movieCode=" + movieCode + ", price=" + price + ", movietitle=" + movietitle + ", onDate=" + onDate
				+ ", onTime=" + onTime + "]";
	}
}
