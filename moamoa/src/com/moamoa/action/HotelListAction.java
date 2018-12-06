package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import com.moamoa.dao.HotelListDAO;
import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;
import com.moamoa.dto.PageMakerDTO;

public class HotelListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		String url ="Hotellist.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
 		int page = 1;
		if(request.getParameter("page")!=null) {
			page= Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println("페이지 번호 : "+ page);
		criDto.setPage(page);
		
		
		String code ="new";
		if(request.getParameter("key") != null) {
			code = request.getParameter("key");
		}
		criDto.setCode(code);
		request.setAttribute("code", code);
		
		String flag =null;
		String keyword = null;
		
		if(request.getParameter("keyword")!=null) {
			flag = request.getParameter("flag");
			keyword = request.getParameter("keyword");
			
			System.out.println("===============게시글 검색 기능");
			System.out.println("page"+page);
			System.out.println("flag"+flag);
			System.out.println("keyword"+keyword);
			criDto.setFlag(flag);
			criDto.setKeyword(keyword);
			
			request.setAttribute("flag", flag);
			request.setAttribute("keyword", keyword);
		}
		
		HotelListDTO hldto = new HotelListDTO();
		
		HotelListDAO hdao = HotelListDAO.getInstance();
		
		
		

	
		HotelListDAO dao = HotelListDAO.getInstance();
		List<HotelListDTO> hotellist = dao.hotelView(criDto);
	
		
		
		
		request.setAttribute("htlsearchList", hotellist);
		
		
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		int totalcount = hdao.totalCount(criDto);
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		
		
		
	
		
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
