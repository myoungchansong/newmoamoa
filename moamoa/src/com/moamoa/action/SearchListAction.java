package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.crawling.hotel;
import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.hotelDTO;

public class SearchListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "searchlist.jsp";
		
		hotelDAO dao = hotelDAO.getInstance();
		List<hotelDTO> hotelList = dao.hotelView();
		request.setAttribute("htlsearchList", hotelList);
		
		for (hotelDTO hotelDTO : hotelList) {
			System.out.println(hotelDTO.toString());
			
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);		//index.jsp로 이동
		forward.setRedirect(false);	//forward 방식을 사용
		
		return forward;
	}

}
