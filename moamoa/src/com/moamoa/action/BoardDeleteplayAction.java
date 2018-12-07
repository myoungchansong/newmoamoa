package com.moamoa.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.common.Constants;
import com.moamoa.dao.BoardDAO;
import com.moamoa.dto.BoardDTO;



public class BoardDeleteplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="boardList.bizpoll";
		BoardDAO bDao = BoardDAO.getInstance();
		
		String bno = request.getParameter("bno");

		BoardDTO bDto = bDao.boardReadView(bno);
		System.out.println(bno);
		String pfilename = bDto.getFilename();
		
		int bno1 = Integer.parseInt(bno);
		
		int result = bDao.boardDelete(bno1);
		
		File file = new File(Constants.UPLOAD_PATH+pfilename);
		file.delete();
		
		if(result>0) {
			System.out.println("삭제성공");
		}else {
			System.out.println("실패");
		}
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
