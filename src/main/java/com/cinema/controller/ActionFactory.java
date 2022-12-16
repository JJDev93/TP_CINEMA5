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
		}else if(command.equals("admin_schedule_list")) {
			action = new AdminScheduleListAction();
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
		}else if(command.equals("nonMember_login")) {
			action = new NonMemberLoginAction(); 
		}else if(command.equals("ticketing_step1")) {
			action = new TicketingStep01Action();
		}else if(command.equals("scheduleList_write")) {
			action = new ScheduleListWriteAction();
		}else if(command.equals("schedule_now")) {
			action = new ScheduleNowAction();
		}else if(command.equals("schedule_list_col")) {
			action = new ScheduleListColAction();
		}else if(command.equals("schedulecorr_now")) {
			action = new ScheduleCorrNowAction();
		}else if(command.equals("schedule_delete")) {
			action = new ScheduleDeleteNowAction();
		}else if(command.equals("memberdelete_form")) {
			action = new MemberdeleteFormAction();
		}else if(command.equals("memberdelete_now")) {
			action = new MemberdeleteNowAction();
		}else if(command.equals("memberID_form")) {
			action = new MemberIDFormAction();
		}else if(command.equals("memberID_now")) {
			action = new MemberIDnowAction();
		}
		return action;
	}
}
