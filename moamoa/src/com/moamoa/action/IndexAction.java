package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="main.jsp";
		
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		
		System.out.println("action: =====> " + forward.getPath());
		return forward;
	}

}
