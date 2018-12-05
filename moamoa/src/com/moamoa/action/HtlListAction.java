package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.crawling.hotel;
import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;
import com.moamoa.dto.PageMakerDTO;
import com.moamoa.dto.hotelDTO;

public class HtlListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "searchlist.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지번호 : " + page);
		criDto.setPage(page);
		
		
		String code="new";
		if(request.getParameter("key") !=null) {
			code = request.getParameter("key");
		}
		criDto.setCode(code);
		request.setAttribute("code", code); //키값 주고 받음
		
		String flag = null;
		String keyword = null;
		if(request.getParameter("keyword") !=null) {
			System.out.println("==========>게시글 검색기능 작동!");
			flag= request.getParameter("flag");
			keyword=request.getParameter("keyword");
			criDto.setFlag(flag);
			criDto.setKeyword(keyword);
			System.out.println(page+","+flag+","+keyword);
			request.setAttribute("flag", flag);
			request.setAttribute("keyword", keyword);
		}
		
		
		hotelDAO dao = hotelDAO.getInstance();
		List<HotelListDTO> hotelList = dao.hotelView();
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
