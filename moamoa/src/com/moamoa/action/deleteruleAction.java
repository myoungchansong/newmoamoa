package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteruleAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*회원 탈퇴전  유희사항 */
		
		String url ="userdeleterule.jsp";
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}
	
}
