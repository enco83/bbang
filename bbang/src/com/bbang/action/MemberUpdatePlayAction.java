package com.bbang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bbang.dao.MemberDAO;
import com.bbang.dto.MemberDTO;

public class MemberUpdatePlayAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String biryy = request.getParameter("biryy");
		String birmm = request.getParameter("birmm");
		String birdd = request.getParameter("birdd");
		String birth = biryy + "-" + birmm + "-" + birdd;
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String phone = phone1+"-"+phone2+"-"+phone3;
		String email01 = request.getParameter("email01");
		String email02 = request.getParameter("email02");
		String email = email01 + "@" + email02;
		
		MemberDTO mDto = new MemberDTO(id, pw, name, birth, phone, email);
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updateMember(mDto);
		
		if(result > 0) { //성공
			url = "index.bizpoll";
			
			// session값을 최신정보로 수정!!
			session.removeAttribute("id");
			session.setAttribute("loginUser", mDto);

		} else { //실패
			System.out.println("왜 안타");
			url = "member_update.bizpoll";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
