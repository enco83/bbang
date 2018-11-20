package com.bbang.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.bbang.dao.MemberDAO;

public class LoginCheckTest {

	@Test
	public void testLoginCheck() {
		String id = "wan1i";
		String pw = "1111111";
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.confirmID(id);
		
		
		
	}

}
