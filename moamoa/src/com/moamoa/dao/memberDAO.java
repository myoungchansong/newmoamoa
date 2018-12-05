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

	public String confirmnik(String nik) {
		String result = null;
		System.out.println("confirmnik===>"+nik);
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.selectOne("confirmnik", nik);
			
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
	
	
	public int delete(String id) {
		int result =0;
		System.out.println("delete id ===>"+id);
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.delete("delete", id);
			sqlSession.commit(); 
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	public String confirmpw(memberDTO dto) {
		String result = null;
		System.out.println("confirmpw===>"+dto.toString());
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.selectOne("confirmpw", dto);
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
	
	
	public int pwupdate(memberDTO dto) {
		int result = 0;
		System.out.println("confirmpw===>"+dto.toString());
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.update("pwupdate", dto);
			sqlSession.commit(); 
			System.out.println("======================="+result);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	
	public int nikupdate(memberDTO dto) {
		int result = 0;
		System.out.println("confirmnik===>"+dto.toString());
		sqlSession = sqlSessionFactory.openSession();
		try {
			
			result = sqlSession.update("nikupdate", dto);
			sqlSession.commit(); 
			System.out.println("======================="+result);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	public memberDTO login(memberDTO dto) {
		
		System.out.println("dao===>"+dto.toString());
	
		
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			dto = sqlSession.selectOne("login", dto);
			System.out.println("======================="+dto.toString());
		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return dto;
	}
}
