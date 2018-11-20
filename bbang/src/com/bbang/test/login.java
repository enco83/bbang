package com.bbang.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.bbang.dao.MemberDAO;
import com.bbang.dto.MemberDTO;

public class login {

	@Test
	public void testLoginCheck() {
		String id = "dryous";
		String pw = "divine00";
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = mDao.loginCheck(id, pw);
				
		if(mDto!=null) {
			System.out.println("로그인 성공! 메인페이지로 이동합니다.");
		} else {
			System.out.println("ID나 PW가 등록되지 않은 회원입니다.");
		}
	}

}
