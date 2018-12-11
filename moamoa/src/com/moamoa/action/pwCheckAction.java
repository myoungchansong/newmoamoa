package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.moamoa.dao.memberDAO;
import com.moamoa.dto.memberDTO;

public class pwCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		/*비밀번호 중복체크가 이루어지는 동작*/
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("id ==========>"+id);
		System.out.println("pw ==========>"+pw);
		if(id != null) {
			if(id.trim().equals("") == false) {
		System.out.println("userid================>"+id);
		memberDAO dao = memberDAO.getInstance();
		memberDTO dto = new memberDTO(id, pw);
		String msg = dao.confirmpw(dto);
		
		JSONObject jObj = new JSONObject();
		
		jObj.put("message", msg);
		
		
		if(jObj.isEmpty()) {
			System.out.println("jObj에 값없음!!!");
		} else {
			System.out.println("값있음!!!");
		}

		
//		json객체에 담은 데이터를 호출한 페이지로 전송하는 기능
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jObj);
			}
		}
		
		return null;
		
	}

}
