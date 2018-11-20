package com.bbang.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bbang.dto.ReplyDTO;
import com.bbang.mybatis.SqlMapConfig;

public class ReplyDAO {
	SqlSessionFactory sqlSessionFatory = SqlMapConfig.getSqlSession();
	
	// mapper에 접근하기 위한 SqlSesstion
	SqlSession sqlSession;
	
	// 싱클톤으로 new 없이 사용하기 때문에
	// 다른곳에 new로 객체생성 못하게 private으로 막음
	private ReplyDAO() {}
	
	// 싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
	// 객체생성 1회 실시
	private static ReplyDAO instance = new ReplyDAO();
	
	
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	public List<ReplyDTO> replyListAll(String bno) {
		List<ReplyDTO> list = null;
		sqlSession = sqlSessionFatory.openSession();
		
		try {
			list = sqlSession.selectList("replyListAll", bno);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	public void replyDelete(String rno) {
		sqlSession = sqlSessionFatory.openSession();
		
		try {
			sqlSession.delete("replyDelete", rno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	
	
		public int replyInsert(ReplyDTO rDto) {
		int result = 0; 
		sqlSession = sqlSessionFatory.openSession();
		
		try {
			result = sqlSession.insert("replyInsert", rDto);
			
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	
	
	
	
	
	
}
