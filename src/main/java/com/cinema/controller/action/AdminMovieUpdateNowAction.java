package com.cinema.controller.action;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cinema.dao.MovieDAO;
import com.cinema.vo.MovieVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminMovieUpdateNowAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savePath = "upload";		
		int uploadFileSizeLimit = 10*1024*1024;
		String encType ="UTF-8";
		ServletContext context = request.getSession().getServletContext();		
		String uploadFilePath = context.getRealPath(savePath);
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, uploadFilePath, uploadFileSizeLimit, encType, policy);	
		String movieCode = multi.getParameter("movieCode");
		String RunningTime = multi.getParameter("movieRunningTime");
		String screening = multi.getParameter("movieScreening");
		MovieVO movieVo = new MovieVO();
		try {
			movieVo.setMovieCode(Integer.parseInt(movieCode));
			movieVo.setTitle(multi.getParameter("movieTitle"));
			movieVo.setPoster(multi.getParameter("moviePoster"));
			movieVo.setStillcut(multi.getParameter("stillcutList"));
			movieVo.setScenario(multi.getParameter("movieScenario"));
			movieVo.setGenre(multi.getParameter("movieGenre"));	
			movieVo.setDirector(multi.getParameter("movieDirector"));	
			movieVo.setCast(multi.getParameter("movieCast"));	
			movieVo.setOpenDate(multi.getParameter("movieOpenDate"));	
			movieVo.setFilmRate(Integer.parseInt(multi.getParameter("movieFilmRate")));
			movieVo.setRunningTime(Integer.parseInt(RunningTime));
			movieVo.setScreening(Integer.parseInt(screening));
		} catch (Exception e) {
			System.out.println("예외발생 : " + e);
		}		
		MovieDAO movieDao = MovieDAO.getInstance();
		movieDao.updateMovie(movieVo);
		//System.out.println(movieVo);
		
		new AdminMovieListAction().execute(request, response);		
	}
}
