package com.bbang.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bbang.common.DBManager;
import com.bbang.dto.MemberDTO;
import com.bbang.dto.ProductDTO;
import com.bbang.mybatis.SqlMapConfig;






public class MemberDAO {
	
	// MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFatory = SqlMapConfig.getSqlSession();
	
	// mapper에 접근하기 위한 SqlSesstion
	SqlSession sqlSession;
	
	// 싱클톤으로 new 없이 사용하기 때문에
	// 다른곳에 new로 객체생성 못하게 private으로 막음
	private MemberDAO() {}
	
	// 싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
	// 객체생성 1회 실시
	private static MemberDAO instance = new MemberDAO();
	
	// 외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 회원가입 = 회원등록
	public int inputMember(MemberDTO mDto) {
		int result = 0;
		sqlSession = sqlSessionFatory.openSession();
		try {
			result = sqlSession.insert("inputMember", mDto);
			sqlSession.commit(); // insert, update, delete는 반드시 commit!!!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	// 회원가입 페이지 ID중복체크(Ajax)
	public String confirmID(String userid) {
		String result = null;
		sqlSession = sqlSessionFatory.openSession();
		try {
			result = sqlSession.selectOne("confirmID", userid);
			
			if(result != null) {
				result = "-1";
			} else {
				result = "1";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	// 비밀번호 수정 페이지 현재 비밀번호와 일치하는지 확인
	public String confirmPW(String userid, String userpw) {
		String result = null;
		sqlSession = sqlSessionFatory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(userid);
		mDto.setPw(userpw);
		try {
			result = sqlSession.selectOne("confirmPW", mDto);
			if(result != null) {
				result = "-1";
			} else {
				result = "1";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	// 로그인 기능
	public MemberDTO loginCheck(String userid, String userpw) {
		
		sqlSession = sqlSessionFatory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(userid);
		mDto.setPw(userpw);
		try {
			mDto = sqlSession.selectOne("loginCheck", mDto);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return mDto;
	}
	
	// 회원정보 수정(비밀번호 제외)
	public int updateMember(MemberDTO mDto) {
		int result = 0;
		sqlSession = sqlSessionFatory.openSession();
		try {
			result = sqlSession.update("updateMember", mDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	// 비밀번호 수정
	public int updatePw(String userId, String userPw) {
		int result = 0;
		sqlSession = sqlSessionFatory.openSession();
		MemberDTO mDto = new MemberDTO();
		mDto.setId(userId);
		mDto.setPw(userPw);
		try {
			result = sqlSession.update("updatePw", mDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	// 회원탈퇴(삭제)
		public int deleteMember(String userid) {
			int flag = 0;
			sqlSession = sqlSessionFatory.openSession();
			
			try {
				flag = sqlSession.delete("deleteMember",userid);
				sqlSession.commit();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			
			return flag;
		}
	
	
	
	
	
	
	
	
	
	
// ========================================================================	
/*
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<MemberDTO> list = new ArrayList<>();
	int result = 0;
	MemberDTO mDto;
	
	public int inputMember(MemberDTO mDto){
		try {
			conn = DBManager.getConnection();
			String sql = "INSERT INTO member(id, pw, name, birth, phone, email)" 
					   + "VALUES(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPw());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getBirth());
			pstmt.setString(5, mDto.getPhone());
			pstmt.setString(6, mDto.getEmail());
						
			result = pstmt.executeUpdate();
	
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		// 메서드 종료
		// return값(=result)을 가지고
		// 나를 호출한 곳으로 돌아간다.
		return result;
		
	}
	
	
	public MemberDTO loginCheck(String uid, String upw) {
		
		try {
			conn = DBManager.getConnection();
			
			String sql = "SELECT * FROM member where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, upw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String birth = rs.getString("birth");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				Date regdate = rs.getDate("regdate");
				mDto = new MemberDTO(id, pw, name, birth, phone, email, regdate);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mDto;
	}
	
	// 회원정보 수정
	public int updateMember(MemberDTO mDto) {
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE member SET "
					   + " pw = ?, " 
					   + " name = ?, "
					   + " birth = ?, "
					   + " phone = ?, "
					   + " email = ? "
					   + " WHERE id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mDto.getPw());
			pstmt.setString(2, mDto.getName());
			pstmt.setString(3, mDto.getBirth());
			pstmt.setString(4, mDto.getPhone());
			pstmt.setString(5, mDto.getEmail());
			pstmt.setString(6, mDto.getId());
						
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	// Ajax를 활용한 ID 중복체크
	public String confirmID(String userid) {
		String msg = "";
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT id FROM member "
					   + "WHERE id = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 중복된 id
				msg = "-1";
			} else {
				msg = "1";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		
		return msg;
	}
	
	public String confirmPW(String id, String pw) {
		String msg = "";
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT pw FROM member "
					   + "WHERE id = ? AND pw = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 중복된 id
				msg = "-1";
			} else {
				msg = "1";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		
		return msg;
	}
	
	public int updatePw(String userId, String userPw) {
		System.out.println(userId + userPw);
		int result = 0;
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE member SET "
					   + "pw = ? "
					   + "WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userPw);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		
		return result;
	}*/
// ================================================================================	
	
	
}
