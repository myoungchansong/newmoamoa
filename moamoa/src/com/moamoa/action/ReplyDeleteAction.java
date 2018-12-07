package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.BoardDAO;
import com.moamoa.dao.ReplyDAO;



public class ReplyDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String rno =  request.getParameter("rno");
		System.out.println(rno);
		
		ReplyDAO rDao = ReplyDAO.getInstance();
		rDao.replyDelete(rno);
		
	//bno 게시글 reply_cnt -1
		String bno1 = request.getParameter("bno");
		int bno = Integer.parseInt(bno1);
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntMinus(bno);
		
		return null;
	}

}
