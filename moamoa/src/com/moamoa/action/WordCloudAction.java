package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.hotelDAO;
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
		System.out.println("=======!!!!====>"+hotelname);
		
		List<hotelDTO> reviewListneg = hDao.reviewListneg(hotelname);
		System.out.println("=======!!!!====>"+hotelname);
		
		
		for (hotelDTO hotelDTO : reviewListneg) {
			System.out.println("확인!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+hotelDTO.toString());
		}
		
		
		request.setAttribute("reviewListpos", reviewListpos);
		request.setAttribute("reviewListneg", reviewListneg);
		
		
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
