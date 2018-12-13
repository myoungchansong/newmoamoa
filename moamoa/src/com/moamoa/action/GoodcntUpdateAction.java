package com.moamoa.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.BoardDAO;

public class GoodcntUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 String bno = request.getParameter("bno");  
		 String id = request.getParameter("id");
		 System.out.println("bno:"+bno+",id:"+id);
		 Map<String, String> m = new HashMap<>();
		 m.put("bno", bno);
		 m.put("id", id);
		 
		 BoardDAO bDao = BoardDAO.getInstance();
		 // 동일 게시글에 대한 이전 추천 여부 검색
		 int result = bDao.recCheck(m);
		 
		 if(result == 0){ // 추천하지 않았다면 추천 추가
		  bDao.recUpdate(m);
		  
		 }else{ // 추천을 하였다면 추천 삭제
		  bDao.recDelete(m);
		 }
		 return null;
	}

}
