package com.moamoa.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.moamoa.action.Action;
import com.moamoa.action.ActionForward;



/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//GET,POST 둘다 받음
		
		//한글깨짐 방지(POST방식): 가장 위에 적어주세요.
		request.setCharacterEncoding("UTF-8");
		
		Action action =null; 			// 실제 동작하는 부분
		ActionForward forward = null;   //forward, sendRedirect 설정 
		
		//uri = /moamoa/index.bizpoll
		//ctx =/moamoa
		//uri -ctx = 내가 원하는 Action경로 
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());  //index.bizpoll
		
		System.out.println("uri:" +uri);
		System.out.println("ctx:"+ ctx);
		System.out.println("페이지 이동====> "+command);
		
		//Action단 이동
		//Action단 이동
		if(command.equals("/index.bizpoll")) {
			/*action = new IndexAction();*/ //객체생성
			forward = action.excute(request, response); //객체(인스턴스)사용 //데이터 받을때 request, 데이터보낼때 response
			//web에서는 무조건 requset, response를 매개변수로 받아야한다. 
		}
		
		//공통 분기작업(페이지 이동)
		if(forward !=null) {
			if(forward.isRedirect()) {//true :sendRedirect방식   //fasle 담김
				response.sendRedirect(forward.getPath());
			}else {//false : forward방식
				//목적지 : index.jsp
				//짐 : bestlist
				//이동수단 : forward
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}
}