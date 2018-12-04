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
		String url ="index.bizpoll";
		System.out.println("11111111111111111111111111111");
		HttpSession session = request.getSession();
		//session.invalidate(); 세션초기화
		System.out.println("22222222222222222222222222222222");
		if(session!=null)	{
			session.invalidate();
			
		}
		System.out.println("33333333333333333333333333333333");
		ActionForward forward =new ActionForward();	
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}

}
