package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.moamoa.dao.memberDAO;
import com.moamoa.dto.memberDTO;

public class loginplayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		
		System.out.println("id===>"+id);
		System.out.println("pw===>"+pw);
		
		memberDTO dto = new memberDTO(id, pw);
		
		memberDAO dao = memberDAO.getInstance();
		String message = null;
		dto = dao.login(dto);
		
		if(dto != null) {	//로그인 성공
			//session 값에 login된 회원정보를 담아야함 
			System.out.println("action 로그인 성공");
			session.removeAttribute("id");	//혹시 모를  기존의 남아있는 값을 제거
			session.setAttribute("loginUser", dto);
			message ="1";
			
		} else {
			message ="-1";
		}
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jObj);
		
		return null;
	}
	
}
