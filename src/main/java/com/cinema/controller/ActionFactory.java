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
		}	
		
		return action;
	}
}
