package com.bbang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.dao.BoardDAO;
import com.bbang.dao.ReplyDAO;

public class ReplyDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bno = request.getParameter("bno");
		
		
		String rno = request.getParameter("rno");
		
		// 댓글 삭제
		ReplyDAO rDao = ReplyDAO.getInstance();
		rDao.replyDelete(rno);
		
		// bno 게시글 reply_cnt -1감소
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntMinus(bno);
		
		return null;
	}

}
