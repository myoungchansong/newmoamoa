package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.moamoa.dao.memberDAO;
import com.moamoa.dto.memberDTO;

public class nikupdatplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*닉네임 수정이 이루어지는 곳*/
		
		String url ="";
		HttpSession session = request.getSession();
		String id =request.getParameter("inputid");
		String pw =request.getParameter("inputpw2");
		String nik = request.getParameter("inputpw");
		String newnik = request.getParameter("inpunewpw");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(nik);
		System.out.println(newnik);
		
		memberDAO dao = memberDAO.getInstance();
		memberDTO dto = new memberDTO(id, pw,newnik);
		int result = dao.nikupdate(dto);
		if(result >0) {
			System.out.println("수정성공");
			session.removeAttribute("id");
			session.setAttribute("loginUser", dto);
			url="update.bizpoll";
		} else {
			System.out.println("수정실패");
			url="nikupdate.bizpoll";
		}
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		
		return forward;
		
	}

}
