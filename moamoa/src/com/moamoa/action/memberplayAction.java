package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.memberDAO;
import com.moamoa.dto.memberDTO;

public class memberplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="";
		/*회원 가입이 동작하는 부분*/
		
		String id = request.getParameter("inputid");
		String pw = request.getParameter("inputpw");
		String nik = request.getParameter("inputnik");
		System.out.println("id = "+id);
		System.out.println("pw = "+pw);
		System.out.println("nik = "+nik);
		
		memberDTO dto = new memberDTO(id, pw, nik);
		memberDAO mDao = memberDAO.getInstance();
		int result = mDao.memberinsert(dto);
		if(result >0) {
			url ="index.bizpoll";
			System.out.println("성공");
		} else {
			/*url ="member.bizpoll";*/
			System.out.println("실패");
		}
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		return forward;
	}

}
