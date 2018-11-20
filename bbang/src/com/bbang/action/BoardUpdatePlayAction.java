package com.bbang.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.common.Constants;
import com.bbang.dao.BoardDAO;
import com.bbang.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.bizpoll";

		// Multipart <-
		// cos.jar라는 라이브러리가 필요함
		File uploadDir = new File(Constants.UPLOAD_PATH);
		
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		// request를 확장시킨 MultipartRequest 생성
		MultipartRequest multi = new MultipartRequest(request, 
													  Constants.UPLOAD_PATH, 
													  Constants.MAX_UPLOAD, 
													  "UTF-8", new DefaultFileRenamePolicy());
		
		System.out.println("첫번째");
		String sbno = multi.getParameter("bno");
		int bno = Integer.parseInt(sbno);
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		String filename = " "; // (공백)
		int filesize = 0;

		String nowFileName = multi.getParameter("now-file-name");
		String nFileSize = multi.getParameter("now-file-size");
		
	
		// nowFileSize 숫자로 변환
		// 값이 없으면 0 부여, 값이 있으면 숫자로 변환
		int nowFileSize = 0;
		if(!nFileSize.equals("")) {
			nowFileSize = Integer.parseInt(nFileSize);
		}
		
		
		// 과거 filename과 filesize 불러오기
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardDetailView(sbno);
		String pfilename = bDto.getFilename();
		String pfilesize = String.valueOf(bDto.getFilesize());
		System.out.println("과거 첨부파일: " + pfilename + ", " + pfilesize);
		System.out.println("현재 첨부파일: " + nowFileName + ", " + nowFileSize);
		
		int flag = 0;
		if(nowFileName.equals(pfilename) && nowFileSize == 0) {
			// 파일이름이 같으면서,
			// 사이즈가 0이면
			// 파일 지우지 않음, filename과 filesize도 수정하면 안됨
			flag = 1;
		} else {
			File file = new File(Constants.UPLOAD_PATH + pfilename);
			file.delete();
		}
		
		
		try {
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file1 = (String)files.nextElement();
				System.out.println("file1: " + file1);
						// multi.getOriginalFileName(file1); // 그냥 오리지날 파일네임
				filename = multi.getFilesystemName(file1); // 파일네임을 가지고 오돼(주복이면 중복정책이 부여된 값을 가져옴)
				System.out.println("저장 된 첨부파일: " + filename);
				
				if(nowFileSize != 0) {
					String result = filename.substring(nowFileName.length());
					System.out.println("TEST: " + nowFileName + ", " + filename + ", " + result);
					
					// 파일명을 현재 파일명으로 수정!
					if(result.length() > 0) {
						File file = new File(Constants.UPLOAD_PATH + filename); // AAA1
						File fileNew = new File(Constants.UPLOAD_PATH + nowFileName); // AAA
						file.renameTo(fileNew); // AAA1 -> AAA 이름 변경
						
						
						// DB에 넣을 정보
						filename = nowFileName;
						filesize = nowFileSize;
					}
				}
				
				File f1 = multi.getFile(file1); // 첨부파일의 파일
				if(f1 != null) {
					filesize = nowFileSize;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(filename == null || filename.trim().equals("")) {
			filename = "-";
		}
		
		if(flag == 1) {
			filename = "no";
		}
		

		/*BoardDTO bDto = new BoardDTO(title, content, filename, filesize);*/
		bDto = new BoardDTO(bno, title, content, writer, filename, filesize);
		int result = bDao.boardUpdate(bDto);
		
		if(result > 0) { // 등록성공
			System.out.println("게시글 등록 성공");
		} else { // 등록실패
			System.out.println("게시글 등록 실패");
		}
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
	}

}
