package com.moamoa.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.hotelDAO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.HotelListDTO;

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
		
		
		
		/* Hotel list 출력 */
		
		HotelListDTO hldto = new HotelListDTO();
		
		hotelDAO hdao = hotelDAO.getInstance();
		
		
		List<HotelListDTO> hotellist = hdao.hotelView(criDto);
		request.setAttribute("htlsearchList", hotellist);
		
		
		
		
		
		
		
		
		
		
		
		ActionForward forward =new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
