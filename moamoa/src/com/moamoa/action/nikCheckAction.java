package com.moamoa.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.moamoa.dao.memberDAO;

public class nikCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nik = request.getParameter("nik");
		
		System.out.println("nik ==========>"+nik);
		if(nik != null) {
			if(nik.trim().equals("") == false) {
		System.out.println("userid================>"+nik);
		memberDAO dao = memberDAO.getInstance();
		String msg = dao.confirmnik(nik);
		
		JSONObject jObj = new JSONObject();
		
		jObj.put("message", msg);
		jObj.put("nik", nik);
		
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
