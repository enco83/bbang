package com.bbang.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.action.Action;
import com.bbang.action.ActionForward;
import com.bbang.action.BoardDeleteAction;
import com.bbang.action.BoardDetailAction;
import com.bbang.action.BoardInsertPlayAction;
import com.bbang.action.BoardListAction;
import com.bbang.action.BoardSearchAction;
import com.bbang.action.BoardUpdateAction;
import com.bbang.action.BoardUpdatePlayAction;
import com.bbang.action.BoardViewcntAction;
import com.bbang.action.BoardWriteAction;
import com.bbang.action.CommentListAction;
import com.bbang.action.ConstractAction;
import com.bbang.action.IdCheckAction;
import com.bbang.action.IndexAction;
import com.bbang.action.LoginAction;
import com.bbang.action.LoginOutPlayAction;
import com.bbang.action.LoginPlayAction;
import com.bbang.action.MemberAction;
import com.bbang.action.MemberDeleteAction;
import com.bbang.action.MemberDeletePlayAction;
import com.bbang.action.MemberPlayAction;
import com.bbang.action.MemberUpdateAction;
import com.bbang.action.MemberUpdatePlayAction;
import com.bbang.action.PwCheckAction;
import com.bbang.action.PwUpdateAction;
import com.bbang.action.PwUpdatePlayAction;
import com.bbang.action.ReplyDeleteAction;
import com.bbang.action.ReplyInsertAction;


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
     
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// GET, POST 둘다 받음
		
		// 한글깨짐(POST 방식): 가장 위에 적어주세요.
		request.setCharacterEncoding("UTF-8");
		
		Action action = null; 			// 실제 동작하는 부분
		ActionForward forward = null;	// forward, sendRedirect 설정
		
		/*uri = /bbang/index.bizpoll
	   	ctx = /bbang*/		
		// uri - ctx = 내가 원하는 Action경로
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());
		
		
		/*System.out.println("uri: " + uri);
		System.out.println("ctx: " + ctx);*/
		System.out.println("페이지 이동 =====>" + command);
		
		//Action단 이동
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction();					// 객체 생성
			forward = action.excute(request, response); // 객체(인스턴스) 사용
			// Web에서는 무조건 request, response를 매개변수로 받아야 함.
		} else if(command.equals("/constract.bizpoll")) {
			action = new ConstractAction();
			forward = action.excute(request, response);
		} else if(command.equals("/member.bizpoll")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		} else if(command.equals("/login.bizpoll")) {
			action = new LoginAction();
			forward = action.excute(request, response);
		} else if(command.equals("/memberplay.bizpoll")) {
			action = new MemberPlayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/LoginPlay.bizpoll")) {
			action = new LoginPlayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/loginOut.bizpoll")) {
			action = new LoginOutPlayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/memberUpdate.bizpoll")) {
			action = new MemberUpdateAction();
			forward = action.excute(request, response);
		} else if(command.equals("/memberupdateplay.bizpoll")) {
			action = new MemberUpdatePlayAction();
			forward = action.excute(request, response);
		} else if(command.equals("/idCheck.bizpoll")) {
			action = new IdCheckAction();
			forward = action.excute(request, response);
		} else if(command.equals("/pwCheck.bizpoll")) {
			action = new PwCheckAction();
			forward = action.excute(request, response);
		} else if(command.equals("/pwUpdate.bizpoll")) {
			action = new PwUpdateAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/memberpwplay.bizpoll")) {
			action = new PwUpdatePlayAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/memberdelete.bizpoll")) {
			action = new MemberDeleteAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/memberdeleteplay.bizpoll")) {
			action = new MemberDeletePlayAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardList.bizpoll")) {
			action = new BoardListAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardSearch.bizpoll")) {
			action = new BoardSearchAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardDetail.bizpoll")) {
			action = new BoardDetailAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardViewcnt.bizpoll")) {
			action = new BoardViewcntAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardWrite.bizpoll")) {
			action = new BoardWriteAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardInsertPlay.bizpoll")) {
			action = new BoardInsertPlayAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardUpdate.bizpoll")) {
			action = new BoardUpdateAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardUpdatePlay.bizpoll")) {
			action = new BoardUpdatePlayAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/boardDelete.bizpoll")) {
			action = new BoardDeleteAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/commentlist.bizpoll")) {
			action = new CommentListAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/replyDelete.bizpoll")) {
			action = new ReplyDeleteAction();
			forward = action.excute(request, response);
		}	else if(command.equals("/replyInsert.bizpoll")) {
			action = new ReplyInsertAction();
			forward = action.excute(request, response);
		}
		
		
		
		
		// 공통 분기작업(페이지 이동)
		if(forward != null) {
			if(forward.isRedirect()) { // true: sendRedirect 방식
				response.sendRedirect(forward.getPath());
			} else { // false: forward 방식, 이 방식으로 보낼땐 무조건 아래 코드대로
				// 목적지 : index.jsp
				// 짐 : bestlist
				// 이동수단 : forward
				
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
			
		}
		
		
	}

}
