package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.memberDAO;
import com.moamoa.dto.memberDTO;

public class pwupdateplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		/*비밀번호 수정이 이루어지는 동작*/
		
			String url ="";
			String id = request.getParameter("input_id");
			String npw = request.getParameter("inpunewpw");
			
			System.out.println("id========>"+id);
			System.out.println("pw=======>"+npw);
			
			memberDAO dao = memberDAO.getInstance();
			memberDTO dto = new memberDTO(id, npw);
			int result = dao.pwupdate(dto);
			if(result >0) {
				System.out.println("수정 성공");
				url ="update.bizpoll";
			} else {
				System.out.println("수정 실패");
				url = "pwupdate.bizpoll";
			}
			ActionForward forward =new ActionForward();
			forward.setPath(url);
			forward.setRedirect(true);
			return forward;
	}

}
