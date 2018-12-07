package com.moamoa.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;



import com.moamoa.dto.ReplyDTO;
import com.moamoa.mybatis.sqlMapConfig;

public class ReplyDAO {
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = sqlMapConfig.getSqlSession();
	
	//mapper에 접근 하기 위한 sqlSession
	SqlSession sqlSession;
	
	//싱글톤으로 new없이 사용하기 때문에
	//다른곳에 new로 객체생성 못하게 private으로 막음 

	private ReplyDAO() {}
	//싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용
	//개체생성 1회 실시 
	private static ReplyDAO instance = new ReplyDAO();
	
	//외부에서 getInstance()를활용하여 1회 실시한 객체를 공유 
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	public List<ReplyDTO> replyListAll(String bno){
		List<ReplyDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		try {
			list = sqlSession.selectList("replyListAll", bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	public void replyDelete(String rno) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.selectList("replyDelete", rno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	public void replyInsert(ReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.selectList("replyInsert", rDto);
			
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
}
