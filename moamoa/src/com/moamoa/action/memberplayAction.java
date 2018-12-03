package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class memberplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="";
		
		
		String id = request.getParameter("inputid");
		String pw = request.getParameter("inputpw");
		
		System.out.println("id = "+id);
		System.out.println("pw = "+pw);
		
		
		
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}

}
