package com.cinema.vo;

public class MovieVO {
	private int movieCode, spectators, filmRate, runningTime, screening;
	private String title, poster, stillcut, scenario, genre, director, cast, openDate;
	private float grade;
	public int getMovieCode() {
		return movieCode;
	}
	public void setMovieCode(int movieCode) {
		this.movieCode = movieCode;
	}
	public int getSpectators() {
		return spectators;
	}
	public void setSpectators(int spectators) {
		this.spectators = spectators;
	}
	public int getFilmRate() {
		return filmRate;
	}
	public void setFilmRate(int filmRate) {
		this.filmRate = filmRate;
	}
	public int getRunningTime() {
		return runningTime;
	}
	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}
	public int getScreening() {
		return screening;
	}
	public void setScreening(int screening) {
		this.screening = screening;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getStillcut() {
		return stillcut;
	}
	public void setStillcut(String stillcut) {
		this.stillcut = stillcut;
	}
	public String getScenario() {
		return scenario;
	}
	public void setScenario(String scenario) {
		this.scenario = scenario;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public float getGrade() {
		return grade;
	}
	public void setGrade(float grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "MovieVO [movieCode=" + movieCode + ", spectators=" + spectators + ", filmRate=" + filmRate
				+ ", runningTime=" + runningTime + ", screening=" + screening + ", title=" + title + ", poster="
				+ poster + ", stillcut=" + stillcut + ", scenario=" + scenario + ", genre=" + genre + ", director="
				+ director + ", cast=" + cast + ", openDate=" + openDate + ", grade=" + grade + "]";
	}
}
