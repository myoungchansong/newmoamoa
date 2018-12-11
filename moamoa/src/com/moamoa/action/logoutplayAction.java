package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class logoutplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		/*로그아웃이 실제로 동작하는 부분 */
		
		String url ="index.bizpoll";
		HttpSession session = request.getSession();
		//session.invalidate(); 세션초기화
		//로그아웃 진행시 세션 초기화 
		if(session!=null)	{
			session.invalidate();
		}
		ActionForward forward =new ActionForward();	
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}

}
