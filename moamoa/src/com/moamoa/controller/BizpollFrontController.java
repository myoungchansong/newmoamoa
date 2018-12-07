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
import com.moamoa.action.BoardDeleteplayAction;
import com.moamoa.action.BoardDownloadAction;
import com.moamoa.action.BoardListAction;
import com.moamoa.action.BoardReadAction;
import com.moamoa.action.BoardRegistAction;
import com.moamoa.action.BoardRegistplayAction;
import com.moamoa.action.BoardSearchAction;
import com.moamoa.action.BoardUpadateAction;
import com.moamoa.action.BoardUpadatePlayAction;
import com.moamoa.action.BoardViewcntAction;
import com.moamoa.action.CommentListAction;
import com.moamoa.action.HotelListAction;
import com.moamoa.action.IndexAction;
import com.moamoa.action.ReplyDeleteAction;
import com.moamoa.action.ReplyInsertAction;
import com.moamoa.action.deleteAction;
import com.moamoa.action.deleteplayAction;
import com.moamoa.action.deleteruleAction;
import com.moamoa.action.idCheckAction;
import com.moamoa.action.logindAction;
import com.moamoa.action.loginplayAction;
import com.moamoa.action.logoutplayAction;
import com.moamoa.action.memberAction;
import com.moamoa.action.memberplayAction;
import com.moamoa.action.nikCheckAction;
import com.moamoa.action.nikupdateAction;
import com.moamoa.action.nikupdatplayAction;
import com.moamoa.action.pwCheckAction;
import com.moamoa.action.pwupdateAction;
import com.moamoa.action.pwupdateplayAction;
import com.moamoa.action.updateAction;



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
		System.out.println("페이지 이동====>"+command);
		//Action단 이동
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction();
			forward = action.excute(request, response);
		} else if(command.equals("/boardList.bizpoll")) { 
			action = new BoardListAction();
			forward = action.excute(request, response);
		} else if(command.equals("/login.bizpoll")) {
			action = new logindAction();
			forward = action.excute(request, response);
		} else if(command.equals("/member.bizpoll")) {
			action = new memberAction();
			forward = action.excute(request, response);
		} else if(command.equals("/memberplay.bizpoll")) {
			action = new memberplayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/idCheck.bizpoll")) {
			action = new idCheckAction();
			forward = action.excute(request, response);
		} else if(command.equals("/nikCheck.bizpoll")) {
			action = new nikCheckAction();
			forward = action.excute(request, response);
		} else if(command.equals("/nikupdate.bizpoll")) {
			action = new nikupdateAction();
			forward = action.excute(request, response);
		} else if(command.equals("/nikupdateplay.bizpoll")) {
			action = new nikupdatplayAction();
			forward = action.excute(request, response);
		}  else if(command.equals("/pwCheck.bizpoll")) {
			action = new pwCheckAction();
			forward = action.excute(request, response);
		} else if(command.equals("/LoginPlay.bizpoll")) {
			action = new loginplayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/logout.bizpoll")) {
			action = new logoutplayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/update.bizpoll")) {
			action = new updateAction();
			forward = action.excute(request, response);
		} else if(command.equals("/pwupdate.bizpoll")) {
			action = new pwupdateAction();
			forward = action.excute(request, response);
		} else if(command.equals("/pwupdateaction.bizpoll")) {
			action = new pwupdateplayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/deleterule.bizpoll")) {
			action = new deleteruleAction();
			forward = action.excute(request, response);
		} else if(command.equals("/delete.bizpoll")) {
			action = new deleteAction();
			forward = action.excute(request, response);
		} else if(command.equals("/deleteplay.bizpoll")) {
			action = new deleteplayAction();
			forward = action.excute(request, response);
		} 
		
		
		
		/*====================board================================*/
		else if(command.equals("/boardSearch.bizpoll")) {
			action = new BoardSearchAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardread.bizpoll")) {
			action = new BoardReadAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardViewcnt.bizpoll")){
			action = new BoardViewcntAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardregist.bizpoll")) {
			action = new BoardRegistAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardregistplay.bizpoll")) {
			action = new BoardRegistplayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/download.bizpoll")) {
			action = new BoardDownloadAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpadte.bizpoll")) {
			action = new BoardUpadateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpadteplay.bizpoll")) {
			action = new BoardUpadatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardDeletePlay.bizpoll")) {
			action = new BoardDeleteplayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/commentlist.bizpoll")) {
			action = new CommentListAction();
			forward = action.excute(request, response);			
		}else if(command.equals("/replydelete.bizpoll")) {
			action = new ReplyDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("/replyInsert.bizpoll")) {
			action = new ReplyInsertAction();
			forward = action.excute(request, response);
		}
			
		
		
		
		/*====================hotellist================================*/
		
		
		else if(command.equals("/searchhtl.bizpoll")) {
			action = new HotelListAction();
			forward = action.excute(request, response);
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