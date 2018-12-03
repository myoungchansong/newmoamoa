package com.moamoa.action;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.moamoa.dao.memberDAO;

public class idCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
	
		
		String userid = request.getParameter("id");
		System.out.println("id ==> "+userid);
		if(userid != null) {
			if(userid.trim().equals("") == false) {
		System.out.println("userid================>"+userid);
		memberDAO dao = memberDAO.getInstance();
		String msg = dao.confirmID(userid);
		
		JSONObject jObj = new JSONObject();
		
		jObj.put("message", msg);
		jObj.put("id", userid);
		
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
