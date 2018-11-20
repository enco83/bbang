package com.bbang.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.bbang.dto.BoardDTO;
import com.bbang.dto.CriteriaDTO;
import com.bbang.dto.MemberDTO;
import com.bbang.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sqlSessionFatory = SqlMapConfig.getSqlSession();
	
	// mapper에 접근하기 위한 SqlSesstion
	SqlSession sqlSession;
	
	// 싱클톤으로 new 없이 사용하기 때문에
	// 다른곳에 new로 객체생성 못하게 private으로 막음
	private BoardDAO() {}
	
	// 싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
	// 객체생성 1회 실시
	private static BoardDAO instance = new BoardDAO();
	
	// 외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardDTO> boardListAll(CriteriaDTO criDto) {
		sqlSession = sqlSessionFatory.openSession();
		List<BoardDTO> list = new ArrayList<>();
		
		try {
			list = sqlSession.selectList("boardList", criDto);//boardList라는 sql문 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}
	
	public int totalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFatory.openSession();
		int result = 0;
		try {
			
			result = sqlSession.selectOne("countPaging", criDto);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}

	public List<BoardDTO> boardSearch(CriteriaDTO criDto) {
		sqlSession = sqlSessionFatory.openSession();
		List<BoardDTO> list = null;
		
		try {
			list = sqlSession.selectList("searchList", criDto);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public BoardDTO boardDetailView(String bno) {
		sqlSession = sqlSessionFatory.openSession();
		BoardDTO bDto = null;
		
		try {
			bDto = sqlSession.selectOne("boardDetailView", bno);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return bDto;
	}
	
	public void viewCnt(String bno, HttpSession countSession) {
		sqlSession = sqlSessionFatory.openSession();
		
		try {
			long update_time = 0;
			int result = 0;
			// bno = 50 가정
			// 조회수를 증가 할 때 생기는 read_time_게시글 번호가 없으면
			// 현재 처음 조회수를 1증가하는 경우
			if(countSession.getAttribute("read_time_" + bno) != null) {
				update_time = (long)countSession.getAttribute("read_time_" + bno);
			}
			// 현재시간을 담는다
			long current_time = System.currentTimeMillis(); // 10시 30분 5초
			// 현재시간과 조회수 1증가한 시간을 비교해서 24시간(1일)이 지났으면
			// 조회수 1증가
			if(current_time - update_time > 24 * 60 * 60 * 1000) {
				result = sqlSession.update("viewCnt", bno);
				sqlSession.commit();
				// 조회수 1증가한 시간을 session에 담는다.
				countSession.setAttribute("read_time_" + bno, current_time);
				// session 저장소
				// read_time_50이라는 방을 하나 만들고
				// 현재시간을 저장(10시 30분 5초)
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	
	public void boardReplyCntPlus(int bno) {
		sqlSession = sqlSessionFatory.openSession();
		try {
			sqlSession.update("boardReplyCntPlus", bno);
			sqlSession.commit(); // insert, update, delete는 반드시 commit!!!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}

	public void boardReplyCntMinus(String bno) {
		
		sqlSession = sqlSessionFatory.openSession();
		try {
			sqlSession.delete("boardReplyCntMinus", bno);
			sqlSession.commit(); // insert, update, delete는 반드시 commit!!!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	
	
	
	
	public int boardInsert(BoardDTO bDto) {
		int result = 0;
		sqlSession = sqlSessionFatory.openSession();
		try {
			System.out.println(bDto);
			
			result = sqlSession.insert("boardInsert", bDto);
			sqlSession.commit(); // insert, update, delete는 반드시 commit!!!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	public int boardUpdate(BoardDTO bDto) {
		int result = 0;
		sqlSession = sqlSessionFatory.openSession();
		try {
			System.out.println(bDto);
			
			result = sqlSession.update("boardUpdate", bDto);
			sqlSession.commit(); // insert, update, delete는 반드시 commit!!!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
	}
	
	public void boardDelete(String bno) {
		
		sqlSession = sqlSessionFatory.openSession();
		try {
			System.out.println(bno);
			
			sqlSession.delete("boardDelete", bno);
			sqlSession.commit(); // insert, update, delete는 반드시 commit!!!
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	
}
