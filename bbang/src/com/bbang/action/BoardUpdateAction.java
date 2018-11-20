package com.bbang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.dao.BoardDAO;
import com.bbang.dto.BoardDTO;

public class BoardUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boardupdate.jsp";
		
		String bno = request.getParameter("bno");
		
		System.out.println("===================================");
		System.out.println(bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		BoardDTO bDto = bDao.boardDetailView(bno);
		
		System.out.println(bDto.toString());
		
		request.setAttribute("boardview", bDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		
	}

}
