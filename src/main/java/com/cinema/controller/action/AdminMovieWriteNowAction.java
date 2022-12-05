package com.cinema.controller.action;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cinema.vo.MovieVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.cinema.dao.MovieDAO;

public class AdminMovieWriteNowAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savePath = "upload";		
		int uploadFileSizeLimit = 10*1024*1024;
		String encType ="UTF-8";
		ServletContext context = request.getSession().getServletContext();		
		String uploadFilePath = context.getRealPath(savePath);
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		
		MovieVO movieVo = new MovieVO();
		try {
			MultipartRequest multi = new MultipartRequest(request, uploadFilePath, uploadFileSizeLimit, encType, policy);
			String fileName = multi.getFilesystemName("moviePoster");
			String stillcutName = multi.getFilesystemName("movieStillcut");
			
			movieVo.setTitle(multi.getParameter("movieTitle"));
			if(fileName == null) {
				movieVo.setPoster(null);
			}else {					
				movieVo.setPoster(fileName);
			}
			if(stillcutName == null) {
				movieVo.setStillcut(null);
			}else {					
				movieVo.setStillcut(stillcutName);
			}		
			movieVo.setScenario(multi.getParameter("movieScenario"));
			movieVo.setGenre(multi.getParameter("movieGenre"));	
			movieVo.setDirector(multi.getParameter("movieDirector"));	
			movieVo.setCast(multi.getParameter("movieCast"));	
			movieVo.setOpenDate(multi.getParameter("movieOpenDate"));	
			movieVo.setFilmRate(Integer.parseInt(multi.getParameter("movieFilmRate")));
			movieVo.setRunningTime(Integer.parseInt(multi.getParameter("movieRunningTime")));
			movieVo.setScreening(Boolean.parseBoolean(multi.getParameter("movieScreening")));
		} catch (Exception e) {
			System.out.println("예외발생 : " + e);
		}
		
		MovieDAO movieDao = MovieDAO.getInstance();
		movieDao.insertBoard(movieVo);
		
		System.out.println("DAO : " + movieVo);
		
		new AdminMovieListAction().execute(request, response);
		
	}
}
