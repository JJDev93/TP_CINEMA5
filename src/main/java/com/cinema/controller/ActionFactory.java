package com.cinema.controller;

import com.cinema.controller.action.*;

public class ActionFactory {
	private ActionFactory(){
		super();
	}
	private static ActionFactory instance = new ActionFactory();
	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;

		if(command.equals("main_page")) {
			action = new MainPageAction();
		}else if(command.equals("member_join")) {
			action = new MemberJoinFormAction();
		}else if(command.equals("admin_member_list")) {
			action = new AdminMemberListAction();
		}else if(command.equals("admin_cinema_list")) {
			action = new AdminCinemaListAction();
		}else if(command.equals("admin_movie_list")) {
			action = new AdminMovieListAction();
		}else if(command.equals("admin_movie_wirte")) {
			action = new AdminMovieWriteAction();
		}else if(command.equals("admin_movie_wirte_now")) {
			action = new AdminMovieWriteNowAction();
		}else if(command.equals("admin_movie_view")) {
			action = new AdminMovieViewAction();
		}else if(command.equals("admin_movie_update")) {
			action = new AdminMovieUpdateAction();
		}else if(command.equals("admin_movie_update_now")) {
			action = new AdminMovieUpdateNowAction();
		}else if(command.equals("admin_movie_delete_now")) {
			action = new AdminMoviDeleteNowAction();
		}else if(command.equals("member_login")){
			action = new MemberloginAction();
		}else if(command.equals("join_now")) {
			action = new JoinNowAction();
		}else if(command.equals("login_now")) {
			action = new LoginNowAction();
		}else if(command.equals("member_logout")) {
			action = new MemberLogoutAction();
		}else if(command.equals("mypage_view")) {
			action = new MypageviewFormAction();
		}else if(command.equals("mypage_now")) {
			action = new MypageNowAction();
		}else if(command.equals("member_idcheck")) {
			action = new MemberIdcheckAction(); 

		}
		return action;
	}
}
