package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moamoa.dao.memberDAO;
import com.moamoa.dto.memberDTO;

public class deleteplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*회원 탈퇴 기능  동작*/
		String url ="";
		HttpSession session = request.getSession();
		String id =request.getParameter("inputid");
		
		System.out.println("================>"+id);
		memberDAO dao = memberDAO.getInstance();
		int result = dao.delete(id);
		if(result >0) {
			System.out.println("삭제 성공");
			if(session != null) {
				session.invalidate();
				url ="index.bizpoll";
			}
		} else {
			System.out.println("삭제 실패");
			url = "update.bizpoll";
		}
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
