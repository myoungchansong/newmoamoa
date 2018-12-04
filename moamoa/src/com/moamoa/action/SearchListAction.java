package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.crawling.hotel;
import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.PageMakerDTO;
import com.moamoa.dto.hotelDTO;

public class SearchListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지번호 : " + page);
		criDto.setPage(page);
		
		String url = "searchlist.jsp";
		
		hotelDAO dao = hotelDAO.getInstance();
		List<hotelDTO> hotelList = dao.hotelView();
		request.setAttribute("htlsearchList", hotelList);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalcount = dao.totalCount(criDto);
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println(pageMaker.toString());
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);		//index.jsp로 이동
		forward.setRedirect(false);	//forward 방식을 사용
		
		return forward;
	}

}
