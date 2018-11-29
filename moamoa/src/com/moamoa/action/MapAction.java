package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.action.ActionForward;
import com.moamoa.action.Action;

public class MapAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url ="map.jsp";
		System.out.println("1111111111111111111111111111111");
		String data = request.getParameter("data");
		System.out.println("==============="+data);
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
