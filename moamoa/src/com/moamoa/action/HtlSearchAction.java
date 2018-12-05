package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;
import com.moamoa.dto.PageMakerDTO;



public class HtlSearchAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url ="searchlist.jsp";
		String flag = request.getParameter("flag");
		String keyword =request.getParameter("keyword");
		System.out.println("----------확인-------------"+flag+","+ keyword);
		
		//keyword와 type으로 검색된 게시글 리스트가 출력 
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") !=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지번호:"+page);
		criDto.setPage(page);

		
		hotelDAO dao = hotelDAO.getInstance();
		// 게시글 목록(정보들) 출력
		criDto.setKeyword(keyword);
		criDto.setFlag(flag);		
		List<HotelListDTO> searchList = dao.htlSearch(criDto);
		request.setAttribute("htlList", searchList);
		
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalCount = dao.totalCount(criDto);
		pageMaker.setTotalCount(totalCount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println("=================");
		System.out.println(pageMaker.toString());
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
