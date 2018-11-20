package com.bbang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.dao.BoardDAO;
import com.bbang.dao.ReplyDAO;
import com.bbang.dto.BoardDTO;
import com.bbang.dto.ReplyDTO;

public class ReplyInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("여기!!!!!!!");
		String content = request.getParameter("replyInsert");
		String writer = request.getParameter("re_wirter");
		int bno = Integer.parseInt(request.getParameter("re_bno"));
		
		System.out.println(content +", " + writer +", " + bno);
		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		
		ReplyDAO rDao = ReplyDAO.getInstance();
		
		rDao.replyInsert(rDto);
		
		// bno 게시글 reply_cnt +1증가
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntPlus(bno);
	
		
		
		
		return null;
	}

}
