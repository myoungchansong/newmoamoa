package com.moamoa.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.moamoa.dao.BoardDAO;

public class GoodCountAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bno =request.getParameter("bno");
		 
		 System.out.println("GoodCountAction bno:"+bno);
		 // 게시글 총 추천수를 구함
		 BoardDAO bDao = BoardDAO.getInstance();
		 int count = bDao.recCount(bno);
		 
		 
		 JSONObject jObj = new JSONObject();
		 
		 // 뷰페이지에 추천수를 출력하도록 하는 역할
		 jObj.put("count", count); // 총추천수
		 
		 response.setContentType("application/x-json; charset=UTF-8");
		 response.getWriter().print(jObj);
		 
		 return null;
	}

}
