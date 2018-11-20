package com.bbang.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bbang.dao.MemberDAO;
import com.bbang.dto.MemberDTO;

public class MemberPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "welcome_join.jsp";
		
		
		// view 단에서 전송한 데이터를 받아오세요
		// name값
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
		System.out.println(mDto.toString());
		
		// 싱글톤 패턴
		// 객체생성은 한번만 이루어지고
		// 나머지는 생성된 객체를 빌려 쓰는 형태로 작성됨
		
		// 코드 간결화
		// 유지보수 좋음
		// 메모리 효율
		
		MemberDAO mDao = MemberDAO.getInstance(); // 
		
		// MemberDAO 클래스의 insertMember() 메서드를
		// 호출하고 View단에서 전달한 데이터를 mDto에 담아 보낸다
		int result = mDao.inputMember(mDto);
		
		
		if(result > 0) { // 등록성공
			
		} else { // 등록실패
			url = "member.bizpoll";
		}
		
	
		
		// ActionForward 객체생성
		// forward 인스턴스 생성
		ActionForward forward = new ActionForward(); // ActionForward 객체 생성
		
		// ActionForward에 setPath() 메서드를 호출
		// 매개변수로 url값("index.jsp")을 전송
		forward.setPath(url);		// index.jsp로 이동
		// ActionForward에 setRedirect() 메서드 호출
		// 매개변수로 boolean 타입의 false값을 전송
		forward.setRedirect(false); // forward 방식을 사용
		return forward;
	}

}
