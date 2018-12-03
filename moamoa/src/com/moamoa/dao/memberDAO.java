package com.moamoa.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.moamoa.dto.memberDTO;
import com.moamoa.mybatis.sqlMapConfig;

public class memberDAO {

	SqlSessionFactory sqlSessionFactory = sqlMapConfig.getSqlSession();

	SqlSession sqlSession;

	private memberDAO() {
	}

	private static memberDAO instance = new memberDAO();

	public static memberDAO getInstance() {
		return instance;
	}
	
	public int memberinsert(memberDTO dto) {
		int result =0;
		System.out.println("2222222222222222222222");
		sqlSession = sqlSessionFactory.openSession();
		try {
			System.out.println("3333333333333333333333333");

			result = sqlSession.insert("memberinsert", dto);
			System.out.println(result);
			sqlSession.commit(); 
			System.out.println("4444444444444444444444444444444");

		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return  result; 
	}
	
	public String confirmID(String userid) {
		String result = null;
		System.out.println("confirmid===>"+userid);
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.selectOne("confirmID", userid);
			System.out.println("======================="+result);
			if (result != null) {
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
	
}
