package com.bbang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		
		// 회원정보수정을 하려면 반드시 선행조건
		// : 로그인이 되있어야 한다.!!
		// : session이 null이 아니면 = 로그인
		System.out.println("memberUpdateAction");
		HttpSession session = request.getSession(); // session값 가져옴
		if(session.getAttribute("loginUser") == null) { //로그인 no
			System.out.println("값가져왔엉?");
			url = "index.bizpoll";
		} else { // 로그인 ok
			System.out.println("값 가져왔응!");
			url = "member_update.jsp";
		}
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
