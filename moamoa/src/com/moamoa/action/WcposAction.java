package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.hotelDAO;

public class WcposAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="indexpos.jsp";
		
		String hotelname = request.getParameter("hotelname");
		System.out.println("====================pos"+hotelname);
		
		hotelDAO DAO = hotelDAO.getInstance();
		String result = DAO.wcpos(hotelname);
		
		System.out.println("acitonpos======"+result);
		request.setAttribute("pos", result);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
		
	}

}
