package com.moamoa.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moamoa.dao.BoardDAO;
import com.moamoa.dto.BoardDTO;
import com.moamoa.dto.CriteriaDTO;
import com.moamoa.dto.PageMakerDTO;



public class BoardListAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url ="board/boardlist.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1; //항상 첫 페이지는 1페이지!
		if(request.getParameter("page") !=null) { //쿼리스트링 페이지 2페이지부터 
			page = Integer.parseInt(request.getParameter("page")); //페이지값 받아옴  //page=2
		}
		System.out.println("페이지번호:"+page);
		criDto.setPage(page); //page =2
		
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

		/*request.setAttribute("cDto", criDto);*/
		
		BoardDAO bDao = BoardDAO.getInstance(); //싱글톤 패턴
		// 게시글 목록(정보들) 출력
		List<BoardDTO> boardList = bDao.boardListAll(criDto);
		request.setAttribute("boardList", boardList);
		
		//현재날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);
		
		//페이지 네이션 생성
		PageMakerDTO pageMaker = new PageMakerDTO(); //객체 생성
		pageMaker.setCriDto(criDto);
		
		int totalCount = bDao.totalCount(criDto);
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
