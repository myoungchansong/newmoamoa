package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moamoa.dao.BoardDAO;


public class BoardViewcntAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bno = request.getParameter("bno");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		//조회수1증가
		//session을 활용한 조회수 증가 방지
		HttpSession countSession = request.getSession();
		bDao.viewCnt(bno, countSession);
		
			
		String url ="boardRead.bizpoll?bno"+bno;
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
