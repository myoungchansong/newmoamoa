package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.hotelDAO;

public class WcnegAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*String url="indexneg.jsp";
		
		String hotelname = request.getParameter("hotelname");
		System.out.println("====================neg"+hotelname);
		
		hotelDAO DAO = hotelDAO.getInstance();
		String result = DAO.wcneg(hotelname);
		
		System.out.println("acitonneg======"+result);
		request.setAttribute("neg", result);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;*/
		
		
		String hotelname = request.getParameter("hotelname");
		System.out.println("====================neg"+hotelname);
		
		hotelDAO DAO = hotelDAO.getInstance();
		String filename = DAO.wcneg(hotelname);
		
		System.out.println("actionneg======"+filename);
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().write(filename);
		
		return null;
	}

}
