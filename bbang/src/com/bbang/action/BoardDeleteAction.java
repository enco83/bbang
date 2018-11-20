package com.bbang.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.common.Constants;
import com.bbang.dao.BoardDAO;
import com.bbang.dao.ReplyDAO;
import com.bbang.dto.BoardDTO;

public class BoardDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.bizpoll";
		
		String bno = request.getParameter("bno");
		
		BoardDAO bDao = BoardDAO.getInstance();

		BoardDTO bDto = bDao.boardDetailView(bno);
		String filename = bDto.getFilename();
		
		bDao.boardDelete(bno);
		
		File file = new File(Constants.UPLOAD_PATH + filename);
		file.delete();
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
		
	}

}
