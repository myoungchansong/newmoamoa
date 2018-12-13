package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.HotelKeywordDTO;
import com.moamoa.dto.hotelDTO;
import com.moamoa.dto.memberDTO;

public class WordCloudAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="reviewlist.jsp";
		
		String hotelname = request.getParameter("hotelname");
		System.out.println(hotelname);
	
		
		
		
		
		hotelDAO hDao = hotelDAO.getInstance();
		
		//호텔 정보
		List<hotelDTO>reviewListName = hDao.reviewListName(hotelname);
		
		request.setAttribute("reviewListName", reviewListName);
		
//		호텔 리뷰 
		List<hotelDTO> reviewListpos = hDao.reviewListpos(hotelname);
		List<hotelDTO> reviewListneg = hDao.reviewListneg(hotelname);
		
		
		request.setAttribute("reviewListpos", reviewListpos);
		request.setAttribute("reviewListneg", reviewListneg);
		
		
		
		
//		호텔 키워드 긍정 부정
		
		List<HotelKeywordDTO>hotelkeyword = hDao.keyword(hotelname);
		request.setAttribute("hotelkeyword", hotelkeyword);
		
		
		
		
		
		
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
