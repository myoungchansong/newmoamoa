package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.BoardDAO;
import com.moamoa.dao.ReplyDAO;
import com.moamoa.dto.ReplyDTO;



public class ReplyInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("re_bno"));
		String writer = request.getParameter("rpwriter");
		String nik = request.getParameter("rnik");
		String content = request.getParameter("reply_content");
		System.out.println(bno+",글쓴이 : "+writer+",닉네임 : "+nik+","+content);
		
		//bno 게시글에 댓글 등록
		ReplyDTO rDto = new ReplyDTO(content, writer, nik,bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
	
		rDao.replyInsert(rDto);
		
		//bno 게시글 reply_cnt +1 증가
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntPlus(bno);
		return null;
	}

}
