package com.moamoa.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.BoardDAO;
import com.moamoa.dto.BoardDTO;

;

public class BoardReadAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="board/board_read.jsp";
		
		String bno = request.getParameter("bno");
		System.out.println("==>"+bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardReadView(bno);
		request.setAttribute("boardview", bDto);

		
		//현재날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
